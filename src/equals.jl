# Equality

# equals() now depends on == instead
# of the other way round.
function ==(x::Decimal, y::Decimal)
    a = norm(x)
    b = norm(y)
    a.c == b.c && a.q == b.q && a.s == b.s
end

function ==(x::Number, y::Decimal)
    decimal(x) == y
end

function ==(x::Decimal, y::Number)
    x == decimal(y)
end
