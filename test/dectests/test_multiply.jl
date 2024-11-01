using Decimals
using ScopedValues
using Test
using Decimals: @with_context

@testset "Multiply" begin
    # mulx000
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"2" * dec"2" == dec"4"
    # mulx001
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"2" * dec"3" == dec"6"
    # mulx002
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"5" * dec"1" == dec"5"
    # mulx003
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"5" * dec"2" == dec"10"
    # mulx004
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"1.20" * dec"2" == dec"2.40"
    # mulx005
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"1.20" * dec"0" == dec"0.00"
    # mulx006
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"1.20" * dec"-2" == dec"-2.40"
    # mulx007
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-1.20" * dec"2" == dec"-2.40"
    # mulx008
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-1.20" * dec"0" == dec"-0.00"
    # mulx009
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-1.20" * dec"-2" == dec"2.40"
    # mulx010
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"5.09" * dec"7.1" == dec"36.139"
    # mulx011
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"2.5" * dec"4" == dec"10.0"
    # mulx012
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"2.50" * dec"4" == dec"10.00"
    # mulx013
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"1.23456789" * dec"1.00000000" == dec"1.23456789"
    # mulx014
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"9.999999999" * dec"9.999999999" == dec"100.000000"
    # mulx015
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"2.50" * dec"4" == dec"10.00"
    # mulx016
    @with_context (Emax=384, Emin=-383, precision=6, rounding=RoundNearestTiesAway) @test dec"2.50" * dec"4" == dec"10.00"
    # mulx017
    @with_context (Emax=384, Emin=-383, precision=6, rounding=RoundNearestTiesAway) @test dec"9.999999999" * dec"9.999999999" == dec"100.000"
    # mulx018
    @with_context (Emax=384, Emin=-383, precision=6, rounding=RoundNearestTiesAway) @test dec"9.999999999" * dec"-9.999999999" == dec"-100.000"
    # mulx019
    @with_context (Emax=384, Emin=-383, precision=6, rounding=RoundNearestTiesAway) @test dec"-9.999999999" * dec"9.999999999" == dec"-100.000"
    # mulx020
    @with_context (Emax=384, Emin=-383, precision=6, rounding=RoundNearestTiesAway) @test dec"-9.999999999" * dec"-9.999999999" == dec"100.000"
    # mulx059
    @with_context (Emax=384, Emin=-383, precision=15, rounding=RoundNearestTiesAway) @test dec"999999999999" * dec"9765625" == dec"9.76562499999023e+18"
    # mulx160
    @with_context (Emax=384, Emin=-383, precision=30, rounding=RoundNearestTiesAway) @test dec"999999999999" * dec"9765625" == dec"9765624999990234375"
    # mulx021
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0" * dec"0" == dec"0"
    # mulx022
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0" * dec"-0" == dec"-0"
    # mulx023
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-0" * dec"0" == dec"-0"
    # mulx024
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-0" * dec"-0" == dec"0"
    # mulx025
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-0.0" * dec"-0.0" == dec"0.00"
    # mulx026
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-0.0" * dec"-0.0" == dec"0.00"
    # mulx027
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-0.0" * dec"-0.0" == dec"0.00"
    # mulx028
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-0.0" * dec"-0.0" == dec"0.00"
    # mulx030
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"5.00" * dec"1e-3" == dec"0.00500"
    # mulx031
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"00.00" * dec"0.000" == dec"0.00000"
    # mulx032
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"00.00" * dec"0e-3" == dec"0.00000"
    # mulx033
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0e-3" * dec"00.00" == dec"0.00000"
    # mulx034
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-5.00" * dec"1e-3" == dec"-0.00500"
    # mulx035
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-00.00" * dec"0.000" == dec"-0.00000"
    # mulx036
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-00.00" * dec"0e-3" == dec"-0.00000"
    # mulx037
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-0e-3" * dec"00.00" == dec"-0.00000"
    # mulx038
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"5.00" * dec"-1e-3" == dec"-0.00500"
    # mulx039
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"00.00" * dec"-0.000" == dec"-0.00000"
    # mulx040
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"00.00" * dec"-0e-3" == dec"-0.00000"
    # mulx041
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0e-3" * dec"-00.00" == dec"-0.00000"
    # mulx042
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-5.00" * dec"-1e-3" == dec"0.00500"
    # mulx043
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-00.00" * dec"-0.000" == dec"0.00000"
    # mulx044
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-00.00" * dec"-0e-3" == dec"0.00000"
    # mulx045
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"-0e-3" * dec"-00.00" == dec"0.00000"
    # mulx050
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"1.20" * dec"3" == dec"3.60"
    # mulx051
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"7" * dec"3" == dec"21"
    # mulx052
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0.9" * dec"0.8" == dec"0.72"
    # mulx053
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0.9" * dec"-0" == dec"-0.0"
    # mulx054
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"654321" * dec"654321" == dec"4.28135971e+11"
    # mulx060
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"123.45" * dec"1e7" == dec"1.2345e+9"
    # mulx061
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"123.45" * dec"1e8" == dec"1.2345e+10"
    # mulx062
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"123.45" * dec"1e+9" == dec"1.2345e+11"
    # mulx063
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"123.45" * dec"1e10" == dec"1.2345e+12"
    # mulx064
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"123.45" * dec"1e11" == dec"1.2345e+13"
    # mulx065
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"123.45" * dec"1e12" == dec"1.2345e+14"
    # mulx066
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"123.45" * dec"1e13" == dec"1.2345e+15"
    # mulx080
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0.1" * dec"123456789" == dec"12345678.9"
    # mulx081
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0.1" * dec"1234567891" == dec"123456789"
    # mulx082
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0.1" * dec"12345678912" == dec"1.23456789e+9"
    # mulx083
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0.1" * dec"12345678912345" == dec"1.23456789e+12"
    # mulx084
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"0.1" * dec"123456789" == dec"12345678.9"
    # mulx085
    @with_context (Emax=384, Emin=-383, precision=8, rounding=RoundNearestTiesAway) @test dec"0.1" * dec"12345678912" == dec"1.2345679e+9"
    # mulx086
    @with_context (Emax=384, Emin=-383, precision=8, rounding=RoundNearestTiesAway) @test dec"0.1" * dec"12345678912345" == dec"1.2345679e+12"
    # mulx087
    @with_context (Emax=384, Emin=-383, precision=7, rounding=RoundNearestTiesAway) @test dec"0.1" * dec"12345678912" == dec"1.234568e+9"
    # mulx088
    @with_context (Emax=384, Emin=-383, precision=7, rounding=RoundNearestTiesAway) @test dec"0.1" * dec"12345678912345" == dec"1.234568e+12"
    # mulx090
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"123456789" * dec"0.1" == dec"12345678.9"
    # mulx091
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"1234567891" * dec"0.1" == dec"123456789"
    # mulx092
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"12345678912" * dec"0.1" == dec"1.23456789e+9"
    # mulx093
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"12345678912345" * dec"0.1" == dec"1.23456789e+12"
    # mulx094
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test dec"123456789" * dec"0.1" == dec"12345678.9"
    # mulx095
    @with_context (Emax=384, Emin=-383, precision=8, rounding=RoundNearestTiesAway) @test dec"12345678912" * dec"0.1" == dec"1.2345679e+9"
    # mulx096
    @with_context (Emax=384, Emin=-383, precision=8, rounding=RoundNearestTiesAway) @test dec"12345678912345" * dec"0.1" == dec"1.2345679e+12"
    # mulx097
    @with_context (Emax=384, Emin=-383, precision=7, rounding=RoundNearestTiesAway) @test dec"12345678912" * dec"0.1" == dec"1.234568e+9"
    # mulx098
    @with_context (Emax=384, Emin=-383, precision=7, rounding=RoundNearestTiesAway) @test dec"12345678912345" * dec"0.1" == dec"1.234568e+12"
    # mulx101
    @with_context (Emax=9999, Emin=-9999, precision=33, rounding=RoundNearestTiesAway) @test dec"9" * dec"9" == dec"81"
    # mulx102
    @with_context (Emax=9999, Emin=-9999, precision=33, rounding=RoundNearestTiesAway) @test dec"9" * dec"90" == dec"810"
    # mulx103
    @with_context (Emax=9999, Emin=-9999, precision=33, rounding=RoundNearestTiesAway) @test dec"9" * dec"900" == dec"8100"
    # mulx104
    @with_context (Emax=9999, Emin=-9999, precision=33, rounding=RoundNearestTiesAway) @test dec"9" * dec"9000" == dec"81000"
    # mulx105
    @with_context (Emax=9999, Emin=-9999, precision=33, rounding=RoundNearestTiesAway) @test dec"9" * dec"90000" == dec"810000"
    # mulx106
    @with_context (Emax=9999, Emin=-9999, precision=33, rounding=RoundNearestTiesAway) @test dec"9" * dec"900000" == dec"8100000"
    # mulx107
    @with_context (Emax=9999, Emin=-9999, precision=33, rounding=RoundNearestTiesAway) @test dec"9" * dec"9000000" == dec"81000000"
    # mulx108
    @with_context (Emax=9999, Emin=-9999, precision=33, rounding=RoundNearestTiesAway) @test dec"9" * dec"90000000" == dec"810000000"
    # mulx109
    @with_context (Emax=9999, Emin=-9999, precision=33, rounding=RoundNearestTiesAway) @test dec"9" * dec"900000000" == dec"8100000000"
    # mulx110
    @with_context (Emax=9999, Emin=-9999, precision=33, rounding=RoundNearestTiesAway) @test dec"9" * dec"9000000000" == dec"81000000000"
    # mulx111
    @with_context (Emax=9999, Emin=-9999, precision=33, rounding=RoundNearestTiesAway) @test dec"9" * dec"90000000000" == dec"810000000000"
    # mulx112
    @with_context (Emax=9999, Emin=-9999, precision=33, rounding=RoundNearestTiesAway) @test dec"9" * dec"900000000000" == dec"8100000000000"
    # mulx113
    @with_context (Emax=9999, Emin=-9999, precision=33, rounding=RoundNearestTiesAway) @test dec"9" * dec"9000000000000" == dec"81000000000000"
    # mulx114
    @with_context (Emax=9999, Emin=-9999, precision=33, rounding=RoundNearestTiesAway) @test dec"9" * dec"90000000000000" == dec"810000000000000"
    # mulx115
    @with_context (Emax=9999, Emin=-9999, precision=33, rounding=RoundNearestTiesAway) @test dec"9" * dec"900000000000000" == dec"8100000000000000"
    # mulx116
    @with_context (Emax=9999, Emin=-9999, precision=33, rounding=RoundNearestTiesAway) @test dec"9" * dec"9000000000000000" == dec"81000000000000000"
    # mulx117
    @with_context (Emax=9999, Emin=-9999, precision=33, rounding=RoundNearestTiesAway) @test dec"9" * dec"90000000000000000" == dec"810000000000000000"
    # mulx118
    @with_context (Emax=9999, Emin=-9999, precision=33, rounding=RoundNearestTiesAway) @test dec"9" * dec"900000000000000000" == dec"8100000000000000000"
    # mulx119
    @with_context (Emax=9999, Emin=-9999, precision=33, rounding=RoundNearestTiesAway) @test dec"9" * dec"9000000000000000000" == dec"81000000000000000000"
    # mulx120
    @with_context (Emax=9999, Emin=-9999, precision=33, rounding=RoundNearestTiesAway) @test dec"9" * dec"90000000000000000000" == dec"810000000000000000000"
    # mulx121
    @with_context (Emax=9999, Emin=-9999, precision=33, rounding=RoundNearestTiesAway) @test dec"9" * dec"900000000000000000000" == dec"8100000000000000000000"
    # mulx122
    @with_context (Emax=9999, Emin=-9999, precision=33, rounding=RoundNearestTiesAway) @test dec"9" * dec"9000000000000000000000" == dec"81000000000000000000000"
    # mulx123
    @with_context (Emax=9999, Emin=-9999, precision=33, rounding=RoundNearestTiesAway) @test dec"9" * dec"90000000000000000000000" == dec"810000000000000000000000"
    # mulx131
    @with_context (Emax=9999, Emin=-9999, precision=33, rounding=RoundNearestTiesAway) @test dec"3" * dec"3" == dec"9"
    # mulx132
    @with_context (Emax=9999, Emin=-9999, precision=33, rounding=RoundNearestTiesAway) @test dec"3" * dec"30" == dec"90"
    # mulx133
    @with_context (Emax=9999, Emin=-9999, precision=33, rounding=RoundNearestTiesAway) @test dec"3" * dec"300" == dec"900"
    # mulx134
    @with_context (Emax=9999, Emin=-9999, precision=33, rounding=RoundNearestTiesAway) @test dec"3" * dec"3000" == dec"9000"
    # mulx135
    @with_context (Emax=9999, Emin=-9999, precision=33, rounding=RoundNearestTiesAway) @test dec"3" * dec"30000" == dec"90000"
    # mulx136
    @with_context (Emax=9999, Emin=-9999, precision=33, rounding=RoundNearestTiesAway) @test dec"3" * dec"300000" == dec"900000"
    # mulx137
    @with_context (Emax=9999, Emin=-9999, precision=33, rounding=RoundNearestTiesAway) @test dec"3" * dec"3000000" == dec"9000000"
    # mulx138
    @with_context (Emax=9999, Emin=-9999, precision=33, rounding=RoundNearestTiesAway) @test dec"3" * dec"30000000" == dec"90000000"
    # mulx139
    @with_context (Emax=9999, Emin=-9999, precision=33, rounding=RoundNearestTiesAway) @test dec"3" * dec"300000000" == dec"900000000"
    # mulx140
    @with_context (Emax=9999, Emin=-9999, precision=33, rounding=RoundNearestTiesAway) @test dec"3" * dec"3000000000" == dec"9000000000"
    # mulx141
    @with_context (Emax=9999, Emin=-9999, precision=33, rounding=RoundNearestTiesAway) @test dec"3" * dec"30000000000" == dec"90000000000"
    # mulx142
    @with_context (Emax=9999, Emin=-9999, precision=33, rounding=RoundNearestTiesAway) @test dec"3" * dec"300000000000" == dec"900000000000"
    # mulx143
    @with_context (Emax=9999, Emin=-9999, precision=33, rounding=RoundNearestTiesAway) @test dec"3" * dec"3000000000000" == dec"9000000000000"
    # mulx144
    @with_context (Emax=9999, Emin=-9999, precision=33, rounding=RoundNearestTiesAway) @test dec"3" * dec"30000000000000" == dec"90000000000000"
    # mulx145
    @with_context (Emax=9999, Emin=-9999, precision=33, rounding=RoundNearestTiesAway) @test dec"3" * dec"300000000000000" == dec"900000000000000"
    # mulx146
    @with_context (Emax=9999, Emin=-9999, precision=33, rounding=RoundNearestTiesAway) @test dec"3" * dec"3000000000000000" == dec"9000000000000000"
    # mulx147
    @with_context (Emax=9999, Emin=-9999, precision=33, rounding=RoundNearestTiesAway) @test dec"3" * dec"30000000000000000" == dec"90000000000000000"
    # mulx148
    @with_context (Emax=9999, Emin=-9999, precision=33, rounding=RoundNearestTiesAway) @test dec"3" * dec"300000000000000000" == dec"900000000000000000"
    # mulx149
    @with_context (Emax=9999, Emin=-9999, precision=33, rounding=RoundNearestTiesAway) @test dec"3" * dec"3000000000000000000" == dec"9000000000000000000"
    # mulx150
    @with_context (Emax=9999, Emin=-9999, precision=33, rounding=RoundNearestTiesAway) @test dec"3" * dec"30000000000000000000" == dec"90000000000000000000"
    # mulx151
    @with_context (Emax=9999, Emin=-9999, precision=33, rounding=RoundNearestTiesAway) @test dec"3" * dec"300000000000000000000" == dec"900000000000000000000"
    # mulx152
    @with_context (Emax=9999, Emin=-9999, precision=33, rounding=RoundNearestTiesAway) @test dec"3" * dec"3000000000000000000000" == dec"9000000000000000000000"
    # mulx153
    @with_context (Emax=9999, Emin=-9999, precision=33, rounding=RoundNearestTiesAway) @test dec"3" * dec"30000000000000000000000" == dec"90000000000000000000000"
    # mulx170
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"1" * dec"9e999999999" == dec"9e+999999999"
    # mulx171
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"1" * dec"9.9e999999999" == dec"9.9e+999999999"
    # mulx172
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"1" * dec"9.99e999999999" == dec"9.99e+999999999"
    # mulx173
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"9e999999999" * dec"1" == dec"9e+999999999"
    # mulx174
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"9.9e999999999" * dec"1" == dec"9.9e+999999999"
    # mulx176
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"9.99e999999999" * dec"1" == dec"9.99e+999999999"
    # mulx177
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"1" * dec"9.99999999e999999999" == dec"9.99999999e+999999999"
    # mulx178
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"9.99999999e999999999" * dec"1" == dec"9.99999999e+999999999"
    # mulx180
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"0.1" * dec"9e-999999998" == dec"9e-999999999"
    # mulx181
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"0.1" * dec"99e-999999998" == dec"9.9e-999999998"
    # mulx182
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"0.1" * dec"999e-999999998" == dec"9.99e-999999997"
    # mulx183
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"0.1" * dec"9e-999999998" == dec"9e-999999999"
    # mulx184
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"0.1" * dec"99e-999999998" == dec"9.9e-999999998"
    # mulx185
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"0.1" * dec"999e-999999998" == dec"9.99e-999999997"
    # mulx186
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"0.1" * dec"999e-999999997" == dec"9.99e-999999996"
    # mulx187
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"0.1" * dec"9999e-999999997" == dec"9.999e-999999995"
    # mulx188
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"0.1" * dec"99999e-999999997" == dec"9.9999e-999999994"
    # mulx190
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"1" * dec"9e-999999998" == dec"9e-999999998"
    # mulx191
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"1" * dec"99e-999999998" == dec"9.9e-999999997"
    # mulx192
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"1" * dec"999e-999999998" == dec"9.99e-999999996"
    # mulx193
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"9e-999999998" * dec"1" == dec"9e-999999998"
    # mulx194
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"99e-999999998" * dec"1" == dec"9.9e-999999997"
    # mulx195
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"999e-999999998" * dec"1" == dec"9.99e-999999996"
    # mulx196
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"1e-599999999" * dec"1e-400000000" == dec"1e-999999999"
    # mulx197
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"1e-600000000" * dec"1e-399999999" == dec"1e-999999999"
    # mulx198
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"1.2e-599999999" * dec"1.2e-400000000" == dec"1.44e-999999999"
    # mulx199
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"1.2e-600000000" * dec"1.2e-399999999" == dec"1.44e-999999999"
    # mulx201
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"1e599999999" * dec"1e400000000" == dec"1e+999999999"
    # mulx202
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"1e600000000" * dec"1e399999999" == dec"1e+999999999"
    # mulx203
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"1.2e599999999" * dec"1.2e400000000" == dec"1.44e+999999999"
    # mulx204
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"1.2e600000000" * dec"1.2e399999999" == dec"1.44e+999999999"
    # mulx246
    @with_context (Emax=999999999, Emin=-999999999, precision=33, rounding=RoundNearestTiesAway) @test dec"30269.587755640502150977251770554" * dec"4.8046009735990873395936309640543" == dec"145433.290801193369671916511992830"
    # mulx247
    @with_context (Emax=999999999, Emin=-999999999, precision=32, rounding=RoundNearestTiesAway) @test dec"30269.587755640502150977251770554" * dec"4.8046009735990873395936309640543" == dec"145433.29080119336967191651199283"
    # mulx248
    @with_context (Emax=999999999, Emin=-999999999, precision=31, rounding=RoundNearestTiesAway) @test dec"30269.587755640502150977251770554" * dec"4.8046009735990873395936309640543" == dec"145433.2908011933696719165119928"
    # mulx249
    @with_context (Emax=999999999, Emin=-999999999, precision=30, rounding=RoundNearestTiesAway) @test dec"30269.587755640502150977251770554" * dec"4.8046009735990873395936309640543" == dec"145433.290801193369671916511993"
    # mulx250
    @with_context (Emax=999999999, Emin=-999999999, precision=29, rounding=RoundNearestTiesAway) @test dec"30269.587755640502150977251770554" * dec"4.8046009735990873395936309640543" == dec"145433.29080119336967191651199"
    # mulx251
    @with_context (Emax=999999999, Emin=-999999999, precision=28, rounding=RoundNearestTiesAway) @test dec"30269.587755640502150977251770554" * dec"4.8046009735990873395936309640543" == dec"145433.2908011933696719165120"
    # mulx252
    @with_context (Emax=999999999, Emin=-999999999, precision=27, rounding=RoundNearestTiesAway) @test dec"30269.587755640502150977251770554" * dec"4.8046009735990873395936309640543" == dec"145433.290801193369671916512"
    # mulx253
    @with_context (Emax=999999999, Emin=-999999999, precision=26, rounding=RoundNearestTiesAway) @test dec"30269.587755640502150977251770554" * dec"4.8046009735990873395936309640543" == dec"145433.29080119336967191651"
    # mulx254
    @with_context (Emax=999999999, Emin=-999999999, precision=25, rounding=RoundNearestTiesAway) @test dec"30269.587755640502150977251770554" * dec"4.8046009735990873395936309640543" == dec"145433.2908011933696719165"
    # mulx255
    @with_context (Emax=999999999, Emin=-999999999, precision=24, rounding=RoundNearestTiesAway) @test dec"30269.587755640502150977251770554" * dec"4.8046009735990873395936309640543" == dec"145433.290801193369671917"
    # mulx256
    @with_context (Emax=999999999, Emin=-999999999, precision=23, rounding=RoundNearestTiesAway) @test dec"30269.587755640502150977251770554" * dec"4.8046009735990873395936309640543" == dec"145433.29080119336967192"
    # mulx257
    @with_context (Emax=999999999, Emin=-999999999, precision=22, rounding=RoundNearestTiesAway) @test dec"30269.587755640502150977251770554" * dec"4.8046009735990873395936309640543" == dec"145433.2908011933696719"
    # mulx258
    @with_context (Emax=999999999, Emin=-999999999, precision=21, rounding=RoundNearestTiesAway) @test dec"30269.587755640502150977251770554" * dec"4.8046009735990873395936309640543" == dec"145433.290801193369672"
    # mulx259
    @with_context (Emax=999999999, Emin=-999999999, precision=20, rounding=RoundNearestTiesAway) @test dec"30269.587755640502150977251770554" * dec"4.8046009735990873395936309640543" == dec"145433.29080119336967"
    # mulx260
    @with_context (Emax=999999999, Emin=-999999999, precision=19, rounding=RoundNearestTiesAway) @test dec"30269.587755640502150977251770554" * dec"4.8046009735990873395936309640543" == dec"145433.2908011933697"
    # mulx261
    @with_context (Emax=999999999, Emin=-999999999, precision=18, rounding=RoundNearestTiesAway) @test dec"30269.587755640502150977251770554" * dec"4.8046009735990873395936309640543" == dec"145433.290801193370"
    # mulx262
    @with_context (Emax=999999999, Emin=-999999999, precision=17, rounding=RoundNearestTiesAway) @test dec"30269.587755640502150977251770554" * dec"4.8046009735990873395936309640543" == dec"145433.29080119337"
    # mulx263
    @with_context (Emax=999999999, Emin=-999999999, precision=16, rounding=RoundNearestTiesAway) @test dec"30269.587755640502150977251770554" * dec"4.8046009735990873395936309640543" == dec"145433.2908011934"
    # mulx264
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test dec"30269.587755640502150977251770554" * dec"4.8046009735990873395936309640543" == dec"145433.290801193"
    # mulx265
    @with_context (Emax=999999999, Emin=-999999999, precision=14, rounding=RoundNearestTiesAway) @test dec"30269.587755640502150977251770554" * dec"4.8046009735990873395936309640543" == dec"145433.29080119"
    # mulx266
    @with_context (Emax=999999999, Emin=-999999999, precision=13, rounding=RoundNearestTiesAway) @test dec"30269.587755640502150977251770554" * dec"4.8046009735990873395936309640543" == dec"145433.2908012"
    # mulx267
    @with_context (Emax=999999999, Emin=-999999999, precision=12, rounding=RoundNearestTiesAway) @test dec"30269.587755640502150977251770554" * dec"4.8046009735990873395936309640543" == dec"145433.290801"
    # mulx268
    @with_context (Emax=999999999, Emin=-999999999, precision=11, rounding=RoundNearestTiesAway) @test dec"30269.587755640502150977251770554" * dec"4.8046009735990873395936309640543" == dec"145433.29080"
    # mulx269
    @with_context (Emax=999999999, Emin=-999999999, precision=10, rounding=RoundNearestTiesAway) @test dec"30269.587755640502150977251770554" * dec"4.8046009735990873395936309640543" == dec"145433.2908"
    # mulx270
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"30269.587755640502150977251770554" * dec"4.8046009735990873395936309640543" == dec"145433.291"
    # mulx271
    @with_context (Emax=999999999, Emin=-999999999, precision=8, rounding=RoundNearestTiesAway) @test dec"30269.587755640502150977251770554" * dec"4.8046009735990873395936309640543" == dec"145433.29"
    # mulx272
    @with_context (Emax=999999999, Emin=-999999999, precision=7, rounding=RoundNearestTiesAway) @test dec"30269.587755640502150977251770554" * dec"4.8046009735990873395936309640543" == dec"145433.3"
    # mulx273
    @with_context (Emax=999999999, Emin=-999999999, precision=6, rounding=RoundNearestTiesAway) @test dec"30269.587755640502150977251770554" * dec"4.8046009735990873395936309640543" == dec"145433"
    # mulx274
    @with_context (Emax=999999999, Emin=-999999999, precision=5, rounding=RoundNearestTiesAway) @test dec"30269.587755640502150977251770554" * dec"4.8046009735990873395936309640543" == dec"1.4543e+5"
    # mulx275
    @with_context (Emax=999999999, Emin=-999999999, precision=4, rounding=RoundNearestTiesAway) @test dec"30269.587755640502150977251770554" * dec"4.8046009735990873395936309640543" == dec"1.454e+5"
    # mulx276
    @with_context (Emax=999999999, Emin=-999999999, precision=3, rounding=RoundNearestTiesAway) @test dec"30269.587755640502150977251770554" * dec"4.8046009735990873395936309640543" == dec"1.45e+5"
    # mulx277
    @with_context (Emax=999999999, Emin=-999999999, precision=2, rounding=RoundNearestTiesAway) @test dec"30269.587755640502150977251770554" * dec"4.8046009735990873395936309640543" == dec"1.5e+5"
    # mulx278
    @with_context (Emax=999999999, Emin=-999999999, precision=1, rounding=RoundNearestTiesAway) @test dec"30269.587755640502150977251770554" * dec"4.8046009735990873395936309640543" == dec"1e+5"
    # mulx301
    @with_context (Emax=9999, Emin=-9999, precision=9, rounding=RoundNearestTiesAway) @test dec"9" * dec"9" == dec"81"
    # mulx302
    @with_context (Emax=9999, Emin=-9999, precision=9, rounding=RoundNearestTiesAway) @test dec"9" * dec"90" == dec"810"
    # mulx303
    @with_context (Emax=9999, Emin=-9999, precision=9, rounding=RoundNearestTiesAway) @test dec"9" * dec"900" == dec"8100"
    # mulx304
    @with_context (Emax=9999, Emin=-9999, precision=9, rounding=RoundNearestTiesAway) @test dec"9" * dec"9000" == dec"81000"
    # mulx305
    @with_context (Emax=9999, Emin=-9999, precision=9, rounding=RoundNearestTiesAway) @test dec"9" * dec"90000" == dec"810000"
    # mulx306
    @with_context (Emax=9999, Emin=-9999, precision=9, rounding=RoundNearestTiesAway) @test dec"9" * dec"900000" == dec"8100000"
    # mulx307
    @with_context (Emax=9999, Emin=-9999, precision=9, rounding=RoundNearestTiesAway) @test dec"9" * dec"9000000" == dec"81000000"
    # mulx308
    @with_context (Emax=9999, Emin=-9999, precision=9, rounding=RoundNearestTiesAway) @test dec"9" * dec"90000000" == dec"810000000"
    # mulx309
    @with_context (Emax=9999, Emin=-9999, precision=9, rounding=RoundNearestTiesAway) @test dec"9" * dec"900000000" == dec"8.10000000e+9"
    # mulx310
    @with_context (Emax=9999, Emin=-9999, precision=9, rounding=RoundNearestTiesAway) @test dec"9" * dec"9000000000" == dec"8.10000000e+10"
    # mulx311
    @with_context (Emax=9999, Emin=-9999, precision=9, rounding=RoundNearestTiesAway) @test dec"9" * dec"90000000000" == dec"8.10000000e+11"
    # mulx312
    @with_context (Emax=9999, Emin=-9999, precision=9, rounding=RoundNearestTiesAway) @test dec"9" * dec"900000000000" == dec"8.10000000e+12"
    # mulx313
    @with_context (Emax=9999, Emin=-9999, precision=9, rounding=RoundNearestTiesAway) @test dec"9" * dec"9000000000000" == dec"8.10000000e+13"
    # mulx314
    @with_context (Emax=9999, Emin=-9999, precision=9, rounding=RoundNearestTiesAway) @test dec"9" * dec"90000000000000" == dec"8.10000000e+14"
    # mulx315
    @with_context (Emax=9999, Emin=-9999, precision=9, rounding=RoundNearestTiesAway) @test dec"9" * dec"900000000000000" == dec"8.10000000e+15"
    # mulx316
    @with_context (Emax=9999, Emin=-9999, precision=9, rounding=RoundNearestTiesAway) @test dec"9" * dec"9000000000000000" == dec"8.10000000e+16"
    # mulx317
    @with_context (Emax=9999, Emin=-9999, precision=9, rounding=RoundNearestTiesAway) @test dec"9" * dec"90000000000000000" == dec"8.10000000e+17"
    # mulx318
    @with_context (Emax=9999, Emin=-9999, precision=9, rounding=RoundNearestTiesAway) @test dec"9" * dec"900000000000000000" == dec"8.10000000e+18"
    # mulx319
    @with_context (Emax=9999, Emin=-9999, precision=9, rounding=RoundNearestTiesAway) @test dec"9" * dec"9000000000000000000" == dec"8.10000000e+19"
    # mulx320
    @with_context (Emax=9999, Emin=-9999, precision=9, rounding=RoundNearestTiesAway) @test dec"9" * dec"90000000000000000000" == dec"8.10000000e+20"
    # mulx321
    @with_context (Emax=9999, Emin=-9999, precision=9, rounding=RoundNearestTiesAway) @test dec"9" * dec"900000000000000000000" == dec"8.10000000e+21"
    # mulx322
    @with_context (Emax=9999, Emin=-9999, precision=9, rounding=RoundNearestTiesAway) @test dec"9" * dec"9000000000000000000000" == dec"8.10000000e+22"
    # mulx323
    @with_context (Emax=9999, Emin=-9999, precision=9, rounding=RoundNearestTiesAway) @test dec"9" * dec"90000000000000000000000" == dec"8.10000000e+23"
    # mulx330
    @with_context (Emax=9999, Emin=-9999, precision=29, rounding=RoundNearestTiesAway) @test dec"1.491824697641270317824852952837224" * dec"1.105170918075647624811707826490246514675628614562883537345747603" == dec"1.6487212707001281468486507878"
    # mulx331
    @with_context (Emax=9999, Emin=-9999, precision=55, rounding=RoundNearestTiesAway) @test dec"0.8958341352965282506768545828765117803873717284891040428" * dec"0.8958341352965282506768545828765117803873717284891040428" == dec"0.8025187979624784829842553829934069955890983696752228299"
    # mulx504
    @with_context (Emax=92, Emin=-92, precision=7, rounding=RoundNearestTiesAway) @test dec"0e-60" * dec"1000e-60" == dec"0e-98"
    # mulx505
    @with_context (Emax=92, Emin=-92, precision=7, rounding=RoundNearestTiesAway) @test dec"100e+60" * dec"0e+60" == dec"0e+92"
    # mulx541
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"0" * dec"-1" == dec"-0"
    # mulx542
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"-0" * dec"-1" == dec"0"
    # mulx543
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"0" * dec"1" == dec"0"
    # mulx544
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"-0" * dec"1" == dec"-0"
    # mulx545
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"-1" * dec"0" == dec"-0"
    # mulx546
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"-1" * dec"-0" == dec"0"
    # mulx547
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"1" * dec"0" == dec"0"
    # mulx548
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"1" * dec"-0" == dec"-0"
    # mulx551
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"0.0" * dec"-1" == dec"-0.0"
    # mulx552
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"-0.0" * dec"-1" == dec"0.0"
    # mulx553
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"0.0" * dec"1" == dec"0.0"
    # mulx554
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"-0.0" * dec"1" == dec"-0.0"
    # mulx555
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"-1.0" * dec"0" == dec"-0.0"
    # mulx556
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"-1.0" * dec"-0" == dec"0.0"
    # mulx557
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"1.0" * dec"0" == dec"0.0"
    # mulx558
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"1.0" * dec"-0" == dec"-0.0"
    # mulx561
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"0" * dec"-1.0" == dec"-0.0"
    # mulx562
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"-0" * dec"-1.0" == dec"0.0"
    # mulx563
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"0" * dec"1.0" == dec"0.0"
    # mulx564
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"-0" * dec"1.0" == dec"-0.0"
    # mulx565
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"-1" * dec"0.0" == dec"-0.0"
    # mulx566
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"-1" * dec"-0.0" == dec"0.0"
    # mulx567
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"1" * dec"0.0" == dec"0.0"
    # mulx568
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"1" * dec"-0.0" == dec"-0.0"
    # mulx571
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"0.0" * dec"-1.0" == dec"-0.00"
    # mulx572
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"-0.0" * dec"-1.0" == dec"0.00"
    # mulx573
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"0.0" * dec"1.0" == dec"0.00"
    # mulx574
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"-0.0" * dec"1.0" == dec"-0.00"
    # mulx575
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"-1.0" * dec"0.0" == dec"-0.00"
    # mulx576
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"-1.0" * dec"-0.0" == dec"0.00"
    # mulx577
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"1.0" * dec"0.0" == dec"0.00"
    # mulx578
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"1.0" * dec"-0.0" == dec"-0.00"
    # mulx730
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test_throws OverflowError dec"+1.23456789012345e-0" * dec"9e+999999999"
    # mulx731
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test_throws OverflowError dec"9e+999999999" * dec"+1.23456789012345e-0"
    # mulx732
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"+0.100" * dec"9e-999999999" == dec"9.00e-1000000000"
    # mulx733
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"9e-999999999" * dec"+0.100" == dec"9.00e-1000000000"
    # mulx735
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test_throws OverflowError dec"-1.23456789012345e-0" * dec"9e+999999999"
    # mulx736
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test_throws OverflowError dec"9e+999999999" * dec"-1.23456789012345e-0"
    # mulx737
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"-0.100" * dec"9e-999999999" == dec"-9.00e-1000000000"
    # mulx738
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"9e-999999999" * dec"-0.100" == dec"-9.00e-1000000000"
    # mulx739
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"1e-599999999" * dec"1e-400000001" == dec"1e-1000000000"
    # mulx740
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"1e-599999999" * dec"1e-400000000" == dec"1e-999999999"
    # mulx741
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"1e-600000000" * dec"1e-400000000" == dec"1e-1000000000"
    # mulx742
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"9e-999999998" * dec"0.01" == dec"9e-1000000000"
    # mulx743
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"9e-999999998" * dec"0.1" == dec"9e-999999999"
    # mulx744
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"0.01" * dec"9e-999999998" == dec"9e-1000000000"
    # mulx745
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test_throws OverflowError dec"1e599999999" * dec"1e400000001"
    # mulx746
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"1e599999999" * dec"1e400000000" == dec"1e+999999999"
    # mulx747
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test_throws OverflowError dec"1e600000000" * dec"1e400000000"
    # mulx748
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test_throws OverflowError dec"9e999999998" * dec"100"
    # mulx749
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"9e999999998" * dec"10" == dec"9.0e+999999999"
    # mulx750
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test_throws OverflowError dec"100" * dec"9e999999998"
    # mulx751
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test_throws OverflowError dec"1e+777777777" * dec"1e+411111111"
    # mulx752
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test_throws OverflowError dec"1e+777777777" * dec"-1e+411111111"
    # mulx753
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test_throws OverflowError dec"-1e+777777777" * dec"1e+411111111"
    # mulx754
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test_throws OverflowError dec"-1e+777777777" * dec"-1e+411111111"
    # mulx755
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"1e-777777777" * dec"1e-411111111" == dec"0e-1000000007"
    # mulx756
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"1e-777777777" * dec"-1e-411111111" == dec"-0e-1000000007"
    # mulx757
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"-1e-777777777" * dec"1e-411111111" == dec"-0e-1000000007"
    # mulx758
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"-1e-777777777" * dec"-1e-411111111" == dec"0e-1000000007"
    # mulx760
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"1e-600000000" * dec"1e-400000001" == dec"1e-1000000001"
    # mulx761
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"1e-600000000" * dec"1e-400000002" == dec"1e-1000000002"
    # mulx762
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"1e-600000000" * dec"1e-400000003" == dec"1e-1000000003"
    # mulx763
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"1e-600000000" * dec"1e-400000004" == dec"1e-1000000004"
    # mulx764
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"1e-600000000" * dec"1e-400000005" == dec"1e-1000000005"
    # mulx765
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"1e-600000000" * dec"1e-400000006" == dec"1e-1000000006"
    # mulx766
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"1e-600000000" * dec"1e-400000007" == dec"1e-1000000007"
    # mulx767
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"1e-600000000" * dec"1e-400000008" == dec"0e-1000000007"
    # mulx768
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"1e-600000000" * dec"1e-400000009" == dec"0e-1000000007"
    # mulx769
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test dec"1e-600000000" * dec"1e-400000010" == dec"0e-1000000007"
    # mulx770
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test_throws OverflowError dec"1e+600000000" * dec"1e+400000001"
    # mulx771
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test_throws OverflowError dec"1e+600000000" * dec"1e+400000002"
    # mulx772
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test_throws OverflowError dec"1e+600000000" * dec"1e+400000003"
    # mulx773
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test_throws OverflowError dec"1e+600000000" * dec"1e+400000004"
    # mulx774
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test_throws OverflowError dec"1e+600000000" * dec"1e+400000005"
    # mulx775
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test_throws OverflowError dec"1e+600000000" * dec"1e+400000006"
    # mulx776
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test_throws OverflowError dec"1e+600000000" * dec"1e+400000007"
    # mulx777
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test_throws OverflowError dec"1e+600000000" * dec"1e+400000008"
    # mulx778
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test_throws OverflowError dec"1e+600000000" * dec"1e+400000009"
    # mulx779
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test_throws OverflowError dec"1e+600000000" * dec"1e+400000010"
    # mulx780
    @with_context (Emax=999999999, Emin=-999999999, precision=99, rounding=RoundNearestTiesAway) @test dec"1e-600000000" * dec"1e-400000007" == dec"1e-1000000007"
    # mulx781
    @with_context (Emax=999999999, Emin=-999999999, precision=99, rounding=RoundNearestTiesAway) @test dec"1e-600000000" * dec"1e-400000008" == dec"1e-1000000008"
    # mulx782
    @with_context (Emax=999999999, Emin=-999999999, precision=99, rounding=RoundNearestTiesAway) @test dec"1e-600000000" * dec"1e-400000097" == dec"1e-1000000097"
    # mulx783
    @with_context (Emax=999999999, Emin=-999999999, precision=99, rounding=RoundNearestTiesAway) @test dec"1e-600000000" * dec"1e-400000098" == dec"0e-1000000097"
    # mulx784
    @with_context (Emax=999999999, Emin=-999999999, precision=999, rounding=RoundNearestTiesAway) @test dec"1e-600000000" * dec"1e-400000997" == dec"1e-1000000997"
    # mulx785
    @with_context (Emax=999999999, Emin=-999999999, precision=999, rounding=RoundNearestTiesAway) @test dec"1e-600000000" * dec"1e-400000998" == dec"0e-1000000997"
    # mulx786
    @with_context (Emax=999999999, Emin=-999999999, precision=9999, rounding=RoundNearestTiesAway) @test dec"1e-600000000" * dec"1e-400009997" == dec"1e-1000009997"
    # mulx787
    @with_context (Emax=999999999, Emin=-999999999, precision=9999, rounding=RoundNearestTiesAway) @test dec"1e-600000000" * dec"1e-400009998" == dec"0e-1000009997"
    # mulx788
    @with_context (Emax=999999999, Emin=-999999999, precision=99999, rounding=RoundNearestTiesAway) @test dec"1e-600000000" * dec"1e-400099997" == dec"1e-1000099997"
    # mulx789
    @with_context (Emax=999999999, Emin=-999999999, precision=99999, rounding=RoundNearestTiesAway) @test dec"1e-600000000" * dec"1e-400099998" == dec"0e-1000099997"
    # mulx790
    @with_context (Emax=999999999, Emin=-999999999, precision=999999, rounding=RoundNearestTiesAway) @test dec"1e-600000000" * dec"1e-400999997" == dec"1e-1000999997"
    # mulx791
    @with_context (Emax=999999999, Emin=-999999999, precision=999999, rounding=RoundNearestTiesAway) @test dec"1e-600000000" * dec"1e-400999998" == dec"0e-1000999997"
    # mulx792
    @with_context (Emax=999999999, Emin=-999999999, precision=9999999, rounding=RoundNearestTiesAway) @test dec"1e-600000000" * dec"1e-409999997" == dec"1e-1009999997"
    # mulx793
    @with_context (Emax=999999999, Emin=-999999999, precision=9999999, rounding=RoundNearestTiesAway) @test dec"1e-600000000" * dec"1e-409999998" == dec"0e-1009999997"
    # mulx794
    @with_context (Emax=999999999, Emin=-999999999, precision=99999999, rounding=RoundNearestTiesAway) @test dec"1e-600000000" * dec"1e-499999997" == dec"1e-1099999997"
    # mulx795
    @with_context (Emax=999999999, Emin=-999999999, precision=99999999, rounding=RoundNearestTiesAway) @test dec"1e-600000000" * dec"1e-499999998" == dec"0e-1099999997"
    # mulx796
    @with_context (Emax=999999999, Emin=-999999999, precision=999999999, rounding=RoundNearestTiesAway) @test dec"1e-999999999" * dec"1e-999999997" == dec"1e-1999999996"
    # mulx797
    @with_context (Emax=999999999, Emin=-999999999, precision=999999999, rounding=RoundNearestTiesAway) @test dec"1e-999999999" * dec"1e-999999998" == dec"1e-1999999997"
    # mulx798
    @with_context (Emax=999999999, Emin=-999999999, precision=999999999, rounding=RoundNearestTiesAway) @test dec"1e-999999999" * dec"1e-999999999" == dec"0e-1999999997"
    # mulx799
    @with_context (Emax=999999999, Emin=-999999999, precision=999999999, rounding=RoundNearestTiesAway) @test dec"1e-600000000" * dec"1e-400000007" == dec"1e-1000000007"
    # mulx800
    @with_context (Emax=999999999, Emin=-999999999, precision=999999999, rounding=RoundNearestTiesAway) @test dec"1e-600000000" * dec"1e-400000008" == dec"1e-1000000008"
    # mulx801
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearest) @test dec"1.0000e-999" * dec"1" == dec"1.0000e-999"
    # mulx802
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearest) @test dec"1.000e-999" * dec"1e-1" == dec"1.000e-1000"
    # mulx803
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearest) @test dec"1.00e-999" * dec"1e-2" == dec"1.00e-1001"
    # mulx804
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearest) @test dec"1.0e-999" * dec"1e-3" == dec"1.0e-1002"
    # mulx805
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearest) @test dec"1.0e-999" * dec"1e-4" == dec"1e-1003"
    # mulx806
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearest) @test dec"1.3e-999" * dec"1e-4" == dec"1e-1003"
    # mulx807
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearest) @test dec"1.5e-999" * dec"1e-4" == dec"2e-1003"
    # mulx808
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearest) @test dec"1.7e-999" * dec"1e-4" == dec"2e-1003"
    # mulx809
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearest) @test dec"2.3e-999" * dec"1e-4" == dec"2e-1003"
    # mulx810
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearest) @test dec"2.5e-999" * dec"1e-4" == dec"2e-1003"
    # mulx811
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearest) @test dec"2.7e-999" * dec"1e-4" == dec"3e-1003"
    # mulx812
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearest) @test dec"1.49e-999" * dec"1e-4" == dec"1e-1003"
    # mulx813
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearest) @test dec"1.50e-999" * dec"1e-4" == dec"2e-1003"
    # mulx814
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearest) @test dec"1.51e-999" * dec"1e-4" == dec"2e-1003"
    # mulx815
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearest) @test dec"2.49e-999" * dec"1e-4" == dec"2e-1003"
    # mulx816
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearest) @test dec"2.50e-999" * dec"1e-4" == dec"2e-1003"
    # mulx817
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearest) @test dec"2.51e-999" * dec"1e-4" == dec"3e-1003"
    # mulx818
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearest) @test dec"1e-999" * dec"1e-4" == dec"1e-1003"
    # mulx819
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearest) @test dec"3e-999" * dec"1e-5" == dec"0e-1003"
    # mulx820
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearest) @test dec"5e-999" * dec"1e-5" == dec"0e-1003"
    # mulx821
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearest) @test dec"7e-999" * dec"1e-5" == dec"1e-1003"
    # mulx822
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearest) @test dec"9e-999" * dec"1e-5" == dec"1e-1003"
    # mulx823
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearest) @test dec"9.9e-999" * dec"1e-5" == dec"1e-1003"
    # mulx824
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearest) @test dec"1e-999" * dec"-1e-4" == dec"-1e-1003"
    # mulx825
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearest) @test dec"3e-999" * dec"-1e-5" == dec"-0e-1003"
    # mulx826
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearest) @test dec"-5e-999" * dec"1e-5" == dec"-0e-1003"
    # mulx827
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearest) @test dec"7e-999" * dec"-1e-5" == dec"-1e-1003"
    # mulx828
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearest) @test dec"-9e-999" * dec"1e-5" == dec"-1e-1003"
    # mulx829
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearest) @test dec"9.9e-999" * dec"-1e-5" == dec"-1e-1003"
    # mulx830
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearest) @test dec"3.0e-999" * dec"-1e-5" == dec"-0e-1003"
    # mulx831
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearest) @test dec"1.0e-501" * dec"1e-501" == dec"1.0e-1002"
    # mulx832
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearest) @test dec"2.0e-501" * dec"2e-501" == dec"4.0e-1002"
    # mulx833
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearest) @test dec"4.0e-501" * dec"4e-501" == dec"1.60e-1001"
    # mulx834
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearest) @test dec"10.0e-501" * dec"10e-501" == dec"1.000e-1000"
    # mulx835
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearest) @test dec"30.0e-501" * dec"30e-501" == dec"9.000e-1000"
    # mulx836
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearest) @test dec"40.0e-501" * dec"40e-501" == dec"1.6000e-999"
    # mulx840
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearest) @test dec"1e-502" * dec"1e-502" == dec"0e-1003"
    # mulx841
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearest) @test dec"1e-501" * dec"1e-501" == dec"1e-1002"
    # mulx842
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearest) @test dec"2e-501" * dec"2e-501" == dec"4e-1002"
    # mulx843
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearest) @test dec"4e-501" * dec"4e-501" == dec"1.6e-1001"
    # mulx844
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearest) @test dec"10e-501" * dec"10e-501" == dec"1.00e-1000"
    # mulx845
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearest) @test dec"30e-501" * dec"30e-501" == dec"9.00e-1000"
    # mulx846
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearest) @test dec"40e-501" * dec"40e-501" == dec"1.600e-999"
    # mulx850
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearest) @test dec"1e-670" * dec"1e-335" == dec"0e-1003"
    # mulx851
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearest) @test dec"1e-668" * dec"1e-334" == dec"1e-1002"
    # mulx852
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearest) @test dec"4e-668" * dec"2e-334" == dec"8e-1002"
    # mulx853
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearest) @test dec"9e-668" * dec"3e-334" == dec"2.7e-1001"
    # mulx854
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearest) @test dec"16e-668" * dec"4e-334" == dec"6.4e-1001"
    # mulx855
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearest) @test dec"25e-668" * dec"5e-334" == dec"1.25e-1000"
    # mulx856
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearest) @test dec"10e-668" * dec"100e-334" == dec"1.000e-999"
    # mulx860
    @with_context (Emax=999, Emin=-999, precision=19, rounding=RoundNearest) @test dec"6636851557994578716e-520" * dec"6636851557994578716e-520" == dec"4.40477986028551e-1003"
    # mulx870
    @with_context (Emax=999999999, Emin=-999999999, precision=3, rounding=RoundNearest) @test_throws OverflowError dec"1" * dec"9.999e+999999999"
    # mulx871
    @with_context (Emax=999999999, Emin=-999999999, precision=3, rounding=RoundNearest) @test_throws OverflowError dec"1" * dec"-9.999e+999999999"
    # mulx872
    @with_context (Emax=999999999, Emin=-999999999, precision=3, rounding=RoundNearest) @test_throws OverflowError dec"9.999e+999999999" * dec"1"
    # mulx873
    @with_context (Emax=999999999, Emin=-999999999, precision=3, rounding=RoundNearest) @test_throws OverflowError dec"-9.999e+999999999" * dec"1"
    # mulx881
    @with_context (Emax=79, Emin=-79, precision=5, rounding=RoundNearest) @test dec"1.2347e-40" * dec"1.2347e-40" == dec"1.524e-80"
    # mulx882
    @with_context (Emax=79, Emin=-79, precision=5, rounding=RoundNearest) @test dec"1.234e-40" * dec"1.234e-40" == dec"1.523e-80"
    # mulx883
    @with_context (Emax=79, Emin=-79, precision=5, rounding=RoundNearest) @test dec"1.23e-40" * dec"1.23e-40" == dec"1.513e-80"
    # mulx884
    @with_context (Emax=79, Emin=-79, precision=5, rounding=RoundNearest) @test dec"1.2e-40" * dec"1.2e-40" == dec"1.44e-80"
    # mulx885
    @with_context (Emax=79, Emin=-79, precision=5, rounding=RoundNearest) @test dec"1.2e-40" * dec"1.2e-41" == dec"1.44e-81"
    # mulx886
    @with_context (Emax=79, Emin=-79, precision=5, rounding=RoundNearest) @test dec"1.2e-40" * dec"1.2e-42" == dec"1.4e-82"
    # mulx887
    @with_context (Emax=79, Emin=-79, precision=5, rounding=RoundNearest) @test dec"1.2e-40" * dec"1.3e-42" == dec"1.6e-82"
    # mulx888
    @with_context (Emax=79, Emin=-79, precision=5, rounding=RoundNearest) @test dec"1.3e-40" * dec"1.3e-42" == dec"1.7e-82"
    # mulx889
    @with_context (Emax=79, Emin=-79, precision=5, rounding=RoundNearest) @test dec"1.3e-40" * dec"1.3e-43" == dec"2e-83"
    # mulx890
    @with_context (Emax=79, Emin=-79, precision=5, rounding=RoundNearest) @test dec"1.3e-41" * dec"1.3e-43" == dec"0e-83"
    # mulx891
    @with_context (Emax=79, Emin=-79, precision=5, rounding=RoundNearest) @test dec"1.2345e-39" * dec"1.234e-40" == dec"1.5234e-79"
    # mulx892
    @with_context (Emax=79, Emin=-79, precision=5, rounding=RoundNearest) @test dec"1.23456e-39" * dec"1.234e-40" == dec"1.5234e-79"
    # mulx893
    @with_context (Emax=79, Emin=-79, precision=5, rounding=RoundNearest) @test dec"1.2345e-40" * dec"1.234e-40" == dec"1.523e-80"
    # mulx894
    @with_context (Emax=79, Emin=-79, precision=5, rounding=RoundNearest) @test dec"1.23456e-40" * dec"1.234e-40" == dec"1.523e-80"
    # mulx895
    @with_context (Emax=79, Emin=-79, precision=5, rounding=RoundNearest) @test dec"1.2345e-41" * dec"1.234e-40" == dec"1.52e-81"
    # mulx896
    @with_context (Emax=79, Emin=-79, precision=5, rounding=RoundNearest) @test dec"1.23456e-41" * dec"1.234e-40" == dec"1.52e-81"
    # mulx900
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"0.3000000000e-191" * dec"0.3000000000e-191" == dec"9.00000000000000e-384"
    # mulx901
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"0.3000000001e-191" * dec"0.3000000001e-191" == dec"9.00000000600000e-384"
    # mulx902
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"9.999999999999999e-383" * dec"0.0999999999999" == dec"9.99999999999000e-384"
    # mulx903
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"9.999999999999999e-383" * dec"0.09999999999999" == dec"9.99999999999900e-384"
    # mulx904
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"9.999999999999999e-383" * dec"0.099999999999999" == dec"9.99999999999990e-384"
    # mulx905
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"9.999999999999999e-383" * dec"0.0999999999999999" == dec"9.99999999999999e-384"
    # mulx906
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"9.999999999999999e-383" * dec"1" == dec"9.999999999999999e-383"
    # mulx907
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"1" * dec"0.09999999999999999" == dec"0.09999999999999999"
    # mulx908
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"9.999999999999999e-383" * dec"0.09999999999999999" == dec"1.000000000000000e-383"
    # mulx909
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"9.999999999999999e-383" * dec"0.099999999999999999" == dec"1.000000000000000e-383"
    # mulx910
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"9.999999999999999e-383" * dec"0.0999999999999999999" == dec"1.000000000000000e-383"
    # mulx911
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test dec"9.999999999999999e-383" * dec"0.09999999999999999999" == dec"1.000000000000000e-383"
    # mulx1001
    @with_context (Emax=6144, Emin=-6143, precision=34, rounding=RoundNearestTiesAway) @test dec"130e-2" * dec"120e-2" == dec"1.5600"
    # mulx1002
    @with_context (Emax=6144, Emin=-6143, precision=34, rounding=RoundNearestTiesAway) @test dec"130e-2" * dec"12e-1" == dec"1.560"
    # mulx1003
    @with_context (Emax=6144, Emin=-6143, precision=34, rounding=RoundNearestTiesAway) @test dec"130e-2" * dec"1e0" == dec"1.30"
    # mulx1004
    @with_context (Emax=6144, Emin=-6143, precision=34, rounding=RoundNearestTiesAway) @test dec"1e2" * dec"1e4" == dec"1e+6"
end
