@testset "Parsing" begin
    @testset "tryparse" begin
        @test tryparse(Decimal, "0.01") == Decimal(false, 1, -2)
        @test tryparse(Decimal, ".001") == Decimal(false, 1, -3)
        @test tryparse(Decimal, "15.23") == Decimal(false, 1523, -2)
        @test tryparse(Decimal, "543") == Decimal(false, 543, 0)
        @test tryparse(Decimal, "-345") == Decimal(true, 345, 0)
        @test tryparse(Decimal, "000123") == Decimal(false, 123, 0)
        @test tryparse(Decimal, "-00032") == Decimal(true, 32, 0)
        @test tryparse(Decimal, "200100") == Decimal(false, 2001, 2)
        @test tryparse(Decimal, "-.123") == Decimal(true, 123, -3)
        @test tryparse(Decimal, "1.23000") == Decimal(false, 123, -2)
        @test tryparse(Decimal, "4734.612") == Decimal(false, 4734612, -3)
        @test tryparse(Decimal, "541724.2") == Decimal(false,5417242,-1)
        @test tryparse(Decimal, "2.5e6") == Decimal(false, 25, 5)
        @test tryparse(Decimal, "2.385350e8") == Decimal(false, 238535, 3)
        @test tryparse(Decimal, "12.3e-4") == Decimal(false, 123, -5)
        @test tryparse(Decimal, "-12.3e4") == Decimal(true, 123, 3)
        @test tryparse(Decimal, "-12.3e-4") == Decimal(true, 123, -5)
        @test tryparse(Decimal, "-12.3E-4") == Decimal(true, 123, -5)
        @test tryparse(Decimal, "0.1234567891") == Decimal(false,1234567891, -10)
        @test tryparse(Decimal, "0.12345678912") == Decimal(false,12345678912, -11)

        @test isnothing(tryparse(Decimal, "1.1.1"))
        @test isnothing(tryparse(Decimal, "1f2"))
        @test isnothing(tryparse(Decimal, "  1"))
        @test isnothing(tryparse(Decimal, "1e1e1"))
        @test isnothing(tryparse(Decimal, "1-1"))
    end

    @testset "@dec_str" begin
        @test dec"1.123" == Decimal(0, 1123, -3)
        @test dec"-1.123" == Decimal(1, 1123, -3)
        @test dec"123" == Decimal(0, 123, 0)
        @test dec"-123" == Decimal(1, 123, 0)
        @test dec"1_000.002" == Decimal(0, 1000002, -3)
        @test dec"1_000_000.002" == Decimal(0, 1000000002, -3)

        @test_throws ArgumentError dec"100_"
        @test_throws ArgumentError dec"100_.0"
    end
end
