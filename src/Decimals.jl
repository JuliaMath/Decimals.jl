# Decimal arithmetic in Julia
# @license MIT
# @author jack@tinybike.net (Jack Peterson), 7/3/2014

module Decimals

import Core: ===
import Base: string, float, ==

export Decimal, decimal, string, float, number, norm, round, isequal, is, isint, inv, +, -, *, /, ==, ===

DIGITS = 8

# Numerical value: (-1)^s * c * 10^q
immutable Decimal
    s::Integer  # sign can be 0 (+) or 1 (-)
    c::Integer  # coefficient (or significand)
    q::Integer  # exponent
end

Decinum = Union(Decimal, Number)

# Convert between Decimal objects, numbers, and strings
include("decimal.jl")

# Decimal normalization
include("norm.jl")

# Addition, subtraction, negation, multiplication
include("arithmetic.jl")

# Equality
include("equals.jl")

# Rounding
include("round.jl")

end
