function Base.decompose(x::Decimal)
    if iszero(x)
        return (BigZero, 0, big((-1)^x.s))
    end

    coef = (-1)^x.s * x.c

    if x.q ≥ 0
        return (coef * big(5)^x.q, x.q, BigOne)
    else
        coef, exp = cancelfactor(coef, Val(5))
        q = -x.q - exp
        return (coef, x.q, big(5) ^ q)
    end
end

