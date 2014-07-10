# Rounding
function Base.round(x::Decimal, dpts::Int=0; normal::Bool=false)
    shift = dpts + x.q
    if shift > 0 || shift < x.q
        (normal) ? x : norm(x, rounded=true)
    else
        c = Base.round(x.c / 10^(-shift))
        d = Decimal(x.s, BigInt(c), x.q - shift)
        (normal) ? d : norm(d, rounded=true)
    end
end
