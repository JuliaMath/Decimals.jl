function _round(x::Decimal, r::RoundingMode, digits::Integer)
    dec_places = -x.q
    if digits ≥ dec_places
        return x
    end

    d = dec_places - digits
    c = div(x.c, BigTen ^ d, r)
    return Decimal(x.s, c, x.q + d)
end

function _round(x::Decimal, r::RoundingMode,
        digits::Union{Nothing, Integer},
        sigdigits::Union{Nothing, Integer})
    if !isnothing(digits) && !isnothing(sigdigits)
        throw(ArgumentError("`round` cannot use both `digits` and `sigdigits` arguments"))
    end

    if isnothing(digits) && isnothing(sigdigits)
        digits = 0
    elseif isnothing(digits)
        digits = -(ndigits(x.c) + x.q - sigdigits)
    end

    return _round(x, r, digits)
end

for r in (RoundingMode{:Up},
          RoundingMode{:Down},
          RoundingMode{:FromZero},
          RoundingMode{:Nearest},
          RoundingMode{:NearestTiesAway},
          RoundingMode{:ToZero})
    @eval function Base.round(x::Decimal, r::$r;
                     digits::Union{Nothing, Integer}=nothing,
                     sigdigits::Union{Nothing, Integer}=nothing)
        return _round(x, r, digits, sigdigits)
    end

    if VERSION < v"1.9"
        @eval function Base.round(::Type{T}, x::Decimal, r::$r) where T<:Integer
            return T(_round(x, r, 0))
        end
    end
end

