# Equality

# equals() now depends on == instead
# of the other way round.
function ==(x::Decimal, y::Decimal)
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

    signdiff = y.s - x.s
    if signdiff == 1
        return false
    elseif signdiff == -1
        return true
    end

    diff = y - x

    farther_from_0 = diff.c > 0 || (iszero(diff.c) && diff.q > 0)

    if diff.s == 1
        return !farther_from_0
    else
        return farther_from_0
    end
end
