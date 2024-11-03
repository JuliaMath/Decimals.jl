Base.promote_rule(::Type{Decimal}, ::Type{<:Real}) = Decimal

# override definitions in Base
Base.promote_rule(::Type{BigFloat}, ::Type{Decimal}) = Decimal
Base.promote_rule(::Type{BigInt}, ::Type{Decimal}) = Decimal

"""
    DivisionByZeroError

Division was attempted with a denominator value of 0.
"""
struct DivisionByZeroError <: Exception end

"""
    UndefinedDivisionError

Division was attempted with both numerator and denominator value of 0.
"""
struct UndefinedDivisionError <: Exception end

Base.:(+)(x::Decimal) = fix(x)
Base.:(-)(x::Decimal) = fix(Decimal(!x.s, x.c, x.q))

function Base.:(+)(x::Decimal, y::Decimal)
    rmod = rounding(Decimal)

    # Handle zero operands
    if iszero(x) && iszero(y)
        s = (x.s && y.s) || (rmod == RoundDown)
        return Decimal(s, 0, min(x.q, y.q))
    elseif iszero(x) # && !iszero(y)
        return +(y)
    elseif iszero(y) # && !iszero(x)
        return +(x)
    end

    # Make sure that x.q ≥ y.q
    if x.q < y.q
        x, y = y, x
    end

    # We are computing
    #
    #    (-1)^x.s * x.c * 10^x.q         + (-1)^y.s * y.c * 10^y.q =
    #   [(-1)^x.s * x.c * 10^(x.q - y.q) + (-1)^y.s * y.c] * 10^y.q,
    #
    # where `10^(x.q - y.q)` is an integer because `x.q ≥ y.q`.
    #
    # Sometimes, `x.q` can be much larger than `y.q`, which would result in
    # a huge coefficient `x.c * 10^(x.q - y.q)`. We want to prevent that.
    #
    # In the end, the resulting coefficient is still constraned by precision.
    # Let `Ex, Ey` denote the adjusted exponents of `x` and `y`. If
    #
    #                       Ey < min(x.q - 1, Ex - prec - 1)
    #   ndigits(y.c) + y.q - 1 < min(x.q - 1, ndigits(x.c) + x.q - 1 - prec - 1)
    #       ndigits(y.c) + y.q < x.q + min(0, ndigits(x.c) - prec - 1)
    #
    # then we can replace `y` by a number `z` whose adjusted exponent `E`
    # satisfies the equation
    #
    #   E = min(x.q - 1, Ex - prec - 1)
    #
    # and the result `x + z` equals `x + y` after rounding.
    #
    # From the above equation, we get that
    #
    #   ndigits(z.c) + z.q = x.q + min(0, ndigits(x.c) - precision - 1)
    #
    # Setting `z.c = 1`, we have `ndigits(z.c) = 1`, and thus
    #
    #   z.q = x.q - 1 + min(0, ndigits(x.c) - precision - 1).
    #
    # The problem of a huge coefficient is now gone because the difference
    #
    #   x.q - z.q = 1 - min(0, ndigits(x.c) - precision - 1)
    #             = 1 + max(0, precision - ndigits(x.c) - 1)
    #
    # is upper-bounded by precision.

    v = x.q + min(0, ndigits(x.c) - precision(Decimal) - 1)
    if ndigits(y.c) + y.q < v
        y = Decimal(y.s, BigOne, v - 1)
    end

    xc = x.c * BigTen ^ (x.q - y.q)
    yc = y.c
    q = y.q

    # The addition now amounts to
    #
    #   ((-1)^x.s * xc + (-1)^y.s * yc) * 10^q
    #    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #
    # We take some extra steps to compute the addition highlighted above while
    # allocating as few BigInts as possible

    # If the signs are equal, we compute either `x + y` or `-x - y`, which can
    # be generally written as `s * (x + y)`, where `s` is the sign of `x` and `y`
    if x.s == y.s
        return fix(Decimal(x.s, xc + yc, q))
    end

    # If the signs `x.s` and `y.s` differ, we compute either `xc - yc` or
    # `yc - xc`. There are four possibilities:
    #
    #   Signs
    #   x   y   Magnit.   Result
    #   -----------------------------------
    #   +   -   xc > yc   +(xc - yc) * 10^q
    #   +   -   xc ≤ yc   -(yc - xc) * 10^q
    #   -   +   xc > yc   -(xc - yc) * 10^q
    #   -   +   xc ≤ yc   +(yc - xc) * 10^q
    #
    # If the result is zero (i.e., `xc == yc`), it should be negative if the
    # rounding mode is `RoundDown` and positive otherwise.

    if xc == yc
        return fix(Decimal(rmod === RoundDown, BigZero, q))
    elseif xc > yc
        return fix(Decimal(x.s, xc - yc, q))
    else
        return fix(Decimal(y.s, yc - xc, q))
    end
end

function Base.:(-)(x::Decimal, y::Decimal)
    # Doing `x + (-y)` might involve intermediate rounding due to `-y`
    y = Decimal(!y.s, y.c, y.q)
    return x + y
end

function Base.:(*)(x::Decimal, y::Decimal)
    s = x.s != y.s
    return fix(Decimal(s, x.c * y.c, x.q + y.q))
end

function Base.:(/)(x::Decimal, y::Decimal)
    if iszero(y)
        if iszero(x)
            throw(UndefinedDivisionError())
        else
            throw(DivisionByZeroError())
        end
    end

    s = x.s != y.s

    # 0 / y, where y ≠ 0
    if iszero(x)
        return Decimal(s, BigZero, x.q - y.q)
    end

    prec = precision(Decimal)

    # We are computing
    #
    #     (x.c * 10^x.q) / (y.c * 10^y.q)
    #   = (x.c / y.c) * 10^(x.q - y.q).
    #
    # The coefficient `x.c / y.c` is not an integer in general.
    # We could just compute the division, resulting in a BigFloat, and round
    # the result. However, we would have to use `setprecision` to ensure the
    # BigFloat has enough precision. To avoid that, we compute the division
    # with a sufficient precision ourselves.
    #
    # We write the division as
    #
    #     (x.c / y.c) * 10^(x.q - y.q) * 10^(d - d)
    #   = ((x.c * 10^d) / y.c) * 10^(x.q - y.q - d)        (P1)
    #   = (x.c / (y.c * 10^(-d))) * 10^(x.q - y.q - d),    (P2)
    #
    # where `d` is any integer, which we use to increase the dividend `x.c` (if
    # `d ≥ 0`) or the divisor `y.c` (if `d < 0`) before performing integer
    # division so that the result has required precision.
    #
    # Assume that `x.c * 10^d` has `m + d` digits and `y.c` has `n` digits,
    # which means
    #
    #   10^(m + d - 1) ≤ x < 10^(m + d)
    #       10^(n - 1) ≤ y < 10^n.
    #
    # We can thus bound the quotient `(x.c * 10^d) / y.c`:
    #
    #   10^(m + d - 1) / 10^n < x/y < 10^(m + d) / 10^(n - 1)
    #      10^(m + d - n - 1) < x/y < 10^(m + d - n + 1)
    #
    # We set `d` so that the lower-bound has `prec + 1` digits (i.e., it is
    # equal to `10^prec`):
    #
    #   10^(m + d - n - 1) = 10^prec
    #                    d = prec - m + n + 1
    #
    # If the lower-bound has `prec + 1` digits, it means that any quotient has
    # at least that amount of digits. We need `prec + 1` (instead of `prec`)
    # digits because the least-significant digit is needed for correct
    # rounding (done by the `fix` function).

    d = prec - ndigits(x.c) + ndigits(y.c) + 1
    q = x.q - y.q - d

    if d > 0
        # If `d` is positive, we take the path denoted (P1)
        c = div(x.c * BigTen^d, y.c)
    elseif d < 0
        # If `d` is negative, we take the path denoted (P2)
        c = div(x.c, y.c * BigTen^(-d))
    else
        c = div(x.c, y.c)
    end

    return fix(Decimal(s, c, q))
end

function Base.inv(x::Decimal)
    return Decimal(false, BigOne, 0) / x
end

Base.abs(x::Decimal) = fix(Decimal(false, x.c, x.q))

# TODO exponentiation
