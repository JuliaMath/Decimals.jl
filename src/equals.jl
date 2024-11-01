_sign(x::Decimal) = x.s ? -1 : 1

function Base.cmp(x::Decimal, y::Decimal)
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
        return ifelse(x.s, -cmp_c, cmp_c)
    end

    # Adjusted exponent of x and y
    # It is the position of the most significant digit with respect to
    # the decimal point
    expx = ndigits(x.c) + x.q - 1
    expy = ndigits(y.c) + y.q - 1

    # If expx > expy, then abs(x) > abs(y)
    # If expx < expy, then abs(x) < abs(y)
    #
    # Then we need to consider the sign, which is the same for x and y here
    #
    # Overall:
    #  -1  if expx > expy and they are negative
    #  +1  if expx > expy and they are positive
    #  -1  if expx < expy and they are positive
    #  +1  if expx < expy and they are negative
    if expx != expy
        s = _sign(x) # same as _sign(y)
        return ifelse(expx > expy, s, -s)
    end

    #  cmp(x, y) = sign(x - y)
    #            = sign(sign(x) * abs(x) - sign(y) * abs(y))
    #
    # We know that x and y have the same sign here:
    #
    #  cmp(x, y) = sign(sign(x) * (abs(x) - abs(y)))
    #            = sign(x) * sign(abs(x) - abs(y))
    #            = sign(x) * sign(x.c * 10^x.q - y.c * 10^y.q)
    #
    # Now, for the latter sign:
    #
    #   sign(x.c * 10^x.q - y.c * 10^y.q)
    # = sign(x.c * 10^(x.q - y.q) - y.c) * 10^y.q
    # = sign(x.c - y.c * 10^(y.q - x.q)) * 10^x.q
    #                                      ^^^^^^ positive
    #
    # So, we just need to return
    #
    #  sign(x) * sign(x.c * 10^(x.q - y.q) - y.c)  if x.q ≥ y.q,
    #  sign(x) * sign(x.c - y.c * 10^(y.q - x.q))  if x.q < y.q
    if x.q ≥ y.q
        q = x.q - y.q
        return _sign(x) * cmp(x.c * big(10) ^ q, y.c)
    else
        q = y.q - x.q
        return _sign(x) * cmp(x.c, y.c * big(10) ^ q)
    end
end

Base.:(==)(x::Decimal, y::Decimal) = iszero(cmp(x, y))
Base.:(<)(x::Decimal, y::Decimal) = cmp(x, y) < 0
Base.:(<=)(x::Decimal, y::Decimal) = cmp(x, y) <= 0

function Base.min(x::Decimal, y::Decimal)
    c = cmp(x, y)
    if c < 0
        return fix(x)
    elseif c > 0
        return fix(y)
    end

    # The operands are numerically equal

    # If the signs differ, the negative operand is returned
    if x.s != y.s
        return x.s ? fix(x) : fix(y)
    end

    # If the signs and exponents are equal, either can be returned
    if x.q == y.q
        return fix(x)
    end

    # If the signs are positive, the operand with the minimum exponent is returned
    # If the signs are negative, the operand with the maximum exponent is returned
    if x.s
        return x.q ≤ y.q ? fix(x) : fix(y)
    else
        return x.q ≤ y.q ? fix(y) : fix(x)
    end
end

function Base.max(x::Decimal, y::Decimal)
    c = cmp(x, y)
    if c < 0
        return fix(y)
    elseif c > 0
        return fix(x)
    end

    # The operands are numerically equal

    # If the signs differ, the positive operand is returned
    if x.s != y.s
        return x.s ? fix(y) : fix(x)
    end

    # If the signs and exponents are equal, either can be returned
    if x.q == y.q
        return fix(x)
    end

    # If the signs are positive, the operand with the maximum exponent is returned
    # If the signs are negative, the operand with the minimum exponent is returned
    if x.s
        return x.q ≤ y.q ? fix(y) : fix(x)
    else
        return x.q ≤ y.q ? fix(x) : fix(y)
    end
end

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

function Base.max(a::AbstractFloat, b::Decimal)
    signbit(a) && isinf(a) && return convert(promote_type(typeof(a), typeof(b)), b)
    max(promote(a, b)...)
end
function Base.max(a::Decimal, b::AbstractFloat)
    signbit(b) && isinf(b) && return convert(promote_type(typeof(a), typeof(b)), a)
    max(promote(a, b)...)
end
