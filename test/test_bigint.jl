@testset "BigInt" begin
    @testset "isdivisible" begin
        @test Decimals.isdivisible(big(12), 1)
        @test Decimals.isdivisible(big(12), 2)
        @test Decimals.isdivisible(big(12), 3)
        @test Decimals.isdivisible(big(12), 4)
        @test Decimals.isdivisible(big(12), 6)

        prime = big(1709)
        @test Decimals.isdivisible(prime, 1)
        @test Decimals.isdivisible(prime, Int(prime))
        @test !any(n -> Decimals.isdivisible(prime, n), 2:1708)
    end

    @testset "exactdiv" begin
        @test Decimals.exactdiv(big(12), 2) == big(6)
        @test Decimals.exactdiv(big(12), 3) == big(4)
        @test Decimals.exactdiv(big(12), 4) == big(3)
        @test Decimals.exactdiv(big(12), 6) == big(2)
    end

    @testset "maxexp" begin
        T = ifelse(typemax(Culong) > typemax(Int), Int, Culong)

        E = Decimals.maxexp(2)
        @test T(2)^E == big(2)^E
        @test T(2)^(E + 1) != big(2)^(E+1)

        E = Decimals.maxexp(5)
        @test T(5)^E == big(5)^E
        @test T(5)^(E + 1) != big(5)^(E+1)

        E = Decimals.maxexp(10)
        @test T(10)^E == big(10)^E
        @test T(10)^(E + 1) != big(10)^(E+1)
    end

    @testset "cancelfactor" begin
        @test Decimals.cancelfactor(big(0), Val(3)) == (big(0), 0)
        @test Decimals.cancelfactor(big(3)^8, Val(3)) == (big(1), 8)
        @test Decimals.cancelfactor(big(3)^128, Val(3)) == (big(1), 128)
        @test Decimals.cancelfactor(big(948659)^8, Val(948659)) == (big(1), 8)

        @test Decimals.cancelfactor(big(5^5), Val(5)) == (big(1), 5)
        @test Decimals.cancelfactor(big(5^5), Val(5), 0) == (big(5^5), 0)
        @test Decimals.cancelfactor(big(5^5), Val(5), 3) == (big(25), 3)
    end
end
