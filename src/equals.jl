# Equality

# equals() now depends on == instead
# of the other way round.
function ==(x::Decimal, y::Decimal)
    # return early on zero
    x_is_zero = iszero(x)
    y_is_zero = iszero(y)
    if x_is_zero || y_is_zero
        return x_is_zero === y_is_zero
    end

    a = normalize(x)
    b = normalize(y)
    a.c == b.c && a.q == b.q && a.s == b.s
end

Base.iszero(x::Decimal) = iszero(x.c)

function <(x::Decimal, y::Decimal)
    # return early on zero
    if iszero(x) && iszero(y)
        return false
    end

    # avoid normalization if possible
    if x.q == y.q
        return isless(x.s == 0 ? x.c : -x.c, y.s == 0 ? y.c : -y.c)
    end

    diff = y - x

    farther_from_0 = diff.c > 0 || (iszero(diff.c) && diff.q > 0)

    if diff.s == 1
        return !farther_from_0
    else
        return farther_from_0
    end
end
