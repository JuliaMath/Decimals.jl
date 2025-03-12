using Decimals
using ScopedValues
using Test
using Decimals: @with_context, with_context

@testset "Context" begin
    @testset "precision" begin
        @test precision(Decimal) == 28
        prec = 42
        with_context(precision=prec) do
            @test precision(Decimal) == prec
        end
        @with_context (precision=prec,) @test precision(Decimal) == prec
    end

    @testset "rounding" begin
        @test rounding(Decimal) == RoundNearest
        with_context(rounding=RoundNearestTiesAway) do
            @test rounding(Decimal) == RoundNearestTiesAway
        end
        @with_context (rounding=RoundNearestTiesAway,) @test rounding(Decimal) == RoundNearestTiesAway
    end

    @testset "overflow" begin
        with_context(precision=3, Emax=9) do
            x = Decimal(0, 123, 7)
            @test x == Decimals.fix(x)

            x = Decimal(0, 123, 8)
            @test_throws OverflowError Decimals.fix(x)
        end

        @with_context (precision=3, Emax=9) begin
            x = Decimal(0, 123, 7)
            @test x == Decimals.fix(x)

            x = Decimal(0, 123, 8)
            @test_throws OverflowError Decimals.fix(x)
        end
    end
end
