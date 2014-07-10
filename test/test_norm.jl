using Decimals
using Base.Test

# Normalization
@test Decimal(1, 151100, -4) == Decimal(1, 1511, -2)
@test Decimal(0, 100100, -5) == Decimal(0, 1001, -3)
@test is(norm(Decimal(1, 151100, -4)), Decimal(1, 1511, -2))
@test is(norm(Decimal(0, 100100, -5)), Decimal(0, 1001, -3))
@test is(decimal("3.0"), Decimal(0, 3, 0))
@test ~is(decimal("3.0"), Decimal(0, 30, -1))
@test is(decimal("3.1400"), Decimal(0, 314, -2))
@test is(decimal("1234"), Decimal(0, 1234, 0))
