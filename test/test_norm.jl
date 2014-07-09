using Decimals
using Base.Test

# Normalization
@test Decimal(1, 151100, -4) == Decimal(1, 1511, -2)
@test Decimal(0, 100100, -5) == Decimal(0, 1001, -3)
