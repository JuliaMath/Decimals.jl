# Equality
triple_equals(x::Decimal, y::Decimal) = ((x.s === y.s) &&
                                         (x.c === y.c) &&
                                         (x.q === y.q))::Bool
triple_equals(x::Decimal, y::Number) = false
triple_equals(x::Number, y::Decimal) = false

equals(x::Decimal, y::Decimal) = triple_equals(normalize(x), normalize(y))
equals(x::Decimal, y::Number) = equals(x, decimal(y))
equals(x::Number, y::Decimal) = equals(decimal(x), y)

# Operator overloading
==(x::Decinum, y::Decinum) = equals(x, y)
is(x::Decinum, y::Decinum) = triple_equals(x, y)
