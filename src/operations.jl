# Equality
triple_equals(x::Decimal, y::Decimal) = ((x.s === y.s) &&
                                         (x.c === y.c) &&
                                         (x.q === y.q))::Bool
triple_equals(x::Decimal, y::Number) = false
triple_equals(x::Number, y::Decimal) = false

function equals(x::Decinum, y::Decinum)
    x_decimal = normalize((isa(x, Decimal)) ? x : decimal(x))
    y_decimal = normalize((isa(y, Decimal)) ? y : decimal(y))
    triple_equals(x_decimal, y_decimal)
end

# Addition
# To add, convert both decimals to the same exponent.
# (If the exponents are different, use the smaller exponent
# to make sure we're adding integers.)
function add(x::Decimal, y::Decimal)
    cx = (-1)^x.s * x.c * 10^max(x.q - y.q, 0)
    cy = (-1)^y.s * y.c * 10^max(y.q - x.q, 0)
    s = (abs(cx) > abs(cy)) ? x.s : y.s
    d = Decimal(s, abs(cx + cy), min(x.q, y.q))
    normalize(d)
end
add(x::Decimal, y::Number) = add(x, decimal(y))
add(x::Number, y::Decimal) = add(decimal(x), y)

# Negation
negative(x::Decimal) = Decimal((x.s == 1) ? 0 : 1, x.c, x.q)
negative(x::Number) = -x

# Subtraction
subtract(x::Decinum, y::Decinum) = add(x, negative(y))

# Multiplication
function multiply(x::Decimal, y::Decimal)
    s = (x.s == y.s) ? 0 : 1
    d = Decimal(s, x.c * y.c, x.q + y.q)
    normalize(d)
end
multiply(x::Decimal, y::Number) = multiply(x, decimal(y))
multiply(x::Number, y::Decimal) = multiply(decimal(x), y)

# Operator overloading
==(x::Decinum, y::Decinum) = equals(x, y)
is(x::Decinum, y::Decinum) = triple_equals(x, y)
+(x::Decinum, y::Decinum) = add(x, y)
-(x::Decimal) = negative(x)
-(x::Decinum, y::Decinum) = subtract(x, y)
*(x::Decinum, y::Decinum) = multiply(x, y)
