# Pure Julia decimal arithmetic
# @license MIT
# @author jack@tinybike.net (Jack Peterson), 7/3/2014

module Decimals

export Decimal,
       normalize,
       @dec_str,
       DivisionByZeroError,
       UndefinedDivisionError

const DIGITS = 20

# Numerical value: (-1)^s * c * 10^q
struct Decimal <: AbstractFloat
    s::Bool  # sign can be 0 (+) or 1 (-)
    c::BigInt   # coefficient (significand), must be non-negative
    q::Int  # exponent

    Decimal(s::Integer, c::Integer, e::Integer) = new(Bool(s), c, e)
end

include("bigint.jl")
include("context.jl")
include("conversion.jl")
include("decimal.jl")
include("arithmetic/elementary.jl")
include("arithmetic/exceptions.jl")
include("arithmetic/inv.jl")
include("arithmetic/sqrt.jl")
include("equals.jl")
include("round.jl")
include("hash.jl")
include("parse.jl")
include("show.jl")

end
