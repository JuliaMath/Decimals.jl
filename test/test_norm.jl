using Decimals
using Test

@testset "Normalization" begin

@test Decimal(1, 151100, -4) == Decimal(1, 1511, -2)
@test Decimal(0, 100100, -5) == Decimal(0, 1001, -3)
@test normalize(Decimal(1, 151100, -4)) == Decimal(1, 1511, -2)
@test normalize(Decimal(0, 100100, -5)) == Decimal(0, 1001, -3)
@test parse(Decimal, "3.0") == Decimal(0, 3, 0)
@test parse(Decimal, "3.0") == Decimal(0, 30, -1)
@test parse(Decimal, "3.1400") == Decimal(0, 314, -2)
@test parse(Decimal, "1234") == Decimal(0, 1234, 0)

end
