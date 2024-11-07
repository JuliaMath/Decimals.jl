using Decimals
using Test

@testset "Rounding" begin

@test round(Decimal(7.123456), digits=0) == dec"7"
@test round(Decimal(7.123456), digits=2) == dec"7.12"
@test round(Decimal(7.123456), digits=3) == dec"7.123"
@test round(Decimal(7.123456), digits=5) == dec"7.12346"
@test round(Decimal(7.123456), digits=6) == dec"7.123456"
@test trunc(Decimal(7.123456), digits=5) == dec"7.12345"

end
