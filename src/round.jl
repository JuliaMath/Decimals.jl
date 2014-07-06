# Rounding
function round(x::Decimal, dpts::Int)
    shift = dpts + x.q
    if shift > 0 || shift < x.q
        throw(error("Invalid number of decimal points: " * string(dpts)))
    else
        d = Decimal(x.s, int(x.c / 10^(-shift)), x.q - shift)
        normalize(d)
    end
end
