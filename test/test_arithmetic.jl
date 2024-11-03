using Decimals
using Decimals: @with_context
using Test

@testset "Arithmetic" begin

@testset "Addition" begin
    @test Decimal(0.1) + 0.2 == 0.1 + Decimal(0.2) == Decimal(0.1) + Decimal(0.2) == Decimal(0.3)
    @test Decimal.([0.1 0.2]) .+ [0.3 0.1] == Decimal.([0.4 0.3])
    @test Decimal(2147483646) + Decimal(1) == Decimal(2147483647)
    @test Decimal(1,3,-2) + parse(Decimal, "0.2523410412138103") == Decimal(false,2223410412138103,-16)
    @test Decimal(0, 10000000000000000001, -19) + Decimal(0, 1, 0) == Decimal(0, 20000000000000000001, -19)
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
    @test iszero(Decimal(12.1) - Decimal(12.1))
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
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test inv(dec"1") == dec"1"
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test inv(dec"2") == dec"0.5"
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test inv(dec"3") == dec"0.333333333"
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test inv(dec"2") == dec"0.5"
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test inv(dec"4") == dec"0.25"
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test inv(dec"8") == dec"0.125"
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test inv(dec"16") == dec"0.0625"
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test inv(dec"32") == dec"0.03125"
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test inv(dec"64") == dec"0.015625"
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test inv(dec"-2") == dec"-0.5"
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test inv(dec"-4") == dec"-0.25"
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test inv(dec"-8") == dec"-0.125"
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test inv(dec"-16") == dec"-0.0625"
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test inv(dec"-32") == dec"-0.03125"
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test inv(dec"-64") == dec"-0.015625"
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test inv(dec"1e-8") == dec"1e+8"
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test inv(dec"1e-9") == dec"1e+9"
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test inv(dec"1e-10") == dec"1e+10"
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test inv(dec"1e-11") == dec"1e+11"
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test inv(dec"1e-12") == dec"1e+12"
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test inv(dec"1") == dec"1"
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test inv(dec"2") == dec"0.5"
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test inv(dec"3") == dec"0.333333333"
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test inv(dec"4") == dec"0.25"
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test inv(dec"5") == dec"0.2"
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test inv(dec"6") == dec"0.166666667"
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test inv(dec"7") == dec"0.142857143"
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test inv(dec"8") == dec"0.125"
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test inv(dec"9") == dec"0.111111111"
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test inv(dec"10") == dec"0.1"
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test inv(dec"1") == dec"1"
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test inv(dec"1e999999999") == dec"1e-999999999"
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test inv(dec"0.9e999999999") == dec"1.11111111e-999999999"
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test inv(dec"0.99e999999999") == dec"1.01010101e-999999999"
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test inv(dec"0.999999999e999999999") == dec"1.00000000e-999999999"
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test inv(dec"12345678000") == dec"8.10000066e-11"
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test inv(dec"1234567800") == dec"8.10000066e-10"
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test inv(dec"1234567890") == dec"8.10000007e-10"
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test inv(dec"1234567891") == dec"8.10000007e-10"
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test inv(dec"12345678901") == dec"8.10000007e-11"
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test inv(dec"1234567896") == dec"8.10000003e-10"
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test inv(dec"1234567897") == dec"8.10000003e-10"
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test inv(dec"1234567898") == dec"8.10000002e-10"
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test inv(dec"1234567899") == dec"8.10000001e-10"
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test inv(dec"1234567900") == dec"8.10000001e-10"
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test inv(dec"1234567901") == dec"8.10000000e-10"
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test inv(dec"1234567902") == dec"8.09999999e-10"
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test inv(dec"1234567896.000000000000") == dec"8.10000003e-10"
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test inv(dec"1234567896.000000000001") == dec"8.10000003e-10"
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test inv(dec"1234567896.000000000000000000000000000000000000000009") == dec"8.10000003e-10"
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test inv(dec"1234567897.900010000000000000000000000000000000000009") == dec"8.10000002e-10"
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test inv(dec"12345678000") == dec"8.10000066420005e-11"
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test inv(dec"1234567800") == dec"8.10000066420005e-10"
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test inv(dec"1234567890") == dec"8.10000007371000e-10"
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test inv(dec"1234567891") == dec"8.10000006714900e-10"
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test inv(dec"12345678901") == dec"8.10000007305390e-11"
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test inv(dec"1234567896") == dec"8.10000003434400e-10"
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test inv(dec"1.0e+33") == dec"1e-33"
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test inv(dec"10e+33") == dec"1e-34"
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test inv(dec"1.0e-33") == dec"1e+33"
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test inv(dec"10e-33") == dec"1e+32"
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test inv(dec"9.9") == dec"0.101010101"
    @with_context (Emax=999, Emin=-999, precision=8, rounding=RoundNearestTiesAway) @test inv(dec"9.9") == dec"0.10101010"
    @with_context (Emax=999, Emin=-999, precision=7, rounding=RoundNearestTiesAway) @test inv(dec"9.9") == dec"0.1010101"
    @with_context (Emax=999, Emin=-999, precision=6, rounding=RoundNearestTiesAway) @test inv(dec"9.9") == dec"0.101010"
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test inv(dec"2") == dec"0.5"
end

@testset "Division" begin
    @test Decimal(0.2) / Decimal(0.1) == Decimal(2)
    @test Decimal(0.3) / Decimal(0.1) == Decimal(0,3,0)
    @test [Decimal(0.3) / Decimal(0.1), Decimal(0.6) / Decimal(0.1)] == [Decimal(0.3), Decimal(0.6)] ./ Decimal(0.1)
    @test [Decimal(0.3) / 0.1, Decimal(0.6) / 0.1] == [Decimal(0.3), Decimal(0.6)] ./ 0.1
end

end
