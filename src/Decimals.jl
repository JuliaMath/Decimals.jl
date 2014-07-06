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

# Convert between Decimal objects, numbers, and strings
include("decimal.jl")

# Decimal normalization
include("normalize.jl")

# Addition, subtraction, negation, multiplication, and equality operators
include("operations.jl")

end
