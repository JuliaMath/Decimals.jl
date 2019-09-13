using Decimals
using Test

@testset "Arithmetic" begin

@testset "Addition" begin
    @test Decimal(0.1) + 0.2 == 0.1 + Decimal(0.2) == Decimal(0.1) + Decimal(0.2) == Decimal(0.3)
    @test Decimal.([0.1 0.2]) .+ [0.3 0.1] == Decimal.([0.4 0.3])
    @test Decimal(2147483646) + Decimal(1) == Decimal(2147483647)
    @test Decimal(1,3,-2) + parse(Decimal, "0.2523410412138103") == Decimal(0,2223410412138103,-16)
end

@testset "Subtraction" begin
    @test Decimal(0.3) - 0.1 == 0.3 - Decimal(0.1)
    @test 0.3 - Decimal(0.1) == Decimal(0.3) - Decimal(0.1)
    @test Decimal(0.3) - Decimal(0.1) == Decimal(0.2)
    @test Decimal.([0.3 0.1]) .- [0.1 0.5] == Decimal.([0.2 -0.4])
end

@testset "Negation" begin
    @test -Decimal.([0.3 0.2]) == [-Decimal(0.3) -Decimal(0.2)]
    @test -Decimal(0.3) == zero(Decimal) - Decimal(0.3)
    @test iszero(decimal(12.1) - decimal(12.1))
end

@testset "Multiplication" begin
    @test Decimal(12.21) * Decimal(2.12) == Decimal(0,258852,-4)
    @test Decimal(12.2112543) * Decimal(2.121352) == Decimal(0,259043687318136,-13)
    @test Decimal(0.2) * 0.1 == 0.2 * Decimal(0.1)
    @test 0.2 * Decimal(0.1) == Decimal(0.02)
    @test Decimal(12.34) * 0.1234 == 12.34 * Decimal(0.1234)
    @test 12.34 * Decimal(0.1234) == Decimal(1.522756)
    @test Decimal(0.21084210) * -2 == -2 * Decimal(0.21084210)
    @test -2 * Decimal(0.21084210) == Decimal(-0.4216842)
    @test Decimal(0, 2, -1) * 0.0 == zero(Decimal)
    @test Decimal.([0.3, 0.6]) .* 5 == [Decimal(0.3)*5, Decimal(0.6)*5]
    @test one(Decimal) * 1 == Decimal(0, 1, 0)
end

@testset "Inversion" begin
    @test inv(Decimal(0, 1, -1)) == Decimal(0, 1, 1)
    @test inv(Decimal(0, 1, 1)) == Decimal(0, 1, -1)
    @test inv(Decimal(1, 2, -1)) == Decimal(1, 5, 0)
    @test inv(Decimal(1, 5, 0)) == Decimal(1, 2, -1)
    @test inv(Decimal(0, 2, -2)) == Decimal(0, 5, 1)
    @test inv(Decimal(0, 5, 1)) == Decimal(0, 2, -2)
    @test inv(Decimal(1, 4, -1)) == Decimal(1, 25, -1)
    @test inv(Decimal(1, 25, -1)) == Decimal(1, 4, -1)
    @test inv(Decimal(0, 123, -1)) == Decimal(0, 813008130081300813, -19) # 1/12.3 ≈ 0.08 
end

@testset "Division" begin
    @test Decimal(0.2) / Decimal(0.1) == Decimal(2)
    @test Decimal(0.3) / Decimal(0.1) == Decimal(0,3,0)
    @test [Decimal(0.3) / Decimal(0.1), Decimal(0.6) / Decimal(0.1)] == [Decimal(0.3), Decimal(0.6)] ./ Decimal(0.1)
    @test [Decimal(0.3) / 0.1, Decimal(0.6) / 0.1] == [Decimal(0.3), Decimal(0.6)] ./ 0.1
end

end
