# Normalization: remove trailing zeros in coefficient
function Base.norm(x::Decimal; rounded::Bool=false)
    p = 0
    if x.c != 0
        while x.c % 10^(p+1) == 0
            p += 1
        end
    end
    # c = (isa(x.c, Union(Int64, BigInt))) ? BigInt(x.c / 10^p) : int(x.c / 10^p)
    c = BigInt(x.c / 10^p)
    q = (c == 0 && x.s == 0) ? 0 : x.q + p
    if rounded
        Decimal(x.s, abs(c), q)
    else
        round(Decimal(x.s, abs(c), q), DIGITS; normal=true)
    end
end
