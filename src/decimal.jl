Decimal(x::Decimal) = x
Decimal(n::Integer) = Decimal(signbit(n), abs(n), 0)
function Decimal(x::AbstractFloat)
    if !isfinite(x)
        throw(ArgumentError("$x cannot be represented as a Decimal"))
    end

    # Express `x` as a rational `u = n / 2^k`, where `k ≥ 0`
    u = Rational(abs(x))

    # u.den = 2^k
    k = ndigits(u.den, base=2) - 1

    # We can write
    #
    #   x = n / 2^k
    #     = n / 2^k * 10^k * 10^-k
    #     = (n * 10^k / 2^k) * 10^-k
    #     = (n * 5^k) * 10^-k

    s = signbit(x)
    c = u.num * BigInt(5)^k
    q = -k
    return Decimal(s, c, q)
end

Base.convert(::Type{Decimal}, x::Real) = Decimal(x)

function Base.BigFloat(x::Decimal)
    y = BigFloat(x.c)
    if x.q ≥ 0
        y *= BigTen^x.q
    else
        y /= BigTen^(-x.q)
    end
    return x.s ? -y : y
end

(::Type{T})(x::Decimal) where {T<:Number} = T(BigFloat(x))

# String representation of Decimal
function Base.string(x::Decimal)
    io = IOBuffer()
    scientific_notation(io, x)
    return String(take!(io))
end

Base.signbit(x::Decimal) = x.s

Base.zero(::Type{Decimal}) = Decimal(false, 0, 0)
Base.one(::Type{Decimal}) = Decimal(false, 1, 0)

Base.iszero(x::Decimal) = iszero(x.c)
Base.isfinite(x::Decimal) = true
Base.isnan(x::Decimal) = false
