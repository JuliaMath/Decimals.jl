Decimal(x::Decimal) = x

# From real numbers to Decimal
Decimal(x::Real) = parse(Decimal, string(x))
Base.convert(::Type{Decimal}, x::Real) = Decimal(x)

function BigInt(x::Decimal)
    coef = BigInt(x.c * BigTen ^ x.q)
    return x.s ? -coef : coef
end

# From Decimal to numbers
(::Type{T})(x::Decimal) where {T<:Number} = parse(T, string(x))

# String representation of Decimal
function Base.string(x::Decimal)
    io = IOBuffer()
    scientific_notation(io, x)
    return String(take!(io))
end

# Zero/one value
Base.zero(::Type{Decimal}) = Decimal(false, 0, 0)
Base.one(::Type{Decimal}) = Decimal(false, 1, 0)

Base.iszero(x::Decimal) = iszero(x.c)

# As long as we do not support Inf/NaN
Base.isfinite(x::Decimal) = true
Base.isnan(x::Decimal) = false

# sign
Base.signbit(x::Decimal) = x.s
