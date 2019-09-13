using Decimals
using Test

@testset "Rounding" begin

@test round(Decimal(7.123456), digits=0) == Decimal(7)
@test round(Decimal(7.123456), digits=2) == Decimal(7.12)
@test round(Decimal(7.123456), digits=3) == Decimal(7.123)
@test round(Decimal(7.123456), digits=5) == Decimal(7.12346)
@test round(Decimal(7.123456), digits=6) == Decimal(7.123456)

@test round.(Decimal.([0.1111, 0.2222, 0.8888]), digits=2) == Decimal.([0.11, 0.22, 0.89])

@test trunc(Decimal(7.123456), digits=5) == Decimal(7.12345)


function tet()
    a = parse(Decimal, "1.0000001")
    for i = 1:27
        a *= a
    end
    return a
end

# set DIGITS = 20 (aaljuffali's example)
@test tet() == Decimal(0, 67453047074102193157641340, -20)

end
