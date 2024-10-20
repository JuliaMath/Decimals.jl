using Decimals
using ScopedValues
using Test
using Decimals: @with_context

@testset "Minus" begin
    # minx001
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test -(dec"1") == dec"-1"
    # minx002
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test -(dec"-1") == dec"1"
    # minx003
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test -(dec"1.00") == dec"-1.00"
    # minx004
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test -(dec"-1.00") == dec"1.00"
    # minx005
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test -(dec"0") == dec"0"
    # minx006
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test -(dec"0.00") == dec"0.00"
    # minx007
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test -(dec"00.0") == dec"0.0"
    # minx008
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test -(dec"00.00") == dec"0.00"
    # minx009
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test -(dec"00") == dec"0"
    # minx010
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test -(dec"-2") == dec"2"
    # minx011
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test -(dec"2") == dec"-2"
    # minx012
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test -(dec"-2.00") == dec"2.00"
    # minx013
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test -(dec"2.00") == dec"-2.00"
    # minx014
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test -(dec"-0") == dec"0"
    # minx015
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test -(dec"-0.00") == dec"0.00"
    # minx016
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test -(dec"-00.0") == dec"0.0"
    # minx017
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test -(dec"-00.00") == dec"0.00"
    # minx018
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test -(dec"-00") == dec"0"
    # minx020
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test -(dec"-0e3") == dec"0e+3"
    # minx021
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test -(dec"-0e2") == dec"0e+2"
    # minx022
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test -(dec"-0e1") == dec"0e+1"
    # minx023
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test -(dec"-0e0") == dec"0"
    # minx024
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test -(dec"+0e0") == dec"0"
    # minx025
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test -(dec"+0e1") == dec"0e+1"
    # minx026
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test -(dec"+0e2") == dec"0e+2"
    # minx027
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test -(dec"+0e3") == dec"0e+3"
    # minx030
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test -(dec"-5e3") == dec"5e+3"
    # minx031
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test -(dec"-5e8") == dec"5e+8"
    # minx032
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test -(dec"-5e13") == dec"5e+13"
    # minx033
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test -(dec"-5e18") == dec"5e+18"
    # minx034
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test -(dec"+5e3") == dec"-5e+3"
    # minx035
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test -(dec"+5e8") == dec"-5e+8"
    # minx036
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test -(dec"+5e13") == dec"-5e+13"
    # minx037
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test -(dec"+5e18") == dec"-5e+18"
    # minx050
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test -(dec"-2000000") == dec"2000000"
    # minx051
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test -(dec"2000000") == dec"-2000000"
    # minx052
    @with_context (Emax=384, Emin=-383, precision=7, rounding=RoundNearestTiesAway) @test -(dec"-2000000") == dec"2000000"
    # minx053
    @with_context (Emax=384, Emin=-383, precision=7, rounding=RoundNearestTiesAway) @test -(dec"2000000") == dec"-2000000"
    # minx054
    @with_context (Emax=384, Emin=-383, precision=6, rounding=RoundNearestTiesAway) @test -(dec"-2000000") == dec"2.00000e+6"
    # minx055
    @with_context (Emax=384, Emin=-383, precision=6, rounding=RoundNearestTiesAway) @test -(dec"2000000") == dec"-2.00000e+6"
    # minx056
    @with_context (Emax=384, Emin=-383, precision=3, rounding=RoundNearestTiesAway) @test -(dec"-2000000") == dec"2.00e+6"
    # minx057
    @with_context (Emax=384, Emin=-383, precision=3, rounding=RoundNearestTiesAway) @test -(dec"2000000") == dec"-2.00e+6"
    # minx060
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test -(dec"56267e-10") == dec"-0.0000056267"
    # minx061
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test -(dec"56267e-5") == dec"-0.56267"
    # minx062
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test -(dec"56267e-2") == dec"-562.67"
    # minx063
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test -(dec"56267e-1") == dec"-5626.7"
    # minx065
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test -(dec"56267e-0") == dec"-56267"
    # minx066
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test -(dec"56267e+0") == dec"-56267"
    # minx067
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test -(dec"56267e+1") == dec"-5.6267e+5"
    # minx068
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test -(dec"56267e+2") == dec"-5.6267e+6"
    # minx069
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test -(dec"56267e+3") == dec"-5.6267e+7"
    # minx070
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test -(dec"56267e+4") == dec"-5.6267e+8"
    # minx071
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test -(dec"56267e+5") == dec"-5.6267e+9"
    # minx072
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test -(dec"56267e+6") == dec"-5.6267e+10"
    # minx080
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test -(dec"-56267e-10") == dec"0.0000056267"
    # minx081
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test -(dec"-56267e-5") == dec"0.56267"
    # minx082
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test -(dec"-56267e-2") == dec"562.67"
    # minx083
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test -(dec"-56267e-1") == dec"5626.7"
    # minx085
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test -(dec"-56267e-0") == dec"56267"
    # minx086
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test -(dec"-56267e+0") == dec"56267"
    # minx087
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test -(dec"-56267e+1") == dec"5.6267e+5"
    # minx088
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test -(dec"-56267e+2") == dec"5.6267e+6"
    # minx089
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test -(dec"-56267e+3") == dec"5.6267e+7"
    # minx090
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test -(dec"-56267e+4") == dec"5.6267e+8"
    # minx091
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test -(dec"-56267e+5") == dec"5.6267e+9"
    # minx092
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test -(dec"-56267e+6") == dec"5.6267e+10"
    # minx100
    @with_context (Emax=999999999, Emin=-999999999, precision=3, rounding=RoundNearestTiesAway) @test_throws OverflowError -(dec"9.999e+999999999")
    # minx101
    @with_context (Emax=999999999, Emin=-999999999, precision=3, rounding=RoundNearestTiesAway) @test_throws OverflowError -(dec"-9.999e+999999999")
    # minx110
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test -(dec"1.00e-999") == dec"-1.00e-999"
    # minx111
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test -(dec"0.1e-999") == dec"-1e-1000"
    # minx112
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test -(dec"0.10e-999") == dec"-1.0e-1000"
    # minx113
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test -(dec"0.100e-999") == dec"-1.0e-1000"
    # minx114
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test -(dec"0.01e-999") == dec"-1e-1001"
    # minx115
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test -(dec"0.999e-999") == dec"-1.00e-999"
    # minx116
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test -(dec"0.099e-999") == dec"-1.0e-1000"
    # minx117
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test -(dec"0.009e-999") == dec"-1e-1001"
    # minx118
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test -(dec"0.001e-999") == dec"-0e-1001"
    # minx119
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test -(dec"0.0009e-999") == dec"-0e-1001"
    # minx120
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test -(dec"0.0001e-999") == dec"-0e-1001"
    # minx130
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test -(dec"-1.00e-999") == dec"1.00e-999"
    # minx131
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test -(dec"-0.1e-999") == dec"1e-1000"
    # minx132
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test -(dec"-0.10e-999") == dec"1.0e-1000"
    # minx133
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test -(dec"-0.100e-999") == dec"1.0e-1000"
    # minx134
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test -(dec"-0.01e-999") == dec"1e-1001"
    # minx135
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test -(dec"-0.999e-999") == dec"1.00e-999"
    # minx136
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test -(dec"-0.099e-999") == dec"1.0e-1000"
    # minx137
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test -(dec"-0.009e-999") == dec"1e-1001"
    # minx138
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test -(dec"-0.001e-999") == dec"0e-1001"
    # minx139
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test -(dec"-0.0009e-999") == dec"0e-1001"
    # minx140
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test -(dec"-0.0001e-999") == dec"0e-1001"
    # minx301
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test -(dec"12345678000") == dec"-1.23456780e+10"
    # minx302
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test -(dec"1234567800") == dec"-1.23456780e+9"
    # minx303
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test -(dec"1234567890") == dec"-1.23456789e+9"
    # minx304
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test -(dec"1234567891") == dec"-1.23456789e+9"
    # minx305
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test -(dec"12345678901") == dec"-1.23456789e+10"
    # minx306
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test -(dec"1234567896") == dec"-1.23456790e+9"
    # minx321
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test -(dec"12345678000") == dec"-12345678000"
    # minx322
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test -(dec"1234567800") == dec"-1234567800"
    # minx323
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test -(dec"1234567890") == dec"-1234567890"
    # minx324
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test -(dec"1234567891") == dec"-1234567891"
    # minx325
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test -(dec"12345678901") == dec"-12345678901"
    # minx326
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test -(dec"1234567896") == dec"-1234567896"
end
