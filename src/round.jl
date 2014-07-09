# Rounding
function Base.round(x::Decimal, dpts::Int)
    shift = dpts + x.q
    if shift > 0 || shift < x.q
        throw(error("Invalid number of decimal points: $dpts"))
    else
        norm(Decimal(x.s, int(x.c / 10^(-shift)), x.q - shift))
    end
end
