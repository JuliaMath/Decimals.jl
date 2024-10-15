using Decimals
using Test

@testset "Decimals" begin

global d = [
    Decimal(false, 2, -1)
    Decimal(false, 1, -1)
    Decimal(false, 100, -4)
    Decimal(false, 1512, -2)
    Decimal(true, 3, -2)
    Decimal(true, 4, -6)
]

include("test_constructor.jl")
include("test_decimal.jl")
include("test_norm.jl")
include("test_arithmetic.jl")
include("test_equals.jl")
include("test_round.jl")

end
