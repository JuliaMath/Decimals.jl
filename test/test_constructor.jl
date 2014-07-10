using Decimals
using Base.Test

# Decimal constructor
d = [
    Decimal(0, 2, -1),
    Decimal(0, 1, -1),
    Decimal(0, 100, -4),
    Decimal(0, 1512, -2),
    Decimal(1, 3, -2),
    Decimal(1, 4, -6),
]

@test isa(d, Array{Decimal,1})
