using Decimals
using Test

@testset "Conversions" begin
    @testset "$T" for T in [Float32, Float64, BigFloat]
        @test T(Decimal(T(0.0))) == T(0.0)
        @test T(Decimal(T(-0.0))) == T(-0.0)
        @test T(Decimal(T(1.1))) == T(1.1)
        @test T(Decimal(T(-1.1))) == T(-1.1)
        @test_throws ArgumentError Decimal(T(Inf))
        @test_throws ArgumentError Decimal(T(NaN))
    end

    @testset "$T" for T in [Int32, Int64, BigInt]
        @test T(Decimal(T(0))) == T(0)
        @test T(Decimal(T(1))) == T(1)
        @test T(Decimal(T(-1))) == T(-1)
    end
end

@testset "Decimal to String" begin
    @test string(Decimal(false, 1, -2)) == "0.01"
    @test string(Decimal(false, 1, -3)) == "0.001"
    @test string(Decimal(false, 1523, -2)) == "15.23"
    @test string(Decimal(false, 543, 0)) == "543"
    @test string(Decimal(true, 345, 0)) == "-345"
    @test string(Decimal(false, 123, 0)) == "123"
    @test string(Decimal(true, 32, 0)) == "-32"
    @test string(Decimal(false, 2001, 2)) == "2.001E+5"
    @test string(Decimal(true, 123, -3)) == "-0.123"
    @test string(Decimal(false, 123, -2)) == "1.23"
end

@testset "Number functions" begin
    @test signbit(Decimal(0, 0, 1)) == false
    @test signbit(Decimal(1, 0, 1)) == true

    @test iszero(zero(Decimal))
    @test iszero(Decimal(0, 0, 1))
    @test !iszero(Decimal(0, 1, 1))

    @test isone(one(Decimal))
    @test isone(Decimal(0, 1, 0))
    @test !isone(Decimal(0, 0, 1))

    @test isfinite(Decimal(0, 1, 1))
    @test !isnan(Decimal(0, 1, 1))
end
