using Decimals
using Test

@testset "sqrt" begin
    @test iszero(sqrt(zero(Decimal)))
    @test isone(sqrt(one(Decimal)))
    @test_throws DomainError sqrt(Decimal(1, 1, 0))
end

