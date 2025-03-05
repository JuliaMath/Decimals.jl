Base.signbit(x::Decimal) = x.s

Base.zero(::Type{Decimal}) = Decimal(false, 0, 0)
Base.one(::Type{Decimal}) = Decimal(false, 1, 0)

function Base.isone(x::Decimal)
    if signbit(x)
        return false
    end

    if x.q < 0
        c, m = cancelfactor(x.c, Val(10), -x.q)
        return isone(c) && (m == -x.q)
    else
        return isone(x.c) && iszero(x.q)
    end
end
Base.iszero(x::Decimal) = iszero(x.c)
Base.isfinite(x::Decimal) = true
Base.isnan(x::Decimal) = false

"""
    normalize(x::Decimal)

Return an equal number reduced to its simplest form with all trailing zeros in
the coefficient removed.

# Examples
```jldoctest
julia> x = dec"1.2000"
1.2000

julia> x.c # Coefficient of `x`
12000

julia> y = normalize(dec"1.2000")
1.2

julia> y.c # Coefficient of `y`
12

julia> x == y
true
```
"""
function normalize(x::Decimal)
    c, e = cancelfactor(x.c, Val(10))
    return fix(Decimal(x.s, c, x.q + e))
end
