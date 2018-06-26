# Pure Julia decimal arithmetic
# @license MIT
# @author jack@tinybike.net (Jack Peterson), 7/3/2014
__precompile__()

module Decimals
    import Base: ==, +, -, *, /, <, float, norm, inv, round

    export Decimal,
           decimal,
           decimal,
           number

    const DIGITS = 20

    # Numerical value: (-1)^s * c * 10^q
    struct Decimal <: Real
        s::Integer  # sign can be 0 (+) or 1 (-)
        c::BigInt   # coefficient (significand), must be non-negative
        q::Integer  # exponent
    end

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
