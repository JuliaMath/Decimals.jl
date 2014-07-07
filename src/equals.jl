# Equality
is(x::Decimal, y::Decimal) = ((x.s === y.s) &&
                              (x.c === y.c) &&
                              (x.q === y.q))::Bool
is(x::Decimal, y::Number) = false
is(x::Number, y::Decimal) = false

isequal(x::Decimal, y::Decimal) = is(norm(x), norm(y))
isequal(x::Decimal, y::Number) = isequal(x, decimal(y))
isequal(x::Number, y::Decimal) = isequal(decimal(x), y)
==(x::Decinum, y::Decinum) = isequal(x, y)
