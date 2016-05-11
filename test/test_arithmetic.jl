using Decimals
using Base.Test

# Addition
@test decimal(0.1) + 0.2 == 0.1 + decimal(0.2) == decimal(0.1) + decimal(0.2) == decimal(0.3)
@test decimal([0.1 0.2]) + [0.3 0.1] == decimal([0.4 0.3])
@test decimal(2147483646) + decimal(1) == decimal(2147483647)
@test Decimal(1,3,-2) + decimal("0.2523410412138103") == Decimal(0,2223410412138103,-16)

# Subtraction
@test decimal(0.3) - 0.1 == 0.3 - decimal(0.1)
@test 0.3 - decimal(0.1) == decimal(0.3) - decimal(0.1)
@test decimal(0.3) - decimal(0.1) == decimal(0.2)
@test decimal([0.3 0.1]) - [0.1 0.5] == decimal([0.2 -0.4])

# Negation
@test -decimal([0.3 0.2]) == [-decimal(0.3) -decimal(0.2)]

# Multiplication
@test decimal(12.21) * decimal(2.12) == Decimal(0,258852,-4)
@test decimal(12.2112543) * decimal(2.121352) == Decimal(0,259043687318136,-13)
@test decimal(0.2) * 0.1 == 0.2 * decimal(0.1)
@test 0.2 * decimal(0.1) == decimal(0.02)
@test decimal(12.34) * 0.1234 == 12.34 * decimal(0.1234)
@test 12.34 * decimal(0.1234) == decimal(1.522756)
@test decimal(0.21084210) * -2 == -2 * decimal(0.21084210)
@test -2 * decimal(0.21084210) == decimal(-0.4216842)
# @test decimal([0.1 0.2]) .* [3 2] == [Decimal(0,3,-1) Decimal(0,4,-1)]
# @test decimal([0.1 0.2]) .* [1.2 2.1] == [Decimal(0,12,-2) Decimal(0,42,-2)]
# @test decimal([0.1,0.2]) * [1.2 2.1] == [Decimal(0,12,-2) Decimal(0,21,-2); Decimal(0,24,-2) Decimal(0,42,-2)]
@test Decimal(0, 2, -1) * 0.0 == decimal(0)
@test decimal([0.3, 0.6]) .* 5 == [decimal(0.3)*5, decimal(0.6)*5]

# Inversion
@test inv(Decimal(0, 1, -1)) == Decimal(0, 1, 1)
@test inv(Decimal(0, 1, 1)) == Decimal(0, 1, -1)
@test inv(Decimal(1, 2, -1)) == Decimal(1, 5, 0)
@test inv(Decimal(1, 5, 0)) == Decimal(1, 2, -1)
@test inv(Decimal(0, 2, -2)) == Decimal(0, 5, 1)
@test inv(Decimal(0, 5, 1)) == Decimal(0, 2, -2)
@test inv(Decimal(1, 4, -1)) == Decimal(1, 25, -1)
@test inv(Decimal(1, 25, -1)) == Decimal(1, 4, -1)
@test inv(d) == map(inv, d)

# Division
@test decimal(0.2) / decimal(0.1) == decimal(2)
@test decimal(0.3) / decimal(0.1) == Decimal(0,3,0)
@test [decimal(0.3)/decimal(0.1), decimal(0.6)/decimal(0.1)] == [decimal(0.3), decimal(0.6)] ./ decimal(0.1)
@test [decimal(0.3)/0.1, decimal(0.6)/0.1] == [decimal(0.3), decimal(0.6)] ./ 0.1
