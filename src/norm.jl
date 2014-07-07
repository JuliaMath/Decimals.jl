# Normalization: remove trailing zeros in coefficient
function norm(x::Decimal)
    p = 0
    while x.c % 10^(p+1) == 0
        p += 1
    end
    Decimal(x.s, abs(int(x.c / 10^p)), x.q + p)
end
