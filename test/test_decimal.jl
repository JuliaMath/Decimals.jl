using Decimals
using Test

@testset "Conversions" begin

@testset "String/Number to Decimal" begin
    @testset "Direct" begin
        @test parse(Decimal, "0.01") == Decimal(0.01) == Decimal(0, 1, -2)
        @test parse(Decimal, ".001") == Decimal(.001) == Decimal(0, 1, -3)
        @test parse(Decimal, "15.23") == Decimal(15.23) == Decimal(0, 1523, -2)
        @test parse(Decimal, "543") == Decimal(543) == Decimal(0, 543, 0)
        @test parse(Decimal, "-345") == Decimal(-345) == Decimal(1, 345, 0)
        @test parse(Decimal, "000123") == Decimal(000123) == Decimal(0, 123, 0)
        @test parse(Decimal, "-00032") == Decimal(-00032) == Decimal(1, 32, 0)
        @test parse(Decimal, "200100") == Decimal(200100) == Decimal(0, 2001, 2)
        @test parse(Decimal, "-.123") == Decimal(-.123) == Decimal(1, 123, -3)
        @test parse(Decimal, "1.23000") == Decimal(1.23000) == Decimal(0, 123, -2)
        @test parse(Decimal, "4734.612") == Decimal(4734.612) == Decimal(0, 4734612, -3)
        @test parse(Decimal, "541724.2") == Decimal(541724.2) == Decimal(0,5417242,-1)
        @test parse(Decimal, "2.5e6") == Decimal(2.5e6) == Decimal(0, 25, 5)
        @test parse(Decimal, "2.385350e8") == Decimal(2.385350e8) == Decimal(0, 238535, 3)
        @test parse(Decimal, "12.3e-4") == Decimal(12.3e-4) == Decimal(0, 123, -5)

        @test parse(Decimal, "-12.3e4") == Decimal(-12.3e4) == Decimal(1, 123, 3)

        @test parse(Decimal, "-12.3e-4") == Decimal(-12.3e-4) == Decimal(1, 123, -5)

        @test parse(Decimal, "0.1234567891") == Decimal(0.1234567891) == Decimal(0,1234567891, -10)
        @test parse(Decimal, "0.12345678912") == Decimal(0.12345678912) == Decimal(0,12345678912, -11)
    end

    @testset "Using `decimal`" begin
        @test decimal("1.0") == Decimal(0, 1, 0)
        @test decimal(8.1) == Decimal(0, 81, -1)
        @test decimal.(Float64.(d)) == d
    end
end

@testset "Array{<:Number} to Array{Decimal}" begin
    @test Decimal.([0.1 0.2 0.3]) == [Decimal(0.1) Decimal(0.2) Decimal(0.3)]
end

@testset "Decimal to String" begin
    @test string(Decimal(0, 1, -2)) == "0.01"
    @test string(Decimal(0, 1, -3)) == "0.001"
    @test string(Decimal(0, 1523, -2)) == "15.23"
    @test string(Decimal(0, 543, 0)) == "543"
    @test string(Decimal(1, 345, 0)) == "-345"
    @test string(Decimal(0, 123, 0)) == "123"
    @test string(Decimal(1, 32, 0)) == "-32"
    @test string(Decimal(0, 2001, 2)) == "200100"
    @test string(Decimal(1, 123, -3)) == "-0.123"
    @test string(Decimal(0, 123, -2)) == "1.23"
end

@testset "Decimal to Number" begin
    @test Float32(Decimal(0, 1, -2)) == 0.01f0
    @test Float64(Decimal(0, 1, -3)) == 0.001
    @test Float64(Decimal(0, 1523, -2)) == 15.23
    @test UInt(Decimal(0, 543, 0)) == 543
    @test Int(Decimal(1, 345, 0)) == -345
    @test Int32(Decimal(0, 123, 0)) == 123
    @test Int8(Decimal(1, 32, 0)) == -32
    @test BigInt(Decimal(0, 2001, 2)) == 200100
    @test BigFloat(Decimal(1, 123, -3)) == big"-0.123"
    @test Float64(Decimal(0, 123, -2)) == 1.23
    @test number(Decimal(0, 1, -2)) == 0.01
    @test number(Decimal(0, 1, -3)) == 0.001
    @test number(Decimal(0, 1523, -2)) == 15.23
    @test number(Decimal(0, 543, 0)) == 543
    @test number(Decimal(1, 345, 0)) == -345
    @test number(Decimal(0, 123, 0)) == 123
    @test number(Decimal(1, 32, 0)) == -32
    @test number(Decimal(0, 2001, 2)) == 200100
    @test number(Decimal(1, 123, -3)) == -0.123
    @test number(Decimal(0, 123, -2)) == 1.23
    @test string(Float64(Decimal(0, 543, 0))) == "543.0"
    @test string(number(Decimal(0, 543, 0))) == "543"
    @test string(number(Decimal(0, 543, -1))) == "54.3"
end

end
