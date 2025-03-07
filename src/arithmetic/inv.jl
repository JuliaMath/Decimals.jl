function Base.inv(x::Decimal)
    if iszero(x)
        throw(DivisionByZeroError())
    elseif isone(x)
        return x
    end

    prec = precision(Decimal)

    # inv(x) = inv(c) * inv(10^q)
    #        = inv(c) * 10^-q
    #        = inv(c) * 10^t * 10^(-q - t)
    #        = 10^t / c * 10^(-q - t)
    #
    # We pick `t` such that
    #
    #   10^t ÷ c
    #
    # has at least `prec + 1` digits (an extra digit for dealing with
    # rounding).
    t = prec + ndigits(x.c) + 1

    c, rem = divrem(BigTen^t, x.c)
    q = -x.q - t

    # When the result is non-exact, and the last coefficient digit is 5, we
    # need to increment the coefficient for correct rounding
    if rem > 0 && isdivisible(c, 5)
        c += 1
    end

    c, m = cancelfactor(c, Val(10))
    q = q + m

    return fix(Decimal(x.s, c, q))
end
