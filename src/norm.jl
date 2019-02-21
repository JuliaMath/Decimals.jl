# Normalization: remove trailing zeros in coefficient
function normalize(x::Decimal; rounded::Bool=false)
    p = 0
    if x.c != 0
        while x.c % 10^(p+1) == 0
            p += 1
        end
    end
    c = BigInt(x.c / 10^p)
    q = (c == 0 && x.s == 0) ? 0 : x.q + p
    if rounded
        Decimal(x.s, abs(c), q)
    else
        round(Decimal(x.s, abs(c), q), digits=DIGITS, normal=true)
    end
end
