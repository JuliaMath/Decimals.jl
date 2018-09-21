using Decimals
using Compat.Test
using Compat: @info

@testset "Deprecated Functions" begin
    @info("The following deprecation warnings are expected")

    @test inv(d) == map(inv, d)

    @test 1 + d == 1 .+ d
    @test d + 3.0 == d .+ 3.0
    @test 8.0 - d == 8.0 .- d
    @test d - 10 == d .- 10
    @test [1] + d == [1] .+ d
    @test d + [3.0] == d .+ [3.0]
    @test [8.0] - d == [8.0] .- d
    @test d - [10] == d .- [10]

    @test number(d) == number.(d)
    @test all(isint.([0, -102, 0x99]))
    @test !any(isint.(float.(d)))
    @test !any(isint.(string.(d)))

    @test decimal(float(d)) == d
end
