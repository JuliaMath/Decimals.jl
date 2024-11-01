using Decimals
using ScopedValues
using Test
using Decimals: @with_context

@testset "Add" begin
    # addx001
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"1" + dec"1" == dec"2"
    # addx002
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"2" + dec"3" == dec"5"
    # addx003
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"5.75" + dec"3.3" == dec"9.05"
    # addx004
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"5" + dec"-3" == dec"2"
    # addx005
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-5" + dec"-3" == dec"-8"
    # addx006
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-7" + dec"2.5" == dec"-4.5"
    # addx007
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0.7" + dec"0.3" == dec"1.0"
    # addx008
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"1.25" + dec"1.25" == dec"2.50"
    # addx009
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"1.23456789" + dec"1.00000000" == dec"2.23456789"
    # addx010
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"1.23456789" + dec"1.00000011" == dec"2.23456800"
    # addx011
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0.4444444444" + dec"0.5555555555" == dec"1.00000000"
    # addx012
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0.4444444440" + dec"0.5555555555" == dec"1.00000000"
    # addx013
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0.4444444444" + dec"0.5555555550" == dec"0.999999999"
    # addx014
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0.44444444449" + dec"0" == dec"0.444444444"
    # addx015
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0.444444444499" + dec"0" == dec"0.444444444"
    # addx016
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0.4444444444999" + dec"0" == dec"0.444444444"
    # addx017
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0.4444444445000" + dec"0" == dec"0.444444445"
    # addx018
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0.4444444445001" + dec"0" == dec"0.444444445"
    # addx019
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0.444444444501" + dec"0" == dec"0.444444445"
    # addx020
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0.44444444451" + dec"0" == dec"0.444444445"
    # addx021
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0" + dec"1" == dec"1"
    # addx022
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"1" + dec"1" == dec"2"
    # addx023
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"2" + dec"1" == dec"3"
    # addx024
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"3" + dec"1" == dec"4"
    # addx025
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"4" + dec"1" == dec"5"
    # addx026
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"5" + dec"1" == dec"6"
    # addx027
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"6" + dec"1" == dec"7"
    # addx028
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"7" + dec"1" == dec"8"
    # addx029
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"8" + dec"1" == dec"9"
    # addx030
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"9" + dec"1" == dec"10"
    # addx031
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0.9998" + dec"0.0000" == dec"0.9998"
    # addx032
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0.9998" + dec"0.0001" == dec"0.9999"
    # addx033
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0.9998" + dec"0.0002" == dec"1.0000"
    # addx034
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0.9998" + dec"0.0003" == dec"1.0001"
    # addx035
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"70" + dec"10000e+9" == dec"1.00000000e+13"
    # addx036
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"700" + dec"10000e+9" == dec"1.00000000e+13"
    # addx037
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"7000" + dec"10000e+9" == dec"1.00000000e+13"
    # addx038
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"70000" + dec"10000e+9" == dec"1.00000001e+13"
    # addx039
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"700000" + dec"10000e+9" == dec"1.00000007e+13"
    # addx040
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"10000e+9" + dec"70" == dec"1.00000000e+13"
    # addx041
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"10000e+9" + dec"700" == dec"1.00000000e+13"
    # addx042
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"10000e+9" + dec"7000" == dec"1.00000000e+13"
    # addx044
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"10000e+9" + dec"70000" == dec"1.00000001e+13"
    # addx045
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"10000e+9" + dec"700000" == dec"1.00000007e+13"
    # addx046
    @with_context (Emax=384, Emin=-383, precision=15, rounding=RoundNearestTiesAway) @test dec"10000e+9" + dec"7" == dec"10000000000007"
    # addx047
    @with_context (Emax=384, Emin=-383, precision=15, rounding=RoundNearestTiesAway) @test dec"10000e+9" + dec"70" == dec"10000000000070"
    # addx048
    @with_context (Emax=384, Emin=-383, precision=15, rounding=RoundNearestTiesAway) @test dec"10000e+9" + dec"700" == dec"10000000000700"
    # addx049
    @with_context (Emax=384, Emin=-383, precision=15, rounding=RoundNearestTiesAway) @test dec"10000e+9" + dec"7000" == dec"10000000007000"
    # addx050
    @with_context (Emax=384, Emin=-383, precision=15, rounding=RoundNearestTiesAway) @test dec"10000e+9" + dec"70000" == dec"10000000070000"
    # addx051
    @with_context (Emax=384, Emin=-383, precision=15, rounding=RoundNearestTiesAway) @test dec"10000e+9" + dec"700000" == dec"10000000700000"
    # addx052
    @with_context (Emax=384, Emin=-383, precision=15, rounding=RoundNearestTiesAway) @test dec"10000e+9" + dec"7000000" == dec"10000007000000"
    # addx053
    @with_context (Emax=384, Emin=-383, precision=15, rounding=RoundNearestTiesAway) @test dec"12" + dec"7.00" == dec"19.00"
    # addx054
    @with_context (Emax=384, Emin=-383, precision=15, rounding=RoundNearestTiesAway) @test dec"1.3" + dec"-1.07" == dec"0.23"
    # addx055
    @with_context (Emax=384, Emin=-383, precision=15, rounding=RoundNearestTiesAway) @test dec"1.3" + dec"-1.30" == dec"0.00"
    # addx056
    @with_context (Emax=384, Emin=-383, precision=15, rounding=RoundNearestTiesAway) @test dec"1.3" + dec"-2.07" == dec"-0.77"
    # addx057
    @with_context (Emax=384, Emin=-383, precision=15, rounding=RoundNearestTiesAway) @test dec"1e+2" + dec"1e+4" == dec"1.01e+4"
    # addx060
    @with_context (Emax=384, Emin=-383, precision=6, rounding=RoundNearestTiesAway) @test dec"10000e+9" + dec"70000" == dec"1.00000e+13"
    # addx061
    @with_context (Emax=384, Emin=-383, precision=6, rounding=RoundNearestTiesAway) @test dec"1" + dec"0.0001" == dec"1.0001"
    # addx062
    @with_context (Emax=384, Emin=-383, precision=6, rounding=RoundNearestTiesAway) @test dec"1" + dec"0.00001" == dec"1.00001"
    # addx063
    @with_context (Emax=384, Emin=-383, precision=6, rounding=RoundNearestTiesAway) @test dec"1" + dec"0.000001" == dec"1.00000"
    # addx064
    @with_context (Emax=384, Emin=-383, precision=6, rounding=RoundNearestTiesAway) @test dec"1" + dec"0.0000001" == dec"1.00000"
    # addx065
    @with_context (Emax=384, Emin=-383, precision=6, rounding=RoundNearestTiesAway) @test dec"1" + dec"0.00000001" == dec"1.00000"
    # addx070
    @with_context (Emax=384, Emin=-383, precision=6, rounding=RoundNearestTiesAway) @test dec"1" + dec"0" == dec"1"
    # addx071
    @with_context (Emax=384, Emin=-383, precision=6, rounding=RoundNearestTiesAway) @test dec"1" + dec"0." == dec"1"
    # addx072
    @with_context (Emax=384, Emin=-383, precision=6, rounding=RoundNearestTiesAway) @test dec"1" + dec".0" == dec"1.0"
    # addx073
    @with_context (Emax=384, Emin=-383, precision=6, rounding=RoundNearestTiesAway) @test dec"1" + dec"0.0" == dec"1.0"
    # addx074
    @with_context (Emax=384, Emin=-383, precision=6, rounding=RoundNearestTiesAway) @test dec"1" + dec"0.00" == dec"1.00"
    # addx075
    @with_context (Emax=384, Emin=-383, precision=6, rounding=RoundNearestTiesAway) @test dec"0" + dec"1" == dec"1"
    # addx076
    @with_context (Emax=384, Emin=-383, precision=6, rounding=RoundNearestTiesAway) @test dec"0." + dec"1" == dec"1"
    # addx077
    @with_context (Emax=384, Emin=-383, precision=6, rounding=RoundNearestTiesAway) @test dec".0" + dec"1" == dec"1.0"
    # addx078
    @with_context (Emax=384, Emin=-383, precision=6, rounding=RoundNearestTiesAway) @test dec"0.0" + dec"1" == dec"1.0"
    # addx079
    @with_context (Emax=384, Emin=-383, precision=6, rounding=RoundNearestTiesAway) @test dec"0.00" + dec"1" == dec"1.00"
    # addx080
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"999999998" + dec"1" == dec"999999999"
    # addx081
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"999999999" + dec"1" == dec"1.00000000e+9"
    # addx082
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"99999999" + dec"1" == dec"100000000"
    # addx083
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"9999999" + dec"1" == dec"10000000"
    # addx084
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"999999" + dec"1" == dec"1000000"
    # addx085
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"99999" + dec"1" == dec"100000"
    # addx086
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"9999" + dec"1" == dec"10000"
    # addx087
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"999" + dec"1" == dec"1000"
    # addx088
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"99" + dec"1" == dec"100"
    # addx089
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"9" + dec"1" == dec"10"
    # addx090
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-56267e-10" + dec"0" == dec"-0.0000056267"
    # addx091
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-56267e-6" + dec"0" == dec"-0.056267"
    # addx092
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-56267e-5" + dec"0" == dec"-0.56267"
    # addx093
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-56267e-4" + dec"0" == dec"-5.6267"
    # addx094
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-56267e-3" + dec"0" == dec"-56.267"
    # addx095
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-56267e-2" + dec"0" == dec"-562.67"
    # addx096
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-56267e-1" + dec"0" == dec"-5626.7"
    # addx097
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-56267e-0" + dec"0" == dec"-56267"
    # addx098
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-5e-10" + dec"0" == dec"-5e-10"
    # addx099
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-5e-7" + dec"0" == dec"-5e-7"
    # addx100
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-5e-6" + dec"0" == dec"-0.000005"
    # addx101
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-5e-5" + dec"0" == dec"-0.00005"
    # addx102
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-5e-4" + dec"0" == dec"-0.0005"
    # addx103
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-5e-1" + dec"0" == dec"-0.5"
    # addx104
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-5e0" + dec"0" == dec"-5"
    # addx105
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-5e1" + dec"0" == dec"-50"
    # addx106
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-5e5" + dec"0" == dec"-500000"
    # addx107
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-5e8" + dec"0" == dec"-500000000"
    # addx108
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-5e9" + dec"0" == dec"-5.00000000e+9"
    # addx109
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-5e10" + dec"0" == dec"-5.00000000e+10"
    # addx110
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-5e11" + dec"0" == dec"-5.00000000e+11"
    # addx111
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-5e100" + dec"0" == dec"-5.00000000e+100"
    # addx113
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0" + dec"-56267e-10" == dec"-0.0000056267"
    # addx114
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0" + dec"-56267e-6" == dec"-0.056267"
    # addx116
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0" + dec"-56267e-5" == dec"-0.56267"
    # addx117
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0" + dec"-56267e-4" == dec"-5.6267"
    # addx119
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0" + dec"-56267e-3" == dec"-56.267"
    # addx120
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0" + dec"-56267e-2" == dec"-562.67"
    # addx121
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0" + dec"-56267e-1" == dec"-5626.7"
    # addx122
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0" + dec"-56267e-0" == dec"-56267"
    # addx123
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0" + dec"-5e-10" == dec"-5e-10"
    # addx124
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0" + dec"-5e-7" == dec"-5e-7"
    # addx125
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0" + dec"-5e-6" == dec"-0.000005"
    # addx126
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0" + dec"-5e-5" == dec"-0.00005"
    # addx127
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0" + dec"-5e-4" == dec"-0.0005"
    # addx128
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0" + dec"-5e-1" == dec"-0.5"
    # addx129
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0" + dec"-5e0" == dec"-5"
    # addx130
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0" + dec"-5e1" == dec"-50"
    # addx131
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0" + dec"-5e5" == dec"-500000"
    # addx132
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0" + dec"-5e8" == dec"-500000000"
    # addx133
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0" + dec"-5e9" == dec"-5.00000000e+9"
    # addx134
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0" + dec"-5e10" == dec"-5.00000000e+10"
    # addx135
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0" + dec"-5e11" == dec"-5.00000000e+11"
    # addx136
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0" + dec"-5e100" == dec"-5.00000000e+100"
    # addx137
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"1" + dec"0e-12" == dec"1.00000000"
    # addx138
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-1" + dec"0e-12" == dec"-1.00000000"
    # addx139
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0e-12" + dec"1" == dec"1.00000000"
    # addx140
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0e-12" + dec"-1" == dec"-1.00000000"
    # addx141
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"1e+4" + dec"0.0000" == dec"10000.0000"
    # addx142
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"1e+4" + dec"0.00000" == dec"10000.0000"
    # addx143
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0.000" + dec"1e+5" == dec"100000.000"
    # addx144
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0.0000" + dec"1e+5" == dec"100000.000"
    # addx146
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"00.0" + dec"0" == dec"0.0"
    # addx147
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0.00" + dec"0" == dec"0.00"
    # addx148
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0" + dec"0.00" == dec"0.00"
    # addx149
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0" + dec"00.0" == dec"0.0"
    # addx150
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"00.0" + dec"0.00" == dec"0.00"
    # addx151
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0.00" + dec"00.0" == dec"0.00"
    # addx152
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"3" + dec".3" == dec"3.3"
    # addx153
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"3." + dec".3" == dec"3.3"
    # addx154
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"3.0" + dec".3" == dec"3.3"
    # addx155
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"3.00" + dec".3" == dec"3.30"
    # addx156
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"3" + dec"3" == dec"6"
    # addx157
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"3" + dec"+3" == dec"6"
    # addx158
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"3" + dec"-3" == dec"0"
    # addx159
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0.3" + dec"-0.3" == dec"0.0"
    # addx160
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0.03" + dec"-0.03" == dec"0.00"
    # addx161
    @with_context (Emax=384, Emin=-383, precision=15, rounding=RoundNearestTiesAway) @test dec"1e+12" + dec"-1" == dec"999999999999"
    # addx162
    @with_context (Emax=384, Emin=-383, precision=15, rounding=RoundNearestTiesAway) @test dec"1e+12" + dec"1.11" == dec"1000000000001.11"
    # addx163
    @with_context (Emax=384, Emin=-383, precision=15, rounding=RoundNearestTiesAway) @test dec"1.11" + dec"1e+12" == dec"1000000000001.11"
    # addx164
    @with_context (Emax=384, Emin=-383, precision=15, rounding=RoundNearestTiesAway) @test dec"-1" + dec"1e+12" == dec"999999999999"
    # addx165
    @with_context (Emax=384, Emin=-383, precision=15, rounding=RoundNearestTiesAway) @test dec"7e+12" + dec"-1" == dec"6999999999999"
    # addx166
    @with_context (Emax=384, Emin=-383, precision=15, rounding=RoundNearestTiesAway) @test dec"7e+12" + dec"1.11" == dec"7000000000001.11"
    # addx167
    @with_context (Emax=384, Emin=-383, precision=15, rounding=RoundNearestTiesAway) @test dec"1.11" + dec"7e+12" == dec"7000000000001.11"
    # addx168
    @with_context (Emax=384, Emin=-383, precision=15, rounding=RoundNearestTiesAway) @test dec"-1" + dec"7e+12" == dec"6999999999999"
    # addx170
    @with_context (Emax=384, Emin=-383, precision=15, rounding=RoundNearestTiesAway) @test dec"0.444444444444444" + dec"0.555555555555563" == dec"1.00000000000001"
    # addx171
    @with_context (Emax=384, Emin=-383, precision=15, rounding=RoundNearestTiesAway) @test dec"0.444444444444444" + dec"0.555555555555562" == dec"1.00000000000001"
    # addx172
    @with_context (Emax=384, Emin=-383, precision=15, rounding=RoundNearestTiesAway) @test dec"0.444444444444444" + dec"0.555555555555561" == dec"1.00000000000001"
    # addx173
    @with_context (Emax=384, Emin=-383, precision=15, rounding=RoundNearestTiesAway) @test dec"0.444444444444444" + dec"0.555555555555560" == dec"1.00000000000000"
    # addx174
    @with_context (Emax=384, Emin=-383, precision=15, rounding=RoundNearestTiesAway) @test dec"0.444444444444444" + dec"0.555555555555559" == dec"1.00000000000000"
    # addx175
    @with_context (Emax=384, Emin=-383, precision=15, rounding=RoundNearestTiesAway) @test dec"0.444444444444444" + dec"0.555555555555558" == dec"1.00000000000000"
    # addx176
    @with_context (Emax=384, Emin=-383, precision=15, rounding=RoundNearestTiesAway) @test dec"0.444444444444444" + dec"0.555555555555557" == dec"1.00000000000000"
    # addx177
    @with_context (Emax=384, Emin=-383, precision=15, rounding=RoundNearestTiesAway) @test dec"0.444444444444444" + dec"0.555555555555556" == dec"1.00000000000000"
    # addx178
    @with_context (Emax=384, Emin=-383, precision=15, rounding=RoundNearestTiesAway) @test dec"0.444444444444444" + dec"0.555555555555555" == dec"0.999999999999999"
    # addx179
    @with_context (Emax=384, Emin=-383, precision=15, rounding=RoundNearestTiesAway) @test dec"0.444444444444444" + dec"0.555555555555554" == dec"0.999999999999998"
    # addx180
    @with_context (Emax=384, Emin=-383, precision=15, rounding=RoundNearestTiesAway) @test dec"0.444444444444444" + dec"0.555555555555553" == dec"0.999999999999997"
    # addx181
    @with_context (Emax=384, Emin=-383, precision=15, rounding=RoundNearestTiesAway) @test dec"0.444444444444444" + dec"0.555555555555552" == dec"0.999999999999996"
    # addx182
    @with_context (Emax=384, Emin=-383, precision=15, rounding=RoundNearestTiesAway) @test dec"0.444444444444444" + dec"0.555555555555551" == dec"0.999999999999995"
    # addx183
    @with_context (Emax=384, Emin=-383, precision=15, rounding=RoundNearestTiesAway) @test dec"0.444444444444444" + dec"0.555555555555550" == dec"0.999999999999994"
    # addx200
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"123456789" + dec"0" == dec"123456789"
    # addx201
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"123456789" + dec"0.000000001" == dec"123456789"
    # addx202
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"123456789" + dec"0.000001" == dec"123456789"
    # addx203
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"123456789" + dec"0.1" == dec"123456789"
    # addx204
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"123456789" + dec"0.4" == dec"123456789"
    # addx205
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"123456789" + dec"0.49" == dec"123456789"
    # addx206
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"123456789" + dec"0.499999" == dec"123456789"
    # addx207
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"123456789" + dec"0.499999999" == dec"123456789"
    # addx208
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"123456789" + dec"0.5" == dec"123456790"
    # addx209
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"123456789" + dec"0.500000001" == dec"123456790"
    # addx210
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"123456789" + dec"0.500001" == dec"123456790"
    # addx211
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"123456789" + dec"0.51" == dec"123456790"
    # addx212
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"123456789" + dec"0.6" == dec"123456790"
    # addx213
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"123456789" + dec"0.9" == dec"123456790"
    # addx214
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"123456789" + dec"0.99999" == dec"123456790"
    # addx215
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"123456789" + dec"0.999999999" == dec"123456790"
    # addx216
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"123456789" + dec"1" == dec"123456790"
    # addx217
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"123456789" + dec"1.000000001" == dec"123456790"
    # addx218
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"123456789" + dec"1.00001" == dec"123456790"
    # addx219
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"123456789" + dec"1.1" == dec"123456790"
    # addx220
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearest) @test dec"123456789" + dec"0" == dec"123456789"
    # addx221
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearest) @test dec"123456789" + dec"0.000000001" == dec"123456789"
    # addx222
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearest) @test dec"123456789" + dec"0.000001" == dec"123456789"
    # addx223
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearest) @test dec"123456789" + dec"0.1" == dec"123456789"
    # addx224
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearest) @test dec"123456789" + dec"0.4" == dec"123456789"
    # addx225
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearest) @test dec"123456789" + dec"0.49" == dec"123456789"
    # addx226
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearest) @test dec"123456789" + dec"0.499999" == dec"123456789"
    # addx227
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearest) @test dec"123456789" + dec"0.499999999" == dec"123456789"
    # addx228
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearest) @test dec"123456789" + dec"0.5" == dec"123456790"
    # addx229
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearest) @test dec"123456789" + dec"0.500000001" == dec"123456790"
    # addx230
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearest) @test dec"123456789" + dec"0.500001" == dec"123456790"
    # addx231
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearest) @test dec"123456789" + dec"0.51" == dec"123456790"
    # addx232
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearest) @test dec"123456789" + dec"0.6" == dec"123456790"
    # addx233
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearest) @test dec"123456789" + dec"0.9" == dec"123456790"
    # addx234
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearest) @test dec"123456789" + dec"0.99999" == dec"123456790"
    # addx235
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearest) @test dec"123456789" + dec"0.999999999" == dec"123456790"
    # addx236
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearest) @test dec"123456789" + dec"1" == dec"123456790"
    # addx237
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearest) @test dec"123456789" + dec"1.00000001" == dec"123456790"
    # addx238
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearest) @test dec"123456789" + dec"1.00001" == dec"123456790"
    # addx239
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearest) @test dec"123456789" + dec"1.1" == dec"123456790"
    # addx240
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearest) @test dec"123456788" + dec"0.499999999" == dec"123456788"
    # addx241
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearest) @test dec"123456788" + dec"0.5" == dec"123456788"
    # addx242
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearest) @test dec"123456788" + dec"0.500000001" == dec"123456789"
    # addx250
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundToZero) @test dec"123456789" + dec"0" == dec"123456789"
    # addx251
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundToZero) @test dec"123456789" + dec"0.000000001" == dec"123456789"
    # addx252
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundToZero) @test dec"123456789" + dec"0.000001" == dec"123456789"
    # addx253
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundToZero) @test dec"123456789" + dec"0.1" == dec"123456789"
    # addx254
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundToZero) @test dec"123456789" + dec"0.4" == dec"123456789"
    # addx255
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundToZero) @test dec"123456789" + dec"0.49" == dec"123456789"
    # addx256
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundToZero) @test dec"123456789" + dec"0.499999" == dec"123456789"
    # addx257
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundToZero) @test dec"123456789" + dec"0.499999999" == dec"123456789"
    # addx258
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundToZero) @test dec"123456789" + dec"0.5" == dec"123456789"
    # addx259
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundToZero) @test dec"123456789" + dec"0.500000001" == dec"123456789"
    # addx260
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundToZero) @test dec"123456789" + dec"0.500001" == dec"123456789"
    # addx261
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundToZero) @test dec"123456789" + dec"0.51" == dec"123456789"
    # addx262
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundToZero) @test dec"123456789" + dec"0.6" == dec"123456789"
    # addx263
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundToZero) @test dec"123456789" + dec"0.9" == dec"123456789"
    # addx264
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundToZero) @test dec"123456789" + dec"0.99999" == dec"123456789"
    # addx265
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundToZero) @test dec"123456789" + dec"0.999999999" == dec"123456789"
    # addx266
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundToZero) @test dec"123456789" + dec"1" == dec"123456790"
    # addx267
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundToZero) @test dec"123456789" + dec"1.00000001" == dec"123456790"
    # addx268
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundToZero) @test dec"123456789" + dec"1.00001" == dec"123456790"
    # addx269
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundToZero) @test dec"123456789" + dec"1.1" == dec"123456790"
    # addx270
    @with_context (Emax=384, Emin=-383, precision=3, rounding=RoundNearestTiesAway) @test dec"12345678900000" + dec"9999999999999" == dec"2.23e+13"
    # addx271
    @with_context (Emax=384, Emin=-383, precision=3, rounding=RoundNearestTiesAway) @test dec"9999999999999" + dec"12345678900000" == dec"2.23e+13"
    # addx272
    @with_context (Emax=384, Emin=-383, precision=3, rounding=RoundNearestTiesAway) @test dec"12e+3" + dec"3444" == dec"1.54e+4"
    # addx273
    @with_context (Emax=384, Emin=-383, precision=3, rounding=RoundNearestTiesAway) @test dec"12e+3" + dec"3446" == dec"1.54e+4"
    # addx274
    @with_context (Emax=384, Emin=-383, precision=3, rounding=RoundNearestTiesAway) @test dec"12e+3" + dec"3449.9" == dec"1.54e+4"
    # addx275
    @with_context (Emax=384, Emin=-383, precision=3, rounding=RoundNearestTiesAway) @test dec"12e+3" + dec"3450.0" == dec"1.55e+4"
    # addx276
    @with_context (Emax=384, Emin=-383, precision=3, rounding=RoundNearestTiesAway) @test dec"12e+3" + dec"3450.1" == dec"1.55e+4"
    # addx277
    @with_context (Emax=384, Emin=-383, precision=3, rounding=RoundNearestTiesAway) @test dec"12e+3" + dec"3454" == dec"1.55e+4"
    # addx278
    @with_context (Emax=384, Emin=-383, precision=3, rounding=RoundNearestTiesAway) @test dec"12e+3" + dec"3456" == dec"1.55e+4"
    # addx281
    @with_context (Emax=384, Emin=-383, precision=3, rounding=RoundNearestTiesAway) @test dec"3444" + dec"12e+3" == dec"1.54e+4"
    # addx282
    @with_context (Emax=384, Emin=-383, precision=3, rounding=RoundNearestTiesAway) @test dec"3446" + dec"12e+3" == dec"1.54e+4"
    # addx283
    @with_context (Emax=384, Emin=-383, precision=3, rounding=RoundNearestTiesAway) @test dec"3449.9" + dec"12e+3" == dec"1.54e+4"
    # addx284
    @with_context (Emax=384, Emin=-383, precision=3, rounding=RoundNearestTiesAway) @test dec"3450.0" + dec"12e+3" == dec"1.55e+4"
    # addx285
    @with_context (Emax=384, Emin=-383, precision=3, rounding=RoundNearestTiesAway) @test dec"3450.1" + dec"12e+3" == dec"1.55e+4"
    # addx286
    @with_context (Emax=384, Emin=-383, precision=3, rounding=RoundNearestTiesAway) @test dec"3454" + dec"12e+3" == dec"1.55e+4"
    # addx287
    @with_context (Emax=384, Emin=-383, precision=3, rounding=RoundNearestTiesAway) @test dec"3456" + dec"12e+3" == dec"1.55e+4"
    # addx301
    @with_context (Emax=384, Emin=-383, precision=3, rounding=RoundNearestTiesAway) @test dec"-1" + dec"1" == dec"0"
    # addx302
    @with_context (Emax=384, Emin=-383, precision=3, rounding=RoundNearestTiesAway) @test dec"0" + dec"1" == dec"1"
    # addx303
    @with_context (Emax=384, Emin=-383, precision=3, rounding=RoundNearestTiesAway) @test dec"1" + dec"1" == dec"2"
    # addx304
    @with_context (Emax=384, Emin=-383, precision=3, rounding=RoundNearestTiesAway) @test dec"12" + dec"1" == dec"13"
    # addx305
    @with_context (Emax=384, Emin=-383, precision=3, rounding=RoundNearestTiesAway) @test dec"98" + dec"1" == dec"99"
    # addx306
    @with_context (Emax=384, Emin=-383, precision=3, rounding=RoundNearestTiesAway) @test dec"99" + dec"1" == dec"100"
    # addx307
    @with_context (Emax=384, Emin=-383, precision=3, rounding=RoundNearestTiesAway) @test dec"100" + dec"1" == dec"101"
    # addx308
    @with_context (Emax=384, Emin=-383, precision=3, rounding=RoundNearestTiesAway) @test dec"101" + dec"1" == dec"102"
    # addx309
    @with_context (Emax=384, Emin=-383, precision=3, rounding=RoundNearestTiesAway) @test dec"-1" + dec"-1" == dec"-2"
    # addx310
    @with_context (Emax=384, Emin=-383, precision=3, rounding=RoundNearestTiesAway) @test dec"0" + dec"-1" == dec"-1"
    # addx311
    @with_context (Emax=384, Emin=-383, precision=3, rounding=RoundNearestTiesAway) @test dec"1" + dec"-1" == dec"0"
    # addx312
    @with_context (Emax=384, Emin=-383, precision=3, rounding=RoundNearestTiesAway) @test dec"12" + dec"-1" == dec"11"
    # addx313
    @with_context (Emax=384, Emin=-383, precision=3, rounding=RoundNearestTiesAway) @test dec"98" + dec"-1" == dec"97"
    # addx314
    @with_context (Emax=384, Emin=-383, precision=3, rounding=RoundNearestTiesAway) @test dec"99" + dec"-1" == dec"98"
    # addx315
    @with_context (Emax=384, Emin=-383, precision=3, rounding=RoundNearestTiesAway) @test dec"100" + dec"-1" == dec"99"
    # addx316
    @with_context (Emax=384, Emin=-383, precision=3, rounding=RoundNearestTiesAway) @test dec"101" + dec"-1" == dec"100"
    # addx321
    @with_context (Emax=384, Emin=-383, precision=3, rounding=RoundNearestTiesAway) @test dec"-0.01" + dec"0.01" == dec"0.00"
    # addx322
    @with_context (Emax=384, Emin=-383, precision=3, rounding=RoundNearestTiesAway) @test dec"0.00" + dec"0.01" == dec"0.01"
    # addx323
    @with_context (Emax=384, Emin=-383, precision=3, rounding=RoundNearestTiesAway) @test dec"0.01" + dec"0.01" == dec"0.02"
    # addx324
    @with_context (Emax=384, Emin=-383, precision=3, rounding=RoundNearestTiesAway) @test dec"0.12" + dec"0.01" == dec"0.13"
    # addx325
    @with_context (Emax=384, Emin=-383, precision=3, rounding=RoundNearestTiesAway) @test dec"0.98" + dec"0.01" == dec"0.99"
    # addx326
    @with_context (Emax=384, Emin=-383, precision=3, rounding=RoundNearestTiesAway) @test dec"0.99" + dec"0.01" == dec"1.00"
    # addx327
    @with_context (Emax=384, Emin=-383, precision=3, rounding=RoundNearestTiesAway) @test dec"1.00" + dec"0.01" == dec"1.01"
    # addx328
    @with_context (Emax=384, Emin=-383, precision=3, rounding=RoundNearestTiesAway) @test dec"1.01" + dec"0.01" == dec"1.02"
    # addx329
    @with_context (Emax=384, Emin=-383, precision=3, rounding=RoundNearestTiesAway) @test dec"-0.01" + dec"-0.01" == dec"-0.02"
    # addx330
    @with_context (Emax=384, Emin=-383, precision=3, rounding=RoundNearestTiesAway) @test dec"0.00" + dec"-0.01" == dec"-0.01"
    # addx331
    @with_context (Emax=384, Emin=-383, precision=3, rounding=RoundNearestTiesAway) @test dec"0.01" + dec"-0.01" == dec"0.00"
    # addx332
    @with_context (Emax=384, Emin=-383, precision=3, rounding=RoundNearestTiesAway) @test dec"0.12" + dec"-0.01" == dec"0.11"
    # addx333
    @with_context (Emax=384, Emin=-383, precision=3, rounding=RoundNearestTiesAway) @test dec"0.98" + dec"-0.01" == dec"0.97"
    # addx334
    @with_context (Emax=384, Emin=-383, precision=3, rounding=RoundNearestTiesAway) @test dec"0.99" + dec"-0.01" == dec"0.98"
    # addx335
    @with_context (Emax=384, Emin=-383, precision=3, rounding=RoundNearestTiesAway) @test dec"1.00" + dec"-0.01" == dec"0.99"
    # addx336
    @with_context (Emax=384, Emin=-383, precision=3, rounding=RoundNearestTiesAway) @test dec"1.01" + dec"-0.01" == dec"1.00"
    # addx340
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"1e+3" + dec"0" == dec"1000"
    # addx341
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"1e+8" + dec"0" == dec"100000000"
    # addx342
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"1e+9" + dec"0" == dec"1.00000000e+9"
    # addx343
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"1e+10" + dec"0" == dec"1.00000000e+10"
    # addx344
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"1e+3" + dec"1" == dec"1001"
    # addx345
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"1e+8" + dec"1" == dec"100000001"
    # addx346
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"1e+9" + dec"1" == dec"1.00000000e+9"
    # addx347
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"1e+10" + dec"1" == dec"1.00000000e+10"
    # addx348
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"1e+3" + dec"7" == dec"1007"
    # addx349
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"1e+8" + dec"7" == dec"100000007"
    # addx350
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"1e+9" + dec"7" == dec"1.00000001e+9"
    # addx351
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"1e+10" + dec"7" == dec"1.00000000e+10"
    # addx361
    @with_context (Emax=92, Emin=-92, precision=7, rounding=RoundNearestTiesAway) @test dec"0e+50" + dec"10000e+1" == dec"1.0000e+5"
    # addx362
    @with_context (Emax=92, Emin=-92, precision=7, rounding=RoundNearestTiesAway) @test dec"10000e+1" + dec"0e-50" == dec"100000.0"
    # addx363
    @with_context (Emax=92, Emin=-92, precision=7, rounding=RoundNearestTiesAway) @test dec"10000e+1" + dec"10000e-50" == dec"100000.0"
    # addx364
    @with_context (Emax=92, Emin=-92, precision=7, rounding=RoundNearestTiesAway) @test dec"9.999999e+92" + dec"-9.999999e+92" == dec"0e+86"
    # addx372
    @with_context (Emax=92, Emin=-92, precision=10, rounding=RoundNearestTiesAway) @test dec"99999999" + dec"81512" == dec"100081511"
    # addx373
    @with_context (Emax=92, Emin=-92, precision=6, rounding=RoundNearestTiesAway) @test dec"99999999" + dec"81512" == dec"1.00082e+8"
    # addx374
    @with_context (Emax=92, Emin=-92, precision=10, rounding=RoundNearest) @test dec"99999999" + dec"81512" == dec"100081511"
    # addx375
    @with_context (Emax=92, Emin=-92, precision=6, rounding=RoundNearest) @test dec"99999999" + dec"81512" == dec"1.00082e+8"
    # addx400
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"1" + dec"77e-7" == dec"1.0000077"
    # addx401
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"1" + dec"77e-8" == dec"1.00000077"
    # addx402
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"1" + dec"77e-9" == dec"1.00000008"
    # addx403
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"1" + dec"77e-10" == dec"1.00000001"
    # addx404
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"1" + dec"77e-11" == dec"1.00000000"
    # addx405
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"1" + dec"77e-12" == dec"1.00000000"
    # addx406
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"1" + dec"77e-999" == dec"1.00000000"
    # addx407
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"1" + dec"77e-9999999" == dec"1.00000000"
    # addx410
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"10" + dec"77e-7" == dec"10.0000077"
    # addx411
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"10" + dec"77e-8" == dec"10.0000008"
    # addx412
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"10" + dec"77e-9" == dec"10.0000001"
    # addx413
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"10" + dec"77e-10" == dec"10.0000000"
    # addx414
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"10" + dec"77e-11" == dec"10.0000000"
    # addx415
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"10" + dec"77e-12" == dec"10.0000000"
    # addx416
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"10" + dec"77e-999" == dec"10.0000000"
    # addx417
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"10" + dec"77e-9999999" == dec"10.0000000"
    # addx420
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"77e-7" + dec"1" == dec"1.0000077"
    # addx421
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"77e-8" + dec"1" == dec"1.00000077"
    # addx422
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"77e-9" + dec"1" == dec"1.00000008"
    # addx423
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"77e-10" + dec"1" == dec"1.00000001"
    # addx424
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"77e-11" + dec"1" == dec"1.00000000"
    # addx425
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"77e-12" + dec"1" == dec"1.00000000"
    # addx426
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"77e-999" + dec"1" == dec"1.00000000"
    # addx427
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"77e-9999999" + dec"1" == dec"1.00000000"
    # addx430
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"77e-7" + dec"10" == dec"10.0000077"
    # addx431
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"77e-8" + dec"10" == dec"10.0000008"
    # addx432
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"77e-9" + dec"10" == dec"10.0000001"
    # addx433
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"77e-10" + dec"10" == dec"10.0000000"
    # addx434
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"77e-11" + dec"10" == dec"10.0000000"
    # addx435
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"77e-12" + dec"10" == dec"10.0000000"
    # addx436
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"77e-999" + dec"10" == dec"10.0000000"
    # addx437
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"77e-9999999" + dec"10" == dec"10.0000000"
    # addx440
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"1" + dec"-77e-7" == dec"0.9999923"
    # addx441
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"1" + dec"-77e-8" == dec"0.99999923"
    # addx442
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"1" + dec"-77e-9" == dec"0.999999923"
    # addx443
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"1" + dec"-77e-10" == dec"0.999999992"
    # addx444
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"1" + dec"-77e-11" == dec"0.999999999"
    # addx445
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"1" + dec"-77e-12" == dec"1.00000000"
    # addx446
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"1" + dec"-77e-999" == dec"1.00000000"
    # addx447
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"1" + dec"-77e-9999999" == dec"1.00000000"
    # addx450
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"10" + dec"-77e-7" == dec"9.9999923"
    # addx451
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"10" + dec"-77e-8" == dec"9.99999923"
    # addx452
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"10" + dec"-77e-9" == dec"9.99999992"
    # addx453
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"10" + dec"-77e-10" == dec"9.99999999"
    # addx454
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"10" + dec"-77e-11" == dec"10.0000000"
    # addx455
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"10" + dec"-77e-12" == dec"10.0000000"
    # addx456
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"10" + dec"-77e-999" == dec"10.0000000"
    # addx457
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"10" + dec"-77e-9999999" == dec"10.0000000"
    # addx460
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"-77e-7" + dec"1" == dec"0.9999923"
    # addx461
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"-77e-8" + dec"1" == dec"0.99999923"
    # addx462
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"-77e-9" + dec"1" == dec"0.999999923"
    # addx463
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"-77e-10" + dec"1" == dec"0.999999992"
    # addx464
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"-77e-11" + dec"1" == dec"0.999999999"
    # addx465
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"-77e-12" + dec"1" == dec"1.00000000"
    # addx466
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"-77e-999" + dec"1" == dec"1.00000000"
    # addx467
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"-77e-9999999" + dec"1" == dec"1.00000000"
    # addx470
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"-77e-7" + dec"10" == dec"9.9999923"
    # addx471
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"-77e-8" + dec"10" == dec"9.99999923"
    # addx472
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"-77e-9" + dec"10" == dec"9.99999992"
    # addx473
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"-77e-10" + dec"10" == dec"9.99999999"
    # addx474
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"-77e-11" + dec"10" == dec"10.0000000"
    # addx475
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"-77e-12" + dec"10" == dec"10.0000000"
    # addx476
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"-77e-999" + dec"10" == dec"10.0000000"
    # addx477
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"-77e-9999999" + dec"10" == dec"10.0000000"
    # addx480
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"-1" + dec"77e-7" == dec"-0.9999923"
    # addx481
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"-1" + dec"77e-8" == dec"-0.99999923"
    # addx482
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"-1" + dec"77e-9" == dec"-0.999999923"
    # addx483
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"-1" + dec"77e-10" == dec"-0.999999992"
    # addx484
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"-1" + dec"77e-11" == dec"-0.999999999"
    # addx485
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"-1" + dec"77e-12" == dec"-1.00000000"
    # addx486
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"-1" + dec"77e-999" == dec"-1.00000000"
    # addx487
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"-1" + dec"77e-9999999" == dec"-1.00000000"
    # addx490
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"-10" + dec"77e-7" == dec"-9.9999923"
    # addx491
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"-10" + dec"77e-8" == dec"-9.99999923"
    # addx492
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"-10" + dec"77e-9" == dec"-9.99999992"
    # addx493
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"-10" + dec"77e-10" == dec"-9.99999999"
    # addx494
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"-10" + dec"77e-11" == dec"-10.0000000"
    # addx495
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"-10" + dec"77e-12" == dec"-10.0000000"
    # addx496
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"-10" + dec"77e-999" == dec"-10.0000000"
    # addx497
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"-10" + dec"77e-9999999" == dec"-10.0000000"
    # addx500
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"77e-7" + dec"-1" == dec"-0.9999923"
    # addx501
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"77e-8" + dec"-1" == dec"-0.99999923"
    # addx502
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"77e-9" + dec"-1" == dec"-0.999999923"
    # addx503
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"77e-10" + dec"-1" == dec"-0.999999992"
    # addx504
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"77e-11" + dec"-1" == dec"-0.999999999"
    # addx505
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"77e-12" + dec"-1" == dec"-1.00000000"
    # addx506
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"77e-999" + dec"-1" == dec"-1.00000000"
    # addx507
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"77e-9999999" + dec"-1" == dec"-1.00000000"
    # addx510
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"77e-7" + dec"-10" == dec"-9.9999923"
    # addx511
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"77e-8" + dec"-10" == dec"-9.99999923"
    # addx512
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"77e-9" + dec"-10" == dec"-9.99999992"
    # addx513
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"77e-10" + dec"-10" == dec"-9.99999999"
    # addx514
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"77e-11" + dec"-10" == dec"-10.0000000"
    # addx515
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"77e-12" + dec"-10" == dec"-10.0000000"
    # addx516
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"77e-999" + dec"-10" == dec"-10.0000000"
    # addx517
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearest) @test dec"77e-9999999" + dec"-10" == dec"-10.0000000"
    # addx521
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearest) @test dec"12345678000" + dec"0" == dec"1.23456780e+10"
    # addx522
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearest) @test dec"0" + dec"12345678000" == dec"1.23456780e+10"
    # addx523
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearest) @test dec"1234567800" + dec"0" == dec"1.23456780e+9"
    # addx524
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearest) @test dec"0" + dec"1234567800" == dec"1.23456780e+9"
    # addx525
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearest) @test dec"1234567890" + dec"0" == dec"1.23456789e+9"
    # addx526
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearest) @test dec"0" + dec"1234567890" == dec"1.23456789e+9"
    # addx527
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearest) @test dec"1234567891" + dec"0" == dec"1.23456789e+9"
    # addx528
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearest) @test dec"0" + dec"1234567891" == dec"1.23456789e+9"
    # addx529
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearest) @test dec"12345678901" + dec"0" == dec"1.23456789e+10"
    # addx530
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearest) @test dec"0" + dec"12345678901" == dec"1.23456789e+10"
    # addx531
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearest) @test dec"1234567896" + dec"0" == dec"1.23456790e+9"
    # addx532
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearest) @test dec"0" + dec"1234567896" == dec"1.23456790e+9"
    # addx541
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearest) @test dec"12345678000" + dec"0" == dec"12345678000"
    # addx542
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearest) @test dec"0" + dec"12345678000" == dec"12345678000"
    # addx543
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearest) @test dec"1234567800" + dec"0" == dec"1234567800"
    # addx544
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearest) @test dec"0" + dec"1234567800" == dec"1234567800"
    # addx545
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearest) @test dec"1234567890" + dec"0" == dec"1234567890"
    # addx546
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearest) @test dec"0" + dec"1234567890" == dec"1234567890"
    # addx547
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearest) @test dec"1234567891" + dec"0" == dec"1234567891"
    # addx548
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearest) @test dec"0" + dec"1234567891" == dec"1234567891"
    # addx549
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearest) @test dec"12345678901" + dec"0" == dec"12345678901"
    # addx550
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearest) @test dec"0" + dec"12345678901" == dec"12345678901"
    # addx551
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearest) @test dec"1234567896" + dec"0" == dec"1234567896"
    # addx552
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearest) @test dec"0" + dec"1234567896" == dec"1234567896"
    # addx561
    @with_context (Emax=394, Emin=-393, precision=16, rounding=RoundToZero) @test dec"1e-398" + dec"9.000000000000000e+384" == dec"9.000000000000000e+384"
    # addx562
    @with_context (Emax=394, Emin=-393, precision=16, rounding=RoundToZero) @test dec"0" + dec"9.000000000000000e+384" == dec"9.000000000000000e+384"
    # addx563
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundToZero) @test dec"1e-388" + dec"9.000000000000000e+374" == dec"9.000000000000000e+374"
    # addx564
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundToZero) @test dec"0" + dec"9.000000000000000e+374" == dec"9.000000000000000e+374"
    # addx601
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"123456789" + dec"0.000001" == dec"123456789"
    # addx602
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearest) @test dec"123456789" + dec"0.000001" == dec"123456789"
    # addx604
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundDown) @test dec"123456789" + dec"0.000001" == dec"123456789"
    # addx605
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundUp) @test dec"123456789" + dec"0.000001" == dec"123456790"
    # addx606
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundFromZero) @test dec"123456789" + dec"0.000001" == dec"123456790"
    # addx607
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundToZero) @test dec"123456789" + dec"0.000001" == dec"123456789"
    # addx611
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"123456789" + dec"-0.000001" == dec"123456789"
    # addx612
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearest) @test dec"123456789" + dec"-0.000001" == dec"123456789"
    # addx614
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundDown) @test dec"123456789" + dec"-0.000001" == dec"123456788"
    # addx615
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundUp) @test dec"123456789" + dec"-0.000001" == dec"123456789"
    # addx616
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundFromZero) @test dec"123456789" + dec"-0.000001" == dec"123456789"
    # addx617
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundToZero) @test dec"123456789" + dec"-0.000001" == dec"123456788"
    # addx621
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"123456789" + dec"0.499999" == dec"123456789"
    # addx622
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearest) @test dec"123456789" + dec"0.499999" == dec"123456789"
    # addx624
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundDown) @test dec"123456789" + dec"0.499999" == dec"123456789"
    # addx625
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundUp) @test dec"123456789" + dec"0.499999" == dec"123456790"
    # addx626
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundFromZero) @test dec"123456789" + dec"0.499999" == dec"123456790"
    # addx627
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundToZero) @test dec"123456789" + dec"0.499999" == dec"123456789"
    # addx631
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"123456789" + dec"-0.499999" == dec"123456789"
    # addx632
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearest) @test dec"123456789" + dec"-0.499999" == dec"123456789"
    # addx634
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundDown) @test dec"123456789" + dec"-0.499999" == dec"123456788"
    # addx635
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundUp) @test dec"123456789" + dec"-0.499999" == dec"123456789"
    # addx636
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundFromZero) @test dec"123456789" + dec"-0.499999" == dec"123456789"
    # addx637
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundToZero) @test dec"123456789" + dec"-0.499999" == dec"123456788"
    # addx641
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"123456789" + dec"0.500001" == dec"123456790"
    # addx642
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearest) @test dec"123456789" + dec"0.500001" == dec"123456790"
    # addx644
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundDown) @test dec"123456789" + dec"0.500001" == dec"123456789"
    # addx645
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundUp) @test dec"123456789" + dec"0.500001" == dec"123456790"
    # addx646
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundFromZero) @test dec"123456789" + dec"0.500001" == dec"123456790"
    # addx647
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundToZero) @test dec"123456789" + dec"0.500001" == dec"123456789"
    # addx651
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"123456789" + dec"-0.500001" == dec"123456788"
    # addx652
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearest) @test dec"123456789" + dec"-0.500001" == dec"123456788"
    # addx654
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundDown) @test dec"123456789" + dec"-0.500001" == dec"123456788"
    # addx655
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundUp) @test dec"123456789" + dec"-0.500001" == dec"123456789"
    # addx656
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundFromZero) @test dec"123456789" + dec"-0.500001" == dec"123456789"
    # addx657
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundToZero) @test dec"123456789" + dec"-0.500001" == dec"123456788"
    # addx660
    @with_context (Emax=384, Emin=-383, precision=37, rounding=RoundNearestTiesAway) @test dec"98471198160.56524417578665886060" + dec"-23994.14313393939743548945165462" == dec"98471174166.42211023638922337114834538"
    # addx661
    @with_context (Emax=384, Emin=-383, precision=36, rounding=RoundNearestTiesAway) @test dec"98471198160.56524417578665886060" + dec"-23994.14313393939743548945165462" == dec"98471174166.4221102363892233711483454"
    # addx662
    @with_context (Emax=384, Emin=-383, precision=35, rounding=RoundNearestTiesAway) @test dec"98471198160.56524417578665886060" + dec"-23994.14313393939743548945165462" == dec"98471174166.422110236389223371148345"
    # addx663
    @with_context (Emax=384, Emin=-383, precision=34, rounding=RoundNearestTiesAway) @test dec"98471198160.56524417578665886060" + dec"-23994.14313393939743548945165462" == dec"98471174166.42211023638922337114835"
    # addx664
    @with_context (Emax=384, Emin=-383, precision=33, rounding=RoundNearestTiesAway) @test dec"98471198160.56524417578665886060" + dec"-23994.14313393939743548945165462" == dec"98471174166.4221102363892233711483"
    # addx665
    @with_context (Emax=384, Emin=-383, precision=32, rounding=RoundNearestTiesAway) @test dec"98471198160.56524417578665886060" + dec"-23994.14313393939743548945165462" == dec"98471174166.422110236389223371148"
    # addx666
    @with_context (Emax=384, Emin=-383, precision=31, rounding=RoundNearestTiesAway) @test dec"98471198160.56524417578665886060" + dec"-23994.14313393939743548945165462" == dec"98471174166.42211023638922337115"
    # addx667
    @with_context (Emax=384, Emin=-383, precision=30, rounding=RoundNearestTiesAway) @test dec"98471198160.56524417578665886060" + dec"-23994.14313393939743548945165462" == dec"98471174166.4221102363892233711"
    # addx668
    @with_context (Emax=384, Emin=-383, precision=29, rounding=RoundNearestTiesAway) @test dec"98471198160.56524417578665886060" + dec"-23994.14313393939743548945165462" == dec"98471174166.422110236389223371"
    # addx669
    @with_context (Emax=384, Emin=-383, precision=28, rounding=RoundNearestTiesAway) @test dec"98471198160.56524417578665886060" + dec"-23994.14313393939743548945165462" == dec"98471174166.42211023638922337"
    # addx670
    @with_context (Emax=384, Emin=-383, precision=27, rounding=RoundNearestTiesAway) @test dec"98471198160.56524417578665886060" + dec"-23994.14313393939743548945165462" == dec"98471174166.4221102363892234"
    # addx671
    @with_context (Emax=384, Emin=-383, precision=26, rounding=RoundNearestTiesAway) @test dec"98471198160.56524417578665886060" + dec"-23994.14313393939743548945165462" == dec"98471174166.422110236389223"
    # addx672
    @with_context (Emax=384, Emin=-383, precision=25, rounding=RoundNearestTiesAway) @test dec"98471198160.56524417578665886060" + dec"-23994.14313393939743548945165462" == dec"98471174166.42211023638922"
    # addx673
    @with_context (Emax=384, Emin=-383, precision=24, rounding=RoundNearestTiesAway) @test dec"98471198160.56524417578665886060" + dec"-23994.14313393939743548945165462" == dec"98471174166.4221102363892"
    # addx674
    @with_context (Emax=384, Emin=-383, precision=23, rounding=RoundNearestTiesAway) @test dec"98471198160.56524417578665886060" + dec"-23994.14313393939743548945165462" == dec"98471174166.422110236389"
    # addx675
    @with_context (Emax=384, Emin=-383, precision=22, rounding=RoundNearestTiesAway) @test dec"98471198160.56524417578665886060" + dec"-23994.14313393939743548945165462" == dec"98471174166.42211023639"
    # addx676
    @with_context (Emax=384, Emin=-383, precision=21, rounding=RoundNearestTiesAway) @test dec"98471198160.56524417578665886060" + dec"-23994.14313393939743548945165462" == dec"98471174166.4221102364"
    # addx677
    @with_context (Emax=384, Emin=-383, precision=20, rounding=RoundNearestTiesAway) @test dec"98471198160.56524417578665886060" + dec"-23994.14313393939743548945165462" == dec"98471174166.422110236"
    # addx678
    @with_context (Emax=384, Emin=-383, precision=19, rounding=RoundNearestTiesAway) @test dec"98471198160.56524417578665886060" + dec"-23994.14313393939743548945165462" == dec"98471174166.42211024"
    # addx679
    @with_context (Emax=384, Emin=-383, precision=18, rounding=RoundNearestTiesAway) @test dec"98471198160.56524417578665886060" + dec"-23994.14313393939743548945165462" == dec"98471174166.4221102"
    # addx680
    @with_context (Emax=384, Emin=-383, precision=17, rounding=RoundNearestTiesAway) @test dec"98471198160.56524417578665886060" + dec"-23994.14313393939743548945165462" == dec"98471174166.422110"
    # addx681
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"98471198160.56524417578665886060" + dec"-23994.14313393939743548945165462" == dec"98471174166.42211"
    # addx682
    @with_context (Emax=384, Emin=-383, precision=15, rounding=RoundNearestTiesAway) @test dec"98471198160.56524417578665886060" + dec"-23994.14313393939743548945165462" == dec"98471174166.4221"
    # addx683
    @with_context (Emax=384, Emin=-383, precision=14, rounding=RoundNearestTiesAway) @test dec"98471198160.56524417578665886060" + dec"-23994.14313393939743548945165462" == dec"98471174166.422"
    # addx684
    @with_context (Emax=384, Emin=-383, precision=13, rounding=RoundNearestTiesAway) @test dec"98471198160.56524417578665886060" + dec"-23994.14313393939743548945165462" == dec"98471174166.42"
    # addx685
    @with_context (Emax=384, Emin=-383, precision=12, rounding=RoundNearestTiesAway) @test dec"98471198160.56524417578665886060" + dec"-23994.14313393939743548945165462" == dec"98471174166.4"
    # addx686
    @with_context (Emax=384, Emin=-383, precision=11, rounding=RoundNearestTiesAway) @test dec"98471198160.56524417578665886060" + dec"-23994.14313393939743548945165462" == dec"98471174166"
    # addx687
    @with_context (Emax=384, Emin=-383, precision=10, rounding=RoundNearestTiesAway) @test dec"98471198160.56524417578665886060" + dec"-23994.14313393939743548945165462" == dec"9.847117417e+10"
    # addx688
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"98471198160.56524417578665886060" + dec"-23994.14313393939743548945165462" == dec"9.84711742e+10"
    # addx689
    @with_context (Emax=384, Emin=-383, precision=8, rounding=RoundNearestTiesAway) @test dec"98471198160.56524417578665886060" + dec"-23994.14313393939743548945165462" == dec"9.8471174e+10"
    # addx690
    @with_context (Emax=384, Emin=-383, precision=7, rounding=RoundNearestTiesAway) @test dec"98471198160.56524417578665886060" + dec"-23994.14313393939743548945165462" == dec"9.847117e+10"
    # addx691
    @with_context (Emax=384, Emin=-383, precision=6, rounding=RoundNearestTiesAway) @test dec"98471198160.56524417578665886060" + dec"-23994.14313393939743548945165462" == dec"9.84712e+10"
    # addx692
    @with_context (Emax=384, Emin=-383, precision=5, rounding=RoundNearestTiesAway) @test dec"98471198160.56524417578665886060" + dec"-23994.14313393939743548945165462" == dec"9.8471e+10"
    # addx693
    @with_context (Emax=384, Emin=-383, precision=4, rounding=RoundNearestTiesAway) @test dec"98471198160.56524417578665886060" + dec"-23994.14313393939743548945165462" == dec"9.847e+10"
    # addx694
    @with_context (Emax=384, Emin=-383, precision=3, rounding=RoundNearestTiesAway) @test dec"98471198160.56524417578665886060" + dec"-23994.14313393939743548945165462" == dec"9.85e+10"
    # addx695
    @with_context (Emax=384, Emin=-383, precision=2, rounding=RoundNearestTiesAway) @test dec"98471198160.56524417578665886060" + dec"-23994.14313393939743548945165462" == dec"9.8e+10"
    # addx696
    @with_context (Emax=384, Emin=-383, precision=1, rounding=RoundNearestTiesAway) @test dec"98471198160.56524417578665886060" + dec"-23994.14313393939743548945165462" == dec"1e+11"
    # addx701
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"5.00" + dec"1.00e-3" == dec"5.00100"
    # addx702
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"00.00" + dec"0.000" == dec"0.000"
    # addx703
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"00.00" + dec"0e-3" == dec"0.000"
    # addx704
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0e-3" + dec"00.00" == dec"0.000"
    # addx710
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0e+3" + dec"00.00" == dec"0.00"
    # addx711
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0e+3" + dec"00.0" == dec"0.0"
    # addx712
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0e+3" + dec"00." == dec"0"
    # addx713
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0e+3" + dec"00.e+1" == dec"0e+1"
    # addx714
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0e+3" + dec"00.e+2" == dec"0e+2"
    # addx715
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0e+3" + dec"00.e+3" == dec"0e+3"
    # addx716
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0e+3" + dec"00.e+4" == dec"0e+3"
    # addx717
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0e+3" + dec"00.e+5" == dec"0e+3"
    # addx718
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0e+3" + dec"-00.0" == dec"0.0"
    # addx719
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0e+3" + dec"-00." == dec"0"
    # addx731
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0e+3" + dec"-00.e+1" == dec"0e+1"
    # addx720
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"00.00" + dec"0e+3" == dec"0.00"
    # addx721
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"00.0" + dec"0e+3" == dec"0.0"
    # addx722
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"00." + dec"0e+3" == dec"0"
    # addx723
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"00.e+1" + dec"0e+3" == dec"0e+1"
    # addx724
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"00.e+2" + dec"0e+3" == dec"0e+2"
    # addx725
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"00.e+3" + dec"0e+3" == dec"0e+3"
    # addx726
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"00.e+4" + dec"0e+3" == dec"0e+3"
    # addx727
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"00.e+5" + dec"0e+3" == dec"0e+3"
    # addx728
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-00.00" + dec"0e+3" == dec"0.00"
    # addx729
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-00.0" + dec"0e+3" == dec"0.0"
    # addx730
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-00." + dec"0e+3" == dec"0"
    # addx732
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0" + dec"0" == dec"0"
    # addx733
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0" + dec"-0" == dec"0"
    # addx734
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-0" + dec"0" == dec"0"
    # addx735
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-0" + dec"-0" == dec"-0"
    # addx736
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"1" + dec"-1" == dec"0"
    # addx737
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-1" + dec"-1" == dec"-2"
    # addx738
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"1" + dec"1" == dec"2"
    # addx739
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-1" + dec"1" == dec"0"
    # addx741
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0" + dec"-1" == dec"-1"
    # addx742
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-0" + dec"-1" == dec"-1"
    # addx743
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0" + dec"1" == dec"1"
    # addx744
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-0" + dec"1" == dec"1"
    # addx745
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-1" + dec"0" == dec"-1"
    # addx746
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-1" + dec"-0" == dec"-1"
    # addx747
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"1" + dec"0" == dec"1"
    # addx748
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"1" + dec"-0" == dec"1"
    # addx751
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0.0" + dec"-1" == dec"-1.0"
    # addx752
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-0.0" + dec"-1" == dec"-1.0"
    # addx753
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0.0" + dec"1" == dec"1.0"
    # addx754
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-0.0" + dec"1" == dec"1.0"
    # addx755
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-1.0" + dec"0" == dec"-1.0"
    # addx756
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-1.0" + dec"-0" == dec"-1.0"
    # addx757
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"1.0" + dec"0" == dec"1.0"
    # addx758
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"1.0" + dec"-0" == dec"1.0"
    # addx761
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0" + dec"-1.0" == dec"-1.0"
    # addx762
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-0" + dec"-1.0" == dec"-1.0"
    # addx763
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0" + dec"1.0" == dec"1.0"
    # addx764
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-0" + dec"1.0" == dec"1.0"
    # addx765
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-1" + dec"0.0" == dec"-1.0"
    # addx766
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-1" + dec"-0.0" == dec"-1.0"
    # addx767
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"1" + dec"0.0" == dec"1.0"
    # addx768
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"1" + dec"-0.0" == dec"1.0"
    # addx771
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0.0" + dec"-1.0" == dec"-1.0"
    # addx772
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-0.0" + dec"-1.0" == dec"-1.0"
    # addx773
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0.0" + dec"1.0" == dec"1.0"
    # addx774
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-0.0" + dec"1.0" == dec"1.0"
    # addx775
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-1.0" + dec"0.0" == dec"-1.0"
    # addx776
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-1.0" + dec"-0.0" == dec"-1.0"
    # addx777
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"1.0" + dec"0.0" == dec"1.0"
    # addx778
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"1.0" + dec"-0.0" == dec"1.0"
    # addx890
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test_throws OverflowError dec"1e+999999999" + dec"9e+999999999"
    # addx891
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test_throws OverflowError dec"9e+999999999" + dec"1e+999999999"
    # addx892
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"-1.1e-999999999" + dec"1e-999999999" == dec"-1e-1000000000"
    # addx893
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"1e-999999999" + dec"-1.1e-999999999" == dec"-1e-1000000000"
    # addx894
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"-1.0001e-999999999" + dec"1e-999999999" == dec"-1e-1000000003"
    # addx895
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"1e-999999999" + dec"-1.0001e-999999999" == dec"-1e-1000000003"
    # addx896
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test_throws OverflowError dec"-1e+999999999" + dec"-9e+999999999"
    # addx897
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test_throws OverflowError dec"-9e+999999999" + dec"-1e+999999999"
    # addx898
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"+1.1e-999999999" + dec"-1e-999999999" == dec"1e-1000000000"
    # addx899
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"-1e-999999999" + dec"+1.1e-999999999" == dec"1e-1000000000"
    # addx900
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"+1.0001e-999999999" + dec"-1e-999999999" == dec"1e-1000000003"
    # addx901
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"-1e-999999999" + dec"+1.0001e-999999999" == dec"1e-1000000003"
    # addx902
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"-1e+999999999" + dec"+9e+999999999" == dec"8e+999999999"
    # addx903
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"-9e+999999999" + dec"+1e+999999999" == dec"-8e+999999999"
    # addx904
    @with_context (Emax=999999999, Emin=-999999999, precision=3, rounding=RoundNearestTiesAway) @test_throws OverflowError dec"0" + dec"-9.999e+999999999"
    # addx905
    @with_context (Emax=999999999, Emin=-999999999, precision=3, rounding=RoundNearestTiesAway) @test_throws OverflowError dec"-9.999e+999999999" + dec"0"
    # addx906
    @with_context (Emax=999999999, Emin=-999999999, precision=3, rounding=RoundNearestTiesAway) @test_throws OverflowError dec"0" + dec"9.999e+999999999"
    # addx907
    @with_context (Emax=999999999, Emin=-999999999, precision=3, rounding=RoundNearestTiesAway) @test_throws OverflowError dec"9.999e+999999999" + dec"0"
    # addx910
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test dec"1.00e-999" + dec"0" == dec"1.00e-999"
    # addx911
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test dec"0.1e-999" + dec"0" == dec"1e-1000"
    # addx912
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test dec"0.10e-999" + dec"0" == dec"1.0e-1000"
    # addx913
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test dec"0.100e-999" + dec"0" == dec"1.0e-1000"
    # addx914
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test dec"0.01e-999" + dec"0" == dec"1e-1001"
    # addx915
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test dec"0.999e-999" + dec"0" == dec"1.00e-999"
    # addx916
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test dec"0.099e-999" + dec"0" == dec"1.0e-1000"
    # addx917
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test dec"0.009e-999" + dec"0" == dec"1e-1001"
    # addx918
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test dec"0.001e-999" + dec"0" == dec"0e-1001"
    # addx919
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test dec"0.0009e-999" + dec"0" == dec"0e-1001"
    # addx920
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test dec"0.0001e-999" + dec"0" == dec"0e-1001"
    # addx930
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test dec"-1.00e-999" + dec"0" == dec"-1.00e-999"
    # addx931
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test dec"-0.1e-999" + dec"0" == dec"-1e-1000"
    # addx932
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test dec"-0.10e-999" + dec"0" == dec"-1.0e-1000"
    # addx933
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test dec"-0.100e-999" + dec"0" == dec"-1.0e-1000"
    # addx934
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test dec"-0.01e-999" + dec"0" == dec"-1e-1001"
    # addx935
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test dec"-0.999e-999" + dec"0" == dec"-1.00e-999"
    # addx936
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test dec"-0.099e-999" + dec"0" == dec"-1.0e-1000"
    # addx937
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test dec"-0.009e-999" + dec"0" == dec"-1e-1001"
    # addx938
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test dec"-0.001e-999" + dec"0" == dec"-0e-1001"
    # addx939
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test dec"-0.0009e-999" + dec"0" == dec"-0e-1001"
    # addx940
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test dec"-0.0001e-999" + dec"0" == dec"-0e-1001"
    # addx950
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test dec"1.00e-999" + dec"0.1e-999" == dec"1.10e-999"
    # addx951
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test dec"0.1e-999" + dec"0.1e-999" == dec"2e-1000"
    # addx952
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test dec"0.10e-999" + dec"0.1e-999" == dec"2.0e-1000"
    # addx953
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test dec"0.100e-999" + dec"0.1e-999" == dec"2.0e-1000"
    # addx954
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test dec"0.01e-999" + dec"0.1e-999" == dec"1.1e-1000"
    # addx955
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test dec"0.999e-999" + dec"0.1e-999" == dec"1.10e-999"
    # addx956
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test dec"0.099e-999" + dec"0.1e-999" == dec"2.0e-1000"
    # addx957
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test dec"0.009e-999" + dec"0.1e-999" == dec"1.1e-1000"
    # addx958
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test dec"0.001e-999" + dec"0.1e-999" == dec"1.0e-1000"
    # addx959
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test dec"0.0009e-999" + dec"0.1e-999" == dec"1.0e-1000"
    # addx960
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test dec"0.0001e-999" + dec"0.1e-999" == dec"1.0e-1000"
    # addx961
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test dec"1.00e-999" + dec"-0.1e-999" == dec"9.0e-1000"
    # addx962
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test dec"0.1e-999" + dec"-0.1e-999" == dec"0e-1000"
    # addx963
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test dec"0.10e-999" + dec"-0.1e-999" == dec"0e-1001"
    # addx964
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test dec"0.100e-999" + dec"-0.1e-999" == dec"0e-1001"
    # addx965
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test dec"0.01e-999" + dec"-0.1e-999" == dec"-9e-1001"
    # addx966
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test dec"0.999e-999" + dec"-0.1e-999" == dec"9.0e-1000"
    # addx967
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test dec"0.099e-999" + dec"-0.1e-999" == dec"-0e-1001"
    # addx968
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test dec"0.009e-999" + dec"-0.1e-999" == dec"-9e-1001"
    # addx969
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test dec"0.001e-999" + dec"-0.1e-999" == dec"-1.0e-1000"
    # addx970
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test dec"0.0009e-999" + dec"-0.1e-999" == dec"-1.0e-1000"
    # addx971
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test dec"0.0001e-999" + dec"-0.1e-999" == dec"-1.0e-1000"
    # addx566
    @with_context (Emax=384, Emin=-383, precision=8, rounding=RoundNearestTiesAway) @test dec"99999061735e-394" + dec"0e-394" == dec"9.999906e-384"
    # addx567
    @with_context (Emax=384, Emin=-383, precision=7, rounding=RoundNearestTiesAway) @test dec"99999061735e-394" + dec"0e-394" == dec"9.99991e-384"
    # addx568
    @with_context (Emax=384, Emin=-383, precision=6, rounding=RoundNearestTiesAway) @test dec"99999061735e-394" + dec"0e-394" == dec"9.9999e-384"
    # addx571
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1e-383" + dec"0" == dec"1e-383"
    # addx572
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1e-384" + dec"0" == dec"1e-384"
    # addx573
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1e-383" + dec"1e-384" == dec"1.1e-383"
    # addx574
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1e-383" - dec"1e-384" == dec"9e-384"
    # addx575
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1e-383" - dec"1e-398" == dec"9.99999999999999e-384"
    # addx576
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1e-383" - dec"1e-398" == dec"9.99999999999999e-384"
    # addx577
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1e-383" - dec"1e-399" == dec"1.000000000000000e-383"
    # addx578
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1e-383" - dec"1e-400" == dec"1.000000000000000e-383"
    # addx579
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1e-383" - dec"1e-401" == dec"1.000000000000000e-383"
    # addx580
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1e-383" - dec"1e-402" == dec"1.000000000000000e-383"
    # addx972
    @with_context (Emax=96, Emin=-95, precision=7, rounding=RoundNearestTiesAway) @test dec"9.999999e+96" == dec"9.999999e+96"
    # addx973
    @with_context (Emax=96, Emin=-95, precision=7, rounding=RoundNearestTiesAway) @test dec"9.999999e+96" + dec"1" == dec"9.999999e+96"
    # addx974
    @with_context (Emax=96, Emin=-95, precision=7, rounding=RoundNearestTiesAway) @test dec"9999999e+90" + dec"1" == dec"9.999999e+96"
    # addx975
    @with_context (Emax=96, Emin=-95, precision=7, rounding=RoundNearestTiesAway) @test_throws OverflowError dec"9999999e+90" + dec"1e+90"
    # addx976
    @with_context (Emax=96, Emin=-95, precision=7, rounding=RoundNearestTiesAway) @test_throws OverflowError dec"9999999e+90" + dec"9e+89"
    # addx977
    @with_context (Emax=96, Emin=-95, precision=7, rounding=RoundNearestTiesAway) @test_throws OverflowError dec"9999999e+90" + dec"8e+89"
    # addx978
    @with_context (Emax=96, Emin=-95, precision=7, rounding=RoundNearestTiesAway) @test_throws OverflowError dec"9999999e+90" + dec"7e+89"
    # addx979
    @with_context (Emax=96, Emin=-95, precision=7, rounding=RoundNearestTiesAway) @test_throws OverflowError dec"9999999e+90" + dec"6e+89"
    # addx980
    @with_context (Emax=96, Emin=-95, precision=7, rounding=RoundNearestTiesAway) @test_throws OverflowError dec"9999999e+90" + dec"5e+89"
    # addx981
    @with_context (Emax=96, Emin=-95, precision=7, rounding=RoundNearestTiesAway) @test dec"9999999e+90" + dec"4e+89" == dec"9.999999e+96"
    # addx982
    @with_context (Emax=96, Emin=-95, precision=7, rounding=RoundNearestTiesAway) @test dec"9999999e+90" + dec"3e+89" == dec"9.999999e+96"
    # addx983
    @with_context (Emax=96, Emin=-95, precision=7, rounding=RoundNearestTiesAway) @test dec"9999999e+90" + dec"2e+89" == dec"9.999999e+96"
    # addx984
    @with_context (Emax=96, Emin=-95, precision=7, rounding=RoundNearestTiesAway) @test dec"9999999e+90" + dec"1e+89" == dec"9.999999e+96"
    # addx985
    @with_context (Emax=96, Emin=-95, precision=7, rounding=RoundNearestTiesAway) @test dec"-9.999999e+96" == dec"-9.999999e+96"
    # addx986
    @with_context (Emax=96, Emin=-95, precision=7, rounding=RoundNearestTiesAway) @test dec"-9.999999e+96" + dec"-1" == dec"-9.999999e+96"
    # addx987
    @with_context (Emax=96, Emin=-95, precision=7, rounding=RoundNearestTiesAway) @test dec"-9999999e+90" + dec"-1" == dec"-9.999999e+96"
    # addx988
    @with_context (Emax=96, Emin=-95, precision=7, rounding=RoundNearestTiesAway) @test_throws OverflowError dec"-9999999e+90" + dec"-1e+90"
    # addx989
    @with_context (Emax=96, Emin=-95, precision=7, rounding=RoundNearestTiesAway) @test_throws OverflowError dec"-9999999e+90" + dec"-9e+89"
    # addx990
    @with_context (Emax=96, Emin=-95, precision=7, rounding=RoundNearestTiesAway) @test_throws OverflowError dec"-9999999e+90" + dec"-8e+89"
    # addx991
    @with_context (Emax=96, Emin=-95, precision=7, rounding=RoundNearestTiesAway) @test_throws OverflowError dec"-9999999e+90" + dec"-7e+89"
    # addx992
    @with_context (Emax=96, Emin=-95, precision=7, rounding=RoundNearestTiesAway) @test_throws OverflowError dec"-9999999e+90" + dec"-6e+89"
    # addx993
    @with_context (Emax=96, Emin=-95, precision=7, rounding=RoundNearestTiesAway) @test_throws OverflowError dec"-9999999e+90" + dec"-5e+89"
    # addx994
    @with_context (Emax=96, Emin=-95, precision=7, rounding=RoundNearestTiesAway) @test dec"-9999999e+90" + dec"-4e+89" == dec"-9.999999e+96"
    # addx995
    @with_context (Emax=96, Emin=-95, precision=7, rounding=RoundNearestTiesAway) @test dec"-9999999e+90" + dec"-3e+89" == dec"-9.999999e+96"
    # addx996
    @with_context (Emax=96, Emin=-95, precision=7, rounding=RoundNearestTiesAway) @test dec"-9999999e+90" + dec"-2e+89" == dec"-9.999999e+96"
    # addx997
    @with_context (Emax=96, Emin=-95, precision=7, rounding=RoundNearestTiesAway) @test dec"-9999999e+90" + dec"-1e+89" == dec"-9.999999e+96"
    # addx1001
    @with_context (Emax=79, Emin=-79, precision=5, rounding=RoundNearestTiesAway) @test dec"1.52444e-80" + dec"0" == dec"1.524e-80"
    # addx1002
    @with_context (Emax=79, Emin=-79, precision=5, rounding=RoundNearestTiesAway) @test dec"1.52445e-80" + dec"0" == dec"1.524e-80"
    # addx1003
    @with_context (Emax=79, Emin=-79, precision=5, rounding=RoundNearestTiesAway) @test dec"1.52446e-80" + dec"0" == dec"1.524e-80"
    # addx1004
    @with_context (Emax=79, Emin=-79, precision=5, rounding=RoundNearestTiesAway) @test dec"0" + dec"1.52444e-80" == dec"1.524e-80"
    # addx1005
    @with_context (Emax=79, Emin=-79, precision=5, rounding=RoundNearestTiesAway) @test dec"0" + dec"1.52445e-80" == dec"1.524e-80"
    # addx1006
    @with_context (Emax=79, Emin=-79, precision=5, rounding=RoundNearestTiesAway) @test dec"0" + dec"1.52446e-80" == dec"1.524e-80"
    # addx1011
    @with_context (Emax=79, Emin=-79, precision=5, rounding=RoundNearestTiesAway) @test dec"1.52444e-80" + dec"1e-100" == dec"1.524e-80"
    # addx1012
    @with_context (Emax=79, Emin=-79, precision=5, rounding=RoundNearestTiesAway) @test dec"1.52445e-80" + dec"1e-100" == dec"1.524e-80"
    # addx1013
    @with_context (Emax=79, Emin=-79, precision=5, rounding=RoundNearestTiesAway) @test dec"1.52446e-80" + dec"1e-100" == dec"1.524e-80"
    # addx1014
    @with_context (Emax=79, Emin=-79, precision=5, rounding=RoundNearestTiesAway) @test dec"1e-100" + dec"1.52444e-80" == dec"1.524e-80"
    # addx1015
    @with_context (Emax=79, Emin=-79, precision=5, rounding=RoundNearestTiesAway) @test dec"1e-100" + dec"1.52445e-80" == dec"1.524e-80"
    # addx1016
    @with_context (Emax=79, Emin=-79, precision=5, rounding=RoundNearestTiesAway) @test dec"1e-100" + dec"1.52446e-80" == dec"1.524e-80"
    # addx1021
    @with_context (Emax=79, Emin=-79, precision=5, rounding=RoundNearestTiesAway) @test dec"1.52443e-80" + dec"1.00001e-80" == dec"2.524e-80"
    # addx1022
    @with_context (Emax=79, Emin=-79, precision=5, rounding=RoundNearestTiesAway) @test dec"1.52444e-80" + dec"1.00001e-80" == dec"2.524e-80"
    # addx1023
    @with_context (Emax=79, Emin=-79, precision=5, rounding=RoundNearestTiesAway) @test dec"1.52445e-80" + dec"1.00001e-80" == dec"2.524e-80"
    # addx1024
    @with_context (Emax=79, Emin=-79, precision=5, rounding=RoundNearestTiesAway) @test dec"1.00001e-80" + dec"1.52443e-80" == dec"2.524e-80"
    # addx1025
    @with_context (Emax=79, Emin=-79, precision=5, rounding=RoundNearestTiesAway) @test dec"1.00001e-80" + dec"1.52444e-80" == dec"2.524e-80"
    # addx1026
    @with_context (Emax=79, Emin=-79, precision=5, rounding=RoundNearestTiesAway) @test dec"1.00001e-80" + dec"1.52445e-80" == dec"2.524e-80"
    # addx1100
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundToZero) @test dec"1e+2" + dec"-1e-383" == dec"99.99999999999999"
    # addx1101
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundToZero) @test dec"1e+1" + dec"-1e-383" == dec"9.999999999999999"
    # addx1103
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundToZero) @test dec"+1" + dec"-1e-383" == dec"0.9999999999999999"
    # addx1104
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundToZero) @test dec"1e-1" + dec"-1e-383" == dec"0.09999999999999999"
    # addx1105
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundToZero) @test dec"1e-2" + dec"-1e-383" == dec"0.009999999999999999"
    # addx1106
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundToZero) @test dec"1e-3" + dec"-1e-383" == dec"0.0009999999999999999"
    # addx1107
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundToZero) @test dec"1e-4" + dec"-1e-383" == dec"0.00009999999999999999"
    # addx1108
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundToZero) @test dec"1e-5" + dec"-1e-383" == dec"0.000009999999999999999"
    # addx1109
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundToZero) @test dec"1e-6" + dec"-1e-383" == dec"9.999999999999999e-7"
    # addx1110
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundUp) @test dec"-1e+2" + dec"+1e-383" == dec"-99.99999999999999"
    # addx1111
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundUp) @test dec"-1e+1" + dec"+1e-383" == dec"-9.999999999999999"
    # addx1113
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundUp) @test dec"-1" + dec"+1e-383" == dec"-0.9999999999999999"
    # addx1114
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundUp) @test dec"-1e-1" + dec"+1e-383" == dec"-0.09999999999999999"
    # addx1115
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundUp) @test dec"-1e-2" + dec"+1e-383" == dec"-0.009999999999999999"
    # addx1116
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundUp) @test dec"-1e-3" + dec"+1e-383" == dec"-0.0009999999999999999"
    # addx1117
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundUp) @test dec"-1e-4" + dec"+1e-383" == dec"-0.00009999999999999999"
    # addx1118
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundUp) @test dec"-1e-5" + dec"+1e-383" == dec"-0.000009999999999999999"
    # addx1119
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundUp) @test dec"-1e-6" + dec"+1e-383" == dec"-9.999999999999999e-7"
    # addx1120
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundUp) @test dec"+1e-383" + dec"-1e+2" == dec"-99.99999999999999"
    # addx1121
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundUp) @test dec"+1e-383" + dec"-1e+1" == dec"-9.999999999999999"
    # addx1123
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundUp) @test dec"+1e-383" + dec"-1" == dec"-0.9999999999999999"
    # addx1124
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundUp) @test dec"+1e-383" + dec"-1e-1" == dec"-0.09999999999999999"
    # addx1125
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundUp) @test dec"+1e-383" + dec"-1e-2" == dec"-0.009999999999999999"
    # addx1126
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundUp) @test dec"+1e-383" + dec"-1e-3" == dec"-0.0009999999999999999"
    # addx1127
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundUp) @test dec"+1e-383" + dec"-1e-4" == dec"-0.00009999999999999999"
    # addx1128
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundUp) @test dec"+1e-383" + dec"-1e-5" == dec"-0.000009999999999999999"
    # addx1129
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundUp) @test dec"+1e-383" + dec"-1e-6" == dec"-9.999999999999999e-7"
    # addx1130
    @with_context (Emax=96, Emin=-95, precision=7, rounding=RoundToZero) @test dec"1" + dec"-1e-200" == dec"0.9999999"
    # addx1131
    @with_context (Emax=96, Emin=-95, precision=7, rounding=RoundToZero) @test dec"1.000000e-94" + dec"-1e-200" == dec"9.999999e-95"
    # addx1132
    @with_context (Emax=96, Emin=-95, precision=7, rounding=RoundToZero) @test dec"1.000001e-95" + dec"-1e-200" == dec"1.000000e-95"
    # addx1133
    @with_context (Emax=96, Emin=-95, precision=7, rounding=RoundToZero) @test dec"1.000000e-95" + dec"-1e-200" == dec"9.99999e-96"
    # addx1134
    @with_context (Emax=96, Emin=-95, precision=7, rounding=RoundToZero) @test dec"0.999999e-95" + dec"-1e-200" == dec"9.99998e-96"
    # addx1135
    @with_context (Emax=96, Emin=-95, precision=7, rounding=RoundToZero) @test dec"0.001000e-95" + dec"-1e-200" == dec"9.99e-99"
    # addx1136
    @with_context (Emax=96, Emin=-95, precision=7, rounding=RoundToZero) @test dec"0.000999e-95" + dec"-1e-200" == dec"9.98e-99"
    # addx1137
    @with_context (Emax=96, Emin=-95, precision=7, rounding=RoundToZero) @test dec"1.000000e-95" + dec"-1e-101" == dec"9.99999e-96"
    # addx1138
    @with_context (Emax=96, Emin=-95, precision=7, rounding=RoundToZero) @test dec"10000e-101" + dec"-1e-200" == dec"9.999e-98"
    # addx1139
    @with_context (Emax=96, Emin=-95, precision=7, rounding=RoundToZero) @test dec"1000e-101" + dec"-1e-200" == dec"9.99e-99"
    # addx1140
    @with_context (Emax=96, Emin=-95, precision=7, rounding=RoundToZero) @test dec"100e-101" + dec"-1e-200" == dec"9.9e-100"
    # addx1141
    @with_context (Emax=96, Emin=-95, precision=7, rounding=RoundToZero) @test dec"10e-101" + dec"-1e-200" == dec"9e-101"
    # addx1142
    @with_context (Emax=96, Emin=-95, precision=7, rounding=RoundToZero) @test dec"1e-101" + dec"-1e-200" == dec"0e-101"
    # addx1143
    @with_context (Emax=96, Emin=-95, precision=7, rounding=RoundToZero) @test dec"0e-101" + dec"-1e-200" == dec"-0e-101"
    # addx1144
    @with_context (Emax=96, Emin=-95, precision=7, rounding=RoundToZero) @test dec"1e-102" + dec"-1e-200" == dec"0e-101"
    # addx1151
    @with_context (Emax=96, Emin=-95, precision=7, rounding=RoundToZero) @test dec"10000e-102" + dec"-1e-200" == dec"9.99e-99"
    # addx1152
    @with_context (Emax=96, Emin=-95, precision=7, rounding=RoundToZero) @test dec"1000e-102" + dec"-1e-200" == dec"9.9e-100"
    # addx1153
    @with_context (Emax=96, Emin=-95, precision=7, rounding=RoundToZero) @test dec"100e-102" + dec"-1e-200" == dec"9e-101"
    # addx1154
    @with_context (Emax=96, Emin=-95, precision=7, rounding=RoundToZero) @test dec"10e-102" + dec"-1e-200" == dec"0e-101"
    # addx1155
    @with_context (Emax=96, Emin=-95, precision=7, rounding=RoundToZero) @test dec"1e-102" + dec"-1e-200" == dec"0e-101"
    # addx1156
    @with_context (Emax=96, Emin=-95, precision=7, rounding=RoundToZero) @test dec"0e-102" + dec"-1e-200" == dec"-0e-101"
    # addx1157
    @with_context (Emax=96, Emin=-95, precision=7, rounding=RoundToZero) @test dec"1e-103" + dec"-1e-200" == dec"0e-101"
    # addx1160
    @with_context (Emax=96, Emin=-95, precision=7, rounding=RoundToZero) @test dec"100e-105" + dec"-1e-101" == dec"-0e-101"
    # addx1161
    @with_context (Emax=96, Emin=-95, precision=7, rounding=RoundToZero) @test dec"100e-105" + dec"-1e-201" == dec"0e-101"
    # addx1200
    @with_context (Emax=384, Emin=-383, precision=15, rounding=RoundNearestTiesAway) @test dec"1e15" + dec"-0.5" == dec"1.00000000000000e+15"
    # addx1201
    @with_context (Emax=384, Emin=-383, precision=15, rounding=RoundNearestTiesAway) @test dec"1e15" + dec"-0.50" == dec"1.00000000000000e+15"
    # addx1210
    @with_context (Emax=384, Emin=-383, precision=15, rounding=RoundNearestTiesAway) @test dec"1e15" + dec"-0.51" == dec"999999999999999"
    # addx1211
    @with_context (Emax=384, Emin=-383, precision=15, rounding=RoundNearestTiesAway) @test dec"1e15" + dec"-0.501" == dec"999999999999999"
    # addx1212
    @with_context (Emax=384, Emin=-383, precision=15, rounding=RoundNearestTiesAway) @test dec"1e15" + dec"-0.5001" == dec"999999999999999"
    # addx1213
    @with_context (Emax=384, Emin=-383, precision=15, rounding=RoundNearestTiesAway) @test dec"1e15" + dec"-0.50001" == dec"999999999999999"
    # addx1214
    @with_context (Emax=384, Emin=-383, precision=15, rounding=RoundNearestTiesAway) @test dec"1e15" + dec"-0.500001" == dec"999999999999999"
    # addx1215
    @with_context (Emax=384, Emin=-383, precision=15, rounding=RoundNearestTiesAway) @test dec"1e15" + dec"-0.5000001" == dec"999999999999999"
    # addx1216
    @with_context (Emax=384, Emin=-383, precision=15, rounding=RoundNearestTiesAway) @test dec"1e15" + dec"-0.50000001" == dec"999999999999999"
    # addx1217
    @with_context (Emax=384, Emin=-383, precision=15, rounding=RoundNearestTiesAway) @test dec"1e15" + dec"-0.500000001" == dec"999999999999999"
    # addx1218
    @with_context (Emax=384, Emin=-383, precision=15, rounding=RoundNearestTiesAway) @test dec"1e15" + dec"-0.5000000001" == dec"999999999999999"
    # addx1219
    @with_context (Emax=384, Emin=-383, precision=15, rounding=RoundNearestTiesAway) @test dec"1e15" + dec"-0.50000000001" == dec"999999999999999"
    # addx1220
    @with_context (Emax=384, Emin=-383, precision=15, rounding=RoundNearestTiesAway) @test dec"1e15" + dec"-0.500000000001" == dec"999999999999999"
    # addx1221
    @with_context (Emax=384, Emin=-383, precision=15, rounding=RoundNearestTiesAway) @test dec"1e15" + dec"-0.5000000000001" == dec"999999999999999"
    # addx1222
    @with_context (Emax=384, Emin=-383, precision=15, rounding=RoundNearestTiesAway) @test dec"1e15" + dec"-0.50000000000001" == dec"999999999999999"
    # addx1223
    @with_context (Emax=384, Emin=-383, precision=15, rounding=RoundNearestTiesAway) @test dec"1e15" + dec"-0.500000000000001" == dec"999999999999999"
    # addx1224
    @with_context (Emax=384, Emin=-383, precision=15, rounding=RoundNearestTiesAway) @test dec"1e15" + dec"-0.5000000000000001" == dec"999999999999999"
    # addx1225
    @with_context (Emax=384, Emin=-383, precision=15, rounding=RoundNearestTiesAway) @test dec"1e15" + dec"-0.5000000000000000" == dec"1.00000000000000e+15"
    # addx1230
    @with_context (Emax=384, Emin=-383, precision=15, rounding=RoundNearestTiesAway) @test dec"1e15" + dec"-5000000.000000001" == dec"999999995000000"
    # addx1300
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1e16" + dec"-0.5" == dec"1.000000000000000e+16"
    # addx1310
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1e16" + dec"-0.51" == dec"9999999999999999"
    # addx1311
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1e16" + dec"-0.501" == dec"9999999999999999"
    # addx1312
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1e16" + dec"-0.5001" == dec"9999999999999999"
    # addx1313
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1e16" + dec"-0.50001" == dec"9999999999999999"
    # addx1314
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1e16" + dec"-0.500001" == dec"9999999999999999"
    # addx1315
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1e16" + dec"-0.5000001" == dec"9999999999999999"
    # addx1316
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1e16" + dec"-0.50000001" == dec"9999999999999999"
    # addx1317
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1e16" + dec"-0.500000001" == dec"9999999999999999"
    # addx1318
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1e16" + dec"-0.5000000001" == dec"9999999999999999"
    # addx1319
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1e16" + dec"-0.50000000001" == dec"9999999999999999"
    # addx1320
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1e16" + dec"-0.500000000001" == dec"9999999999999999"
    # addx1321
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1e16" + dec"-0.5000000000001" == dec"9999999999999999"
    # addx1322
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1e16" + dec"-0.50000000000001" == dec"9999999999999999"
    # addx1323
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1e16" + dec"-0.500000000000001" == dec"9999999999999999"
    # addx1324
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1e16" + dec"-0.5000000000000001" == dec"9999999999999999"
    # addx1325
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1e16" + dec"-0.5000000000000000" == dec"1.000000000000000e+16"
    # addx1326
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1e16" + dec"-0.500000000000000" == dec"1.000000000000000e+16"
    # addx1327
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1e16" + dec"-0.50000000000000" == dec"1.000000000000000e+16"
    # addx1328
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1e16" + dec"-0.5000000000000" == dec"1.000000000000000e+16"
    # addx1329
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1e16" + dec"-0.500000000000" == dec"1.000000000000000e+16"
    # addx1330
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1e16" + dec"-0.50000000000" == dec"1.000000000000000e+16"
    # addx1331
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1e16" + dec"-0.5000000000" == dec"1.000000000000000e+16"
    # addx1332
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1e16" + dec"-0.500000000" == dec"1.000000000000000e+16"
    # addx1333
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1e16" + dec"-0.50000000" == dec"1.000000000000000e+16"
    # addx1334
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1e16" + dec"-0.5000000" == dec"1.000000000000000e+16"
    # addx1335
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1e16" + dec"-0.500000" == dec"1.000000000000000e+16"
    # addx1336
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1e16" + dec"-0.50000" == dec"1.000000000000000e+16"
    # addx1337
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1e16" + dec"-0.5000" == dec"1.000000000000000e+16"
    # addx1338
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1e16" + dec"-0.500" == dec"1.000000000000000e+16"
    # addx1339
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1e16" + dec"-0.50" == dec"1.000000000000000e+16"
    # addx1340
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1e16" + dec"-5000000.000010001" == dec"9999999995000000"
    # addx1341
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1e16" + dec"-5000000.000000001" == dec"9999999995000000"
    # addx1349
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"9999999999999999" + dec"0.4" == dec"9999999999999999"
    # addx1350
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"9999999999999999" + dec"0.49" == dec"9999999999999999"
    # addx1351
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"9999999999999999" + dec"0.499" == dec"9999999999999999"
    # addx1352
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"9999999999999999" + dec"0.4999" == dec"9999999999999999"
    # addx1353
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"9999999999999999" + dec"0.49999" == dec"9999999999999999"
    # addx1354
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"9999999999999999" + dec"0.499999" == dec"9999999999999999"
    # addx1355
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"9999999999999999" + dec"0.4999999" == dec"9999999999999999"
    # addx1356
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"9999999999999999" + dec"0.49999999" == dec"9999999999999999"
    # addx1357
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"9999999999999999" + dec"0.499999999" == dec"9999999999999999"
    # addx1358
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"9999999999999999" + dec"0.4999999999" == dec"9999999999999999"
    # addx1359
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"9999999999999999" + dec"0.49999999999" == dec"9999999999999999"
    # addx1360
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"9999999999999999" + dec"0.499999999999" == dec"9999999999999999"
    # addx1361
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"9999999999999999" + dec"0.4999999999999" == dec"9999999999999999"
    # addx1362
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"9999999999999999" + dec"0.49999999999999" == dec"9999999999999999"
    # addx1363
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"9999999999999999" + dec"0.499999999999999" == dec"9999999999999999"
    # addx1364
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"9999999999999999" + dec"0.4999999999999999" == dec"9999999999999999"
    # addx1365
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"9999999999999999" + dec"0.5000000000000000" == dec"1.000000000000000e+16"
    # addx1367
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"9999999999999999" + dec"0.500000000000000" == dec"1.000000000000000e+16"
    # addx1368
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"9999999999999999" + dec"0.50000000000000" == dec"1.000000000000000e+16"
    # addx1369
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"9999999999999999" + dec"0.5000000000000" == dec"1.000000000000000e+16"
    # addx1370
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"9999999999999999" + dec"0.500000000000" == dec"1.000000000000000e+16"
    # addx1371
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"9999999999999999" + dec"0.50000000000" == dec"1.000000000000000e+16"
    # addx1372
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"9999999999999999" + dec"0.5000000000" == dec"1.000000000000000e+16"
    # addx1373
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"9999999999999999" + dec"0.500000000" == dec"1.000000000000000e+16"
    # addx1374
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"9999999999999999" + dec"0.50000000" == dec"1.000000000000000e+16"
    # addx1375
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"9999999999999999" + dec"0.5000000" == dec"1.000000000000000e+16"
    # addx1376
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"9999999999999999" + dec"0.500000" == dec"1.000000000000000e+16"
    # addx1377
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"9999999999999999" + dec"0.50000" == dec"1.000000000000000e+16"
    # addx1378
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"9999999999999999" + dec"0.5000" == dec"1.000000000000000e+16"
    # addx1379
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"9999999999999999" + dec"0.500" == dec"1.000000000000000e+16"
    # addx1380
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"9999999999999999" + dec"0.50" == dec"1.000000000000000e+16"
    # addx1381
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"9999999999999999" + dec"0.5" == dec"1.000000000000000e+16"
    # addx1382
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"9999999999999999" + dec"0.5000000000000001" == dec"1.000000000000000e+16"
    # addx1383
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"9999999999999999" + dec"0.500000000000001" == dec"1.000000000000000e+16"
    # addx1384
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"9999999999999999" + dec"0.50000000000001" == dec"1.000000000000000e+16"
    # addx1385
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"9999999999999999" + dec"0.5000000000001" == dec"1.000000000000000e+16"
    # addx1386
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"9999999999999999" + dec"0.500000000001" == dec"1.000000000000000e+16"
    # addx1387
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"9999999999999999" + dec"0.50000000001" == dec"1.000000000000000e+16"
    # addx1388
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"9999999999999999" + dec"0.5000000001" == dec"1.000000000000000e+16"
    # addx1389
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"9999999999999999" + dec"0.500000001" == dec"1.000000000000000e+16"
    # addx1390
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"9999999999999999" + dec"0.50000001" == dec"1.000000000000000e+16"
    # addx1391
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"9999999999999999" + dec"0.5000001" == dec"1.000000000000000e+16"
    # addx1392
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"9999999999999999" + dec"0.500001" == dec"1.000000000000000e+16"
    # addx1393
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"9999999999999999" + dec"0.50001" == dec"1.000000000000000e+16"
    # addx1394
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"9999999999999999" + dec"0.5001" == dec"1.000000000000000e+16"
    # addx1395
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"9999999999999999" + dec"0.501" == dec"1.000000000000000e+16"
    # addx1396
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"9999999999999999" + dec"0.51" == dec"1.000000000000000e+16"
    # addx1400
    @with_context (Emax=384, Emin=-383, precision=15, rounding=RoundNearestTiesAway) @test dec"0" + dec"1.23456789012345" == dec"1.23456789012345"
    # addx1401
    @with_context (Emax=384, Emin=-383, precision=15, rounding=RoundNearestTiesAway) @test dec"0" + dec"1.23456789012345e-1" == dec"0.123456789012345"
    # addx1402
    @with_context (Emax=384, Emin=-383, precision=15, rounding=RoundNearestTiesAway) @test dec"0" + dec"1.23456789012345e-2" == dec"0.0123456789012345"
    # addx1403
    @with_context (Emax=384, Emin=-383, precision=15, rounding=RoundNearestTiesAway) @test dec"0" + dec"1.23456789012345e-3" == dec"0.00123456789012345"
    # addx1404
    @with_context (Emax=384, Emin=-383, precision=15, rounding=RoundNearestTiesAway) @test dec"0" + dec"1.23456789012345e-4" == dec"0.000123456789012345"
    # addx1405
    @with_context (Emax=384, Emin=-383, precision=15, rounding=RoundNearestTiesAway) @test dec"0" + dec"1.23456789012345e-5" == dec"0.0000123456789012345"
    # addx1406
    @with_context (Emax=384, Emin=-383, precision=15, rounding=RoundNearestTiesAway) @test dec"0" + dec"1.23456789012345e-6" == dec"0.00000123456789012345"
    # addx1407
    @with_context (Emax=384, Emin=-383, precision=15, rounding=RoundNearestTiesAway) @test dec"0" + dec"1.23456789012345e-7" == dec"1.23456789012345e-7"
    # addx1408
    @with_context (Emax=384, Emin=-383, precision=15, rounding=RoundNearestTiesAway) @test dec"0" + dec"1.23456789012345e-8" == dec"1.23456789012345e-8"
    # addx1409
    @with_context (Emax=384, Emin=-383, precision=15, rounding=RoundNearestTiesAway) @test dec"0" + dec"1.23456789012345e-9" == dec"1.23456789012345e-9"
    # addx1410
    @with_context (Emax=384, Emin=-383, precision=15, rounding=RoundNearestTiesAway) @test dec"0" + dec"1.23456789012345e-10" == dec"1.23456789012345e-10"
    # addx1411
    @with_context (Emax=384, Emin=-383, precision=15, rounding=RoundNearestTiesAway) @test dec"0" + dec"1.23456789012345e-11" == dec"1.23456789012345e-11"
    # addx1412
    @with_context (Emax=384, Emin=-383, precision=15, rounding=RoundNearestTiesAway) @test dec"0" + dec"1.23456789012345e-12" == dec"1.23456789012345e-12"
    # addx1413
    @with_context (Emax=384, Emin=-383, precision=15, rounding=RoundNearestTiesAway) @test dec"0" + dec"1.23456789012345e-13" == dec"1.23456789012345e-13"
    # addx1414
    @with_context (Emax=384, Emin=-383, precision=15, rounding=RoundNearestTiesAway) @test dec"0" + dec"1.23456789012345e-14" == dec"1.23456789012345e-14"
    # addx1415
    @with_context (Emax=384, Emin=-383, precision=15, rounding=RoundNearestTiesAway) @test dec"0" + dec"1.23456789012345e-15" == dec"1.23456789012345e-15"
    # addx1416
    @with_context (Emax=384, Emin=-383, precision=15, rounding=RoundNearestTiesAway) @test dec"0" + dec"1.23456789012345e-16" == dec"1.23456789012345e-16"
    # addx1417
    @with_context (Emax=384, Emin=-383, precision=15, rounding=RoundNearestTiesAway) @test dec"0" + dec"1.23456789012345e-17" == dec"1.23456789012345e-17"
    # addx1418
    @with_context (Emax=384, Emin=-383, precision=15, rounding=RoundNearestTiesAway) @test dec"0" + dec"1.23456789012345e-18" == dec"1.23456789012345e-18"
    # addx1419
    @with_context (Emax=384, Emin=-383, precision=15, rounding=RoundNearestTiesAway) @test dec"0" + dec"1.23456789012345e-19" == dec"1.23456789012345e-19"
    # addx1420
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"0" + dec"1.123456789012345" == dec"1.123456789012345"
    # addx1421
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"0" + dec"1.123456789012345e-1" == dec"0.1123456789012345"
    # addx1422
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"0" + dec"1.123456789012345e-2" == dec"0.01123456789012345"
    # addx1423
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"0" + dec"1.123456789012345e-3" == dec"0.001123456789012345"
    # addx1424
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"0" + dec"1.123456789012345e-4" == dec"0.0001123456789012345"
    # addx1425
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"0" + dec"1.123456789012345e-5" == dec"0.00001123456789012345"
    # addx1426
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"0" + dec"1.123456789012345e-6" == dec"0.000001123456789012345"
    # addx1427
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"0" + dec"1.123456789012345e-7" == dec"1.123456789012345e-7"
    # addx1428
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"0" + dec"1.123456789012345e-8" == dec"1.123456789012345e-8"
    # addx1429
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"0" + dec"1.123456789012345e-9" == dec"1.123456789012345e-9"
    # addx1430
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"0" + dec"1.123456789012345e-10" == dec"1.123456789012345e-10"
    # addx1431
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"0" + dec"1.123456789012345e-11" == dec"1.123456789012345e-11"
    # addx1432
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"0" + dec"1.123456789012345e-12" == dec"1.123456789012345e-12"
    # addx1433
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"0" + dec"1.123456789012345e-13" == dec"1.123456789012345e-13"
    # addx1434
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"0" + dec"1.123456789012345e-14" == dec"1.123456789012345e-14"
    # addx1435
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"0" + dec"1.123456789012345e-15" == dec"1.123456789012345e-15"
    # addx1436
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"0" + dec"1.123456789012345e-16" == dec"1.123456789012345e-16"
    # addx1437
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"0" + dec"1.123456789012345e-17" == dec"1.123456789012345e-17"
    # addx1438
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"0" + dec"1.123456789012345e-18" == dec"1.123456789012345e-18"
    # addx1439
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"0" + dec"1.123456789012345e-19" == dec"1.123456789012345e-19"
    # addx1440
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1.123456789012345" + dec"0" == dec"1.123456789012345"
    # addx1441
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1.123456789012345e-1" + dec"0" == dec"0.1123456789012345"
    # addx1442
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1.123456789012345e-2" + dec"0" == dec"0.01123456789012345"
    # addx1443
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1.123456789012345e-3" + dec"0" == dec"0.001123456789012345"
    # addx1444
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1.123456789012345e-4" + dec"0" == dec"0.0001123456789012345"
    # addx1445
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1.123456789012345e-5" + dec"0" == dec"0.00001123456789012345"
    # addx1446
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1.123456789012345e-6" + dec"0" == dec"0.000001123456789012345"
    # addx1447
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1.123456789012345e-7" + dec"0" == dec"1.123456789012345e-7"
    # addx1448
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1.123456789012345e-8" + dec"0" == dec"1.123456789012345e-8"
    # addx1449
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1.123456789012345e-9" + dec"0" == dec"1.123456789012345e-9"
    # addx1450
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1.123456789012345e-10" + dec"0" == dec"1.123456789012345e-10"
    # addx1451
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1.123456789012345e-11" + dec"0" == dec"1.123456789012345e-11"
    # addx1452
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1.123456789012345e-12" + dec"0" == dec"1.123456789012345e-12"
    # addx1453
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1.123456789012345e-13" + dec"0" == dec"1.123456789012345e-13"
    # addx1454
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1.123456789012345e-14" + dec"0" == dec"1.123456789012345e-14"
    # addx1455
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1.123456789012345e-15" + dec"0" == dec"1.123456789012345e-15"
    # addx1456
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1.123456789012345e-16" + dec"0" == dec"1.123456789012345e-16"
    # addx1457
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1.123456789012345e-17" + dec"0" == dec"1.123456789012345e-17"
    # addx1458
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1.123456789012345e-18" + dec"0" == dec"1.123456789012345e-18"
    # addx1459
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1.123456789012345e-19" + dec"0" == dec"1.123456789012345e-19"
    # addx1460
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1.123456789012345" + dec"0e-0" == dec"1.123456789012345"
    # addx1461
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1.123456789012345" + dec"0e-1" == dec"1.123456789012345"
    # addx1462
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1.123456789012345" + dec"0e-2" == dec"1.123456789012345"
    # addx1463
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1.123456789012345" + dec"0e-3" == dec"1.123456789012345"
    # addx1464
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1.123456789012345" + dec"0e-4" == dec"1.123456789012345"
    # addx1465
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1.123456789012345" + dec"0e-5" == dec"1.123456789012345"
    # addx1466
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1.123456789012345" + dec"0e-6" == dec"1.123456789012345"
    # addx1467
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1.123456789012345" + dec"0e-7" == dec"1.123456789012345"
    # addx1468
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1.123456789012345" + dec"0e-8" == dec"1.123456789012345"
    # addx1469
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1.123456789012345" + dec"0e-9" == dec"1.123456789012345"
    # addx1470
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1.123456789012345" + dec"0e-10" == dec"1.123456789012345"
    # addx1471
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1.123456789012345" + dec"0e-11" == dec"1.123456789012345"
    # addx1472
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1.123456789012345" + dec"0e-12" == dec"1.123456789012345"
    # addx1473
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1.123456789012345" + dec"0e-13" == dec"1.123456789012345"
    # addx1474
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1.123456789012345" + dec"0e-14" == dec"1.123456789012345"
    # addx1475
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1.123456789012345" + dec"0e-15" == dec"1.123456789012345"
    # addx1476
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1.123456789012345" + dec"0e-16" == dec"1.123456789012345"
    # addx1477
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1.123456789012345" + dec"0e-17" == dec"1.123456789012345"
    # addx1478
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1.123456789012345" + dec"0e-18" == dec"1.123456789012345"
    # addx1479
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1.123456789012345" + dec"0e-19" == dec"1.123456789012345"
    # addx1500
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"0" + dec"0e-19" == dec"0e-19"
    # addx1501
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"-0" + dec"0e-19" == dec"0e-19"
    # addx1502
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"0" + dec"-0e-19" == dec"0e-19"
    # addx1503
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"-0" + dec"-0e-19" == dec"-0e-19"
    # addx1504
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"0e-400" + dec"0e-19" == dec"0e-398"
    # addx1505
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"-0e-400" + dec"0e-19" == dec"0e-398"
    # addx1506
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"0e-400" + dec"-0e-19" == dec"0e-398"
    # addx1507
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"-0e-400" + dec"-0e-19" == dec"-0e-398"
    # addx1511
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1e-401" + dec"1e-400" == dec"0e-398"
    # addx1512
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"-1e-401" + dec"1e-400" == dec"0e-398"
    # addx1513
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1e-401" + dec"-1e-400" == dec"-0e-398"
    # addx1514
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"-1e-401" + dec"-1e-400" == dec"-0e-398"
    # addx1515
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1e-401" + dec"1e-401" == dec"0e-398"
    # addx1516
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"-1e-401" + dec"1e-401" == dec"0e-398"
    # addx1517
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1e-401" + dec"-1e-401" == dec"0e-398"
    # addx1518
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"-1e-401" + dec"-1e-401" == dec"-0e-398"
    # addx1540
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0" + dec"0e-19" == dec"0e-19"
    # addx1541
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-0" + dec"0e-19" == dec"0e-19"
    # addx1542
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0" + dec"-0e-19" == dec"0e-19"
    # addx1543
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-0" + dec"-0e-19" == dec"-0e-19"
    # addx1544
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0e-400" + dec"0e-19" == dec"0e-398"
    # addx1545
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-0e-400" + dec"0e-19" == dec"0e-398"
    # addx1546
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0e-400" + dec"-0e-19" == dec"0e-398"
    # addx1547
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-0e-400" + dec"-0e-19" == dec"-0e-398"
    # addx1551
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1e-401" + dec"1e-400" == dec"0e-398"
    # addx1552
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-1e-401" + dec"1e-400" == dec"0e-398"
    # addx1553
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1e-401" + dec"-1e-400" == dec"-0e-398"
    # addx1554
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-1e-401" + dec"-1e-400" == dec"-0e-398"
    # addx1555
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1e-401" + dec"1e-401" == dec"0e-398"
    # addx1556
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-1e-401" + dec"1e-401" == dec"0e-398"
    # addx1557
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1e-401" + dec"-1e-401" == dec"0e-398"
    # addx1558
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-1e-401" + dec"-1e-401" == dec"-0e-398"
    # addx1560
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundFromZero) @test dec"0" + dec"0e-19" == dec"0e-19"
    # addx1561
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundFromZero) @test dec"-0" + dec"0e-19" == dec"0e-19"
    # addx1562
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundFromZero) @test dec"0" + dec"-0e-19" == dec"0e-19"
    # addx1563
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundFromZero) @test dec"-0" + dec"-0e-19" == dec"-0e-19"
    # addx1564
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundFromZero) @test dec"0e-400" + dec"0e-19" == dec"0e-398"
    # addx1565
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundFromZero) @test dec"-0e-400" + dec"0e-19" == dec"0e-398"
    # addx1566
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundFromZero) @test dec"0e-400" + dec"-0e-19" == dec"0e-398"
    # addx1567
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundFromZero) @test dec"-0e-400" + dec"-0e-19" == dec"-0e-398"
    # addx1571
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundFromZero) @test dec"1e-401" + dec"1e-400" == dec"1e-398"
    # addx1572
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundFromZero) @test dec"-1e-401" + dec"1e-400" == dec"1e-398"
    # addx1573
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundFromZero) @test dec"1e-401" + dec"-1e-400" == dec"-1e-398"
    # addx1574
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundFromZero) @test dec"-1e-401" + dec"-1e-400" == dec"-1e-398"
    # addx1575
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundFromZero) @test dec"1e-401" + dec"1e-401" == dec"1e-398"
    # addx1576
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundFromZero) @test dec"-1e-401" + dec"1e-401" == dec"0e-398"
    # addx1577
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundFromZero) @test dec"1e-401" + dec"-1e-401" == dec"0e-398"
    # addx1578
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundFromZero) @test dec"-1e-401" + dec"-1e-401" == dec"-1e-398"
    # addx1580
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundToZero) @test dec"0" + dec"0e-19" == dec"0e-19"
    # addx1581
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundToZero) @test dec"-0" + dec"0e-19" == dec"0e-19"
    # addx1582
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundToZero) @test dec"0" + dec"-0e-19" == dec"0e-19"
    # addx1583
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundToZero) @test dec"-0" + dec"-0e-19" == dec"-0e-19"
    # addx1584
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundToZero) @test dec"0e-400" + dec"0e-19" == dec"0e-398"
    # addx1585
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundToZero) @test dec"-0e-400" + dec"0e-19" == dec"0e-398"
    # addx1586
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundToZero) @test dec"0e-400" + dec"-0e-19" == dec"0e-398"
    # addx1587
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundToZero) @test dec"-0e-400" + dec"-0e-19" == dec"-0e-398"
    # addx1591
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundToZero) @test dec"1e-401" + dec"1e-400" == dec"0e-398"
    # addx1592
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundToZero) @test dec"-1e-401" + dec"1e-400" == dec"0e-398"
    # addx1593
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundToZero) @test dec"1e-401" + dec"-1e-400" == dec"-0e-398"
    # addx1594
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundToZero) @test dec"-1e-401" + dec"-1e-400" == dec"-0e-398"
    # addx1595
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundToZero) @test dec"1e-401" + dec"1e-401" == dec"0e-398"
    # addx1596
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundToZero) @test dec"-1e-401" + dec"1e-401" == dec"0e-398"
    # addx1597
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundToZero) @test dec"1e-401" + dec"-1e-401" == dec"0e-398"
    # addx1598
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundToZero) @test dec"-1e-401" + dec"-1e-401" == dec"-0e-398"
    # addx1600
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundUp) @test dec"0" + dec"0e-19" == dec"0e-19"
    # addx1601
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundUp) @test dec"-0" + dec"0e-19" == dec"0e-19"
    # addx1602
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundUp) @test dec"0" + dec"-0e-19" == dec"0e-19"
    # addx1603
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundUp) @test dec"-0" + dec"-0e-19" == dec"-0e-19"
    # addx1604
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundUp) @test dec"0e-400" + dec"0e-19" == dec"0e-398"
    # addx1605
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundUp) @test dec"-0e-400" + dec"0e-19" == dec"0e-398"
    # addx1606
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundUp) @test dec"0e-400" + dec"-0e-19" == dec"0e-398"
    # addx1607
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundUp) @test dec"-0e-400" + dec"-0e-19" == dec"-0e-398"
    # addx1611
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundUp) @test dec"1e-401" + dec"1e-400" == dec"1e-398"
    # addx1612
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundUp) @test dec"-1e-401" + dec"1e-400" == dec"1e-398"
    # addx1613
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundUp) @test dec"1e-401" + dec"-1e-400" == dec"-0e-398"
    # addx1614
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundUp) @test dec"-1e-401" + dec"-1e-400" == dec"-0e-398"
    # addx1615
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundUp) @test dec"1e-401" + dec"1e-401" == dec"1e-398"
    # addx1616
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundUp) @test dec"-1e-401" + dec"1e-401" == dec"0e-398"
    # addx1617
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundUp) @test dec"1e-401" + dec"-1e-401" == dec"0e-398"
    # addx1618
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundUp) @test dec"-1e-401" + dec"-1e-401" == dec"-0e-398"
    # addx1620
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundDown) @test dec"0" + dec"0e-19" == dec"0e-19"
    # addx1621
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundDown) @test dec"-0" + dec"0e-19" == dec"-0e-19"
    # addx1622
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundDown) @test dec"0" + dec"-0e-19" == dec"-0e-19"
    # addx1623
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundDown) @test dec"-0" + dec"-0e-19" == dec"-0e-19"
    # addx1624
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundDown) @test dec"0e-400" + dec"0e-19" == dec"0e-398"
    # addx1625
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundDown) @test dec"-0e-400" + dec"0e-19" == dec"-0e-398"
    # addx1626
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundDown) @test dec"0e-400" + dec"-0e-19" == dec"-0e-398"
    # addx1627
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundDown) @test dec"-0e-400" + dec"-0e-19" == dec"-0e-398"
    # addx1631
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundDown) @test dec"1e-401" + dec"1e-400" == dec"0e-398"
    # addx1632
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundDown) @test dec"-1e-401" + dec"1e-400" == dec"0e-398"
    # addx1633
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundDown) @test dec"1e-401" + dec"-1e-400" == dec"-1e-398"
    # addx1634
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundDown) @test dec"-1e-401" + dec"-1e-400" == dec"-1e-398"
    # addx1635
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundDown) @test dec"1e-401" + dec"1e-401" == dec"0e-398"
    # addx1636
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundDown) @test dec"-1e-401" + dec"1e-401" == dec"-0e-398"
    # addx1637
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundDown) @test dec"1e-401" + dec"-1e-401" == dec"-0e-398"
    # addx1638
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundDown) @test dec"-1e-401" + dec"-1e-401" == dec"-1e-398"
    # addx1651
    @with_context (Emax=384, Emin=-383, precision=7, rounding=RoundToZero) @test dec"10001e+2" + dec"-2e+1" == dec"1.00008e+6"
    # addx1652
    @with_context (Emax=384, Emin=-383, precision=6, rounding=RoundToZero) @test dec"10001e+2" + dec"-2e+1" == dec"1.00008e+6"
    # addx1653
    @with_context (Emax=384, Emin=-383, precision=5, rounding=RoundToZero) @test dec"10001e+2" + dec"-2e+1" == dec"1.0000e+6"
    # addx1654
    @with_context (Emax=384, Emin=-383, precision=4, rounding=RoundToZero) @test dec"10001e+2" + dec"-2e+1" == dec"1.000e+6"
    # addx1655
    @with_context (Emax=384, Emin=-383, precision=3, rounding=RoundToZero) @test dec"10001e+2" + dec"-2e+1" == dec"1.00e+6"
    # addx1656
    @with_context (Emax=384, Emin=-383, precision=2, rounding=RoundToZero) @test dec"10001e+2" + dec"-2e+1" == dec"1.0e+6"
    # addx1657
    @with_context (Emax=384, Emin=-383, precision=1, rounding=RoundToZero) @test dec"10001e+2" + dec"-2e+1" == dec"1e+6"
    # addx1661
    @with_context (Emax=384, Emin=-383, precision=7, rounding=RoundNearest) @test dec"10001e+2" + dec"-2e+1" == dec"1.00008e+6"
    # addx1662
    @with_context (Emax=384, Emin=-383, precision=6, rounding=RoundNearest) @test dec"10001e+2" + dec"-2e+1" == dec"1.00008e+6"
    # addx1663
    @with_context (Emax=384, Emin=-383, precision=5, rounding=RoundNearest) @test dec"10001e+2" + dec"-2e+1" == dec"1.0001e+6"
    # addx1664
    @with_context (Emax=384, Emin=-383, precision=4, rounding=RoundNearest) @test dec"10001e+2" + dec"-2e+1" == dec"1.000e+6"
    # addx1665
    @with_context (Emax=384, Emin=-383, precision=3, rounding=RoundNearest) @test dec"10001e+2" + dec"-2e+1" == dec"1.00e+6"
    # addx1666
    @with_context (Emax=384, Emin=-383, precision=2, rounding=RoundNearest) @test dec"10001e+2" + dec"-2e+1" == dec"1.0e+6"
    # addx1667
    @with_context (Emax=384, Emin=-383, precision=1, rounding=RoundNearest) @test dec"10001e+2" + dec"-2e+1" == dec"1e+6"
    # addx1671
    @with_context (Emax=384, Emin=-383, precision=7, rounding=RoundFromZero) @test dec"10001e+2" + dec"-2e+1" == dec"1.00008e+6"
    # addx1672
    @with_context (Emax=384, Emin=-383, precision=6, rounding=RoundFromZero) @test dec"10001e+2" + dec"-2e+1" == dec"1.00008e+6"
    # addx1673
    @with_context (Emax=384, Emin=-383, precision=5, rounding=RoundFromZero) @test dec"10001e+2" + dec"-2e+1" == dec"1.0001e+6"
    # addx1674
    @with_context (Emax=384, Emin=-383, precision=4, rounding=RoundFromZero) @test dec"10001e+2" + dec"-2e+1" == dec"1.001e+6"
    # addx1675
    @with_context (Emax=384, Emin=-383, precision=3, rounding=RoundFromZero) @test dec"10001e+2" + dec"-2e+1" == dec"1.01e+6"
    # addx1676
    @with_context (Emax=384, Emin=-383, precision=2, rounding=RoundFromZero) @test dec"10001e+2" + dec"-2e+1" == dec"1.1e+6"
    # addx1677
    @with_context (Emax=384, Emin=-383, precision=1, rounding=RoundFromZero) @test dec"10001e+2" + dec"-2e+1" == dec"2e+6"
    # addx1701
    @with_context (Emax=6144, Emin=-6143, precision=34, rounding=RoundNearestTiesAway) @test dec"130e-2" + dec"120e-2" == dec"2.50"
    # addx1702
    @with_context (Emax=6144, Emin=-6143, precision=34, rounding=RoundNearestTiesAway) @test dec"130e-2" + dec"12e-1" == dec"2.50"
    # addx1703
    @with_context (Emax=6144, Emin=-6143, precision=34, rounding=RoundNearestTiesAway) @test dec"130e-2" + dec"1e0" == dec"2.30"
    # addx1704
    @with_context (Emax=6144, Emin=-6143, precision=34, rounding=RoundNearestTiesAway) @test dec"1e2" + dec"1e4" == dec"1.01e+4"
    # addx1705
    @with_context (Emax=6144, Emin=-6143, precision=34, rounding=RoundNearestTiesAway) @test dec"130e-2" - dec"120e-2" == dec"0.10"
    # addx1706
    @with_context (Emax=6144, Emin=-6143, precision=34, rounding=RoundNearestTiesAway) @test dec"130e-2" - dec"12e-1" == dec"0.10"
    # addx1707
    @with_context (Emax=6144, Emin=-6143, precision=34, rounding=RoundNearestTiesAway) @test dec"130e-2" - dec"1e0" == dec"0.30"
    # addx1708
    @with_context (Emax=6144, Emin=-6143, precision=34, rounding=RoundNearestTiesAway) @test dec"1e2" - dec"1e4" == dec"-9.9e+3"
    # addx6001
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1" + dec"1" == dec"2"
    # addx6002
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"2" + dec"3" == dec"5"
    # addx6003
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"5.75" + dec"3.3" == dec"9.05"
    # addx6004
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"5" + dec"-3" == dec"2"
    # addx6005
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-5" + dec"-3" == dec"-8"
    # addx6006
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-7" + dec"2.5" == dec"-4.5"
    # addx6007
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0.7" + dec"0.3" == dec"1.0"
    # addx6008
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1.25" + dec"1.25" == dec"2.50"
    # addx6009
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1.23456789" + dec"1.00000000" == dec"2.23456789"
    # addx6010
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1.23456789" + dec"1.00000011" == dec"2.23456800"
    # addx6011
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0.44444444444444444" + dec"0.55555555555555555" == dec"1.000000000000000"
    # addx6012
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0.44444444444444440" + dec"0.55555555555555555" == dec"1.000000000000000"
    # addx6013
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0.44444444444444444" + dec"0.55555555555555550" == dec"0.9999999999999999"
    # addx6014
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0.444444444444444449" + dec"0" == dec"0.4444444444444444"
    # addx6015
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0.4444444444444444499" + dec"0" == dec"0.4444444444444444"
    # addx6016
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0.44444444444444444999" + dec"0" == dec"0.4444444444444444"
    # addx6017
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0.44444444444444445000" + dec"0" == dec"0.4444444444444444"
    # addx6018
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0.44444444444444445001" + dec"0" == dec"0.4444444444444445"
    # addx6019
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0.4444444444444444501" + dec"0" == dec"0.4444444444444445"
    # addx6020
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0.444444444444444451" + dec"0" == dec"0.4444444444444445"
    # addx6021
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0" + dec"1" == dec"1"
    # addx6022
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1" + dec"1" == dec"2"
    # addx6023
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"2" + dec"1" == dec"3"
    # addx6024
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"3" + dec"1" == dec"4"
    # addx6025
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"4" + dec"1" == dec"5"
    # addx6026
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"5" + dec"1" == dec"6"
    # addx6027
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"6" + dec"1" == dec"7"
    # addx6028
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"7" + dec"1" == dec"8"
    # addx6029
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"8" + dec"1" == dec"9"
    # addx6030
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"9" + dec"1" == dec"10"
    # addx6031
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0.9998" + dec"0.0000" == dec"0.9998"
    # addx6032
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0.9998" + dec"0.0001" == dec"0.9999"
    # addx6033
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0.9998" + dec"0.0002" == dec"1.0000"
    # addx6034
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0.9998" + dec"0.0003" == dec"1.0001"
    # addx6035
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"70" + dec"10000e+16" == dec"1.000000000000000e+20"
    # addx6036
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"700" + dec"10000e+16" == dec"1.000000000000000e+20"
    # addx6037
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"7000" + dec"10000e+16" == dec"1.000000000000000e+20"
    # addx6038
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"70000" + dec"10000e+16" == dec"1.000000000000001e+20"
    # addx6039
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"700000" + dec"10000e+16" == dec"1.000000000000007e+20"
    # addx6040
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"10000e+16" + dec"70" == dec"1.000000000000000e+20"
    # addx6041
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"10000e+16" + dec"700" == dec"1.000000000000000e+20"
    # addx6042
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"10000e+16" + dec"7000" == dec"1.000000000000000e+20"
    # addx6044
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"10000e+16" + dec"70000" == dec"1.000000000000001e+20"
    # addx6045
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"10000e+16" + dec"700000" == dec"1.000000000000007e+20"
    # addx6046
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"10000e+9" + dec"7" == dec"10000000000007"
    # addx6047
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"10000e+9" + dec"70" == dec"10000000000070"
    # addx6048
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"10000e+9" + dec"700" == dec"10000000000700"
    # addx6049
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"10000e+9" + dec"7000" == dec"10000000007000"
    # addx6050
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"10000e+9" + dec"70000" == dec"10000000070000"
    # addx6051
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"10000e+9" + dec"700000" == dec"10000000700000"
    # addx6053
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"12" + dec"7.00" == dec"19.00"
    # addx6054
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1.3" + dec"-1.07" == dec"0.23"
    # addx6055
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1.3" + dec"-1.30" == dec"0.00"
    # addx6056
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1.3" + dec"-2.07" == dec"-0.77"
    # addx6057
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1e+2" + dec"1e+4" == dec"1.01e+4"
    # addx6060
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1" + dec"0.1" == dec"1.1"
    # addx6061
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1" + dec"0.01" == dec"1.01"
    # addx6062
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1" + dec"0.001" == dec"1.001"
    # addx6063
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1" + dec"0.0001" == dec"1.0001"
    # addx6064
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1" + dec"0.00001" == dec"1.00001"
    # addx6065
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1" + dec"0.000001" == dec"1.000001"
    # addx6066
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1" + dec"0.0000001" == dec"1.0000001"
    # addx6067
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1" + dec"0.00000001" == dec"1.00000001"
    # addx6068
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"99999999999999123456789" + dec"-99999999999999e+9" == dec"123456789"
    # addx6069
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-1234567890123455.234567890123454" + dec"1234567890123456" == dec"0.765432109876546"
    # addx6070
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1" + dec"0" == dec"1"
    # addx6071
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1" + dec"0." == dec"1"
    # addx6072
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1" + dec".0" == dec"1.0"
    # addx6073
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1" + dec"0.0" == dec"1.0"
    # addx6074
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1" + dec"0.00" == dec"1.00"
    # addx6075
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0" + dec"1" == dec"1"
    # addx6076
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0." + dec"1" == dec"1"
    # addx6077
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec".0" + dec"1" == dec"1.0"
    # addx6078
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0.0" + dec"1" == dec"1.0"
    # addx6079
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0.00" + dec"1" == dec"1.00"
    # addx6080
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"9999999999999998" + dec"1" == dec"9999999999999999"
    # addx6081
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"9999999999999999" + dec"1" == dec"1.000000000000000e+16"
    # addx6082
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"999999999999999" + dec"1" == dec"1000000000000000"
    # addx6083
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"9999999999999" + dec"1" == dec"10000000000000"
    # addx6084
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"99999999999" + dec"1" == dec"100000000000"
    # addx6085
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"999999999" + dec"1" == dec"1000000000"
    # addx6086
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"9999999" + dec"1" == dec"10000000"
    # addx6087
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"99999" + dec"1" == dec"100000"
    # addx6088
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"999" + dec"1" == dec"1000"
    # addx6089
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"9" + dec"1" == dec"10"
    # addx6090
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-56267e-10" + dec"0" == dec"-0.0000056267"
    # addx6091
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-56267e-6" + dec"0" == dec"-0.056267"
    # addx6092
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-56267e-5" + dec"0" == dec"-0.56267"
    # addx6093
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-56267e-4" + dec"0" == dec"-5.6267"
    # addx6094
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-56267e-3" + dec"0" == dec"-56.267"
    # addx6095
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-56267e-2" + dec"0" == dec"-562.67"
    # addx6096
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-56267e-1" + dec"0" == dec"-5626.7"
    # addx6097
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-56267e-0" + dec"0" == dec"-56267"
    # addx6098
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-5e-10" + dec"0" == dec"-5e-10"
    # addx6099
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-5e-7" + dec"0" == dec"-5e-7"
    # addx6100
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-5e-6" + dec"0" == dec"-0.000005"
    # addx6101
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-5e-5" + dec"0" == dec"-0.00005"
    # addx6102
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-5e-4" + dec"0" == dec"-0.0005"
    # addx6103
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-5e-1" + dec"0" == dec"-0.5"
    # addx6104
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-5e0" + dec"0" == dec"-5"
    # addx6105
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-5e1" + dec"0" == dec"-50"
    # addx6106
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-5e5" + dec"0" == dec"-500000"
    # addx6107
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-5e15" + dec"0" == dec"-5000000000000000"
    # addx6108
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-5e16" + dec"0" == dec"-5.000000000000000e+16"
    # addx6109
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-5e17" + dec"0" == dec"-5.000000000000000e+17"
    # addx6110
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-5e18" + dec"0" == dec"-5.000000000000000e+18"
    # addx6111
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-5e100" + dec"0" == dec"-5.000000000000000e+100"
    # addx6113
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0" + dec"-56267e-10" == dec"-0.0000056267"
    # addx6114
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0" + dec"-56267e-6" == dec"-0.056267"
    # addx6116
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0" + dec"-56267e-5" == dec"-0.56267"
    # addx6117
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0" + dec"-56267e-4" == dec"-5.6267"
    # addx6119
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0" + dec"-56267e-3" == dec"-56.267"
    # addx6120
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0" + dec"-56267e-2" == dec"-562.67"
    # addx6121
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0" + dec"-56267e-1" == dec"-5626.7"
    # addx6122
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0" + dec"-56267e-0" == dec"-56267"
    # addx6123
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0" + dec"-5e-10" == dec"-5e-10"
    # addx6124
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0" + dec"-5e-7" == dec"-5e-7"
    # addx6125
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0" + dec"-5e-6" == dec"-0.000005"
    # addx6126
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0" + dec"-5e-5" == dec"-0.00005"
    # addx6127
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0" + dec"-5e-4" == dec"-0.0005"
    # addx6128
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0" + dec"-5e-1" == dec"-0.5"
    # addx6129
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0" + dec"-5e0" == dec"-5"
    # addx6130
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0" + dec"-5e1" == dec"-50"
    # addx6131
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0" + dec"-5e5" == dec"-500000"
    # addx6132
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0" + dec"-5e15" == dec"-5000000000000000"
    # addx6133
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0" + dec"-5e16" == dec"-5.000000000000000e+16"
    # addx6134
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0" + dec"-5e17" == dec"-5.000000000000000e+17"
    # addx6135
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0" + dec"-5e18" == dec"-5.000000000000000e+18"
    # addx6136
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0" + dec"-5e100" == dec"-5.000000000000000e+100"
    # addx6137
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1" + dec"0e-19" == dec"1.000000000000000"
    # addx6138
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-1" + dec"0e-19" == dec"-1.000000000000000"
    # addx6139
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0e-19" + dec"1" == dec"1.000000000000000"
    # addx6140
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0e-19" + dec"-1" == dec"-1.000000000000000"
    # addx6141
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1e+11" + dec"0.0000" == dec"100000000000.0000"
    # addx6142
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1e+11" + dec"0.00000" == dec"100000000000.0000"
    # addx6143
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0.000" + dec"1e+12" == dec"1000000000000.000"
    # addx6144
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0.0000" + dec"1e+12" == dec"1000000000000.000"
    # addx6146
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"00.0" + dec"0" == dec"0.0"
    # addx6147
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0.00" + dec"0" == dec"0.00"
    # addx6148
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0" + dec"0.00" == dec"0.00"
    # addx6149
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0" + dec"00.0" == dec"0.0"
    # addx6150
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"00.0" + dec"0.00" == dec"0.00"
    # addx6151
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0.00" + dec"00.0" == dec"0.00"
    # addx6152
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"3" + dec".3" == dec"3.3"
    # addx6153
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"3." + dec".3" == dec"3.3"
    # addx6154
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"3.0" + dec".3" == dec"3.3"
    # addx6155
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"3.00" + dec".3" == dec"3.30"
    # addx6156
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"3" + dec"3" == dec"6"
    # addx6157
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"3" + dec"+3" == dec"6"
    # addx6158
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"3" + dec"-3" == dec"0"
    # addx6159
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0.3" + dec"-0.3" == dec"0.0"
    # addx6160
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0.03" + dec"-0.03" == dec"0.00"
    # addx6161
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1e+13" + dec"-1" == dec"9999999999999"
    # addx6162
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1e+13" + dec"1.11" == dec"10000000000001.11"
    # addx6163
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1.11" + dec"1e+13" == dec"10000000000001.11"
    # addx6164
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-1" + dec"1e+13" == dec"9999999999999"
    # addx6165
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"7e+13" + dec"-1" == dec"69999999999999"
    # addx6166
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"7e+13" + dec"1.11" == dec"70000000000001.11"
    # addx6167
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1.11" + dec"7e+13" == dec"70000000000001.11"
    # addx6168
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-1" + dec"7e+13" == dec"69999999999999"
    # addx6170
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0.4444444444444444" + dec"0.5555555555555563" == dec"1.000000000000001"
    # addx6171
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0.4444444444444444" + dec"0.5555555555555562" == dec"1.000000000000001"
    # addx6172
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0.4444444444444444" + dec"0.5555555555555561" == dec"1.000000000000000"
    # addx6173
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0.4444444444444444" + dec"0.5555555555555560" == dec"1.000000000000000"
    # addx6174
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0.4444444444444444" + dec"0.5555555555555559" == dec"1.000000000000000"
    # addx6175
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0.4444444444444444" + dec"0.5555555555555558" == dec"1.000000000000000"
    # addx6176
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0.4444444444444444" + dec"0.5555555555555557" == dec"1.000000000000000"
    # addx6177
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0.4444444444444444" + dec"0.5555555555555556" == dec"1.000000000000000"
    # addx6178
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0.4444444444444444" + dec"0.5555555555555555" == dec"0.9999999999999999"
    # addx6179
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0.4444444444444444" + dec"0.5555555555555554" == dec"0.9999999999999998"
    # addx6180
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0.4444444444444444" + dec"0.5555555555555553" == dec"0.9999999999999997"
    # addx6181
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0.4444444444444444" + dec"0.5555555555555552" == dec"0.9999999999999996"
    # addx6182
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0.4444444444444444" + dec"0.5555555555555551" == dec"0.9999999999999995"
    # addx6183
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0.4444444444444444" + dec"0.5555555555555550" == dec"0.9999999999999994"
    # addx6200
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"6543210123456789" + dec"0" == dec"6543210123456789"
    # addx6201
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"6543210123456789" + dec"0.000000001" == dec"6543210123456789"
    # addx6202
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"6543210123456789" + dec"0.000001" == dec"6543210123456789"
    # addx6203
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"6543210123456789" + dec"0.1" == dec"6543210123456789"
    # addx6204
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"6543210123456789" + dec"0.4" == dec"6543210123456789"
    # addx6205
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"6543210123456789" + dec"0.49" == dec"6543210123456789"
    # addx6206
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"6543210123456789" + dec"0.499999" == dec"6543210123456789"
    # addx6207
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"6543210123456789" + dec"0.499999999" == dec"6543210123456789"
    # addx6208
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"6543210123456789" + dec"0.5" == dec"6543210123456790"
    # addx6209
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"6543210123456789" + dec"0.500000001" == dec"6543210123456790"
    # addx6210
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"6543210123456789" + dec"0.500001" == dec"6543210123456790"
    # addx6211
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"6543210123456789" + dec"0.51" == dec"6543210123456790"
    # addx6212
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"6543210123456789" + dec"0.6" == dec"6543210123456790"
    # addx6213
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"6543210123456789" + dec"0.9" == dec"6543210123456790"
    # addx6214
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"6543210123456789" + dec"0.99999" == dec"6543210123456790"
    # addx6215
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"6543210123456789" + dec"0.999999999" == dec"6543210123456790"
    # addx6216
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"6543210123456789" + dec"1" == dec"6543210123456790"
    # addx6217
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"6543210123456789" + dec"1.000000001" == dec"6543210123456790"
    # addx6218
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"6543210123456789" + dec"1.00001" == dec"6543210123456790"
    # addx6219
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"6543210123456789" + dec"1.1" == dec"6543210123456790"
    # addx6220
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"6543210123456789" + dec"0" == dec"6543210123456789"
    # addx6221
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"6543210123456789" + dec"0.000000001" == dec"6543210123456789"
    # addx6222
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"6543210123456789" + dec"0.000001" == dec"6543210123456789"
    # addx6223
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"6543210123456789" + dec"0.1" == dec"6543210123456789"
    # addx6224
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"6543210123456789" + dec"0.4" == dec"6543210123456789"
    # addx6225
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"6543210123456789" + dec"0.49" == dec"6543210123456789"
    # addx6226
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"6543210123456789" + dec"0.499999" == dec"6543210123456789"
    # addx6227
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"6543210123456789" + dec"0.499999999" == dec"6543210123456789"
    # addx6228
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"6543210123456789" + dec"0.5" == dec"6543210123456790"
    # addx6229
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"6543210123456789" + dec"0.500000001" == dec"6543210123456790"
    # addx6230
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"6543210123456789" + dec"0.500001" == dec"6543210123456790"
    # addx6231
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"6543210123456789" + dec"0.51" == dec"6543210123456790"
    # addx6232
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"6543210123456789" + dec"0.6" == dec"6543210123456790"
    # addx6233
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"6543210123456789" + dec"0.9" == dec"6543210123456790"
    # addx6234
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"6543210123456789" + dec"0.99999" == dec"6543210123456790"
    # addx6235
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"6543210123456789" + dec"0.999999999" == dec"6543210123456790"
    # addx6236
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"6543210123456789" + dec"1" == dec"6543210123456790"
    # addx6237
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"6543210123456789" + dec"1.00000001" == dec"6543210123456790"
    # addx6238
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"6543210123456789" + dec"1.00001" == dec"6543210123456790"
    # addx6239
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"6543210123456789" + dec"1.1" == dec"6543210123456790"
    # addx6240
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"6543210123456788" + dec"0.499999999" == dec"6543210123456788"
    # addx6241
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"6543210123456788" + dec"0.5" == dec"6543210123456788"
    # addx6242
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"6543210123456788" + dec"0.500000001" == dec"6543210123456789"
    # addx6250
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundToZero) @test dec"6543210123456789" + dec"0" == dec"6543210123456789"
    # addx6251
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundToZero) @test dec"6543210123456789" + dec"0.000000001" == dec"6543210123456789"
    # addx6252
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundToZero) @test dec"6543210123456789" + dec"0.000001" == dec"6543210123456789"
    # addx6253
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundToZero) @test dec"6543210123456789" + dec"0.1" == dec"6543210123456789"
    # addx6254
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundToZero) @test dec"6543210123456789" + dec"0.4" == dec"6543210123456789"
    # addx6255
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundToZero) @test dec"6543210123456789" + dec"0.49" == dec"6543210123456789"
    # addx6256
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundToZero) @test dec"6543210123456789" + dec"0.499999" == dec"6543210123456789"
    # addx6257
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundToZero) @test dec"6543210123456789" + dec"0.499999999" == dec"6543210123456789"
    # addx6258
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundToZero) @test dec"6543210123456789" + dec"0.5" == dec"6543210123456789"
    # addx6259
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundToZero) @test dec"6543210123456789" + dec"0.500000001" == dec"6543210123456789"
    # addx6260
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundToZero) @test dec"6543210123456789" + dec"0.500001" == dec"6543210123456789"
    # addx6261
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundToZero) @test dec"6543210123456789" + dec"0.51" == dec"6543210123456789"
    # addx6262
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundToZero) @test dec"6543210123456789" + dec"0.6" == dec"6543210123456789"
    # addx6263
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundToZero) @test dec"6543210123456789" + dec"0.9" == dec"6543210123456789"
    # addx6264
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundToZero) @test dec"6543210123456789" + dec"0.99999" == dec"6543210123456789"
    # addx6265
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundToZero) @test dec"6543210123456789" + dec"0.999999999" == dec"6543210123456789"
    # addx6266
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundToZero) @test dec"6543210123456789" + dec"1" == dec"6543210123456790"
    # addx6267
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundToZero) @test dec"6543210123456789" + dec"1.00000001" == dec"6543210123456790"
    # addx6268
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundToZero) @test dec"6543210123456789" + dec"1.00001" == dec"6543210123456790"
    # addx6269
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundToZero) @test dec"6543210123456789" + dec"1.1" == dec"6543210123456790"
    # addx6301
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-1" + dec"1" == dec"0"
    # addx6302
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0" + dec"1" == dec"1"
    # addx6303
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1" + dec"1" == dec"2"
    # addx6304
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"12" + dec"1" == dec"13"
    # addx6305
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"98" + dec"1" == dec"99"
    # addx6306
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"99" + dec"1" == dec"100"
    # addx6307
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"100" + dec"1" == dec"101"
    # addx6308
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"101" + dec"1" == dec"102"
    # addx6309
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-1" + dec"-1" == dec"-2"
    # addx6310
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0" + dec"-1" == dec"-1"
    # addx6311
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1" + dec"-1" == dec"0"
    # addx6312
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"12" + dec"-1" == dec"11"
    # addx6313
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"98" + dec"-1" == dec"97"
    # addx6314
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"99" + dec"-1" == dec"98"
    # addx6315
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"100" + dec"-1" == dec"99"
    # addx6316
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"101" + dec"-1" == dec"100"
    # addx6321
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-0.01" + dec"0.01" == dec"0.00"
    # addx6322
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0.00" + dec"0.01" == dec"0.01"
    # addx6323
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0.01" + dec"0.01" == dec"0.02"
    # addx6324
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0.12" + dec"0.01" == dec"0.13"
    # addx6325
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0.98" + dec"0.01" == dec"0.99"
    # addx6326
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0.99" + dec"0.01" == dec"1.00"
    # addx6327
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1.00" + dec"0.01" == dec"1.01"
    # addx6328
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1.01" + dec"0.01" == dec"1.02"
    # addx6329
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-0.01" + dec"-0.01" == dec"-0.02"
    # addx6330
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0.00" + dec"-0.01" == dec"-0.01"
    # addx6331
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0.01" + dec"-0.01" == dec"0.00"
    # addx6332
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0.12" + dec"-0.01" == dec"0.11"
    # addx6333
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0.98" + dec"-0.01" == dec"0.97"
    # addx6334
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0.99" + dec"-0.01" == dec"0.98"
    # addx6335
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1.00" + dec"-0.01" == dec"0.99"
    # addx6336
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1.01" + dec"-0.01" == dec"1.00"
    # addx6340
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1e+3" + dec"0" == dec"1000"
    # addx6341
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1e+15" + dec"0" == dec"1000000000000000"
    # addx6342
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1e+16" + dec"0" == dec"1.000000000000000e+16"
    # addx6343
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1e+17" + dec"0" == dec"1.000000000000000e+17"
    # addx6344
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1e+3" + dec"1" == dec"1001"
    # addx6345
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1e+15" + dec"1" == dec"1000000000000001"
    # addx6346
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1e+16" + dec"1" == dec"1.000000000000000e+16"
    # addx6347
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1e+17" + dec"1" == dec"1.000000000000000e+17"
    # addx6348
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1e+3" + dec"7" == dec"1007"
    # addx6349
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1e+15" + dec"7" == dec"1000000000000007"
    # addx6350
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1e+16" + dec"7" == dec"1.000000000000001e+16"
    # addx6351
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1e+17" + dec"7" == dec"1.000000000000000e+17"
    # addx6361
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0e+50" + dec"10000e+1" == dec"1.0000e+5"
    # addx6362
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"10000e+1" + dec"0e-50" == dec"100000.0000000000"
    # addx6363
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"10000e+1" + dec"10000e-50" == dec"100000.0000000000"
    # addx6364
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"12.34" + dec"0e-398" == dec"12.34000000000000"
    # addx6400
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1" + dec"77e-14" == dec"1.00000000000077"
    # addx6401
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1" + dec"77e-15" == dec"1.000000000000077"
    # addx6402
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1" + dec"77e-16" == dec"1.000000000000008"
    # addx6403
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1" + dec"77e-17" == dec"1.000000000000001"
    # addx6404
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1" + dec"77e-18" == dec"1.000000000000000"
    # addx6405
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1" + dec"77e-19" == dec"1.000000000000000"
    # addx6406
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1" + dec"77e-99" == dec"1.000000000000000"
    # addx6410
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"10" + dec"77e-14" == dec"10.00000000000077"
    # addx6411
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"10" + dec"77e-15" == dec"10.00000000000008"
    # addx6412
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"10" + dec"77e-16" == dec"10.00000000000001"
    # addx6413
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"10" + dec"77e-17" == dec"10.00000000000000"
    # addx6414
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"10" + dec"77e-18" == dec"10.00000000000000"
    # addx6415
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"10" + dec"77e-19" == dec"10.00000000000000"
    # addx6416
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"10" + dec"77e-99" == dec"10.00000000000000"
    # addx6420
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"77e-14" + dec"1" == dec"1.00000000000077"
    # addx6421
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"77e-15" + dec"1" == dec"1.000000000000077"
    # addx6422
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"77e-16" + dec"1" == dec"1.000000000000008"
    # addx6423
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"77e-17" + dec"1" == dec"1.000000000000001"
    # addx6424
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"77e-18" + dec"1" == dec"1.000000000000000"
    # addx6425
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"77e-19" + dec"1" == dec"1.000000000000000"
    # addx6426
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"77e-99" + dec"1" == dec"1.000000000000000"
    # addx6430
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"77e-14" + dec"10" == dec"10.00000000000077"
    # addx6431
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"77e-15" + dec"10" == dec"10.00000000000008"
    # addx6432
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"77e-16" + dec"10" == dec"10.00000000000001"
    # addx6433
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"77e-17" + dec"10" == dec"10.00000000000000"
    # addx6434
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"77e-18" + dec"10" == dec"10.00000000000000"
    # addx6435
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"77e-19" + dec"10" == dec"10.00000000000000"
    # addx6436
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"77e-99" + dec"10" == dec"10.00000000000000"
    # addx6440
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1" + dec"-77e-14" == dec"0.99999999999923"
    # addx6441
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1" + dec"-77e-15" == dec"0.999999999999923"
    # addx6442
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1" + dec"-77e-16" == dec"0.9999999999999923"
    # addx6443
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1" + dec"-77e-17" == dec"0.9999999999999992"
    # addx6444
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1" + dec"-77e-18" == dec"0.9999999999999999"
    # addx6445
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1" + dec"-77e-19" == dec"1.000000000000000"
    # addx6446
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1" + dec"-77e-99" == dec"1.000000000000000"
    # addx6450
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"10" + dec"-77e-14" == dec"9.99999999999923"
    # addx6451
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"10" + dec"-77e-15" == dec"9.999999999999923"
    # addx6452
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"10" + dec"-77e-16" == dec"9.999999999999992"
    # addx6453
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"10" + dec"-77e-17" == dec"9.999999999999999"
    # addx6454
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"10" + dec"-77e-18" == dec"10.00000000000000"
    # addx6455
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"10" + dec"-77e-19" == dec"10.00000000000000"
    # addx6456
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"10" + dec"-77e-99" == dec"10.00000000000000"
    # addx6460
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-77e-14" + dec"1" == dec"0.99999999999923"
    # addx6461
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-77e-15" + dec"1" == dec"0.999999999999923"
    # addx6462
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-77e-16" + dec"1" == dec"0.9999999999999923"
    # addx6463
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-77e-17" + dec"1" == dec"0.9999999999999992"
    # addx6464
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-77e-18" + dec"1" == dec"0.9999999999999999"
    # addx6465
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-77e-19" + dec"1" == dec"1.000000000000000"
    # addx6466
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-77e-99" + dec"1" == dec"1.000000000000000"
    # addx6470
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-77e-14" + dec"10" == dec"9.99999999999923"
    # addx6471
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-77e-15" + dec"10" == dec"9.999999999999923"
    # addx6472
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-77e-16" + dec"10" == dec"9.999999999999992"
    # addx6473
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-77e-17" + dec"10" == dec"9.999999999999999"
    # addx6474
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-77e-18" + dec"10" == dec"10.00000000000000"
    # addx6475
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-77e-19" + dec"10" == dec"10.00000000000000"
    # addx6476
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-77e-99" + dec"10" == dec"10.00000000000000"
    # addx6480
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-1" + dec"77e-14" == dec"-0.99999999999923"
    # addx6481
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-1" + dec"77e-15" == dec"-0.999999999999923"
    # addx6482
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-1" + dec"77e-16" == dec"-0.9999999999999923"
    # addx6483
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-1" + dec"77e-17" == dec"-0.9999999999999992"
    # addx6484
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-1" + dec"77e-18" == dec"-0.9999999999999999"
    # addx6485
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-1" + dec"77e-19" == dec"-1.000000000000000"
    # addx6486
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-1" + dec"77e-99" == dec"-1.000000000000000"
    # addx6490
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-10" + dec"77e-14" == dec"-9.99999999999923"
    # addx6491
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-10" + dec"77e-15" == dec"-9.999999999999923"
    # addx6492
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-10" + dec"77e-16" == dec"-9.999999999999992"
    # addx6493
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-10" + dec"77e-17" == dec"-9.999999999999999"
    # addx6494
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-10" + dec"77e-18" == dec"-10.00000000000000"
    # addx6495
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-10" + dec"77e-19" == dec"-10.00000000000000"
    # addx6496
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-10" + dec"77e-99" == dec"-10.00000000000000"
    # addx6500
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"77e-14" + dec"-1" == dec"-0.99999999999923"
    # addx6501
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"77e-15" + dec"-1" == dec"-0.999999999999923"
    # addx6502
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"77e-16" + dec"-1" == dec"-0.9999999999999923"
    # addx6503
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"77e-17" + dec"-1" == dec"-0.9999999999999992"
    # addx6504
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"77e-18" + dec"-1" == dec"-0.9999999999999999"
    # addx6505
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"77e-19" + dec"-1" == dec"-1.000000000000000"
    # addx6506
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"77e-99" + dec"-1" == dec"-1.000000000000000"
    # addx6510
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"77e-14" + dec"-10" == dec"-9.99999999999923"
    # addx6511
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"77e-15" + dec"-10" == dec"-9.999999999999923"
    # addx6512
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"77e-16" + dec"-10" == dec"-9.999999999999992"
    # addx6513
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"77e-17" + dec"-10" == dec"-9.999999999999999"
    # addx6514
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"77e-18" + dec"-10" == dec"-10.00000000000000"
    # addx6515
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"77e-19" + dec"-10" == dec"-10.00000000000000"
    # addx6516
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"77e-99" + dec"-10" == dec"-10.00000000000000"
    # addx6521
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"101234562345678000" + dec"0" == dec"1.012345623456780e+17"
    # addx6522
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0" + dec"101234562345678000" == dec"1.012345623456780e+17"
    # addx6523
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"10123456234567800" + dec"0" == dec"1.012345623456780e+16"
    # addx6524
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0" + dec"10123456234567800" == dec"1.012345623456780e+16"
    # addx6525
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"10123456234567890" + dec"0" == dec"1.012345623456789e+16"
    # addx6526
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0" + dec"10123456234567890" == dec"1.012345623456789e+16"
    # addx6527
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"10123456234567891" + dec"0" == dec"1.012345623456789e+16"
    # addx6528
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0" + dec"10123456234567891" == dec"1.012345623456789e+16"
    # addx6529
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"101234562345678901" + dec"0" == dec"1.012345623456789e+17"
    # addx6530
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0" + dec"101234562345678901" == dec"1.012345623456789e+17"
    # addx6531
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"10123456234567896" + dec"0" == dec"1.012345623456790e+16"
    # addx6532
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0" + dec"10123456234567896" == dec"1.012345623456790e+16"
    # addx6561
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundToZero) @test dec"1e-398" + dec"9.000000000000000e+384" == dec"9.000000000000000e+384"
    # addx6562
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundToZero) @test dec"0" + dec"9.000000000000000e+384" == dec"9.000000000000000e+384"
    # addx6563
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundToZero) @test dec"1e-388" + dec"9.000000000000000e+374" == dec"9.000000000000000e+374"
    # addx6564
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundToZero) @test dec"0" + dec"9.000000000000000e+374" == dec"9.000000000000000e+374"
    # addx6701
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"5.00" + dec"1.00e-3" == dec"5.00100"
    # addx6702
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"00.00" + dec"0.000" == dec"0.000"
    # addx6703
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"00.00" + dec"0e-3" == dec"0.000"
    # addx6704
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0e-3" + dec"00.00" == dec"0.000"
    # addx6710
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0e+3" + dec"00.00" == dec"0.00"
    # addx6711
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0e+3" + dec"00.0" == dec"0.0"
    # addx6712
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0e+3" + dec"00." == dec"0"
    # addx6713
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0e+3" + dec"00.e+1" == dec"0e+1"
    # addx6714
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0e+3" + dec"00.e+2" == dec"0e+2"
    # addx6715
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0e+3" + dec"00.e+3" == dec"0e+3"
    # addx6716
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0e+3" + dec"00.e+4" == dec"0e+3"
    # addx6717
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0e+3" + dec"00.e+5" == dec"0e+3"
    # addx6718
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0e+3" + dec"-00.0" == dec"0.0"
    # addx6719
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0e+3" + dec"-00." == dec"0"
    # addx6731
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0e+3" + dec"-00.e+1" == dec"0e+1"
    # addx6720
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"00.00" + dec"0e+3" == dec"0.00"
    # addx6721
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"00.0" + dec"0e+3" == dec"0.0"
    # addx6722
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"00." + dec"0e+3" == dec"0"
    # addx6723
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"00.e+1" + dec"0e+3" == dec"0e+1"
    # addx6724
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"00.e+2" + dec"0e+3" == dec"0e+2"
    # addx6725
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"00.e+3" + dec"0e+3" == dec"0e+3"
    # addx6726
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"00.e+4" + dec"0e+3" == dec"0e+3"
    # addx6727
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"00.e+5" + dec"0e+3" == dec"0e+3"
    # addx6728
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-00.00" + dec"0e+3" == dec"0.00"
    # addx6729
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-00.0" + dec"0e+3" == dec"0.0"
    # addx6730
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-00." + dec"0e+3" == dec"0"
    # addx6732
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0" + dec"0" == dec"0"
    # addx6733
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0" + dec"-0" == dec"0"
    # addx6734
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-0" + dec"0" == dec"0"
    # addx6735
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-0" + dec"-0" == dec"-0"
    # addx6736
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1" + dec"-1" == dec"0"
    # addx6737
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-1" + dec"-1" == dec"-2"
    # addx6738
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1" + dec"1" == dec"2"
    # addx6739
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-1" + dec"1" == dec"0"
    # addx6741
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0" + dec"-1" == dec"-1"
    # addx6742
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-0" + dec"-1" == dec"-1"
    # addx6743
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0" + dec"1" == dec"1"
    # addx6744
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-0" + dec"1" == dec"1"
    # addx6745
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-1" + dec"0" == dec"-1"
    # addx6746
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-1" + dec"-0" == dec"-1"
    # addx6747
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1" + dec"0" == dec"1"
    # addx6748
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1" + dec"-0" == dec"1"
    # addx6751
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0.0" + dec"-1" == dec"-1.0"
    # addx6752
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-0.0" + dec"-1" == dec"-1.0"
    # addx6753
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0.0" + dec"1" == dec"1.0"
    # addx6754
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-0.0" + dec"1" == dec"1.0"
    # addx6755
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-1.0" + dec"0" == dec"-1.0"
    # addx6756
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-1.0" + dec"-0" == dec"-1.0"
    # addx6757
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1.0" + dec"0" == dec"1.0"
    # addx6758
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1.0" + dec"-0" == dec"1.0"
    # addx6761
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0" + dec"-1.0" == dec"-1.0"
    # addx6762
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-0" + dec"-1.0" == dec"-1.0"
    # addx6763
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0" + dec"1.0" == dec"1.0"
    # addx6764
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-0" + dec"1.0" == dec"1.0"
    # addx6765
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-1" + dec"0.0" == dec"-1.0"
    # addx6766
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-1" + dec"-0.0" == dec"-1.0"
    # addx6767
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1" + dec"0.0" == dec"1.0"
    # addx6768
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1" + dec"-0.0" == dec"1.0"
    # addx6771
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0.0" + dec"-1.0" == dec"-1.0"
    # addx6772
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-0.0" + dec"-1.0" == dec"-1.0"
    # addx6773
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0.0" + dec"1.0" == dec"1.0"
    # addx6774
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-0.0" + dec"1.0" == dec"1.0"
    # addx6775
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-1.0" + dec"0.0" == dec"-1.0"
    # addx6776
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-1.0" + dec"-0.0" == dec"-1.0"
    # addx6777
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1.0" + dec"0.0" == dec"1.0"
    # addx6778
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1.0" + dec"-0.0" == dec"1.0"
    # addx6571
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1e-383" + dec"0" == dec"1e-383"
    # addx6572
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1e-384" + dec"0" == dec"1e-384"
    # addx6573
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1e-383" + dec"1e-384" == dec"1.1e-383"
    # addx6574
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1e-383" - dec"1e-384" == dec"9e-384"
    # addx6575
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1e-383" - dec"1e-398" == dec"9.99999999999999e-384"
    # addx6576
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1e-383" - dec"1e-398" == dec"9.99999999999999e-384"
    # addx6577
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1e-383" - dec"1e-399" == dec"1.000000000000000e-383"
    # addx6578
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1e-383" - dec"1e-400" == dec"1.000000000000000e-383"
    # addx6579
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1e-383" - dec"1e-401" == dec"1.000000000000000e-383"
    # addx6580
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1e-383" - dec"1e-402" == dec"1.000000000000000e-383"
    # addx6972
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"9.999999999999999e+384" == dec"9.999999999999999e+384"
    # addx6973
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"9.999999999999999e+384" + dec"1" == dec"9.999999999999999e+384"
    # addx6974
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"9999999999999999e+369" + dec"1" == dec"9.999999999999999e+384"
    # addx6975
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test_throws OverflowError dec"9999999999999999e+369" + dec"1e+369"
    # addx6976
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test_throws OverflowError dec"9999999999999999e+369" + dec"9e+368"
    # addx6977
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test_throws OverflowError dec"9999999999999999e+369" + dec"8e+368"
    # addx6978
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test_throws OverflowError dec"9999999999999999e+369" + dec"7e+368"
    # addx6979
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test_throws OverflowError dec"9999999999999999e+369" + dec"6e+368"
    # addx6980
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test_throws OverflowError dec"9999999999999999e+369" + dec"5e+368"
    # addx6981
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"9999999999999999e+369" + dec"4e+368" == dec"9.999999999999999e+384"
    # addx6982
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"9999999999999999e+369" + dec"3e+368" == dec"9.999999999999999e+384"
    # addx6983
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"9999999999999999e+369" + dec"2e+368" == dec"9.999999999999999e+384"
    # addx6984
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"9999999999999999e+369" + dec"1e+368" == dec"9.999999999999999e+384"
    # addx6985
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-9.999999999999999e+384" == dec"-9.999999999999999e+384"
    # addx6986
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-9.999999999999999e+384" + dec"-1" == dec"-9.999999999999999e+384"
    # addx6987
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-9999999999999999e+369" + dec"-1" == dec"-9.999999999999999e+384"
    # addx6988
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test_throws OverflowError dec"-9999999999999999e+369" + dec"-1e+369"
    # addx6989
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test_throws OverflowError dec"-9999999999999999e+369" + dec"-9e+368"
    # addx6990
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test_throws OverflowError dec"-9999999999999999e+369" + dec"-8e+368"
    # addx6991
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test_throws OverflowError dec"-9999999999999999e+369" + dec"-7e+368"
    # addx6992
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test_throws OverflowError dec"-9999999999999999e+369" + dec"-6e+368"
    # addx6993
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test_throws OverflowError dec"-9999999999999999e+369" + dec"-5e+368"
    # addx6994
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-9999999999999999e+369" + dec"-4e+368" == dec"-9.999999999999999e+384"
    # addx6995
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-9999999999999999e+369" + dec"-3e+368" == dec"-9.999999999999999e+384"
    # addx6996
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-9999999999999999e+369" + dec"-2e+368" == dec"-9.999999999999999e+384"
    # addx6997
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-9999999999999999e+369" + dec"-1e+368" == dec"-9.999999999999999e+384"
    # addx61100
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundToZero) @test dec"1e+2" + dec"-1e-383" == dec"99.99999999999999"
    # addx61101
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundToZero) @test dec"1e+1" + dec"-1e-383" == dec"9.999999999999999"
    # addx61103
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundToZero) @test dec"+1" + dec"-1e-383" == dec"0.9999999999999999"
    # addx61104
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundToZero) @test dec"1e-1" + dec"-1e-383" == dec"0.09999999999999999"
    # addx61105
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundToZero) @test dec"1e-2" + dec"-1e-383" == dec"0.009999999999999999"
    # addx61106
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundToZero) @test dec"1e-3" + dec"-1e-383" == dec"0.0009999999999999999"
    # addx61107
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundToZero) @test dec"1e-4" + dec"-1e-383" == dec"0.00009999999999999999"
    # addx61108
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundToZero) @test dec"1e-5" + dec"-1e-383" == dec"0.000009999999999999999"
    # addx61109
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundToZero) @test dec"1e-6" + dec"-1e-383" == dec"9.999999999999999e-7"
    # addx61110
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundUp) @test dec"-1e+2" + dec"+1e-383" == dec"-99.99999999999999"
    # addx61111
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundUp) @test dec"-1e+1" + dec"+1e-383" == dec"-9.999999999999999"
    # addx61113
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundUp) @test dec"-1" + dec"+1e-383" == dec"-0.9999999999999999"
    # addx61114
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundUp) @test dec"-1e-1" + dec"+1e-383" == dec"-0.09999999999999999"
    # addx61115
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundUp) @test dec"-1e-2" + dec"+1e-383" == dec"-0.009999999999999999"
    # addx61116
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundUp) @test dec"-1e-3" + dec"+1e-383" == dec"-0.0009999999999999999"
    # addx61117
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundUp) @test dec"-1e-4" + dec"+1e-383" == dec"-0.00009999999999999999"
    # addx61118
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundUp) @test dec"-1e-5" + dec"+1e-383" == dec"-0.000009999999999999999"
    # addx61119
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundUp) @test dec"-1e-6" + dec"+1e-383" == dec"-9.999999999999999e-7"
    # addx61300
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1e16" + dec"-0.5" == dec"1.000000000000000e+16"
    # addx61310
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1e16" + dec"-0.51" == dec"9999999999999999"
    # addx61311
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1e16" + dec"-0.501" == dec"9999999999999999"
    # addx61312
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1e16" + dec"-0.5001" == dec"9999999999999999"
    # addx61313
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1e16" + dec"-0.50001" == dec"9999999999999999"
    # addx61314
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1e16" + dec"-0.500001" == dec"9999999999999999"
    # addx61315
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1e16" + dec"-0.5000001" == dec"9999999999999999"
    # addx61316
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1e16" + dec"-0.50000001" == dec"9999999999999999"
    # addx61317
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1e16" + dec"-0.500000001" == dec"9999999999999999"
    # addx61318
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1e16" + dec"-0.5000000001" == dec"9999999999999999"
    # addx61319
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1e16" + dec"-0.50000000001" == dec"9999999999999999"
    # addx61320
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1e16" + dec"-0.500000000001" == dec"9999999999999999"
    # addx61321
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1e16" + dec"-0.5000000000001" == dec"9999999999999999"
    # addx61322
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1e16" + dec"-0.50000000000001" == dec"9999999999999999"
    # addx61323
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1e16" + dec"-0.500000000000001" == dec"9999999999999999"
    # addx61324
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1e16" + dec"-0.5000000000000001" == dec"9999999999999999"
    # addx61325
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1e16" + dec"-0.5000000000000000" == dec"1.000000000000000e+16"
    # addx61326
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1e16" + dec"-0.500000000000000" == dec"1.000000000000000e+16"
    # addx61327
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1e16" + dec"-0.50000000000000" == dec"1.000000000000000e+16"
    # addx61328
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1e16" + dec"-0.5000000000000" == dec"1.000000000000000e+16"
    # addx61329
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1e16" + dec"-0.500000000000" == dec"1.000000000000000e+16"
    # addx61330
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1e16" + dec"-0.50000000000" == dec"1.000000000000000e+16"
    # addx61331
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1e16" + dec"-0.5000000000" == dec"1.000000000000000e+16"
    # addx61332
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1e16" + dec"-0.500000000" == dec"1.000000000000000e+16"
    # addx61333
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1e16" + dec"-0.50000000" == dec"1.000000000000000e+16"
    # addx61334
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1e16" + dec"-0.5000000" == dec"1.000000000000000e+16"
    # addx61335
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1e16" + dec"-0.500000" == dec"1.000000000000000e+16"
    # addx61336
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1e16" + dec"-0.50000" == dec"1.000000000000000e+16"
    # addx61337
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1e16" + dec"-0.5000" == dec"1.000000000000000e+16"
    # addx61338
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1e16" + dec"-0.500" == dec"1.000000000000000e+16"
    # addx61339
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1e16" + dec"-0.50" == dec"1.000000000000000e+16"
    # addx61340
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1e16" + dec"-5000000.000010001" == dec"9999999995000000"
    # addx61341
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1e16" + dec"-5000000.000000001" == dec"9999999995000000"
    # addx61349
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"9999999999999999" + dec"0.4" == dec"9999999999999999"
    # addx61350
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"9999999999999999" + dec"0.49" == dec"9999999999999999"
    # addx61351
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"9999999999999999" + dec"0.499" == dec"9999999999999999"
    # addx61352
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"9999999999999999" + dec"0.4999" == dec"9999999999999999"
    # addx61353
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"9999999999999999" + dec"0.49999" == dec"9999999999999999"
    # addx61354
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"9999999999999999" + dec"0.499999" == dec"9999999999999999"
    # addx61355
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"9999999999999999" + dec"0.4999999" == dec"9999999999999999"
    # addx61356
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"9999999999999999" + dec"0.49999999" == dec"9999999999999999"
    # addx61357
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"9999999999999999" + dec"0.499999999" == dec"9999999999999999"
    # addx61358
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"9999999999999999" + dec"0.4999999999" == dec"9999999999999999"
    # addx61359
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"9999999999999999" + dec"0.49999999999" == dec"9999999999999999"
    # addx61360
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"9999999999999999" + dec"0.499999999999" == dec"9999999999999999"
    # addx61361
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"9999999999999999" + dec"0.4999999999999" == dec"9999999999999999"
    # addx61362
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"9999999999999999" + dec"0.49999999999999" == dec"9999999999999999"
    # addx61363
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"9999999999999999" + dec"0.499999999999999" == dec"9999999999999999"
    # addx61364
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"9999999999999999" + dec"0.4999999999999999" == dec"9999999999999999"
    # addx61365
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"9999999999999999" + dec"0.5000000000000000" == dec"1.000000000000000e+16"
    # addx61367
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"9999999999999999" + dec"0.500000000000000" == dec"1.000000000000000e+16"
    # addx61368
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"9999999999999999" + dec"0.50000000000000" == dec"1.000000000000000e+16"
    # addx61369
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"9999999999999999" + dec"0.5000000000000" == dec"1.000000000000000e+16"
    # addx61370
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"9999999999999999" + dec"0.500000000000" == dec"1.000000000000000e+16"
    # addx61371
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"9999999999999999" + dec"0.50000000000" == dec"1.000000000000000e+16"
    # addx61372
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"9999999999999999" + dec"0.5000000000" == dec"1.000000000000000e+16"
    # addx61373
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"9999999999999999" + dec"0.500000000" == dec"1.000000000000000e+16"
    # addx61374
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"9999999999999999" + dec"0.50000000" == dec"1.000000000000000e+16"
    # addx61375
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"9999999999999999" + dec"0.5000000" == dec"1.000000000000000e+16"
    # addx61376
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"9999999999999999" + dec"0.500000" == dec"1.000000000000000e+16"
    # addx61377
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"9999999999999999" + dec"0.50000" == dec"1.000000000000000e+16"
    # addx61378
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"9999999999999999" + dec"0.5000" == dec"1.000000000000000e+16"
    # addx61379
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"9999999999999999" + dec"0.500" == dec"1.000000000000000e+16"
    # addx61380
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"9999999999999999" + dec"0.50" == dec"1.000000000000000e+16"
    # addx61381
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"9999999999999999" + dec"0.5" == dec"1.000000000000000e+16"
    # addx61382
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"9999999999999999" + dec"0.5000000000000001" == dec"1.000000000000000e+16"
    # addx61383
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"9999999999999999" + dec"0.500000000000001" == dec"1.000000000000000e+16"
    # addx61384
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"9999999999999999" + dec"0.50000000000001" == dec"1.000000000000000e+16"
    # addx61385
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"9999999999999999" + dec"0.5000000000001" == dec"1.000000000000000e+16"
    # addx61386
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"9999999999999999" + dec"0.500000000001" == dec"1.000000000000000e+16"
    # addx61387
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"9999999999999999" + dec"0.50000000001" == dec"1.000000000000000e+16"
    # addx61388
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"9999999999999999" + dec"0.5000000001" == dec"1.000000000000000e+16"
    # addx61389
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"9999999999999999" + dec"0.500000001" == dec"1.000000000000000e+16"
    # addx61390
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"9999999999999999" + dec"0.50000001" == dec"1.000000000000000e+16"
    # addx61391
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"9999999999999999" + dec"0.5000001" == dec"1.000000000000000e+16"
    # addx61392
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"9999999999999999" + dec"0.500001" == dec"1.000000000000000e+16"
    # addx61393
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"9999999999999999" + dec"0.50001" == dec"1.000000000000000e+16"
    # addx61394
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"9999999999999999" + dec"0.5001" == dec"1.000000000000000e+16"
    # addx61395
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"9999999999999999" + dec"0.501" == dec"1.000000000000000e+16"
    # addx61396
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"9999999999999999" + dec"0.51" == dec"1.000000000000000e+16"
    # addx61420
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0" + dec"1.123456789012345" == dec"1.123456789012345"
    # addx61421
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0" + dec"1.123456789012345e-1" == dec"0.1123456789012345"
    # addx61422
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0" + dec"1.123456789012345e-2" == dec"0.01123456789012345"
    # addx61423
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0" + dec"1.123456789012345e-3" == dec"0.001123456789012345"
    # addx61424
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0" + dec"1.123456789012345e-4" == dec"0.0001123456789012345"
    # addx61425
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0" + dec"1.123456789012345e-5" == dec"0.00001123456789012345"
    # addx61426
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0" + dec"1.123456789012345e-6" == dec"0.000001123456789012345"
    # addx61427
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0" + dec"1.123456789012345e-7" == dec"1.123456789012345e-7"
    # addx61428
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0" + dec"1.123456789012345e-8" == dec"1.123456789012345e-8"
    # addx61429
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0" + dec"1.123456789012345e-9" == dec"1.123456789012345e-9"
    # addx61430
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0" + dec"1.123456789012345e-10" == dec"1.123456789012345e-10"
    # addx61431
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0" + dec"1.123456789012345e-11" == dec"1.123456789012345e-11"
    # addx61432
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0" + dec"1.123456789012345e-12" == dec"1.123456789012345e-12"
    # addx61433
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0" + dec"1.123456789012345e-13" == dec"1.123456789012345e-13"
    # addx61434
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0" + dec"1.123456789012345e-14" == dec"1.123456789012345e-14"
    # addx61435
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0" + dec"1.123456789012345e-15" == dec"1.123456789012345e-15"
    # addx61436
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0" + dec"1.123456789012345e-16" == dec"1.123456789012345e-16"
    # addx61437
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0" + dec"1.123456789012345e-17" == dec"1.123456789012345e-17"
    # addx61438
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0" + dec"1.123456789012345e-18" == dec"1.123456789012345e-18"
    # addx61439
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0" + dec"1.123456789012345e-19" == dec"1.123456789012345e-19"
    # addx61440
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1.123456789012345" + dec"0" == dec"1.123456789012345"
    # addx61441
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1.123456789012345e-1" + dec"0" == dec"0.1123456789012345"
    # addx61442
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1.123456789012345e-2" + dec"0" == dec"0.01123456789012345"
    # addx61443
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1.123456789012345e-3" + dec"0" == dec"0.001123456789012345"
    # addx61444
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1.123456789012345e-4" + dec"0" == dec"0.0001123456789012345"
    # addx61445
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1.123456789012345e-5" + dec"0" == dec"0.00001123456789012345"
    # addx61446
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1.123456789012345e-6" + dec"0" == dec"0.000001123456789012345"
    # addx61447
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1.123456789012345e-7" + dec"0" == dec"1.123456789012345e-7"
    # addx61448
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1.123456789012345e-8" + dec"0" == dec"1.123456789012345e-8"
    # addx61449
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1.123456789012345e-9" + dec"0" == dec"1.123456789012345e-9"
    # addx61450
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1.123456789012345e-10" + dec"0" == dec"1.123456789012345e-10"
    # addx61451
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1.123456789012345e-11" + dec"0" == dec"1.123456789012345e-11"
    # addx61452
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1.123456789012345e-12" + dec"0" == dec"1.123456789012345e-12"
    # addx61453
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1.123456789012345e-13" + dec"0" == dec"1.123456789012345e-13"
    # addx61454
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1.123456789012345e-14" + dec"0" == dec"1.123456789012345e-14"
    # addx61455
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1.123456789012345e-15" + dec"0" == dec"1.123456789012345e-15"
    # addx61456
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1.123456789012345e-16" + dec"0" == dec"1.123456789012345e-16"
    # addx61457
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1.123456789012345e-17" + dec"0" == dec"1.123456789012345e-17"
    # addx61458
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1.123456789012345e-18" + dec"0" == dec"1.123456789012345e-18"
    # addx61459
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1.123456789012345e-19" + dec"0" == dec"1.123456789012345e-19"
    # addx61460
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1.123456789012345" + dec"0e-0" == dec"1.123456789012345"
    # addx61461
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1.123456789012345" + dec"0e-1" == dec"1.123456789012345"
    # addx61462
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1.123456789012345" + dec"0e-2" == dec"1.123456789012345"
    # addx61463
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1.123456789012345" + dec"0e-3" == dec"1.123456789012345"
    # addx61464
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1.123456789012345" + dec"0e-4" == dec"1.123456789012345"
    # addx61465
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1.123456789012345" + dec"0e-5" == dec"1.123456789012345"
    # addx61466
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1.123456789012345" + dec"0e-6" == dec"1.123456789012345"
    # addx61467
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1.123456789012345" + dec"0e-7" == dec"1.123456789012345"
    # addx61468
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1.123456789012345" + dec"0e-8" == dec"1.123456789012345"
    # addx61469
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1.123456789012345" + dec"0e-9" == dec"1.123456789012345"
    # addx61470
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1.123456789012345" + dec"0e-10" == dec"1.123456789012345"
    # addx61471
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1.123456789012345" + dec"0e-11" == dec"1.123456789012345"
    # addx61472
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1.123456789012345" + dec"0e-12" == dec"1.123456789012345"
    # addx61473
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1.123456789012345" + dec"0e-13" == dec"1.123456789012345"
    # addx61474
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1.123456789012345" + dec"0e-14" == dec"1.123456789012345"
    # addx61475
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1.123456789012345" + dec"0e-15" == dec"1.123456789012345"
    # addx61476
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1.123456789012345" + dec"0e-16" == dec"1.123456789012345"
    # addx61477
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1.123456789012345" + dec"0e-17" == dec"1.123456789012345"
    # addx61478
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1.123456789012345" + dec"0e-18" == dec"1.123456789012345"
    # addx61479
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1.123456789012345" + dec"0e-19" == dec"1.123456789012345"
    # addx61500
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"0" + dec"0e-19" == dec"0e-19"
    # addx61501
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"-0" + dec"0e-19" == dec"0e-19"
    # addx61502
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"0" + dec"-0e-19" == dec"0e-19"
    # addx61503
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"-0" + dec"-0e-19" == dec"-0e-19"
    # addx61504
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"0e-400" + dec"0e-19" == dec"0e-398"
    # addx61505
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"-0e-400" + dec"0e-19" == dec"0e-398"
    # addx61506
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"0e-400" + dec"-0e-19" == dec"0e-398"
    # addx61507
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"-0e-400" + dec"-0e-19" == dec"-0e-398"
    # addx61511
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1e-401" + dec"1e-400" == dec"0e-398"
    # addx61512
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"-1e-401" + dec"1e-400" == dec"0e-398"
    # addx61513
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1e-401" + dec"-1e-400" == dec"-0e-398"
    # addx61514
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"-1e-401" + dec"-1e-400" == dec"-0e-398"
    # addx61515
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1e-401" + dec"1e-401" == dec"0e-398"
    # addx61516
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"-1e-401" + dec"1e-401" == dec"0e-398"
    # addx61517
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1e-401" + dec"-1e-401" == dec"0e-398"
    # addx61518
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"-1e-401" + dec"-1e-401" == dec"-0e-398"
    # addx61540
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0" + dec"0e-19" == dec"0e-19"
    # addx61541
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-0" + dec"0e-19" == dec"0e-19"
    # addx61542
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0" + dec"-0e-19" == dec"0e-19"
    # addx61543
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-0" + dec"-0e-19" == dec"-0e-19"
    # addx61544
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0e-400" + dec"0e-19" == dec"0e-398"
    # addx61545
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-0e-400" + dec"0e-19" == dec"0e-398"
    # addx61546
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"0e-400" + dec"-0e-19" == dec"0e-398"
    # addx61547
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-0e-400" + dec"-0e-19" == dec"-0e-398"
    # addx61551
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1e-401" + dec"1e-400" == dec"0e-398"
    # addx61552
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-1e-401" + dec"1e-400" == dec"0e-398"
    # addx61553
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1e-401" + dec"-1e-400" == dec"-0e-398"
    # addx61554
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-1e-401" + dec"-1e-400" == dec"-0e-398"
    # addx61555
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1e-401" + dec"1e-401" == dec"0e-398"
    # addx61556
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-1e-401" + dec"1e-401" == dec"0e-398"
    # addx61557
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1e-401" + dec"-1e-401" == dec"0e-398"
    # addx61558
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"-1e-401" + dec"-1e-401" == dec"-0e-398"
    # addx61560
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundFromZero) @test dec"0" + dec"0e-19" == dec"0e-19"
    # addx61561
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundFromZero) @test dec"-0" + dec"0e-19" == dec"0e-19"
    # addx61562
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundFromZero) @test dec"0" + dec"-0e-19" == dec"0e-19"
    # addx61563
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundFromZero) @test dec"-0" + dec"-0e-19" == dec"-0e-19"
    # addx61564
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundFromZero) @test dec"0e-400" + dec"0e-19" == dec"0e-398"
    # addx61565
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundFromZero) @test dec"-0e-400" + dec"0e-19" == dec"0e-398"
    # addx61566
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundFromZero) @test dec"0e-400" + dec"-0e-19" == dec"0e-398"
    # addx61567
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundFromZero) @test dec"-0e-400" + dec"-0e-19" == dec"-0e-398"
    # addx61571
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundFromZero) @test dec"1e-401" + dec"1e-400" == dec"1e-398"
    # addx61572
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundFromZero) @test dec"-1e-401" + dec"1e-400" == dec"1e-398"
    # addx61573
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundFromZero) @test dec"1e-401" + dec"-1e-400" == dec"-1e-398"
    # addx61574
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundFromZero) @test dec"-1e-401" + dec"-1e-400" == dec"-1e-398"
    # addx61575
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundFromZero) @test dec"1e-401" + dec"1e-401" == dec"1e-398"
    # addx61576
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundFromZero) @test dec"-1e-401" + dec"1e-401" == dec"0e-398"
    # addx61577
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundFromZero) @test dec"1e-401" + dec"-1e-401" == dec"0e-398"
    # addx61578
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundFromZero) @test dec"-1e-401" + dec"-1e-401" == dec"-1e-398"
    # addx61580
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundToZero) @test dec"0" + dec"0e-19" == dec"0e-19"
    # addx61581
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundToZero) @test dec"-0" + dec"0e-19" == dec"0e-19"
    # addx61582
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundToZero) @test dec"0" + dec"-0e-19" == dec"0e-19"
    # addx61583
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundToZero) @test dec"-0" + dec"-0e-19" == dec"-0e-19"
    # addx61584
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundToZero) @test dec"0e-400" + dec"0e-19" == dec"0e-398"
    # addx61585
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundToZero) @test dec"-0e-400" + dec"0e-19" == dec"0e-398"
    # addx61586
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundToZero) @test dec"0e-400" + dec"-0e-19" == dec"0e-398"
    # addx61587
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundToZero) @test dec"-0e-400" + dec"-0e-19" == dec"-0e-398"
    # addx61591
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundToZero) @test dec"1e-401" + dec"1e-400" == dec"0e-398"
    # addx61592
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundToZero) @test dec"-1e-401" + dec"1e-400" == dec"0e-398"
    # addx61593
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundToZero) @test dec"1e-401" + dec"-1e-400" == dec"-0e-398"
    # addx61594
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundToZero) @test dec"-1e-401" + dec"-1e-400" == dec"-0e-398"
    # addx61595
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundToZero) @test dec"1e-401" + dec"1e-401" == dec"0e-398"
    # addx61596
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundToZero) @test dec"-1e-401" + dec"1e-401" == dec"0e-398"
    # addx61597
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundToZero) @test dec"1e-401" + dec"-1e-401" == dec"0e-398"
    # addx61598
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundToZero) @test dec"-1e-401" + dec"-1e-401" == dec"-0e-398"
    # addx61600
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundUp) @test dec"0" + dec"0e-19" == dec"0e-19"
    # addx61601
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundUp) @test dec"-0" + dec"0e-19" == dec"0e-19"
    # addx61602
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundUp) @test dec"0" + dec"-0e-19" == dec"0e-19"
    # addx61603
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundUp) @test dec"-0" + dec"-0e-19" == dec"-0e-19"
    # addx61604
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundUp) @test dec"0e-400" + dec"0e-19" == dec"0e-398"
    # addx61605
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundUp) @test dec"-0e-400" + dec"0e-19" == dec"0e-398"
    # addx61606
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundUp) @test dec"0e-400" + dec"-0e-19" == dec"0e-398"
    # addx61607
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundUp) @test dec"-0e-400" + dec"-0e-19" == dec"-0e-398"
    # addx61611
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundUp) @test dec"1e-401" + dec"1e-400" == dec"1e-398"
    # addx61612
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundUp) @test dec"-1e-401" + dec"1e-400" == dec"1e-398"
    # addx61613
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundUp) @test dec"1e-401" + dec"-1e-400" == dec"-0e-398"
    # addx61614
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundUp) @test dec"-1e-401" + dec"-1e-400" == dec"-0e-398"
    # addx61615
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundUp) @test dec"1e-401" + dec"1e-401" == dec"1e-398"
    # addx61616
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundUp) @test dec"-1e-401" + dec"1e-401" == dec"0e-398"
    # addx61617
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundUp) @test dec"1e-401" + dec"-1e-401" == dec"0e-398"
    # addx61618
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundUp) @test dec"-1e-401" + dec"-1e-401" == dec"-0e-398"
    # addx61620
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundDown) @test dec"0" + dec"0e-19" == dec"0e-19"
    # addx61621
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundDown) @test dec"-0" + dec"0e-19" == dec"-0e-19"
    # addx61622
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundDown) @test dec"0" + dec"-0e-19" == dec"-0e-19"
    # addx61623
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundDown) @test dec"-0" + dec"-0e-19" == dec"-0e-19"
    # addx61624
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundDown) @test dec"0e-400" + dec"0e-19" == dec"0e-398"
    # addx61625
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundDown) @test dec"-0e-400" + dec"0e-19" == dec"-0e-398"
    # addx61626
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundDown) @test dec"0e-400" + dec"-0e-19" == dec"-0e-398"
    # addx61627
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundDown) @test dec"-0e-400" + dec"-0e-19" == dec"-0e-398"
    # addx61631
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundDown) @test dec"1e-401" + dec"1e-400" == dec"0e-398"
    # addx61632
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundDown) @test dec"-1e-401" + dec"1e-400" == dec"0e-398"
    # addx61633
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundDown) @test dec"1e-401" + dec"-1e-400" == dec"-1e-398"
    # addx61634
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundDown) @test dec"-1e-401" + dec"-1e-400" == dec"-1e-398"
    # addx61635
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundDown) @test dec"1e-401" + dec"1e-401" == dec"0e-398"
    # addx61636
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundDown) @test dec"-1e-401" + dec"1e-401" == dec"-0e-398"
    # addx61637
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundDown) @test dec"1e-401" + dec"-1e-401" == dec"-0e-398"
    # addx61638
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundDown) @test dec"-1e-401" + dec"-1e-401" == dec"-1e-398"
    # addx61701
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundDown) @test dec"130e-2" + dec"120e-2" == dec"2.50"
    # addx61702
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundDown) @test dec"130e-2" + dec"12e-1" == dec"2.50"
    # addx61703
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundDown) @test dec"130e-2" + dec"1e0" == dec"2.30"
    # addx61704
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundDown) @test dec"1e2" + dec"1e4" == dec"1.01e+4"
    # addx61705
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundDown) @test dec"130e-2" - dec"120e-2" == dec"0.10"
    # addx61706
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundDown) @test dec"130e-2" - dec"12e-1" == dec"0.10"
    # addx61707
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundDown) @test dec"130e-2" - dec"1e0" == dec"0.30"
    # addx61708
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundDown) @test dec"1e2" - dec"1e4" == dec"-9.9e+3"
    # addx62001
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1234567890123456" + dec"1" == dec"1234567890123457"
    # addx62002
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1234567890123456" + dec"0.6" == dec"1234567890123457"
    # addx62003
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1234567890123456" + dec"0.06" == dec"1234567890123456"
    # addx62004
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1234567890123456" + dec"6e-3" == dec"1234567890123456"
    # addx62005
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1234567890123456" + dec"6e-4" == dec"1234567890123456"
    # addx62006
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1234567890123456" + dec"6e-5" == dec"1234567890123456"
    # addx62007
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1234567890123456" + dec"6e-6" == dec"1234567890123456"
    # addx62008
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1234567890123456" + dec"6e-7" == dec"1234567890123456"
    # addx62009
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1234567890123456" + dec"6e-8" == dec"1234567890123456"
    # addx62010
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1234567890123456" + dec"6e-9" == dec"1234567890123456"
    # addx62011
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1234567890123456" + dec"6e-10" == dec"1234567890123456"
    # addx62012
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1234567890123456" + dec"6e-11" == dec"1234567890123456"
    # addx62013
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1234567890123456" + dec"6e-12" == dec"1234567890123456"
    # addx62014
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1234567890123456" + dec"6e-13" == dec"1234567890123456"
    # addx62015
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1234567890123456" + dec"6e-14" == dec"1234567890123456"
    # addx62016
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1234567890123456" + dec"6e-15" == dec"1234567890123456"
    # addx62017
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1234567890123456" + dec"6e-16" == dec"1234567890123456"
    # addx62018
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1234567890123456" + dec"6e-17" == dec"1234567890123456"
    # addx62019
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1234567890123456" + dec"6e-18" == dec"1234567890123456"
    # addx62020
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1234567890123456" + dec"6e-19" == dec"1234567890123456"
    # addx62021
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"1234567890123456" + dec"6e-20" == dec"1234567890123456"
    # addx62030
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"12345678" + dec"1" == dec"12345679"
    # addx62031
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"12345678" + dec"0.1" == dec"12345678.1"
    # addx62032
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"12345678" + dec"0.12" == dec"12345678.12"
    # addx62033
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"12345678" + dec"0.123" == dec"12345678.123"
    # addx62034
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"12345678" + dec"0.1234" == dec"12345678.1234"
    # addx62035
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"12345678" + dec"0.12345" == dec"12345678.12345"
    # addx62036
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"12345678" + dec"0.123456" == dec"12345678.123456"
    # addx62037
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"12345678" + dec"0.1234567" == dec"12345678.1234567"
    # addx62038
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"12345678" + dec"0.12345678" == dec"12345678.12345678"
    # addx62039
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"12345678" + dec"0.123456789" == dec"12345678.12345679"
    # addx62040
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"12345678" + dec"0.123456785" == dec"12345678.12345678"
    # addx62041
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"12345678" + dec"0.1234567850" == dec"12345678.12345678"
    # addx62042
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"12345678" + dec"0.1234567851" == dec"12345678.12345679"
    # addx62043
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"12345678" + dec"0.12345678501" == dec"12345678.12345679"
    # addx62044
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"12345678" + dec"0.123456785001" == dec"12345678.12345679"
    # addx62045
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"12345678" + dec"0.1234567850001" == dec"12345678.12345679"
    # addx62046
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"12345678" + dec"0.12345678500001" == dec"12345678.12345679"
    # addx62047
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"12345678" + dec"0.123456785000001" == dec"12345678.12345679"
    # addx62048
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"12345678" + dec"0.1234567850000001" == dec"12345678.12345679"
    # addx62049
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"12345678" + dec"0.1234567850000000" == dec"12345678.12345678"
    # addx62050
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"12345678" + dec"0.0234567750000000" == dec"12345678.02345678"
    # addx62051
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"12345678" + dec"0.0034567750000000" == dec"12345678.00345678"
    # addx62052
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"12345678" + dec"0.0004567750000000" == dec"12345678.00045678"
    # addx62053
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"12345678" + dec"0.0000567750000000" == dec"12345678.00005678"
    # addx62054
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"12345678" + dec"0.0000067750000000" == dec"12345678.00000678"
    # addx62055
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"12345678" + dec"0.0000007750000000" == dec"12345678.00000078"
    # addx62056
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"12345678" + dec"0.0000000750000000" == dec"12345678.00000008"
    # addx62057
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"12345678" + dec"0.0000000050000000" == dec"12345678.00000000"
    # addx62060
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"12345678" + dec"0.0234567750000001" == dec"12345678.02345678"
    # addx62061
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"12345678" + dec"0.0034567750000001" == dec"12345678.00345678"
    # addx62062
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"12345678" + dec"0.0004567750000001" == dec"12345678.00045678"
    # addx62063
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"12345678" + dec"0.0000567750000001" == dec"12345678.00005678"
    # addx62064
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"12345678" + dec"0.0000067750000001" == dec"12345678.00000678"
    # addx62065
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"12345678" + dec"0.0000007750000001" == dec"12345678.00000078"
    # addx62066
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"12345678" + dec"0.0000000750000001" == dec"12345678.00000008"
    # addx62067
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearest) @test dec"12345678" + dec"0.0000000050000001" == dec"12345678.00000001"
    # addx62070
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundFromZero) @test dec"12345678" + dec"1e-8" == dec"12345678.00000001"
    # addx62071
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundFromZero) @test dec"12345678" + dec"1e-9" == dec"12345678.00000001"
    # addx62072
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundFromZero) @test dec"12345678" + dec"1e-10" == dec"12345678.00000001"
    # addx62073
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundFromZero) @test dec"12345678" + dec"1e-11" == dec"12345678.00000001"
    # addx62074
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundFromZero) @test dec"12345678" + dec"1e-12" == dec"12345678.00000001"
    # addx62075
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundFromZero) @test dec"12345678" + dec"1e-13" == dec"12345678.00000001"
    # addx62076
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundFromZero) @test dec"12345678" + dec"1e-14" == dec"12345678.00000001"
    # addx62077
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundFromZero) @test dec"12345678" + dec"1e-15" == dec"12345678.00000001"
    # addx62078
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundFromZero) @test dec"12345678" + dec"1e-16" == dec"12345678.00000001"
    # addx62079
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundFromZero) @test dec"12345678" + dec"1e-17" == dec"12345678.00000001"
    # addx62080
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundFromZero) @test dec"12345678" + dec"1e-18" == dec"12345678.00000001"
    # addx62081
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundFromZero) @test dec"12345678" + dec"1e-19" == dec"12345678.00000001"
    # addx62082
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundFromZero) @test dec"12345678" + dec"1e-20" == dec"12345678.00000001"
    # addx62083
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundFromZero) @test dec"12345678" + dec"1e-25" == dec"12345678.00000001"
    # addx62084
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundFromZero) @test dec"12345678" + dec"1e-30" == dec"12345678.00000001"
    # addx62085
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundFromZero) @test dec"12345678" + dec"1e-31" == dec"12345678.00000001"
    # addx62086
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundFromZero) @test dec"12345678" + dec"1e-32" == dec"12345678.00000001"
    # addx62087
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundFromZero) @test dec"12345678" + dec"1e-33" == dec"12345678.00000001"
    # addx62088
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundFromZero) @test dec"12345678" + dec"1e-34" == dec"12345678.00000001"
    # addx62089
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundFromZero) @test dec"12345678" + dec"1e-35" == dec"12345678.00000001"
end
