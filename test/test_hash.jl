using Decimals
using Test

@testset "Hashing" begin
    @testset "hash" begin
        @test hash(Decimal(0.)) == hash(0.)
        @test hash(Decimal(-0.)) == hash(-0.)
        @test hash(Decimal(3)) == hash(3)
        @test hash(Decimal(0.09375)) == hash(0.09375)
        @test hash(Decimal(-3)) == hash(-3)
        @test hash(Decimal(-0.09375)) == hash(-0.09375)

        # Equality implies same hash
        @test hash(Decimal(0, 100, 0)) == hash(Decimal(0, 10, 1))
        @test hash(Decimal(0, 100, 0)) == hash(Decimal(0, 1, 2))
        @test hash(Decimal(1, 100, 0)) == hash(Decimal(1, 10, 1))
        @test hash(Decimal(1, 100, 0)) == hash(Decimal(1, 1, 2))

        @test hash(Decimal(0, 310, -2)) == hash(Decimal(0, 31, -1))
    end
end
