_sign(x::BigInt) = Int(sign(x))
_sign(x::Decimal) = x.s ? -1 : 1

function Base.cmp(x::Decimal, y::Decimal)
    # We try to avoid computing x - y because it allocates a new BigInt

    if iszero(x) && iszero(y)
        return 0
    elseif iszero(x) # && !iszero(y)
        return -_sign(y)
    elseif iszero(y) # && !iszero(x)
        return _sign(x)
    end

    # Neither x nor y is zero here

    if x.s != y.s
        # x and y have different signs, so
        #  if x < 0, then return -1 (because y is positive)
        #  if x > 0, then return +1 (because y is negative)
        return _sign(x)
    end

    cmp_c = cmp(x.c, y.c)
    cmp_q = cmp(x.q, y.q)

    # If both x.c and x.q is greater (or equal, or less) than y.c and y.q,
    # then x is greater (or equal, or less) than y
    if cmp_c == cmp_q
        return cmp_c
    end

    # Let x = a * 10^p, y = b * 10^q.
    #
    # If p ≥ q:
    #
    #   sign(x - y)
    # = sign(a * 10^p - b * 10^q)
    # = sign((a * 10^(p - q) - b) * 10^q)
    # = sign(a * 10^(p - q) - b)
    #
    # If p < q:
    #
    #   sign(x - y)
    # = a - b * 10^(q - p)

    xcoef = (-1)^x.s * x.c
    ycoef = (-1)^y.s * y.c

    if x.q ≥ y.q
        q = x.q - y.q
        return _sign(xcoef * big(10) ^ q - ycoef)
    else
        q = y.q - x.q
        return _sign(xcoef  - ycoef * big(10) ^ q)
    end
end

Base.:(==)(x::Decimal, y::Decimal) = iszero(cmp(x, y))
Base.:(<)(x::Decimal, y::Decimal) = cmp(x, y) < 0
Base.:(<=)(x::Decimal, y::Decimal) = cmp(x, y) <= 0

# Special case equality with AbstractFloat to allow comparison against Inf/Nan
# which are not representable in Decimal

Base.:(==)(a::AbstractFloat, b::Decimal) = b == a
function Base.:(==)(a::Decimal, b::AbstractFloat)
    # Decimal does not represent NaN/Inf
    (isinf(b) || isnan(b)) && return false
    ==(promote(a, b)...)
end

function Base.min(a::AbstractFloat, b::Decimal)
    !signbit(a) && isinf(a) && return convert(promote_type(typeof(a), typeof(b)), b)
    min(promote(a, b)...)
end
function Base.min(a::Decimal, b::AbstractFloat)
    !signbit(b) && isinf(b) && return convert(promote_type(typeof(a), typeof(b)), a)
    min(promote(a, b)...)
end
Base.min(a::Decimal, b::Decimal) = invoke(min, Tuple{T, T} where T<:AbstractFloat, a, b)

function Base.max(a::AbstractFloat, b::Decimal)
    signbit(a) && isinf(a) && return convert(promote_type(typeof(a), typeof(b)), b)
    max(promote(a, b)...)
end
function Base.max(a::Decimal, b::AbstractFloat)
    signbit(b) && isinf(b) && return convert(promote_type(typeof(a), typeof(b)), a)
    max(promote(a, b)...)
end
Base.max(a::Decimal, b::Decimal) = invoke(max, Tuple{T, T} where T<:AbstractFloat, a, b)
