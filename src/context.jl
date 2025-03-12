using ScopedValues

"""
    Context

User-selectable parametrization of the decimal arithmetics. The parameters are:

| Parameter                | Description                                                       |
|:-------------------------|:------------------------------------------------------------------|
| `precision::Int`         | Maximum number of significand digits (default: `28`)              |
| `rounding::RoundingMode` | Rounding mode to be used when necessary (default: `RoundNearest`) |
| `Emax::Int`              | Maximum adjusted exponent (default: `999999`)                     |
| `Emin::Int`              | Minimum adjusted exponent (default: `-999999`)                    |

The parameters can be set via the (unexported) function [`with_context`](@ref)
or macro [`@with_context`](@ref):
```jldoctest
julia> Decimals.with_context(precision=1) do
           +dec"0.1234"
       end
0.1

julia> Decimals.@with_context (precision=1,) +dec"0.1234"
0.1
```
"""
Base.@kwdef struct Context
    precision::Int=28
    rounding::RoundingMode=RoundNearest
    Emax::Int=999999
    Emin::Int=-999999
end

const CONTEXT = ScopedValue(Context())

Base.precision(::Type{Decimal}) = CONTEXT[].precision
Base.rounding(::Type{Decimal}) = CONTEXT[].rounding

"""
    with_context(f; kwargs...)

Run `f` with [`Context`](@ref) parametrized by `kwargs`.

# Examples

```jldoctest
julia> Decimals.with_context(precision=42) do
    precision(Decimal)
end
42
```

See also [`@with_context`](@ref).
"""
function with_context(f; kwargs...)
    with(f, CONTEXT => Context(;kwargs...))
end

"""
    @with_context params expr

Run `expr` with [`Context`](@ref) parametrized by a named tuple `params`.

# Examples

```jldoctest
julia> Decimals.@with_context (precision=42, ) precision(Decimal)
42
```

See also [`with_context`](@ref).
"""
macro with_context(params, expr)
    return quote
        @with CONTEXT => Context(;$(esc(params))...) $(esc(expr))
    end
end

"""
    fix(x)

Round and fix the exponent of `x` to keep it within the precision and exponent
limits as given by the current `CONTEXT`.
"""
function fix(x::Decimal)
    prec = precision(Decimal)
    rmod = rounding(Decimal)

    Emin, Emax = CONTEXT[].Emin, CONTEXT[].Emax
    Etiny = Emin - prec + 1
    Etop = Emax - prec + 1

    if iszero(x)
        return Decimal(x.s, x.c, clamp(x.q, Etiny, Etop))
    end

    clen = ndigits(x.c)
    exp_min = clen + x.q - prec

    # Equivalent to `clen + x.q - 1 > Emax`
    if exp_min > Etop
        throw(OverflowError("Exponent limit ($Emax) exceeded: $x"))
    end

    subnormal = exp_min < Etiny
    if subnormal
        exp_min = Etiny
    end

    # Number of digits and exponent within bounds
    if x.q ≥ exp_min
        return x
    end

    # Number of digits of the resulting coefficient
    digits = clen + x.q - exp_min
    if digits < 0
        x = Decimal(x.s, BigOne, exp_min - 1)
        digits = 0
    end

    # Number of least significant digits to remove from `c`
    trun_len = clen - digits

    # Signed coefficient for rounding modes like RoundToZero
    c = (-1)^x.s * x.c

    # Split `c` into `digits` most significant digits and `trun_len` least
    # significant digits
    # This is like round(c, rmod, sigdigits=digits), except here we can
    # tell from `rem` if the rounding was lossless
    c, rem = divrem(c, BigTen ^ trun_len, rmod)

    # Rounding is exact if the truncated digits were zero
    exact = iszero(rem)

    # If the number of digits exceeded `digits` after rounding,
    # it means that `c` was like 99...9 and was rounded up,
    # becoming                  100...0, so `c` is divisible by 10
    if ndigits(c) > prec
        c = exactdiv(c, 10)
        exp_min += 1
    end

    # Exponent might have exceeded due to rounding
    if exp_min > Etop
        throw(OverflowError("Exponent limit ($Emax) exceeded: $x"))
    end

    x = Decimal(x.s, abs(c), exp_min)

    #if subnormal && !exact
    #    throw(ErrorException("Underflow"))
    #end

    return x
end

