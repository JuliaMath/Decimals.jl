using Decimals
using ScopedValues
using Test
using Decimals: @with_context

@testset "Abs" begin
    # absx001
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test abs(dec"1") == dec"1"
    # absx002
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test abs(dec"-1") == dec"1"
    # absx003
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test abs(dec"1.00") == dec"1.00"
    # absx004
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test abs(dec"-1.00") == dec"1.00"
    # absx005
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test abs(dec"0") == dec"0"
    # absx006
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test abs(dec"0.00") == dec"0.00"
    # absx007
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test abs(dec"00.0") == dec"0.0"
    # absx008
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test abs(dec"00.00") == dec"0.00"
    # absx009
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test abs(dec"00") == dec"0"
    # absx010
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test abs(dec"-2") == dec"2"
    # absx011
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test abs(dec"2") == dec"2"
    # absx012
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test abs(dec"-2.00") == dec"2.00"
    # absx013
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test abs(dec"2.00") == dec"2.00"
    # absx014
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test abs(dec"-0") == dec"0"
    # absx015
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test abs(dec"-0.00") == dec"0.00"
    # absx016
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test abs(dec"-00.0") == dec"0.0"
    # absx017
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test abs(dec"-00.00") == dec"0.00"
    # absx018
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test abs(dec"-00") == dec"0"
    # absx020
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test abs(dec"-2000000") == dec"2000000"
    # absx021
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test abs(dec"2000000") == dec"2000000"
    # absx022
    @with_context (Emax=384, Emin=-383, precision=7, rounding=RoundNearestTiesAway) @test abs(dec"-2000000") == dec"2000000"
    # absx023
    @with_context (Emax=384, Emin=-383, precision=7, rounding=RoundNearestTiesAway) @test abs(dec"2000000") == dec"2000000"
    # absx024
    @with_context (Emax=384, Emin=-383, precision=6, rounding=RoundNearestTiesAway) @test abs(dec"-2000000") == dec"2.00000e+6"
    # absx025
    @with_context (Emax=384, Emin=-383, precision=6, rounding=RoundNearestTiesAway) @test abs(dec"2000000") == dec"2.00000e+6"
    # absx026
    @with_context (Emax=384, Emin=-383, precision=3, rounding=RoundNearestTiesAway) @test abs(dec"-2000000") == dec"2.00e+6"
    # absx027
    @with_context (Emax=384, Emin=-383, precision=3, rounding=RoundNearestTiesAway) @test abs(dec"2000000") == dec"2.00e+6"
    # absx030
    @with_context (Emax=384, Emin=-383, precision=3, rounding=RoundNearestTiesAway) @test abs(dec"+0.1") == dec"0.1"
    # absx031
    @with_context (Emax=384, Emin=-383, precision=3, rounding=RoundNearestTiesAway) @test abs(dec"-0.1") == dec"0.1"
    # absx032
    @with_context (Emax=384, Emin=-383, precision=3, rounding=RoundNearestTiesAway) @test abs(dec"+0.01") == dec"0.01"
    # absx033
    @with_context (Emax=384, Emin=-383, precision=3, rounding=RoundNearestTiesAway) @test abs(dec"-0.01") == dec"0.01"
    # absx034
    @with_context (Emax=384, Emin=-383, precision=3, rounding=RoundNearestTiesAway) @test abs(dec"+0.001") == dec"0.001"
    # absx035
    @with_context (Emax=384, Emin=-383, precision=3, rounding=RoundNearestTiesAway) @test abs(dec"-0.001") == dec"0.001"
    # absx036
    @with_context (Emax=384, Emin=-383, precision=3, rounding=RoundNearestTiesAway) @test abs(dec"+0.000001") == dec"0.000001"
    # absx037
    @with_context (Emax=384, Emin=-383, precision=3, rounding=RoundNearestTiesAway) @test abs(dec"-0.000001") == dec"0.000001"
    # absx038
    @with_context (Emax=384, Emin=-383, precision=3, rounding=RoundNearestTiesAway) @test abs(dec"+0.000000000001") == dec"1e-12"
    # absx039
    @with_context (Emax=384, Emin=-383, precision=3, rounding=RoundNearestTiesAway) @test abs(dec"-0.000000000001") == dec"1e-12"
    # absx040
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test abs(dec"2.1") == dec"2.1"
    # absx041
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test abs(dec"-100") == dec"100"
    # absx042
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test abs(dec"101.5") == dec"101.5"
    # absx043
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test abs(dec"-101.5") == dec"101.5"
    # absx060
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test abs(dec"-56267e-10") == dec"0.0000056267"
    # absx061
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test abs(dec"-56267e-5") == dec"0.56267"
    # absx062
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test abs(dec"-56267e-2") == dec"562.67"
    # absx063
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test abs(dec"-56267e-1") == dec"5626.7"
    # absx065
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test abs(dec"-56267e-0") == dec"56267"
    # absx120
    @with_context (Emax=999999999, Emin=-999999999, precision=3, rounding=RoundNearestTiesAway) @test_throws OverflowError abs(dec"9.999e+999999999")
    # absx210
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test abs(dec"1.00e-999") == dec"1.00e-999"
    # absx211
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test abs(dec"0.1e-999") == dec"1e-1000"
    # absx212
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test abs(dec"0.10e-999") == dec"1.0e-1000"
    # absx213
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test abs(dec"0.100e-999") == dec"1.0e-1000"
    # absx214
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test abs(dec"0.01e-999") == dec"1e-1001"
    # absx215
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test abs(dec"0.999e-999") == dec"1.00e-999"
    # absx216
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test abs(dec"0.099e-999") == dec"1.0e-1000"
    # absx217
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test abs(dec"0.009e-999") == dec"1e-1001"
    # absx218
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test abs(dec"0.001e-999") == dec"0e-1001"
    # absx219
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test abs(dec"0.0009e-999") == dec"0e-1001"
    # absx220
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test abs(dec"0.0001e-999") == dec"0e-1001"
    # absx230
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test abs(dec"-1.00e-999") == dec"1.00e-999"
    # absx231
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test abs(dec"-0.1e-999") == dec"1e-1000"
    # absx232
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test abs(dec"-0.10e-999") == dec"1.0e-1000"
    # absx233
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test abs(dec"-0.100e-999") == dec"1.0e-1000"
    # absx234
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test abs(dec"-0.01e-999") == dec"1e-1001"
    # absx235
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test abs(dec"-0.999e-999") == dec"1.00e-999"
    # absx236
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test abs(dec"-0.099e-999") == dec"1.0e-1000"
    # absx237
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test abs(dec"-0.009e-999") == dec"1e-1001"
    # absx238
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test abs(dec"-0.001e-999") == dec"0e-1001"
    # absx239
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test abs(dec"-0.0009e-999") == dec"0e-1001"
    # absx240
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test abs(dec"-0.0001e-999") == dec"0e-1001"
    # absx301
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test abs(dec"12345678000") == dec"1.23456780e+10"
    # absx302
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test abs(dec"1234567800") == dec"1.23456780e+9"
    # absx303
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test abs(dec"1234567890") == dec"1.23456789e+9"
    # absx304
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test abs(dec"1234567891") == dec"1.23456789e+9"
    # absx305
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test abs(dec"12345678901") == dec"1.23456789e+10"
    # absx306
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test abs(dec"1234567896") == dec"1.23456790e+9"
    # absx321
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test abs(dec"12345678000") == dec"12345678000"
    # absx322
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test abs(dec"1234567800") == dec"1234567800"
    # absx323
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test abs(dec"1234567890") == dec"1234567890"
    # absx324
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test abs(dec"1234567891") == dec"1234567891"
    # absx325
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test abs(dec"12345678901") == dec"12345678901"
    # absx326
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test abs(dec"1234567896") == dec"1234567896"
end
