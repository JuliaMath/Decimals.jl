# Rounding
function round(x::Decimal; digits::Int=0, normal::Bool=false)
    shift = BigInt(digits) + x.q
    if shift > BigInt(0) || shift < x.q
        (normal) ? x : normalize(x, rounded=true)
    else
        c = Base.round(x.c / BigInt(10)^(-shift))
        d = Decimal(x.s, BigInt(c), x.q - shift)
        (normal) ? d : normalize(d, rounded=true)
    end
end

function trunc(x::Decimal; digits::Int=0, normal::Bool=false)
    shift = BigInt(digits) + x.q
    if shift > BigInt(0) || shift < x.q
        (normal) ? x : normalize(x, rounded=true)
    else
        c = Base.trunc(x.c / BigInt(10)^(-shift))
        d = Decimal(x.s, BigInt(c), x.q - shift)
        (normal) ? d : normalize(d, rounded=true)
    end
end
