Base.promote_rule(::Type{Decimal}, ::Type{<:Real}) = Decimal

# override definitions in Base
Base.promote_rule(::Type{BigFloat}, ::Type{Decimal}) = Decimal
Base.promote_rule(::Type{BigInt}, ::Type{Decimal}) = Decimal

Base.:(+)(x::Decimal) = fix(x)
Base.:(-)(x::Decimal) = fix(Decimal(!x.s, x.c, x.q))

# Addition
# To add, convert both decimals to the same exponent.
# (If the exponents are different, use the smaller exponent
# to make sure we're adding integers.)
function Base.:(+)(x::Decimal, y::Decimal)
    if x.q < y.q
        x, y = y, x
    end
    # Here: x.q ≥ y.q
    # a₁ * 10^q₁ + a₂ * 10^q₂ =
    # (a₁ * 10^(q₁ - q₂) + a₂) * 10^q₂
    #  ^^^^^^^^^^^^^^^^^ this is integer because q₁ ≥ q₂
    q = x.q - y.q
    c = (-1)^x.s * x.c * BigTen^q + (-1)^y.s * y.c
    s = signbit(c)
    return normalize(Decimal(s, abs(c), y.q))
end

# Subtraction
Base.:(-)(x::Decimal, y::Decimal) = +(x, -y)

# Multiplication
function Base.:(*)(x::Decimal, y::Decimal)
    s = x.s != y.s
    normalize(Decimal(s, BigInt(x.c) * BigInt(y.c), x.q + y.q))
end

# Inversion
function Base.inv(x::Decimal)
    c = round(BigInt, BigInt(10)^(-x.q + DIGITS) / x.c) # the decimal point of 1/x.c is shifted by -x.q so that the integer part of the result is correct and then it is shifted further by DIGITS to also cover some digits from the fractional part.
    q = -DIGITS # we only need to remember that there are these digits after the decimal point
    normalize(Decimal(x.s, c, q))
end

# Division
Base.:(/)(x::Decimal, y::Decimal) = x * inv(y)

# TODO exponentiation
