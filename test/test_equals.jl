using Decimals
using Test

@testset "Equality" begin

@testset "isequal" begin
    @test isequal(Decimal(false, 2, -3), Decimal(false, 2, -3))
    @test !isequal(Decimal(false, 2, -3), Decimal(false, 2, 3))
    @test isequal(Decimal(false, 2, -3), 0.002)
    @test isequal(Decimal(true, 2, 0), -2)
    @test !isequal(Decimal(true, 2, 0), 2)
    @test !isequal(Decimal(true, 0, -1), Decimal(false, 0, 0))
end

@testset "==" begin
    @test Decimal(false, 2, -3) == Decimal(false, 2, -3)
    @test Decimal(false, 2, -3) != Decimal(false, 2, 3)
    @test Decimal(false, 2, -3) == 0.002

    @test -2 == Decimal(true, 2, 0)
    @test 2 != Decimal(true, 2, 0)

    @test Decimal(true, 2, 0) == -2
    @test Decimal(true, 2, 0) != 2

    bf_pi = BigFloat(pi)
    @test Decimal(bf_pi) == bf_pi
    @test bf_pi == Decimal(bf_pi)

    bi = big"4608230166434464229556241992703"
    @test Decimal(bi) == bi
    @test bi == Decimal(bi)

    @test decimal(12.1) == decimal(12.1)

    @test Decimal(true, 0, -1) == Decimal(false, 0, 0)
end

@testset "<" begin
    @test Decimal(true, 1, 1) < Decimal(false, 1, 1)
    @test !(Decimal(false, 1, 1) < Decimal(true, 1, 1))
    @test Decimal(true, 1, 1) < Decimal(true, 0, 1)
    @test !(Decimal(true, 0, 1) < Decimal(true, 1, 1))
    @test Decimal(false, 2, -3) < Decimal(false, 2, 3)
    @test !(Decimal(false, 2, 3) < Decimal(false, 2, -3))
    @test !(decimal(12.1) < decimal(12.1))
    @test !(Decimal(true, 0, -1) < Decimal(false, 0, 0))
    @test !(Decimal(false, 0, 0) < Decimal(true, 0, -1))
end

@testset "Inf/Nan" begin
    d = parse(Decimal, "10.1")
    @test d == min(d, Inf) == min(Inf, d) == min(d, d)
    @test d == min(d, 20.0) == min(20.0, d)
    @test d == max(d, 1.0) == max(1.0, d)
    @test Decimal(1.0) == min(d, 1.0) == min(1.0, d)
    @test Decimal(20.0) == max(d, 20.0) == max(20.0, d)
    @test d == max(d, -Inf) == max(-Inf, d) == max(d, d)
    @test d != Inf
    @test d != NaN
end

end
