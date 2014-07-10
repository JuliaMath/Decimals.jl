# Unit tests for Decimals.jl
# @author jack@tinybike.net

using Decimals
using Base.Test

include("test_constructor.jl")

include("test_decimal.jl")

include("test_norm.jl")

include("test_arithmetic.jl")

include("test_equals.jl")

include("test_round.jl")
