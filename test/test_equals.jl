using Decimals
using Base.Test

# Equality
@test isequal(Decimal(0, 2, -3), Decimal(0, 2, -3))
@test ~isequal(Decimal(0, 2, -3), Decimal(0, 2, 3))
@test isequal(Decimal(0, 2, -3), 0.002)
@test isequal(Decimal(1, 2, 0), -2)
@test ~isequal(Decimal(1, 2, 0), 2)

@test isequal(0.1, 0.1)
@test isequal(2, 2)

@test Decimal(0, 2, -3) == Decimal(0, 2, -3)
@test Decimal(0, 2, -3) != Decimal(0, 2, 3)
@test Decimal(0, 2, -3) == 0.002

@test -2 == Decimal(1, 2, 0)
@test 2 != Decimal(1, 2, 0)

@test Decimal(1, 2, 0) == -2
@test Decimal(1, 2, 0) != 2

@test 0.1 == 0.1
@test 2 == 2

# Triple equals
# Is there a way to redefine === in Julia 4.x?
# @test Decimal(0, 2, -3) === Decimal(0, 2, -3)
# @test decimal("0.2") === 0.2
