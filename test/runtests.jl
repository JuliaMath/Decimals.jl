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

include("test_arithmetic.jl")
include("test_bigint.jl")
include("test_constructor.jl")
include("test_context.jl")
include("test_decimal.jl")
include("test_equals.jl")
include("test_hash.jl")
include("test_norm.jl")
include("test_parse.jl")
include("test_round.jl")
include("test_show.jl")

include("dectests/test_abs.jl")
include("dectests/test_add.jl")
include("dectests/test_compare.jl")
include("dectests/test_max.jl")
include("dectests/test_min.jl")
include("dectests/test_minus.jl")
include("dectests/test_multiply.jl")
include("dectests/test_plus.jl")

end
