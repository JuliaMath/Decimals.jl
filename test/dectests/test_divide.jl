using Decimals
using ScopedValues
using Test
using Decimals: @with_context

@testset "Divide" begin
    # divx001
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"1" / dec"1" == dec"1"
    # divx002
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"2" / dec"1" == dec"2"
    # divx003
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"1" / dec"2" == dec"0.5"
    # divx004
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"2" / dec"2" == dec"1"
    # divx005
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0" / dec"1" == dec"0"
    # divx006
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0" / dec"2" == dec"0"
    # divx007
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"1" / dec"3" == dec"0.333333333"
    # divx008
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"2" / dec"3" == dec"0.666666667"
    # divx009
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"3" / dec"3" == dec"1"
    # divx010
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"2.4" / dec"1" == dec"2.4"
    # divx011
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"2.4" / dec"-1" == dec"-2.4"
    # divx012
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-2.4" / dec"1" == dec"-2.4"
    # divx013
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-2.4" / dec"-1" == dec"2.4"
    # divx014
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"2.40" / dec"1" == dec"2.40"
    # divx015
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"2.400" / dec"1" == dec"2.400"
    # divx016
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"2.4" / dec"2" == dec"1.2"
    # divx017
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"2.400" / dec"2" == dec"1.200"
    # divx018
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"2." / dec"2" == dec"1"
    # divx019
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"20" / dec"20" == dec"1"
    # divx020
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"187" / dec"187" == dec"1"
    # divx021
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"5" / dec"2" == dec"2.5"
    # divx022
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"50" / dec"20" == dec"2.5"
    # divx023
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"500" / dec"200" == dec"2.5"
    # divx024
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"50.0" / dec"20.0" == dec"2.5"
    # divx025
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"5.00" / dec"2.00" == dec"2.5"
    # divx026
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"5" / dec"2.0" == dec"2.5"
    # divx027
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"5" / dec"2.000" == dec"2.5"
    # divx028
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"5" / dec"0.20" == dec"25"
    # divx029
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"5" / dec"0.200" == dec"25"
    # divx030
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"10" / dec"1" == dec"10"
    # divx031
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"100" / dec"1" == dec"100"
    # divx032
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"1000" / dec"1" == dec"1000"
    # divx033
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"1000" / dec"100" == dec"10"
    # divx035
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"1" / dec"2" == dec"0.5"
    # divx036
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"1" / dec"4" == dec"0.25"
    # divx037
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"1" / dec"8" == dec"0.125"
    # divx038
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"1" / dec"16" == dec"0.0625"
    # divx039
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"1" / dec"32" == dec"0.03125"
    # divx040
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"1" / dec"64" == dec"0.015625"
    # divx041
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"1" / dec"-2" == dec"-0.5"
    # divx042
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"1" / dec"-4" == dec"-0.25"
    # divx043
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"1" / dec"-8" == dec"-0.125"
    # divx044
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"1" / dec"-16" == dec"-0.0625"
    # divx045
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"1" / dec"-32" == dec"-0.03125"
    # divx046
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"1" / dec"-64" == dec"-0.015625"
    # divx047
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-1" / dec"2" == dec"-0.5"
    # divx048
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-1" / dec"4" == dec"-0.25"
    # divx049
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-1" / dec"8" == dec"-0.125"
    # divx050
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-1" / dec"16" == dec"-0.0625"
    # divx051
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-1" / dec"32" == dec"-0.03125"
    # divx052
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-1" / dec"64" == dec"-0.015625"
    # divx053
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-1" / dec"-2" == dec"0.5"
    # divx054
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-1" / dec"-4" == dec"0.25"
    # divx055
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-1" / dec"-8" == dec"0.125"
    # divx056
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-1" / dec"-16" == dec"0.0625"
    # divx057
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-1" / dec"-32" == dec"0.03125"
    # divx058
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-1" / dec"-64" == dec"0.015625"
    # divx070
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"999999999" / dec"1" == dec"999999999"
    # divx071
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"999999999.4" / dec"1" == dec"999999999"
    # divx072
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"999999999.5" / dec"1" == dec"1.00000000e+9"
    # divx073
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"999999999.9" / dec"1" == dec"1.00000000e+9"
    # divx074
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"999999999.999" / dec"1" == dec"1.00000000e+9"
    # divx080
    @with_context (Emax=384, Emin=-383, precision=6, rounding=RoundNearestTiesAway) @test dec"999999999" / dec"1" == dec"1.00000e+9"
    # divx081
    @with_context (Emax=384, Emin=-383, precision=6, rounding=RoundNearestTiesAway) @test dec"99999999" / dec"1" == dec"1.00000e+8"
    # divx082
    @with_context (Emax=384, Emin=-383, precision=6, rounding=RoundNearestTiesAway) @test dec"9999999" / dec"1" == dec"1.00000e+7"
    # divx083
    @with_context (Emax=384, Emin=-383, precision=6, rounding=RoundNearestTiesAway) @test dec"999999" / dec"1" == dec"999999"
    # divx084
    @with_context (Emax=384, Emin=-383, precision=6, rounding=RoundNearestTiesAway) @test dec"99999" / dec"1" == dec"99999"
    # divx085
    @with_context (Emax=384, Emin=-383, precision=6, rounding=RoundNearestTiesAway) @test dec"9999" / dec"1" == dec"9999"
    # divx086
    @with_context (Emax=384, Emin=-383, precision=6, rounding=RoundNearestTiesAway) @test dec"999" / dec"1" == dec"999"
    # divx087
    @with_context (Emax=384, Emin=-383, precision=6, rounding=RoundNearestTiesAway) @test dec"99" / dec"1" == dec"99"
    # divx088
    @with_context (Emax=384, Emin=-383, precision=6, rounding=RoundNearestTiesAway) @test dec"9" / dec"1" == dec"9"
    # divx090
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0." / dec"1" == dec"0"
    # divx091
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec".0" / dec"1" == dec"0.0"
    # divx092
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0.00" / dec"1" == dec"0.00"
    # divx093
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0.00e+9" / dec"1" == dec"0e+7"
    # divx094
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0.0000e-50" / dec"1" == dec"0e-54"
    # divx095
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"1" / dec"1e-8" == dec"1e+8"
    # divx096
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"1" / dec"1e-9" == dec"1e+9"
    # divx097
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"1" / dec"1e-10" == dec"1e+10"
    # divx098
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"1" / dec"1e-11" == dec"1e+11"
    # divx099
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"1" / dec"1e-12" == dec"1e+12"
    # divx100
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"1" / dec"1" == dec"1"
    # divx101
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"1" / dec"2" == dec"0.5"
    # divx102
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"1" / dec"3" == dec"0.333333333"
    # divx103
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"1" / dec"4" == dec"0.25"
    # divx104
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"1" / dec"5" == dec"0.2"
    # divx105
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"1" / dec"6" == dec"0.166666667"
    # divx106
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"1" / dec"7" == dec"0.142857143"
    # divx107
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"1" / dec"8" == dec"0.125"
    # divx108
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"1" / dec"9" == dec"0.111111111"
    # divx109
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"1" / dec"10" == dec"0.1"
    # divx110
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"1" / dec"1" == dec"1"
    # divx111
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"2" / dec"1" == dec"2"
    # divx112
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"3" / dec"1" == dec"3"
    # divx113
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"4" / dec"1" == dec"4"
    # divx114
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"5" / dec"1" == dec"5"
    # divx115
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"6" / dec"1" == dec"6"
    # divx116
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"7" / dec"1" == dec"7"
    # divx117
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"8" / dec"1" == dec"8"
    # divx118
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"9" / dec"1" == dec"9"
    # divx119
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"10" / dec"1" == dec"10"
    # divx120
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"3e+1" / dec"0.001" == dec"3e+4"
    # divx121
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"2.200" / dec"2" == dec"1.100"
    # divx130
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"12345" / dec"4.999" == dec"2469.49390"
    # divx131
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"12345" / dec"4.99" == dec"2473.94790"
    # divx132
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"12345" / dec"4.9" == dec"2519.38776"
    # divx133
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"12345" / dec"5" == dec"2469"
    # divx134
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"12345" / dec"5.1" == dec"2420.58824"
    # divx135
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"12345" / dec"5.01" == dec"2464.07186"
    # divx136
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"12345" / dec"5.001" == dec"2468.50630"
    # divx220
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"391" / dec"597" == dec"0.654941374"
    # divx221
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"391" / dec"-597" == dec"-0.654941374"
    # divx222
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"-391" / dec"597" == dec"-0.654941374"
    # divx223
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"-391" / dec"-597" == dec"0.654941374"
    # divx270
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"1" / dec"1e999999999" == dec"1e-999999999"
    # divx271
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"1" / dec"0.9e999999999" == dec"1.11111111e-999999999"
    # divx272
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"1" / dec"0.99e999999999" == dec"1.01010101e-999999999"
    # divx273
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"1" / dec"0.999999999e999999999" == dec"1.00000000e-999999999"
    # divx274
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"9e999999999" / dec"1" == dec"9e+999999999"
    # divx275
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"9.9e999999999" / dec"1" == dec"9.9e+999999999"
    # divx276
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"9.99e999999999" / dec"1" == dec"9.99e+999999999"
    # divx277
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"9.99999999e999999999" / dec"1" == dec"9.99999999e+999999999"
    # divx280
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"0.1" / dec"9e-999999999" == dec"1.11111111e+999999997"
    # divx281
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"0.1" / dec"99e-999999999" == dec"1.01010101e+999999996"
    # divx282
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"0.1" / dec"999e-999999999" == dec"1.00100100e+999999995"
    # divx283
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"0.1" / dec"9e-999999998" == dec"1.11111111e+999999996"
    # divx284
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"0.1" / dec"99e-999999998" == dec"1.01010101e+999999995"
    # divx285
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"0.1" / dec"999e-999999998" == dec"1.00100100e+999999994"
    # divx286
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"0.1" / dec"999e-999999997" == dec"1.00100100e+999999993"
    # divx287
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"0.1" / dec"9999e-999999997" == dec"1.00010001e+999999992"
    # divx288
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"0.1" / dec"99999e-999999997" == dec"1.00001000e+999999991"
    # divx301
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"0" / dec"7" == dec"0"
    # divx302
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"0" / dec"7e-5" == dec"0e+5"
    # divx303
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"0" / dec"7e-1" == dec"0e+1"
    # divx304
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"0" / dec"7e+1" == dec"0.0"
    # divx305
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"0" / dec"7e+5" == dec"0.00000"
    # divx306
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"0" / dec"7e+6" == dec"0.000000"
    # divx307
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"0" / dec"7e+7" == dec"0e-7"
    # divx308
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"0" / dec"70e-5" == dec"0e+5"
    # divx309
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"0" / dec"70e-1" == dec"0e+1"
    # divx310
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"0" / dec"70e+0" == dec"0"
    # divx311
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"0" / dec"70e+1" == dec"0.0"
    # divx312
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"0" / dec"70e+5" == dec"0.00000"
    # divx313
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"0" / dec"70e+6" == dec"0.000000"
    # divx314
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"0" / dec"70e+7" == dec"0e-7"
    # divx315
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"0" / dec"700e-5" == dec"0e+5"
    # divx316
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"0" / dec"700e-1" == dec"0e+1"
    # divx317
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"0" / dec"700e+0" == dec"0"
    # divx318
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"0" / dec"700e+1" == dec"0.0"
    # divx319
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"0" / dec"700e+5" == dec"0.00000"
    # divx320
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"0" / dec"700e+6" == dec"0.000000"
    # divx321
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"0" / dec"700e+7" == dec"0e-7"
    # divx322
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"0" / dec"700e+77" == dec"0e-77"
    # divx331
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"0e-3" / dec"7e-5" == dec"0e+2"
    # divx332
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"0e-3" / dec"7e-1" == dec"0.00"
    # divx333
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"0e-3" / dec"7e+1" == dec"0.0000"
    # divx334
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"0e-3" / dec"7e+5" == dec"0e-8"
    # divx335
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"0e-1" / dec"7e-5" == dec"0e+4"
    # divx336
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"0e-1" / dec"7e-1" == dec"0"
    # divx337
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"0e-1" / dec"7e+1" == dec"0.00"
    # divx338
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"0e-1" / dec"7e+5" == dec"0.000000"
    # divx339
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"0e+1" / dec"7e-5" == dec"0e+6"
    # divx340
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"0e+1" / dec"7e-1" == dec"0e+2"
    # divx341
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"0e+1" / dec"7e+1" == dec"0"
    # divx342
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"0e+1" / dec"7e+5" == dec"0.0000"
    # divx343
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"0e+3" / dec"7e-5" == dec"0e+8"
    # divx344
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"0e+3" / dec"7e-1" == dec"0e+4"
    # divx345
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"0e+3" / dec"7e+1" == dec"0e+2"
    # divx346
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"0e+3" / dec"7e+5" == dec"0.00"
    # divx351
    @with_context (Emax=92, Emin=-92, precision=7, rounding=RoundNearestTiesAway) @test dec"0e-92" / dec"7e-1" == dec"0e-91"
    # divx352
    @with_context (Emax=92, Emin=-92, precision=7, rounding=RoundNearestTiesAway) @test dec"0e-92" / dec"7e+1" == dec"0e-93"
    # divx353
    @with_context (Emax=92, Emin=-92, precision=7, rounding=RoundNearestTiesAway) @test dec"0e-92" / dec"7e+5" == dec"0e-97"
    # divx354
    @with_context (Emax=92, Emin=-92, precision=7, rounding=RoundNearestTiesAway) @test dec"0e-92" / dec"7e+6" == dec"0e-98"
    # divx355
    @with_context (Emax=92, Emin=-92, precision=7, rounding=RoundNearestTiesAway) @test dec"0e-92" / dec"7e+7" == dec"0e-98"
    # divx356
    @with_context (Emax=92, Emin=-92, precision=7, rounding=RoundNearestTiesAway) @test dec"0e-92" / dec"777e-1" == dec"0e-91"
    # divx357
    @with_context (Emax=92, Emin=-92, precision=7, rounding=RoundNearestTiesAway) @test dec"0e-92" / dec"777e+1" == dec"0e-93"
    # divx358
    @with_context (Emax=92, Emin=-92, precision=7, rounding=RoundNearestTiesAway) @test dec"0e-92" / dec"777e+3" == dec"0e-95"
    # divx359
    @with_context (Emax=92, Emin=-92, precision=7, rounding=RoundNearestTiesAway) @test dec"0e-92" / dec"777e+4" == dec"0e-96"
    # divx360
    @with_context (Emax=92, Emin=-92, precision=7, rounding=RoundNearestTiesAway) @test dec"0e-92" / dec"777e+5" == dec"0e-97"
    # divx361
    @with_context (Emax=92, Emin=-92, precision=7, rounding=RoundNearestTiesAway) @test dec"0e-92" / dec"777e+6" == dec"0e-98"
    # divx362
    @with_context (Emax=92, Emin=-92, precision=7, rounding=RoundNearestTiesAway) @test dec"0e-92" / dec"777e+7" == dec"0e-98"
    # divx363
    @with_context (Emax=92, Emin=-92, precision=7, rounding=RoundNearestTiesAway) @test dec"0e-92" / dec"7e+92" == dec"0e-98"
    # divx371
    @with_context (Emax=92, Emin=-92, precision=7, rounding=RoundNearestTiesAway) @test dec"0e-92" / dec"700e-1" == dec"0e-91"
    # divx372
    @with_context (Emax=92, Emin=-92, precision=7, rounding=RoundNearestTiesAway) @test dec"0e-92" / dec"700e+1" == dec"0e-93"
    # divx373
    @with_context (Emax=92, Emin=-92, precision=7, rounding=RoundNearestTiesAway) @test dec"0e-92" / dec"700e+3" == dec"0e-95"
    # divx374
    @with_context (Emax=92, Emin=-92, precision=7, rounding=RoundNearestTiesAway) @test dec"0e-92" / dec"700e+4" == dec"0e-96"
    # divx375
    @with_context (Emax=92, Emin=-92, precision=7, rounding=RoundNearestTiesAway) @test dec"0e-92" / dec"700e+5" == dec"0e-97"
    # divx376
    @with_context (Emax=92, Emin=-92, precision=7, rounding=RoundNearestTiesAway) @test dec"0e-92" / dec"700e+6" == dec"0e-98"
    # divx377
    @with_context (Emax=92, Emin=-92, precision=7, rounding=RoundNearestTiesAway) @test dec"0e-92" / dec"700e+7" == dec"0e-98"
    # divx381
    @with_context (Emax=92, Emin=-92, precision=7, rounding=RoundNearestTiesAway) @test dec"0e+92" / dec"7e+1" == dec"0e+91"
    # divx382
    @with_context (Emax=92, Emin=-92, precision=7, rounding=RoundNearestTiesAway) @test dec"0e+92" / dec"7e+0" == dec"0e+92"
    # divx383
    @with_context (Emax=92, Emin=-92, precision=7, rounding=RoundNearestTiesAway) @test dec"0e+92" / dec"7e-1" == dec"0e+92"
    # divx384
    @with_context (Emax=92, Emin=-92, precision=7, rounding=RoundNearestTiesAway) @test dec"0e+90" / dec"777e+1" == dec"0e+89"
    # divx385
    @with_context (Emax=92, Emin=-92, precision=7, rounding=RoundNearestTiesAway) @test dec"0e+90" / dec"777e-1" == dec"0e+91"
    # divx386
    @with_context (Emax=92, Emin=-92, precision=7, rounding=RoundNearestTiesAway) @test dec"0e+90" / dec"777e-2" == dec"0e+92"
    # divx387
    @with_context (Emax=92, Emin=-92, precision=7, rounding=RoundNearestTiesAway) @test dec"0e+90" / dec"777e-3" == dec"0e+92"
    # divx388
    @with_context (Emax=92, Emin=-92, precision=7, rounding=RoundNearestTiesAway) @test dec"0e+90" / dec"777e-4" == dec"0e+92"
    # divx391
    @with_context (Emax=92, Emin=-92, precision=7, rounding=RoundNearestTiesAway) @test dec"0e+90" / dec"700e+1" == dec"0e+89"
    # divx392
    @with_context (Emax=92, Emin=-92, precision=7, rounding=RoundNearestTiesAway) @test dec"0e+90" / dec"700e-1" == dec"0e+91"
    # divx393
    @with_context (Emax=92, Emin=-92, precision=7, rounding=RoundNearestTiesAway) @test dec"0e+90" / dec"700e-2" == dec"0e+92"
    # divx394
    @with_context (Emax=92, Emin=-92, precision=7, rounding=RoundNearestTiesAway) @test dec"0e+90" / dec"700e-3" == dec"0e+92"
    # divx395
    @with_context (Emax=92, Emin=-92, precision=7, rounding=RoundNearestTiesAway) @test dec"0e+90" / dec"700e-4" == dec"0e+92"
    # divx401
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"12345678000" / dec"1" == dec"1.23456780e+10"
    # divx402
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"1" / dec"12345678000" == dec"8.10000066e-11"
    # divx403
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"1234567800" / dec"1" == dec"1.23456780e+9"
    # divx404
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"1" / dec"1234567800" == dec"8.10000066e-10"
    # divx405
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"1234567890" / dec"1" == dec"1.23456789e+9"
    # divx406
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"1" / dec"1234567890" == dec"8.10000007e-10"
    # divx407
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"1234567891" / dec"1" == dec"1.23456789e+9"
    # divx408
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"1" / dec"1234567891" == dec"8.10000007e-10"
    # divx409
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"12345678901" / dec"1" == dec"1.23456789e+10"
    # divx410
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"1" / dec"12345678901" == dec"8.10000007e-11"
    # divx411
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"1234567896" / dec"1" == dec"1.23456790e+9"
    # divx412
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"1" / dec"1234567896" == dec"8.10000003e-10"
    # divx413
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"1" / dec"1234567897" == dec"8.10000003e-10"
    # divx414
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"1" / dec"1234567898" == dec"8.10000002e-10"
    # divx415
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"1" / dec"1234567899" == dec"8.10000001e-10"
    # divx416
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"1" / dec"1234567900" == dec"8.10000001e-10"
    # divx417
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"1" / dec"1234567901" == dec"8.10000000e-10"
    # divx418
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"1" / dec"1234567902" == dec"8.09999999e-10"
    # divx421
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"1234567896.000000000000" / dec"1" == dec"1.23456790e+9"
    # divx422
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"1" / dec"1234567896.000000000000" == dec"8.10000003e-10"
    # divx423
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"1234567896.000000000001" / dec"1" == dec"1.23456790e+9"
    # divx424
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"1" / dec"1234567896.000000000001" == dec"8.10000003e-10"
    # divx425
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"1234567896.000000000000000000000000000000000000000009" / dec"1" == dec"1.23456790e+9"
    # divx426
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"1" / dec"1234567896.000000000000000000000000000000000000000009" == dec"8.10000003e-10"
    # divx427
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"1234567897.900010000000000000000000000000000000000009" / dec"1" == dec"1.23456790e+9"
    # divx428
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"1" / dec"1234567897.900010000000000000000000000000000000000009" == dec"8.10000002e-10"
    # divx441
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test dec"12345678000" / dec"1" == dec"12345678000"
    # divx442
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test dec"1" / dec"12345678000" == dec"8.10000066420005e-11"
    # divx443
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test dec"1234567800" / dec"1" == dec"1234567800"
    # divx444
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test dec"1" / dec"1234567800" == dec"8.10000066420005e-10"
    # divx445
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test dec"1234567890" / dec"1" == dec"1234567890"
    # divx446
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test dec"1" / dec"1234567890" == dec"8.10000007371000e-10"
    # divx447
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test dec"1234567891" / dec"1" == dec"1234567891"
    # divx448
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test dec"1" / dec"1234567891" == dec"8.10000006714900e-10"
    # divx449
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test dec"12345678901" / dec"1" == dec"12345678901"
    # divx450
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test dec"1" / dec"12345678901" == dec"8.10000007305390e-11"
    # divx451
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test dec"1234567896" / dec"1" == dec"1234567896"
    # divx452
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test dec"1" / dec"1234567896" == dec"8.10000003434400e-10"
    # divx453
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test dec"1e+1" / dec"1" == dec"1e+1"
    # divx454
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test dec"1e+1" / dec"1.0" == dec"1e+1"
    # divx455
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test dec"1e+1" / dec"1.00" == dec"1e+1"
    # divx456
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test dec"1e+2" / dec"2" == dec"5e+1"
    # divx457
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test dec"1e+2" / dec"2.0" == dec"5e+1"
    # divx458
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test dec"1e+2" / dec"2.00" == dec"5e+1"
    # divx460
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test dec"3e0" / dec"2e0" == dec"1.5"
    # divx461
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test dec"30e-1" / dec"2e0" == dec"1.5"
    # divx462
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test dec"300e-2" / dec"2e0" == dec"1.50"
    # divx464
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test dec"3000e-3" / dec"2e0" == dec"1.500"
    # divx465
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test dec"3e0" / dec"20e-1" == dec"1.5"
    # divx466
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test dec"30e-1" / dec"20e-1" == dec"1.5"
    # divx467
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test dec"300e-2" / dec"20e-1" == dec"1.5"
    # divx468
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test dec"3000e-3" / dec"20e-1" == dec"1.50"
    # divx469
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test dec"3e0" / dec"200e-2" == dec"1.5"
    # divx470
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test dec"30e-1" / dec"200e-2" == dec"1.5"
    # divx471
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test dec"300e-2" / dec"200e-2" == dec"1.5"
    # divx472
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test dec"3000e-3" / dec"200e-2" == dec"1.5"
    # divx473
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test dec"3e0" / dec"2000e-3" == dec"1.5"
    # divx474
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test dec"30e-1" / dec"2000e-3" == dec"1.5"
    # divx475
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test dec"300e-2" / dec"2000e-3" == dec"1.5"
    # divx476
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test dec"3000e-3" / dec"2000e-3" == dec"1.5"
    # divx480
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test dec"1" / dec"1.0e+33" == dec"1e-33"
    # divx481
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test dec"1" / dec"10e+33" == dec"1e-34"
    # divx482
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test dec"1" / dec"1.0e-33" == dec"1e+33"
    # divx483
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test dec"1" / dec"10e-33" == dec"1e+32"
    # divx484
    @with_context (Emax=96, Emin=-95, precision=7, rounding=RoundNearestTiesAway) @test dec"0e5" / dec"1e3" == dec"0e+2"
    # divx485
    @with_context (Emax=96, Emin=-95, precision=7, rounding=RoundNearestTiesAway) @test dec"0e5" / dec"2e3" == dec"0e+2"
    # divx486
    @with_context (Emax=96, Emin=-95, precision=7, rounding=RoundNearestTiesAway) @test dec"0e5" / dec"10e2" == dec"0e+3"
    # divx487
    @with_context (Emax=96, Emin=-95, precision=7, rounding=RoundNearestTiesAway) @test dec"0e5" / dec"20e2" == dec"0e+3"
    # divx488
    @with_context (Emax=96, Emin=-95, precision=7, rounding=RoundNearestTiesAway) @test dec"0e5" / dec"100e1" == dec"0e+4"
    # divx489
    @with_context (Emax=96, Emin=-95, precision=7, rounding=RoundNearestTiesAway) @test dec"0e5" / dec"200e1" == dec"0e+4"
    # divx491
    @with_context (Emax=96, Emin=-95, precision=7, rounding=RoundNearestTiesAway) @test dec"1e5" / dec"1e3" == dec"1e+2"
    # divx492
    @with_context (Emax=96, Emin=-95, precision=7, rounding=RoundNearestTiesAway) @test dec"1e5" / dec"2e3" == dec"5e+1"
    # divx493
    @with_context (Emax=96, Emin=-95, precision=7, rounding=RoundNearestTiesAway) @test dec"1e5" / dec"10e2" == dec"1e+2"
    # divx494
    @with_context (Emax=96, Emin=-95, precision=7, rounding=RoundNearestTiesAway) @test dec"1e5" / dec"20e2" == dec"5e+1"
    # divx495
    @with_context (Emax=96, Emin=-95, precision=7, rounding=RoundNearestTiesAway) @test dec"1e5" / dec"100e1" == dec"1e+2"
    # divx496
    @with_context (Emax=96, Emin=-95, precision=7, rounding=RoundNearestTiesAway) @test dec"1e5" / dec"200e1" == dec"5e+1"
    # divx497
    @with_context (Emax=92, Emin=-92, precision=7, rounding=RoundNearestTiesAway) @test dec"0e+86" / dec"1000e-13" == dec"0e+92"
    # divx498
    @with_context (Emax=92, Emin=-92, precision=7, rounding=RoundNearestTiesAway) @test dec"0e-98" / dec"1000e+13" == dec"0e-98"
    # divx500
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"1" / dec"9.9" == dec"0.101010101"
    # divx501
    @with_context (Emax=999, Emin=-999, precision=8, rounding=RoundNearestTiesAway) @test dec"1" / dec"9.9" == dec"0.10101010"
    # divx502
    @with_context (Emax=999, Emin=-999, precision=7, rounding=RoundNearestTiesAway) @test dec"1" / dec"9.9" == dec"0.1010101"
    # divx503
    @with_context (Emax=999, Emin=-999, precision=6, rounding=RoundNearestTiesAway) @test dec"1" / dec"9.9" == dec"0.101010"
    # divx511
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"1" / dec"2" == dec"0.5"
    # divx512
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"1.0" / dec"2" == dec"0.5"
    # divx513
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"1.00" / dec"2" == dec"0.50"
    # divx514
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"1.000" / dec"2" == dec"0.500"
    # divx515
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"1.0000" / dec"2" == dec"0.5000"
    # divx516
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"1.00000" / dec"2" == dec"0.50000"
    # divx517
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"1.000000" / dec"2" == dec"0.500000"
    # divx518
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"1.0000000" / dec"2" == dec"0.5000000"
    # divx519
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"1.00" / dec"2.00" == dec"0.5"
    # divx521
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"2" / dec"1" == dec"2"
    # divx522
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"2" / dec"1.0" == dec"2"
    # divx523
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"2" / dec"1.00" == dec"2"
    # divx524
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"2" / dec"1.000" == dec"2"
    # divx525
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"2" / dec"1.0000" == dec"2"
    # divx526
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"2" / dec"1.00000" == dec"2"
    # divx527
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"2" / dec"1.000000" == dec"2"
    # divx528
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"2" / dec"1.0000000" == dec"2"
    # divx529
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"2.00" / dec"1.00" == dec"2"
    # divx530
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"2.40" / dec"2" == dec"1.20"
    # divx531
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"2.40" / dec"4" == dec"0.60"
    # divx532
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"2.40" / dec"10" == dec"0.24"
    # divx533
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"2.40" / dec"2.0" == dec"1.2"
    # divx534
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"2.40" / dec"4.0" == dec"0.6"
    # divx535
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"2.40" / dec"10.0" == dec"0.24"
    # divx536
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"2.40" / dec"2.00" == dec"1.2"
    # divx537
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"2.40" / dec"4.00" == dec"0.6"
    # divx538
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"2.40" / dec"10.00" == dec"0.24"
    # divx539
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"0.9" / dec"0.1" == dec"9"
    # divx540
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"0.9" / dec"0.01" == dec"9e+1"
    # divx541
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"0.9" / dec"0.001" == dec"9e+2"
    # divx542
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"5" / dec"2" == dec"2.5"
    # divx543
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"5" / dec"2.0" == dec"2.5"
    # divx544
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"5" / dec"2.00" == dec"2.5"
    # divx545
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"5" / dec"20" == dec"0.25"
    # divx546
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"5" / dec"20.0" == dec"0.25"
    # divx547
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"2.400" / dec"2" == dec"1.200"
    # divx548
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"2.400" / dec"2.0" == dec"1.20"
    # divx549
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"2.400" / dec"2.400" == dec"1"
    # divx550
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"240" / dec"1" == dec"240"
    # divx551
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"240" / dec"10" == dec"24"
    # divx552
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"240" / dec"100" == dec"2.4"
    # divx553
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"240" / dec"1000" == dec"0.24"
    # divx554
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"2400" / dec"1" == dec"2400"
    # divx555
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"2400" / dec"10" == dec"240"
    # divx556
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"2400" / dec"100" == dec"24"
    # divx557
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"2400" / dec"1000" == dec"2.4"
    # divx570
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearestTiesAway) @test dec"2.4e+6" / dec"2" == dec"1.2e+6"
    # divx571
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearestTiesAway) @test dec"2.40e+6" / dec"2" == dec"1.20e+6"
    # divx572
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearestTiesAway) @test dec"2.400e+6" / dec"2" == dec"1.200e+6"
    # divx573
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearestTiesAway) @test dec"2.4000e+6" / dec"2" == dec"1.2000e+6"
    # divx574
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearestTiesAway) @test dec"24e+5" / dec"2" == dec"1.2e+6"
    # divx575
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearestTiesAway) @test dec"240e+4" / dec"2" == dec"1.20e+6"
    # divx576
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearestTiesAway) @test dec"2400e+3" / dec"2" == dec"1.200e+6"
    # divx577
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearestTiesAway) @test dec"24000e+2" / dec"2" == dec"1.2000e+6"
    # divx580
    @with_context (Emax=999, Emin=-999, precision=6, rounding=RoundNearestTiesAway) @test dec"2.4e+6" / dec"2" == dec"1.2e+6"
    # divx581
    @with_context (Emax=999, Emin=-999, precision=6, rounding=RoundNearestTiesAway) @test dec"2.40e+6" / dec"2" == dec"1.20e+6"
    # divx582
    @with_context (Emax=999, Emin=-999, precision=6, rounding=RoundNearestTiesAway) @test dec"2.400e+6" / dec"2" == dec"1.200e+6"
    # divx583
    @with_context (Emax=999, Emin=-999, precision=6, rounding=RoundNearestTiesAway) @test dec"2.4000e+6" / dec"2" == dec"1.2000e+6"
    # divx584
    @with_context (Emax=999, Emin=-999, precision=6, rounding=RoundNearestTiesAway) @test dec"24e+5" / dec"2" == dec"1.2e+6"
    # divx585
    @with_context (Emax=999, Emin=-999, precision=6, rounding=RoundNearestTiesAway) @test dec"240e+4" / dec"2" == dec"1.20e+6"
    # divx586
    @with_context (Emax=999, Emin=-999, precision=6, rounding=RoundNearestTiesAway) @test dec"2400e+3" / dec"2" == dec"1.200e+6"
    # divx587
    @with_context (Emax=999, Emin=-999, precision=6, rounding=RoundNearestTiesAway) @test dec"24000e+2" / dec"2" == dec"1.2000e+6"
    # divx590
    @with_context (Emax=999, Emin=-999, precision=7, rounding=RoundNearestTiesAway) @test dec"2.4e+6" / dec"2" == dec"1.2e+6"
    # divx591
    @with_context (Emax=999, Emin=-999, precision=7, rounding=RoundNearestTiesAway) @test dec"2.40e+6" / dec"2" == dec"1.20e+6"
    # divx592
    @with_context (Emax=999, Emin=-999, precision=7, rounding=RoundNearestTiesAway) @test dec"2.400e+6" / dec"2" == dec"1.200e+6"
    # divx593
    @with_context (Emax=999, Emin=-999, precision=7, rounding=RoundNearestTiesAway) @test dec"2.4000e+6" / dec"2" == dec"1.2000e+6"
    # divx594
    @with_context (Emax=999, Emin=-999, precision=7, rounding=RoundNearestTiesAway) @test dec"24e+5" / dec"2" == dec"1.2e+6"
    # divx595
    @with_context (Emax=999, Emin=-999, precision=7, rounding=RoundNearestTiesAway) @test dec"240e+4" / dec"2" == dec"1.20e+6"
    # divx596
    @with_context (Emax=999, Emin=-999, precision=7, rounding=RoundNearestTiesAway) @test dec"2400e+3" / dec"2" == dec"1.200e+6"
    # divx597
    @with_context (Emax=999, Emin=-999, precision=7, rounding=RoundNearestTiesAway) @test dec"24000e+2" / dec"2" == dec"1.2000e+6"
    # divx600
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"2.4e+9" / dec"2" == dec"1.2e+9"
    # divx601
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"2.40e+9" / dec"2" == dec"1.20e+9"
    # divx602
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"2.400e+9" / dec"2" == dec"1.200e+9"
    # divx603
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"2.4000e+9" / dec"2" == dec"1.2000e+9"
    # divx604
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"24e+8" / dec"2" == dec"1.2e+9"
    # divx605
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"240e+7" / dec"2" == dec"1.20e+9"
    # divx606
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"2400e+6" / dec"2" == dec"1.200e+9"
    # divx607
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"24000e+5" / dec"2" == dec"1.2000e+9"
    # divx610
    @with_context (Emax=999, Emin=-999, precision=33, rounding=RoundNearestTiesAway) @test dec"-3374988581607586061255542201048" / dec"82293895124.90045271504836568681" == dec"-41011408883796817797.8131097703792"
    # divx611
    @with_context (Emax=999, Emin=-999, precision=32, rounding=RoundNearestTiesAway) @test dec"-3374988581607586061255542201048" / dec"82293895124.90045271504836568681" == dec"-41011408883796817797.813109770379"
    # divx612
    @with_context (Emax=999, Emin=-999, precision=31, rounding=RoundNearestTiesAway) @test dec"-3374988581607586061255542201048" / dec"82293895124.90045271504836568681" == dec"-41011408883796817797.81310977038"
    # divx613
    @with_context (Emax=999, Emin=-999, precision=30, rounding=RoundNearestTiesAway) @test dec"-3374988581607586061255542201048" / dec"82293895124.90045271504836568681" == dec"-41011408883796817797.8131097704"
    # divx614
    @with_context (Emax=999, Emin=-999, precision=29, rounding=RoundNearestTiesAway) @test dec"-3374988581607586061255542201048" / dec"82293895124.90045271504836568681" == dec"-41011408883796817797.813109770"
    # divx615
    @with_context (Emax=999, Emin=-999, precision=28, rounding=RoundNearestTiesAway) @test dec"-3374988581607586061255542201048" / dec"82293895124.90045271504836568681" == dec"-41011408883796817797.81310977"
    # divx616
    @with_context (Emax=999, Emin=-999, precision=27, rounding=RoundNearestTiesAway) @test dec"-3374988581607586061255542201048" / dec"82293895124.90045271504836568681" == dec"-41011408883796817797.8131098"
    # divx617
    @with_context (Emax=999, Emin=-999, precision=26, rounding=RoundNearestTiesAway) @test dec"-3374988581607586061255542201048" / dec"82293895124.90045271504836568681" == dec"-41011408883796817797.813110"
    # divx618
    @with_context (Emax=999, Emin=-999, precision=25, rounding=RoundNearestTiesAway) @test dec"-3374988581607586061255542201048" / dec"82293895124.90045271504836568681" == dec"-41011408883796817797.81311"
    # divx619
    @with_context (Emax=999, Emin=-999, precision=24, rounding=RoundNearestTiesAway) @test dec"-3374988581607586061255542201048" / dec"82293895124.90045271504836568681" == dec"-41011408883796817797.8131"
    # divx620
    @with_context (Emax=999, Emin=-999, precision=23, rounding=RoundNearestTiesAway) @test dec"-3374988581607586061255542201048" / dec"82293895124.90045271504836568681" == dec"-41011408883796817797.813"
    # divx621
    @with_context (Emax=999, Emin=-999, precision=22, rounding=RoundNearestTiesAway) @test dec"-3374988581607586061255542201048" / dec"82293895124.90045271504836568681" == dec"-41011408883796817797.81"
    # divx622
    @with_context (Emax=999, Emin=-999, precision=21, rounding=RoundNearestTiesAway) @test dec"-3374988581607586061255542201048" / dec"82293895124.90045271504836568681" == dec"-41011408883796817797.8"
    # divx623
    @with_context (Emax=999, Emin=-999, precision=20, rounding=RoundNearestTiesAway) @test dec"-3374988581607586061255542201048" / dec"82293895124.90045271504836568681" == dec"-41011408883796817798"
    # divx624
    @with_context (Emax=999, Emin=-999, precision=19, rounding=RoundNearestTiesAway) @test dec"-3374988581607586061255542201048" / dec"82293895124.90045271504836568681" == dec"-4.101140888379681780e+19"
    # divx625
    @with_context (Emax=999, Emin=-999, precision=18, rounding=RoundNearestTiesAway) @test dec"-3374988581607586061255542201048" / dec"82293895124.90045271504836568681" == dec"-4.10114088837968178e+19"
    # divx626
    @with_context (Emax=999, Emin=-999, precision=17, rounding=RoundNearestTiesAway) @test dec"-3374988581607586061255542201048" / dec"82293895124.90045271504836568681" == dec"-4.1011408883796818e+19"
    # divx627
    @with_context (Emax=999, Emin=-999, precision=16, rounding=RoundNearestTiesAway) @test dec"-3374988581607586061255542201048" / dec"82293895124.90045271504836568681" == dec"-4.101140888379682e+19"
    # divx628
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test dec"-3374988581607586061255542201048" / dec"82293895124.90045271504836568681" == dec"-4.10114088837968e+19"
    # divx629
    @with_context (Emax=999, Emin=-999, precision=14, rounding=RoundNearestTiesAway) @test dec"-3374988581607586061255542201048" / dec"82293895124.90045271504836568681" == dec"-4.1011408883797e+19"
    # divx630
    @with_context (Emax=999, Emin=-999, precision=13, rounding=RoundNearestTiesAway) @test dec"-3374988581607586061255542201048" / dec"82293895124.90045271504836568681" == dec"-4.101140888380e+19"
    # divx631
    @with_context (Emax=999, Emin=-999, precision=12, rounding=RoundNearestTiesAway) @test dec"-3374988581607586061255542201048" / dec"82293895124.90045271504836568681" == dec"-4.10114088838e+19"
    # divx632
    @with_context (Emax=999, Emin=-999, precision=11, rounding=RoundNearestTiesAway) @test dec"-3374988581607586061255542201048" / dec"82293895124.90045271504836568681" == dec"-4.1011408884e+19"
    # divx633
    @with_context (Emax=999, Emin=-999, precision=10, rounding=RoundNearestTiesAway) @test dec"-3374988581607586061255542201048" / dec"82293895124.90045271504836568681" == dec"-4.101140888e+19"
    # divx634
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test dec"-3374988581607586061255542201048" / dec"82293895124.90045271504836568681" == dec"-4.10114089e+19"
    # divx635
    @with_context (Emax=999, Emin=-999, precision=8, rounding=RoundNearestTiesAway) @test dec"-3374988581607586061255542201048" / dec"82293895124.90045271504836568681" == dec"-4.1011409e+19"
    # divx636
    @with_context (Emax=999, Emin=-999, precision=7, rounding=RoundNearestTiesAway) @test dec"-3374988581607586061255542201048" / dec"82293895124.90045271504836568681" == dec"-4.101141e+19"
    # divx637
    @with_context (Emax=999, Emin=-999, precision=6, rounding=RoundNearestTiesAway) @test dec"-3374988581607586061255542201048" / dec"82293895124.90045271504836568681" == dec"-4.10114e+19"
    # divx638
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearestTiesAway) @test dec"-3374988581607586061255542201048" / dec"82293895124.90045271504836568681" == dec"-4.1011e+19"
    # divx639
    @with_context (Emax=999, Emin=-999, precision=4, rounding=RoundNearestTiesAway) @test dec"-3374988581607586061255542201048" / dec"82293895124.90045271504836568681" == dec"-4.101e+19"
    # divx640
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test dec"-3374988581607586061255542201048" / dec"82293895124.90045271504836568681" == dec"-4.10e+19"
    # divx641
    @with_context (Emax=999, Emin=-999, precision=2, rounding=RoundNearestTiesAway) @test dec"-3374988581607586061255542201048" / dec"82293895124.90045271504836568681" == dec"-4.1e+19"
    # divx642
    @with_context (Emax=999, Emin=-999, precision=1, rounding=RoundNearestTiesAway) @test dec"-3374988581607586061255542201048" / dec"82293895124.90045271504836568681" == dec"-4e+19"
    # divx731
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"5.00" / dec"1e-3" == dec"5.00e+3"
    # divx732
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test_throws UndefinedDivisionError dec"00.00" / dec"0.000"
    # divx733
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test_throws UndefinedDivisionError dec"00.00" / dec"0e-3"
    # divx734
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test_throws UndefinedDivisionError dec"0" / dec"-0"
    # divx735
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test_throws UndefinedDivisionError dec"-0" / dec"0"
    # divx736
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test_throws UndefinedDivisionError dec"-0" / dec"-0"
    # divx741
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"0" / dec"-1" == dec"-0"
    # divx742
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"-0" / dec"-1" == dec"0"
    # divx743
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"0" / dec"1" == dec"0"
    # divx744
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"-0" / dec"1" == dec"-0"
    # divx745
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test_throws DivisionByZeroError dec"-1" / dec"0"
    # divx746
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test_throws DivisionByZeroError dec"-1" / dec"-0"
    # divx747
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test_throws DivisionByZeroError dec"1" / dec"0"
    # divx748
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test_throws DivisionByZeroError dec"1" / dec"-0"
    # divx751
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"0.0" / dec"-1" == dec"-0.0"
    # divx752
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"-0.0" / dec"-1" == dec"0.0"
    # divx753
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"0.0" / dec"1" == dec"0.0"
    # divx754
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"-0.0" / dec"1" == dec"-0.0"
    # divx755
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test_throws DivisionByZeroError dec"-1.0" / dec"0"
    # divx756
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test_throws DivisionByZeroError dec"-1.0" / dec"-0"
    # divx757
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test_throws DivisionByZeroError dec"1.0" / dec"0"
    # divx758
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test_throws DivisionByZeroError dec"1.0" / dec"-0"
    # divx761
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"0" / dec"-1.0" == dec"-0e+1"
    # divx762
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"-0" / dec"-1.0" == dec"0e+1"
    # divx763
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"0" / dec"1.0" == dec"0e+1"
    # divx764
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"-0" / dec"1.0" == dec"-0e+1"
    # divx765
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test_throws DivisionByZeroError dec"-1" / dec"0.0"
    # divx766
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test_throws DivisionByZeroError dec"-1" / dec"-0.0"
    # divx767
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test_throws DivisionByZeroError dec"1" / dec"0.0"
    # divx768
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test_throws DivisionByZeroError dec"1" / dec"-0.0"
    # divx771
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"0.0" / dec"-1.0" == dec"-0"
    # divx772
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"-0.0" / dec"-1.0" == dec"0"
    # divx773
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"0.0" / dec"1.0" == dec"0"
    # divx774
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"-0.0" / dec"1.0" == dec"-0"
    # divx775
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test_throws DivisionByZeroError dec"-1.0" / dec"0.0"
    # divx776
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test_throws DivisionByZeroError dec"-1.0" / dec"-0.0"
    # divx777
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test_throws DivisionByZeroError dec"1.0" / dec"0.0"
    # divx778
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test_throws DivisionByZeroError dec"1.0" / dec"-0.0"
    # divx901
    @with_context (Emax=999999999, Emin=-999999999, precision=16, rounding=RoundNearestTiesAway) @test_throws UndefinedDivisionError dec"0" / dec"0"
    # divx902
    @with_context (Emax=999999999, Emin=-999999999, precision=16, rounding=RoundNearestTiesAway) @test_throws UndefinedDivisionError dec"0.0e5" / dec"0"
    # divx903
    @with_context (Emax=999999999, Emin=-999999999, precision=16, rounding=RoundNearestTiesAway) @test_throws UndefinedDivisionError dec"0.000" / dec"0"
    # divx904
    @with_context (Emax=999999999, Emin=-999999999, precision=16, rounding=RoundNearestTiesAway) @test_throws DivisionByZeroError dec"0.0001" / dec"0"
    # divx905
    @with_context (Emax=999999999, Emin=-999999999, precision=16, rounding=RoundNearestTiesAway) @test_throws DivisionByZeroError dec"0.01" / dec"0"
    # divx906
    @with_context (Emax=999999999, Emin=-999999999, precision=16, rounding=RoundNearestTiesAway) @test_throws DivisionByZeroError dec"0.1" / dec"0"
    # divx907
    @with_context (Emax=999999999, Emin=-999999999, precision=16, rounding=RoundNearestTiesAway) @test_throws DivisionByZeroError dec"1" / dec"0"
    # divx908
    @with_context (Emax=999999999, Emin=-999999999, precision=16, rounding=RoundNearestTiesAway) @test_throws DivisionByZeroError dec"1" / dec"0.0"
    # divx909
    @with_context (Emax=999999999, Emin=-999999999, precision=16, rounding=RoundNearestTiesAway) @test_throws DivisionByZeroError dec"10" / dec"0.0"
    # divx910
    @with_context (Emax=999999999, Emin=-999999999, precision=16, rounding=RoundNearestTiesAway) @test_throws DivisionByZeroError dec"1e+100" / dec"0.0"
    # divx911
    @with_context (Emax=999999999, Emin=-999999999, precision=16, rounding=RoundNearestTiesAway) @test_throws DivisionByZeroError dec"1e+1000" / dec"0"
    # divx921
    @with_context (Emax=999999999, Emin=-999999999, precision=16, rounding=RoundNearestTiesAway) @test_throws DivisionByZeroError dec"-0.0001" / dec"0"
    # divx922
    @with_context (Emax=999999999, Emin=-999999999, precision=16, rounding=RoundNearestTiesAway) @test_throws DivisionByZeroError dec"-0.01" / dec"0"
    # divx923
    @with_context (Emax=999999999, Emin=-999999999, precision=16, rounding=RoundNearestTiesAway) @test_throws DivisionByZeroError dec"-0.1" / dec"0"
    # divx924
    @with_context (Emax=999999999, Emin=-999999999, precision=16, rounding=RoundNearestTiesAway) @test_throws DivisionByZeroError dec"-1" / dec"0"
    # divx925
    @with_context (Emax=999999999, Emin=-999999999, precision=16, rounding=RoundNearestTiesAway) @test_throws DivisionByZeroError dec"-1" / dec"0.0"
    # divx926
    @with_context (Emax=999999999, Emin=-999999999, precision=16, rounding=RoundNearestTiesAway) @test_throws DivisionByZeroError dec"-10" / dec"0.0"
    # divx927
    @with_context (Emax=999999999, Emin=-999999999, precision=16, rounding=RoundNearestTiesAway) @test_throws DivisionByZeroError dec"-1e+100" / dec"0.0"
    # divx928
    @with_context (Emax=999999999, Emin=-999999999, precision=16, rounding=RoundNearestTiesAway) @test_throws DivisionByZeroError dec"-1e+1000" / dec"0"
    # divx931
    @with_context (Emax=999999999, Emin=-999999999, precision=16, rounding=RoundNearestTiesAway) @test_throws DivisionByZeroError dec"0.0001" / dec"-0"
    # divx932
    @with_context (Emax=999999999, Emin=-999999999, precision=16, rounding=RoundNearestTiesAway) @test_throws DivisionByZeroError dec"0.01" / dec"-0"
    # divx933
    @with_context (Emax=999999999, Emin=-999999999, precision=16, rounding=RoundNearestTiesAway) @test_throws DivisionByZeroError dec"0.1" / dec"-0"
    # divx934
    @with_context (Emax=999999999, Emin=-999999999, precision=16, rounding=RoundNearestTiesAway) @test_throws DivisionByZeroError dec"1" / dec"-0"
    # divx935
    @with_context (Emax=999999999, Emin=-999999999, precision=16, rounding=RoundNearestTiesAway) @test_throws DivisionByZeroError dec"1" / dec"-0.0"
    # divx936
    @with_context (Emax=999999999, Emin=-999999999, precision=16, rounding=RoundNearestTiesAway) @test_throws DivisionByZeroError dec"10" / dec"-0.0"
    # divx937
    @with_context (Emax=999999999, Emin=-999999999, precision=16, rounding=RoundNearestTiesAway) @test_throws DivisionByZeroError dec"1e+100" / dec"-0.0"
    # divx938
    @with_context (Emax=999999999, Emin=-999999999, precision=16, rounding=RoundNearestTiesAway) @test_throws DivisionByZeroError dec"1e+1000" / dec"-0"
    # divx941
    @with_context (Emax=999999999, Emin=-999999999, precision=16, rounding=RoundNearestTiesAway) @test_throws DivisionByZeroError dec"-0.0001" / dec"-0"
    # divx942
    @with_context (Emax=999999999, Emin=-999999999, precision=16, rounding=RoundNearestTiesAway) @test_throws DivisionByZeroError dec"-0.01" / dec"-0"
    # divx943
    @with_context (Emax=999999999, Emin=-999999999, precision=16, rounding=RoundNearestTiesAway) @test_throws DivisionByZeroError dec"-0.1" / dec"-0"
    # divx944
    @with_context (Emax=999999999, Emin=-999999999, precision=16, rounding=RoundNearestTiesAway) @test_throws DivisionByZeroError dec"-1" / dec"-0"
    # divx945
    @with_context (Emax=999999999, Emin=-999999999, precision=16, rounding=RoundNearestTiesAway) @test_throws DivisionByZeroError dec"-1" / dec"-0.0"
    # divx946
    @with_context (Emax=999999999, Emin=-999999999, precision=16, rounding=RoundNearestTiesAway) @test_throws DivisionByZeroError dec"-10" / dec"-0.0"
    # divx947
    @with_context (Emax=999999999, Emin=-999999999, precision=16, rounding=RoundNearestTiesAway) @test_throws DivisionByZeroError dec"-1e+100" / dec"-0.0"
    # divx948
    @with_context (Emax=999999999, Emin=-999999999, precision=16, rounding=RoundNearestTiesAway) @test_throws DivisionByZeroError dec"-1e+1000" / dec"-0"
    # divx951
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test_throws OverflowError dec"9e+999999999" / dec"+0.23456789012345e-0"
    # divx952
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"+0.100" / dec"9e+999999999" == dec"1.111111e-1000000001"
    # divx953
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"9e-999999999" / dec"+9.100" == dec"9.8901099e-1000000000"
    # divx954
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"-1.23456789" / dec"9e+999999999" == dec"-1.3717421e-1000000000"
    # divx955
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"-1.23456789012345e-0" / dec"9e+999999999" == dec"-1.3717421e-1000000000"
    # divx956
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"-1.23456789012345e-0" / dec"7e+999999999" == dec"-1.7636684e-1000000000"
    # divx957
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test_throws OverflowError dec"9e+999999999" / dec"-0.83456789012345e-0"
    # divx958
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"-0.100" / dec"9e+999999999" == dec"-1.111111e-1000000001"
    # divx959
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"9e-999999999" / dec"-9.100" == dec"-9.8901099e-1000000000"
    # divx960
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"1e-600000000" / dec"1e+400000001" == dec"1e-1000000001"
    # divx961
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"1e-600000000" / dec"1e+400000002" == dec"1e-1000000002"
    # divx962
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"1e-600000000" / dec"1e+400000003" == dec"1e-1000000003"
    # divx963
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"1e-600000000" / dec"1e+400000004" == dec"1e-1000000004"
    # divx964
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"1e-600000000" / dec"1e+400000005" == dec"1e-1000000005"
    # divx965
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"1e-600000000" / dec"1e+400000006" == dec"1e-1000000006"
    # divx966
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"1e-600000000" / dec"1e+400000007" == dec"1e-1000000007"
    # divx967
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"1e-600000000" / dec"1e+400000008" == dec"0e-1000000007"
    # divx968
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"1e-600000000" / dec"1e+400000009" == dec"0e-1000000007"
    # divx969
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"1e-600000000" / dec"1e+400000010" == dec"0e-1000000007"
    # divx970
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test_throws OverflowError dec"1e+600000000" / dec"1e-400000001"
    # divx971
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test_throws OverflowError dec"1e+600000000" / dec"1e-400000002"
    # divx972
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test_throws OverflowError dec"1e+600000000" / dec"1e-400000003"
    # divx973
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test_throws OverflowError dec"1e+600000000" / dec"1e-400000004"
    # divx974
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test_throws OverflowError dec"1e+600000000" / dec"1e-400000005"
    # divx975
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test_throws OverflowError dec"1e+600000000" / dec"1e-400000006"
    # divx976
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test_throws OverflowError dec"1e+600000000" / dec"1e-400000007"
    # divx977
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test_throws OverflowError dec"1e+600000000" / dec"1e-400000008"
    # divx978
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test_throws OverflowError dec"1e+600000000" / dec"1e-400000009"
    # divx979
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test_throws OverflowError dec"1e+600000000" / dec"1e-400000010"
    # divx980
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"1e-600000000" / dec"1e+400000009" == dec"0e-1000000007"
    # divx981
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"1e-600000000" / dec"-1e+400000009" == dec"-0e-1000000007"
    # divx982
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"-1e-600000000" / dec"1e+400000009" == dec"-0e-1000000007"
    # divx983
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"-1e-600000000" / dec"-1e+400000009" == dec"0e-1000000007"
    # divx984
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test_throws OverflowError dec"1e+600000000" / dec"1e-400000009"
    # divx985
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test_throws OverflowError dec"1e+600000000" / dec"-1e-400000009"
    # divx986
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test_throws OverflowError dec"-1e+600000000" / dec"1e-400000009"
    # divx987
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test_throws OverflowError dec"-1e+600000000" / dec"-1e-400000009"
    # divx990
    @with_context (Emax=999999999, Emin=-999999999, precision=3, rounding=RoundNearestTiesAway) @test_throws OverflowError dec"1000" / dec"9.999e-999999999"
    # divx991
    @with_context (Emax=999999999, Emin=-999999999, precision=3, rounding=RoundNearestTiesAway) @test_throws OverflowError dec"1000" / dec"-9.999e-999999999"
    # divx992
    @with_context (Emax=999999999, Emin=-999999999, precision=3, rounding=RoundNearestTiesAway) @test_throws OverflowError dec"9.999e+999999999" / dec"0.01"
    # divx993
    @with_context (Emax=999999999, Emin=-999999999, precision=3, rounding=RoundNearestTiesAway) @test_throws OverflowError dec"-9.999e+999999999" / dec"0.01"
    # divx1001
    @with_context (Emax=79, Emin=-79, precision=5, rounding=RoundNearestTiesAway) @test dec"1.52444e-80" / dec"1" == dec"1.524e-80"
    # divx1002
    @with_context (Emax=79, Emin=-79, precision=5, rounding=RoundNearestTiesAway) @test dec"1.52445e-80" / dec"1" == dec"1.524e-80"
    # divx1003
    @with_context (Emax=79, Emin=-79, precision=5, rounding=RoundNearestTiesAway) @test dec"1.52446e-80" / dec"1" == dec"1.524e-80"
    # divx1010
    @with_context (Emax=6144, Emin=-6143, precision=34, rounding=RoundNearestTiesAway) @test_throws OverflowError dec"343e6000" / dec"234e-1000"
    # divx1021
    @with_context (Emax=6144, Emin=-6143, precision=7, rounding=RoundNearestTiesAway) @test dec"1e0" / dec"1e0" == dec"1"
    # divx1022
    @with_context (Emax=6144, Emin=-6143, precision=7, rounding=RoundNearestTiesAway) @test dec"1e0" / dec"2e0" == dec"0.5"
    # divx1023
    @with_context (Emax=6144, Emin=-6143, precision=7, rounding=RoundNearestTiesAway) @test dec"1e0" / dec"3e0" == dec"0.3333333"
    # divx1024
    @with_context (Emax=6144, Emin=-6143, precision=7, rounding=RoundNearestTiesAway) @test dec"100e-2" / dec"1000e-3" == dec"1"
    # divx1025
    @with_context (Emax=6144, Emin=-6143, precision=7, rounding=RoundNearestTiesAway) @test dec"24e-1" / dec"2e0" == dec"1.2"
    # divx1026
    @with_context (Emax=6144, Emin=-6143, precision=7, rounding=RoundNearestTiesAway) @test dec"2400e-3" / dec"2e0" == dec"1.200"
    # divx1027
    @with_context (Emax=6144, Emin=-6143, precision=7, rounding=RoundNearestTiesAway) @test dec"5e0" / dec"2e0" == dec"2.5"
    # divx1028
    @with_context (Emax=6144, Emin=-6143, precision=7, rounding=RoundNearestTiesAway) @test dec"5e0" / dec"20e-1" == dec"2.5"
    # divx1029
    @with_context (Emax=6144, Emin=-6143, precision=7, rounding=RoundNearestTiesAway) @test dec"5e0" / dec"2000e-3" == dec"2.5"
    # divx1030
    @with_context (Emax=6144, Emin=-6143, precision=7, rounding=RoundNearestTiesAway) @test dec"5e0" / dec"2e-1" == dec"25"
    # divx1031
    @with_context (Emax=6144, Emin=-6143, precision=7, rounding=RoundNearestTiesAway) @test dec"5e0" / dec"20e-2" == dec"25"
    # divx1032
    @with_context (Emax=6144, Emin=-6143, precision=7, rounding=RoundNearestTiesAway) @test dec"480e-2" / dec"3e0" == dec"1.60"
    # divx1033
    @with_context (Emax=6144, Emin=-6143, precision=7, rounding=RoundNearestTiesAway) @test dec"47e-1" / dec"2e0" == dec"2.35"
    # divx1051
    @with_context (Emax=6144, Emin=-6143, precision=7, rounding=RoundNearest) @test dec"5" / dec"11" == dec"0.4545455"
end
