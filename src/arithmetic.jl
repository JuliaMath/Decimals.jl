# Addition
# To add, convert both decimals to the same exponent.
# (If the exponents are different, use the smaller exponent
# to make sure we're adding integers.)
function +(x::Decimal, y::Decimal)
    cx = (-1)^x.s * x.c * 10^max(x.q - y.q, 0)
    cy = (-1)^y.s * y.c * 10^max(y.q - x.q, 0)
    s = (abs(cx) > abs(cy)) ? x.s : y.s
    norm(Decimal(s, abs(cx + cy), min(x.q, y.q)))
end
+(x::Decimal, y::Number) = +(x, decimal(y))
+(x::Number, y::Decimal) = +(decimal(x), y)

# Negation
-(x::Decimal) = Decimal((x.s == 1) ? 0 : 1, x.c, x.q)

# Subtraction
-(x::Decinum, y::Decinum) = +(x, -y)

# Multiplication
function *(x::Decimal, y::Decimal)
    s = (x.s == y.s) ? 0 : 1
    norm(Decimal(s, x.c * y.c, x.q + y.q))
end
*(x::Decimal, y::Number) = *(x, decimal(y))
*(x::Number, y::Decimal) = *(decimal(x), y)

# TODO division
# TODO exponentiation
# TODO max, min