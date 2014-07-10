# Normalization: remove trailing zeros in coefficient
function Base.norm(x::Decimal)
    p = 0
    if x.c != 0
        while x.c % 10^(p+1) == 0
            p += 1
        end
    end
    c = (isa(x.c, Union(Int64, BigInt))) ? BigInt(x.c / 10^p) : int(x.c / 10^p)
    q = (c == 0 && x.s == 0) ? 0 : x.q + p
    Decimal(x.s, abs(c), q)
end
