@testset "Showing" begin
    @testset "repr" begin
        @test repr(Decimal(1, 2, 3)) == "Decimal(1, 2, 3)"
    end

    @testset "Scientific notation" begin
        repr("text/plain", Decimal(0,123,0)) == "123"
        repr("text/plain", Decimal(1,123,0)) == "-123"
        repr("text/plain", Decimal(0,123,1)) == "1.23E+3"
        repr("text/plain", Decimal(0,123,3)) == "1.23E+5"
        repr("text/plain", Decimal(0,123,-1)) == "12.3"
        repr("text/plain", Decimal(0,123,-5)) == "0.00123"
        repr("text/plain", Decimal(0,123,-10)) == "1.23E-8"
        repr("text/plain", Decimal(1,123,-12)) == "-1.23E-10"
        repr("text/plain", Decimal(0,0,0)) == "0"
        repr("text/plain", Decimal(0,0,-2)) == "0.00"
        repr("text/plain", Decimal(0,0,2)) == "0E+2"
        repr("text/plain", Decimal(1,0,0)) == "-0"
        repr("text/plain", Decimal(0,5,-6)) == "0.000005"
        repr("text/plain", Decimal(0,50,-7)) == "0.0000050"
        repr("text/plain", Decimal(0,5,-7)) == "5E-7"
    end
end
