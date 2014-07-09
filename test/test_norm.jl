using Decimals
using Base.Test

# Normalization
@test Decimal(1, 151100, -4) == Decimal(1, 1511, -2)
@test Decimal(0, 100100, -5) == Decimal(0, 1001, -3)
@test decimal("3.0") === Decimal(0, 3, 0)
@test decimal("3.0") !== Decimal(0, 30, -1)
@test decimal("3.1400") === Decimal(0, 314, -2)
@test decimal("1234") === Decimal(0, 1234, 0)