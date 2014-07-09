using Decimals
using Base.Test

# Equality
@test isequal(Decimal(0, 2, -3), Decimal(0, 2, -3))
@test ~isequal(Decimal(0, 2, -3), Decimal(0, 2, 3))
@test isequal(Decimal(0, 2, -3), 0.002)
@test isequal(Decimal(1, 2, 0), -2)
@test ~isequal(Decimal(1, 2, 0), 2)

@test Decimal(0, 2, -3) == Decimal(0, 2, -3)
@test Decimal(0, 2, -3) != Decimal(0, 2, 3)
@test Decimal(0, 2, -3) == 0.002
@test Decimal(1, 2, 0) == -2
@test Decimal(1, 2, 0) != 2

# Triple equals
@test is(Decimal(0, 2, -3), Decimal(0, 2, -3))
@test ~is(decimal("0.2"), 0.2)

@test Decimal(0, 2, -3) === Decimal(0, 2, -3)
@test decimal("0.2") !== 0.2
