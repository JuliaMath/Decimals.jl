using Decimals
using Base.Test

# Addition
@test d[1] + d[2] == d[2] + d[1] == Decimal(0, 3, -1)
@test decimal(0.1) + 0.2 == 0.1 + decimal(0.2) == decimal(0.1) + decimal(0.2) == decimal(0.3)
@test decimal([0.1 0.2]) + [0.3 0.1] == decimal([0.4 0.3])

# Subtraction
@test d[1] - d[2] == Decimal(0, 1, -1)
@test d[3] - d[4] == Decimal(1, 1511, -2)
@test d[4] - d[3] == Decimal(0, 1511, -2)
@test decimal(0.3) - 0.1 == 0.3 - decimal(0.1) == decimal(0.3) - decimal(0.1) == decimal(0.2)
@test decimal([0.3 0.1]) - [0.1 0.5] == decimal([0.2 -0.4])

# Negation
@test -d[1] == Decimal(1, 2, -1)
@test -d[5] == Decimal(0, 3, -2)
@test -decimal([0.3 0.2]) == [-decimal(0.3) -decimal(0.2)]

# Multiplication
@test d[1] * d[2] == Decimal(0, 2, -2)
@test d[1] * d[5] == Decimal(1, 6, -3)
@test d[5] * d[6] == Decimal(0, 12, -8)
@test decimal(0.2) * 0.1 == 0.2 * decimal(0.1) == decimal(0.02)
@test decimal(12.34) * 0.1234 == 12.34 * decimal(0.1234) == decimal(1.522756)
@test decimal(0.21084210) * -2 == -2 * decimal(0.21084210) == decimal(-0.4216842)
@test decimal([0.1 0.2]) .* [3 2] == [Decimal(0,3,-1) Decimal(0,4,-1)]
@test decimal([0.1 0.2]) .* [1.2 2.1] == [Decimal(0,12,-2) Decimal(0,42,-2)]
@test decimal([0.1,0.2]) * [1.2 2.1] == [Decimal(0,12,-2) Decimal(0,21,-2); Decimal(0,24,-2) Decimal(0,42,-2)]
# matrix algebra ops?
# @test decimal([0.1,0.2])' * [1.2 2.1]' ==Decimal(0,54,-2)
# @test decimal([0.1 0.2]) * [1.2, 2.1] ==Decimal(0,54,-2)
