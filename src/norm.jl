# Normalization: remove trailing zeros in coefficient
function norm(x::Decimal)
    p = 0
    while x.c % 10^(p+1) == 0
        p += 1
    end
    c = (isa(x.c, Int64)) ? int64(x.c / 10^p) : int(x.c / 10^p)
    Decimal(x.s, abs(c), x.q + p)
end
