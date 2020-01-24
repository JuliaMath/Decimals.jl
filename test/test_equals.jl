using Decimals
using Test

@testset "Equality" begin

@testset "isequal" begin
    @test isequal(Decimal(0, 2, -3), Decimal(0, 2, -3))
    @test !isequal(Decimal(0, 2, -3), Decimal(0, 2, 3))
    @test isequal(Decimal(0, 2, -3), 0.002)
    @test isequal(Decimal(1, 2, 0), -2)
    @test !isequal(Decimal(1, 2, 0), 2)
    @test !isequal(Decimal(1, 0, -1), Decimal(0, 0, 0))
end

@testset "==" begin
    @test Decimal(0, 2, -3) == Decimal(0, 2, -3)
    @test Decimal(0, 2, -3) != Decimal(0, 2, 3)
    @test Decimal(0, 2, -3) == 0.002

    @test -2 == Decimal(1, 2, 0)
    @test 2 != Decimal(1, 2, 0)

    @test Decimal(1, 2, 0) == -2
    @test Decimal(1, 2, 0) != 2

    bf_pi = BigFloat(pi)
    @test Decimal(bf_pi) == bf_pi
    @test bf_pi == Decimal(bf_pi)

    bi = big"4608230166434464229556241992703"
    @test Decimal(bi) == bi
    @test bi == Decimal(bi)

    @test decimal(12.1) == decimal(12.1)

    @test Decimal(1, 0, -1) == Decimal(0, 0, 0)
end

@testset "<" begin
    @test Decimal(1, 1, 1) < Decimal(0, 1, 1)
    @test !(Decimal(0, 1, 1) < Decimal(1, 1, 1))
    @test Decimal(1, 1, 1) < Decimal(1, 0, 1)
    @test !(Decimal(1, 0, 1) < Decimal(1, 1, 1))
    @test Decimal(0, 2, -3) < Decimal(0, 2, 3)
    @test !(Decimal(0, 2, 3) < Decimal(0, 2, -3))
    @test !(decimal(12.1) < decimal(12.1))
    @test !(Decimal(1, 0, -1) < Decimal(0, 0, 0))
    @test !(Decimal(0, 0, 0) < Decimal(1, 0, -1))
end

@testset ">" begin
    @test !(Decimal(1, 1, 1) > Decimal(0, 1, 1))
    @test Decimal(0, 1, 1) > Decimal(1, 1, 1)
    @test !(Decimal(1, 1, 1) > Decimal(1, 0, 1))
    @test Decimal(1, 0, 1) > Decimal(1, 1, 1)
    @test !(Decimal(0, 2, -3) > Decimal(0, 2, 3))
    @test Decimal(0, 2, 3) > Decimal(0, 2, -3)
    @test !(decimal(12.1) > decimal(12.1))
    @test !(Decimal(1, 0, -1) > Decimal(0, 0, 0))
    @test !(Decimal(0, 0, 0) > Decimal(1, 0, -1))
end

@testset "<=" begin
    @test Decimal(1, 1, 1) <= Decimal(0, 1, 1)
    @test !(Decimal(0, 1, 1) <= Decimal(1, 1, 1))
    @test Decimal(1, 1, 1) <= Decimal(1, 0, 1)
    @test !(Decimal(1, 0, 1) <= Decimal(1, 1, 1))
    @test Decimal(0, 2, -3) <= Decimal(0, 2, 3)
    @test !(Decimal(0, 2, 3) <= Decimal(0, 2, -3))
    @test decimal(12.1) <= decimal(12.1)
    @test Decimal(1, 0, -1) <= Decimal(0, 0, 0)
    @test Decimal(0, 0, 0) <= Decimal(1, 0, -1)
end

@testset ">=" begin
    @test !(Decimal(1, 1, 1) >= Decimal(0, 1, 1))
    @test Decimal(0, 1, 1) >= Decimal(1, 1, 1)
    @test !(Decimal(1, 1, 1) >= Decimal(1, 0, 1))
    @test Decimal(1, 0, 1) >= Decimal(1, 1, 1)
    @test !(Decimal(0, 2, -3) >= Decimal(0, 2, 3))
    @test Decimal(0, 2, 3) >= Decimal(0, 2, -3)
    @test decimal(12.1) >= decimal(12.1)
    @test Decimal(1, 0, -1) >= Decimal(0, 0, 0)
    @test Decimal(0, 0, 0) >= Decimal(1, 0, -1)
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
