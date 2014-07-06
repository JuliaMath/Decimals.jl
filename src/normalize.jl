# Normalization: remove trailing zeros in coefficient
function normalize(x::Decimal)
    p = 0
    while x.c % 10^(p+1) == 0
        p += 1
    end
    Decimal(x.s, int(x.c / 10^p), x.q + p)
end
