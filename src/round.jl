# Rounding
function Base.round(x::Decimal, dpts::Int)
    shift = dpts + x.q
    if shift > 0 || shift < x.q
        throw(error("Invalid number of decimal points: $dpts"))
    else
        c = Base.round(x.c / 10^(-shift))
        norm(Decimal(x.s, BigInt(c), x.q - shift))
    end
end
