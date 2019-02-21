using Decimals
using Test

@testset "Decimals" begin

global d = [
    Decimal(0, 2, -1)
    Decimal(0, 1, -1)
    Decimal(0, 100, -4)
    Decimal(0, 1512, -2)
    Decimal(1, 3, -2)
    Decimal(1, 4, -6)
]

include("test_constructor.jl")
include("test_decimal.jl")
include("test_norm.jl")
include("test_arithmetic.jl")
include("test_equals.jl")
include("test_round.jl")

end
