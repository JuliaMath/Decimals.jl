function Base.sqrt(x::Decimal)
    if iszero(x)
        return x
    end

    if signbit(x)
        throw(DomainError(x, "Square root of decimals is defined only for non-negative arguments"))
    end

    if isone(x)
        return x
    end

    (; c, q) = x

    # We are computing
    #
    #   sqrt(c * 10^q) = sqrt(c) * sqrt(10^q)
    #                  =      d  * sqrt(10^q)
    #
    # where `d` is constrained to have `precision` digits:
    #
    #         10^(p - 1) ≤       d ≤ 10^p
    #         10^(p - 1) ≤ sqrt(c) ≤ 10^p
    #   10^(2 * (p - 1)) ≤       c ≤ 10^(2p)
    #
    # Consequently, we need `c` to have at least `2 * (precision - 1)` digits.
    # However, to figure out correct rounding, we compute in an increased
    # precision, `precision + 1`.
    n = 1 + 2 * precision(Decimal) - ndigits(c)
    if n > 0
        c = c * BigTen^n
        q = q - n
    end

    # To make sure, that we can compute `sqrt(10^q)`, we make sure that `q` is
    # even, `q = 2r` so that `sqrt(10^q) = sqrt(10^2r) = 10^r`.
    if isodd(q)
        c = 10 * c
        q -= 1
    end

    d = isqrt(c)
    r = q ÷ 2

    # If `d % 5 == 0`, we add one to `d` so that `fix` takes care of the
    # rounding properly
    if isdivisible(d, 5) && d^2 != c
        d += 1
    end
    return fix(Decimal(0, d, r))
end

