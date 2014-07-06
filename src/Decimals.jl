# Basic routines for exact decimal arithmetic (ref. IEEE 754)
# @author jack@tinybike.net (Jack Peterson), 7/3/2014

module Decimals

import Base: string, float

# TODO export equality operators
export Decimal, decimal, string, float, equals, ==, triple_equals, is,
    add, subtract, negative, multiply

# Numerical value: (-1)^s * c * 10^q
type Decimal
    s::Integer  # sign can be 0 (+) or 1 (-)
    c::Integer  # coefficient (or significand)
    q::Integer  # exponent
end

# Convert a string to a decimal, e.g. "0.01" -> Decimal(0, 1, -2)
function decimal(str::String)
    s = (str[1] == '-') ? 1 : 0
    c = ""
    index = 0
    q = 0
    if 'e' in str
        n, expo = split(str, 'e')
        n = split(n, '.')
        shift = length(n[2])
        return decimal(join(n) * repeat("0", int(expo) - shift))
    else
        for chr in str
            index += 1
            if chr == '.'
                q = int(length(str) - index)
            else
                c *= string(chr)
            end
        end
        d = Decimal(s, abs(int(c)), -q)
    end
    normalize(d)
end

# Convert a number to a decimal
decimal(x::Number) = decimal(string(x))

# Convert a decimal to a string
function string(x::Decimal)
    c = string(x.c)
    if x.q > 0
        for i in 1:x.q
            c *= "0"
        end
    elseif x.q < 0
        shift = x.q + length(c)
        if shift > 0
            c = c[1:shift] * "." * c[shift+1:end]
        else
            c = "0." * repeat("0", -shift) * c            
        end
    end
    ((x.s == 1) ? "-" : "") * c
end

# Convert a decimal to a float
float(x::Decimal) = float(string(x))

# Equality
triple_equals(x::Decimal, y::Decimal) = ((x.s === y.s) &&
                                         (x.c === y.c) &&
                                         (x.q === y.q))::Bool
triple_equals(x::Decimal, y::Number) = false
triple_equals(x::Number, y::Decimal) = false

function equals(x::Union(Decimal, Number), y::Union(Decimal, Number))
    x_decimal = normalize((isa(x, Decimal)) ? x : decimal(x))
    y_decimal = normalize((isa(y, Decimal)) ? y : decimal(y))
    triple_equals(x_decimal, y_decimal)
end

# Normalization: remove trailing zeros in coefficient
function normalize(x::Decimal)
    p = 0
    while x.c % 10^(p+1) == 0
        p += 1
    end
    Decimal(x.s, int(x.c / 10^p), x.q + p)
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

# Negation
negative(x::Decimal) = Decimal((x.s == 1) ? 0 : 1, x.c, x.q)

# Subtraction
subtract(x::Decimal, y::Decimal) = add(x, negative(y))

# Multiplication
function multiply(x::Decimal, y::Decimal)
    s = (x.s == y.s) ? 0 : 1
    d = Decimal(s, x.c * y.c, x.q + y.q)
    normalize(d)
end

# Operator overloading
==(x::Decimal, y::Decimal) = equals(x, y)

is(x::Union(Decimal, Number), y::Union(Decimal, Number)) = triple_equals(x, y)

+(x::Decimal, y::Decimal) = add(x, y)

-(x::Decimal) = negative(x)

-(x::Decimal, y::Decimal) = subtract(x, y)

*(x::Decimal, y::Decimal) = multiply(x, y)

end
