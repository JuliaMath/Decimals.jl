using Decimals
using Test

@testset "Decimals" begin

include("test_arithmetic.jl")
include("test_bigint.jl")
include("test_context.jl")
include("test_decimal.jl")
include("test_equals.jl")
include("test_hash.jl")
include("test_parse.jl")
include("test_round.jl")
include("test_show.jl")

@testset "DecTests" begin
    include("dectests/test_abs.jl")
    include("dectests/test_add.jl")
    include("dectests/test_compare.jl")
    include("dectests/test_divide.jl")
    include("dectests/test_max.jl")
    include("dectests/test_min.jl")
    include("dectests/test_minus.jl")
    include("dectests/test_multiply.jl")
    include("dectests/test_normalize.jl")
    include("dectests/test_plus.jl")
    include("dectests/test_subtract.jl")
end

end
