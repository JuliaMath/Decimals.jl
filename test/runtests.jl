# Unit tests for Decimals.jl
# @author jack@tinybike.net

using Decimals
using Base.Test

# Decimal constructor
d = [
    Decimal(0, 2, -1),
    Decimal(0, 1, -1),
    Decimal(0, 100, -4),
    Decimal(0, 1512, -2),
    Decimal(1, 3, -2),
    Decimal(1, 4, -6),
]
@test isa(d, Array{Decimal,1})

include("test_decimal.jl")

include("test_equals.jl")

include("test_norm.jl")

include("test_arithmetic.jl")

include("test_rounding.jl")
