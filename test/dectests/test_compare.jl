using Decimals
using ScopedValues
using Test
using Decimals: @with_context

@testset "Compare" begin
    # comx001
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-2", dec"-2") == dec"0"
    # comx002
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-2", dec"-1") == dec"-1"
    # comx003
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-2", dec"0") == dec"-1"
    # comx004
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-2", dec"1") == dec"-1"
    # comx005
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-2", dec"2") == dec"-1"
    # comx006
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-1", dec"-2") == dec"1"
    # comx007
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-1", dec"-1") == dec"0"
    # comx008
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-1", dec"0") == dec"-1"
    # comx009
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-1", dec"1") == dec"-1"
    # comx010
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-1", dec"2") == dec"-1"
    # comx011
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"0", dec"-2") == dec"1"
    # comx012
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"0", dec"-1") == dec"1"
    # comx013
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"0", dec"0") == dec"0"
    # comx014
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"0", dec"1") == dec"-1"
    # comx015
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"0", dec"2") == dec"-1"
    # comx016
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1", dec"-2") == dec"1"
    # comx017
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1", dec"-1") == dec"1"
    # comx018
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1", dec"0") == dec"1"
    # comx019
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1", dec"1") == dec"0"
    # comx020
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1", dec"2") == dec"-1"
    # comx021
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"2", dec"-2") == dec"1"
    # comx022
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"2", dec"-1") == dec"1"
    # comx023
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"2", dec"0") == dec"1"
    # comx025
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"2", dec"1") == dec"1"
    # comx026
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"2", dec"2") == dec"0"
    # comx031
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-20", dec"-20") == dec"0"
    # comx032
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-20", dec"-10") == dec"-1"
    # comx033
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-20", dec"00") == dec"-1"
    # comx034
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-20", dec"10") == dec"-1"
    # comx035
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-20", dec"20") == dec"-1"
    # comx036
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-10", dec"-20") == dec"1"
    # comx037
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-10", dec"-10") == dec"0"
    # comx038
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-10", dec"00") == dec"-1"
    # comx039
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-10", dec"10") == dec"-1"
    # comx040
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-10", dec"20") == dec"-1"
    # comx041
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"00", dec"-20") == dec"1"
    # comx042
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"00", dec"-10") == dec"1"
    # comx043
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"00", dec"00") == dec"0"
    # comx044
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"00", dec"10") == dec"-1"
    # comx045
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"00", dec"20") == dec"-1"
    # comx046
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"10", dec"-20") == dec"1"
    # comx047
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"10", dec"-10") == dec"1"
    # comx048
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"10", dec"00") == dec"1"
    # comx049
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"10", dec"10") == dec"0"
    # comx050
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"10", dec"20") == dec"-1"
    # comx051
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"20", dec"-20") == dec"1"
    # comx052
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"20", dec"-10") == dec"1"
    # comx053
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"20", dec"00") == dec"1"
    # comx055
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"20", dec"10") == dec"1"
    # comx056
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"20", dec"20") == dec"0"
    # comx061
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-2.0", dec"-2.0") == dec"0"
    # comx062
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-2.0", dec"-1.0") == dec"-1"
    # comx063
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-2.0", dec"0.0") == dec"-1"
    # comx064
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-2.0", dec"1.0") == dec"-1"
    # comx065
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-2.0", dec"2.0") == dec"-1"
    # comx066
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-1.0", dec"-2.0") == dec"1"
    # comx067
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-1.0", dec"-1.0") == dec"0"
    # comx068
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-1.0", dec"0.0") == dec"-1"
    # comx069
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-1.0", dec"1.0") == dec"-1"
    # comx070
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-1.0", dec"2.0") == dec"-1"
    # comx071
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"0.0", dec"-2.0") == dec"1"
    # comx072
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"0.0", dec"-1.0") == dec"1"
    # comx073
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"0.0", dec"0.0") == dec"0"
    # comx074
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"0.0", dec"1.0") == dec"-1"
    # comx075
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"0.0", dec"2.0") == dec"-1"
    # comx076
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1.0", dec"-2.0") == dec"1"
    # comx077
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1.0", dec"-1.0") == dec"1"
    # comx078
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1.0", dec"0.0") == dec"1"
    # comx079
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1.0", dec"1.0") == dec"0"
    # comx080
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1.0", dec"2.0") == dec"-1"
    # comx081
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"2.0", dec"-2.0") == dec"1"
    # comx082
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"2.0", dec"-1.0") == dec"1"
    # comx083
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"2.0", dec"0.0") == dec"1"
    # comx085
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"2.0", dec"1.0") == dec"1"
    # comx086
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"2.0", dec"2.0") == dec"0"
    # comx095
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"9.99999999e+999999999", dec"9.99999999e+999999999") == dec"0"
    # comx096
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-9.99999999e+999999999", dec"9.99999999e+999999999") == dec"-1"
    # comx097
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"9.99999999e+999999999", dec"-9.99999999e+999999999") == dec"1"
    # comx098
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-9.99999999e+999999999", dec"-9.99999999e+999999999") == dec"0"
    # comx100
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"7.0", dec"7.0") == dec"0"
    # comx101
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"7.0", dec"7") == dec"0"
    # comx102
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"7", dec"7.0") == dec"0"
    # comx103
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"7e+0", dec"7.0") == dec"0"
    # comx104
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"70e-1", dec"7.0") == dec"0"
    # comx105
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"0.7e+1", dec"7") == dec"0"
    # comx106
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"70e-1", dec"7") == dec"0"
    # comx107
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"7.0", dec"7e+0") == dec"0"
    # comx108
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"7.0", dec"70e-1") == dec"0"
    # comx109
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"7", dec"0.7e+1") == dec"0"
    # comx110
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"7", dec"70e-1") == dec"0"
    # comx120
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"8.0", dec"7.0") == dec"1"
    # comx121
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"8.0", dec"7") == dec"1"
    # comx122
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"8", dec"7.0") == dec"1"
    # comx123
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"8e+0", dec"7.0") == dec"1"
    # comx124
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"80e-1", dec"7.0") == dec"1"
    # comx125
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"0.8e+1", dec"7") == dec"1"
    # comx126
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"80e-1", dec"7") == dec"1"
    # comx127
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"8.0", dec"7e+0") == dec"1"
    # comx128
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"8.0", dec"70e-1") == dec"1"
    # comx129
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"8", dec"0.7e+1") == dec"1"
    # comx130
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"8", dec"70e-1") == dec"1"
    # comx140
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"8.0", dec"9.0") == dec"-1"
    # comx141
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"8.0", dec"9") == dec"-1"
    # comx142
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"8", dec"9.0") == dec"-1"
    # comx143
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"8e+0", dec"9.0") == dec"-1"
    # comx144
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"80e-1", dec"9.0") == dec"-1"
    # comx145
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"0.8e+1", dec"9") == dec"-1"
    # comx146
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"80e-1", dec"9") == dec"-1"
    # comx147
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"8.0", dec"9e+0") == dec"-1"
    # comx148
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"8.0", dec"90e-1") == dec"-1"
    # comx149
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"8", dec"0.9e+1") == dec"-1"
    # comx150
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"8", dec"90e-1") == dec"-1"
    # comx200
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-7.0", dec"7.0") == dec"-1"
    # comx201
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-7.0", dec"7") == dec"-1"
    # comx202
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-7", dec"7.0") == dec"-1"
    # comx203
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-7e+0", dec"7.0") == dec"-1"
    # comx204
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-70e-1", dec"7.0") == dec"-1"
    # comx205
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-0.7e+1", dec"7") == dec"-1"
    # comx206
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-70e-1", dec"7") == dec"-1"
    # comx207
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-7.0", dec"7e+0") == dec"-1"
    # comx208
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-7.0", dec"70e-1") == dec"-1"
    # comx209
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-7", dec"0.7e+1") == dec"-1"
    # comx210
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-7", dec"70e-1") == dec"-1"
    # comx220
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-8.0", dec"7.0") == dec"-1"
    # comx221
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-8.0", dec"7") == dec"-1"
    # comx222
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-8", dec"7.0") == dec"-1"
    # comx223
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-8e+0", dec"7.0") == dec"-1"
    # comx224
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-80e-1", dec"7.0") == dec"-1"
    # comx225
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-0.8e+1", dec"7") == dec"-1"
    # comx226
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-80e-1", dec"7") == dec"-1"
    # comx227
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-8.0", dec"7e+0") == dec"-1"
    # comx228
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-8.0", dec"70e-1") == dec"-1"
    # comx229
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-8", dec"0.7e+1") == dec"-1"
    # comx230
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-8", dec"70e-1") == dec"-1"
    # comx240
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-8.0", dec"9.0") == dec"-1"
    # comx241
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-8.0", dec"9") == dec"-1"
    # comx242
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-8", dec"9.0") == dec"-1"
    # comx243
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-8e+0", dec"9.0") == dec"-1"
    # comx244
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-80e-1", dec"9.0") == dec"-1"
    # comx245
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-0.8e+1", dec"9") == dec"-1"
    # comx246
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-80e-1", dec"9") == dec"-1"
    # comx247
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-8.0", dec"9e+0") == dec"-1"
    # comx248
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-8.0", dec"90e-1") == dec"-1"
    # comx249
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-8", dec"0.9e+1") == dec"-1"
    # comx250
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-8", dec"90e-1") == dec"-1"
    # comx300
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"7.0", dec"-7.0") == dec"1"
    # comx301
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"7.0", dec"-7") == dec"1"
    # comx302
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"7", dec"-7.0") == dec"1"
    # comx303
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"7e+0", dec"-7.0") == dec"1"
    # comx304
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"70e-1", dec"-7.0") == dec"1"
    # comx305
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec".7e+1", dec"-7") == dec"1"
    # comx306
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"70e-1", dec"-7") == dec"1"
    # comx307
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"7.0", dec"-7e+0") == dec"1"
    # comx308
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"7.0", dec"-70e-1") == dec"1"
    # comx309
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"7", dec"-.7e+1") == dec"1"
    # comx310
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"7", dec"-70e-1") == dec"1"
    # comx320
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"8.0", dec"-7.0") == dec"1"
    # comx321
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"8.0", dec"-7") == dec"1"
    # comx322
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"8", dec"-7.0") == dec"1"
    # comx323
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"8e+0", dec"-7.0") == dec"1"
    # comx324
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"80e-1", dec"-7.0") == dec"1"
    # comx325
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec".8e+1", dec"-7") == dec"1"
    # comx326
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"80e-1", dec"-7") == dec"1"
    # comx327
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"8.0", dec"-7e+0") == dec"1"
    # comx328
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"8.0", dec"-70e-1") == dec"1"
    # comx329
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"8", dec"-.7e+1") == dec"1"
    # comx330
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"8", dec"-70e-1") == dec"1"
    # comx340
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"8.0", dec"-9.0") == dec"1"
    # comx341
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"8.0", dec"-9") == dec"1"
    # comx342
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"8", dec"-9.0") == dec"1"
    # comx343
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"8e+0", dec"-9.0") == dec"1"
    # comx344
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"80e-1", dec"-9.0") == dec"1"
    # comx345
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec".8e+1", dec"-9") == dec"1"
    # comx346
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"80e-1", dec"-9") == dec"1"
    # comx347
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"8.0", dec"-9e+0") == dec"1"
    # comx348
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"8.0", dec"-90e-1") == dec"1"
    # comx349
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"8", dec"-.9e+1") == dec"1"
    # comx350
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"8", dec"-90e-1") == dec"1"
    # comx400
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-7.0", dec"-7.0") == dec"0"
    # comx401
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-7.0", dec"-7") == dec"0"
    # comx402
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-7", dec"-7.0") == dec"0"
    # comx403
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-7e+0", dec"-7.0") == dec"0"
    # comx404
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-70e-1", dec"-7.0") == dec"0"
    # comx405
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-.7e+1", dec"-7") == dec"0"
    # comx406
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-70e-1", dec"-7") == dec"0"
    # comx407
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-7.0", dec"-7e+0") == dec"0"
    # comx408
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-7.0", dec"-70e-1") == dec"0"
    # comx409
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-7", dec"-.7e+1") == dec"0"
    # comx410
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-7", dec"-70e-1") == dec"0"
    # comx420
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-8.0", dec"-7.0") == dec"-1"
    # comx421
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-8.0", dec"-7") == dec"-1"
    # comx422
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-8", dec"-7.0") == dec"-1"
    # comx423
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-8e+0", dec"-7.0") == dec"-1"
    # comx424
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-80e-1", dec"-7.0") == dec"-1"
    # comx425
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-.8e+1", dec"-7") == dec"-1"
    # comx426
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-80e-1", dec"-7") == dec"-1"
    # comx427
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-8.0", dec"-7e+0") == dec"-1"
    # comx428
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-8.0", dec"-70e-1") == dec"-1"
    # comx429
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-8", dec"-.7e+1") == dec"-1"
    # comx430
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-8", dec"-70e-1") == dec"-1"
    # comx440
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-8.0", dec"-9.0") == dec"1"
    # comx441
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-8.0", dec"-9") == dec"1"
    # comx442
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-8", dec"-9.0") == dec"1"
    # comx443
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-8e+0", dec"-9.0") == dec"1"
    # comx444
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-80e-1", dec"-9.0") == dec"1"
    # comx445
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-.8e+1", dec"-9") == dec"1"
    # comx446
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-80e-1", dec"-9") == dec"1"
    # comx447
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-8.0", dec"-9e+0") == dec"1"
    # comx448
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-8.0", dec"-90e-1") == dec"1"
    # comx449
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-8", dec"-.9e+1") == dec"1"
    # comx450
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-8", dec"-90e-1") == dec"1"
    # comx451
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1.0", dec"0.1") == dec"1"
    # comx452
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"0.1", dec"1.0") == dec"-1"
    # comx453
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"10.0", dec"0.1") == dec"1"
    # comx454
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"0.1", dec"10.0") == dec"-1"
    # comx455
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"100", dec"1.0") == dec"1"
    # comx456
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1.0", dec"100") == dec"-1"
    # comx457
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1000", dec"10.0") == dec"1"
    # comx458
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"10.0", dec"1000") == dec"-1"
    # comx459
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"10000", dec"100.0") == dec"1"
    # comx460
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"100.0", dec"10000") == dec"-1"
    # comx461
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"100000", dec"1000.0") == dec"1"
    # comx462
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1000.0", dec"100000") == dec"-1"
    # comx463
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1000000", dec"10000.0") == dec"1"
    # comx464
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"10000.0", dec"1000000") == dec"-1"
    # comx470
    @with_context (Emax=999999999, Emin=-999999999, precision=40, rounding=RoundNearestTiesAway) @test cmp(dec"123.4560000000000000e789", dec"123.456e789") == dec"0"
    # comx471
    @with_context (Emax=999999999, Emin=-999999999, precision=40, rounding=RoundNearestTiesAway) @test cmp(dec"123.456000000000000e-89", dec"123.456e-89") == dec"0"
    # comx472
    @with_context (Emax=999999999, Emin=-999999999, precision=40, rounding=RoundNearestTiesAway) @test cmp(dec"123.45600000000000e789", dec"123.456e789") == dec"0"
    # comx473
    @with_context (Emax=999999999, Emin=-999999999, precision=40, rounding=RoundNearestTiesAway) @test cmp(dec"123.4560000000000e-89", dec"123.456e-89") == dec"0"
    # comx474
    @with_context (Emax=999999999, Emin=-999999999, precision=40, rounding=RoundNearestTiesAway) @test cmp(dec"123.456000000000e789", dec"123.456e789") == dec"0"
    # comx475
    @with_context (Emax=999999999, Emin=-999999999, precision=40, rounding=RoundNearestTiesAway) @test cmp(dec"123.45600000000e-89", dec"123.456e-89") == dec"0"
    # comx476
    @with_context (Emax=999999999, Emin=-999999999, precision=40, rounding=RoundNearestTiesAway) @test cmp(dec"123.4560000000e789", dec"123.456e789") == dec"0"
    # comx477
    @with_context (Emax=999999999, Emin=-999999999, precision=40, rounding=RoundNearestTiesAway) @test cmp(dec"123.456000000e-89", dec"123.456e-89") == dec"0"
    # comx478
    @with_context (Emax=999999999, Emin=-999999999, precision=40, rounding=RoundNearestTiesAway) @test cmp(dec"123.45600000e789", dec"123.456e789") == dec"0"
    # comx479
    @with_context (Emax=999999999, Emin=-999999999, precision=40, rounding=RoundNearestTiesAway) @test cmp(dec"123.4560000e-89", dec"123.456e-89") == dec"0"
    # comx480
    @with_context (Emax=999999999, Emin=-999999999, precision=40, rounding=RoundNearestTiesAway) @test cmp(dec"123.456000e789", dec"123.456e789") == dec"0"
    # comx481
    @with_context (Emax=999999999, Emin=-999999999, precision=40, rounding=RoundNearestTiesAway) @test cmp(dec"123.45600e-89", dec"123.456e-89") == dec"0"
    # comx482
    @with_context (Emax=999999999, Emin=-999999999, precision=40, rounding=RoundNearestTiesAway) @test cmp(dec"123.4560e789", dec"123.456e789") == dec"0"
    # comx483
    @with_context (Emax=999999999, Emin=-999999999, precision=40, rounding=RoundNearestTiesAway) @test cmp(dec"123.456e-89", dec"123.456e-89") == dec"0"
    # comx484
    @with_context (Emax=999999999, Emin=-999999999, precision=40, rounding=RoundNearestTiesAway) @test cmp(dec"123.456e-89", dec"123.4560000000000000e-89") == dec"0"
    # comx485
    @with_context (Emax=999999999, Emin=-999999999, precision=40, rounding=RoundNearestTiesAway) @test cmp(dec"123.456e789", dec"123.456000000000000e789") == dec"0"
    # comx486
    @with_context (Emax=999999999, Emin=-999999999, precision=40, rounding=RoundNearestTiesAway) @test cmp(dec"123.456e-89", dec"123.45600000000000e-89") == dec"0"
    # comx487
    @with_context (Emax=999999999, Emin=-999999999, precision=40, rounding=RoundNearestTiesAway) @test cmp(dec"123.456e789", dec"123.4560000000000e789") == dec"0"
    # comx488
    @with_context (Emax=999999999, Emin=-999999999, precision=40, rounding=RoundNearestTiesAway) @test cmp(dec"123.456e-89", dec"123.456000000000e-89") == dec"0"
    # comx489
    @with_context (Emax=999999999, Emin=-999999999, precision=40, rounding=RoundNearestTiesAway) @test cmp(dec"123.456e789", dec"123.45600000000e789") == dec"0"
    # comx490
    @with_context (Emax=999999999, Emin=-999999999, precision=40, rounding=RoundNearestTiesAway) @test cmp(dec"123.456e-89", dec"123.4560000000e-89") == dec"0"
    # comx491
    @with_context (Emax=999999999, Emin=-999999999, precision=40, rounding=RoundNearestTiesAway) @test cmp(dec"123.456e789", dec"123.456000000e789") == dec"0"
    # comx492
    @with_context (Emax=999999999, Emin=-999999999, precision=40, rounding=RoundNearestTiesAway) @test cmp(dec"123.456e-89", dec"123.45600000e-89") == dec"0"
    # comx493
    @with_context (Emax=999999999, Emin=-999999999, precision=40, rounding=RoundNearestTiesAway) @test cmp(dec"123.456e789", dec"123.4560000e789") == dec"0"
    # comx494
    @with_context (Emax=999999999, Emin=-999999999, precision=40, rounding=RoundNearestTiesAway) @test cmp(dec"123.456e-89", dec"123.456000e-89") == dec"0"
    # comx495
    @with_context (Emax=999999999, Emin=-999999999, precision=40, rounding=RoundNearestTiesAway) @test cmp(dec"123.456e789", dec"123.45600e789") == dec"0"
    # comx496
    @with_context (Emax=999999999, Emin=-999999999, precision=40, rounding=RoundNearestTiesAway) @test cmp(dec"123.456e-89", dec"123.4560e-89") == dec"0"
    # comx497
    @with_context (Emax=999999999, Emin=-999999999, precision=40, rounding=RoundNearestTiesAway) @test cmp(dec"123.456e789", dec"123.456e789") == dec"0"
    # comx500
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1", dec"1e-15") == dec"1"
    # comx501
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1", dec"1e-14") == dec"1"
    # comx502
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1", dec"1e-13") == dec"1"
    # comx503
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1", dec"1e-12") == dec"1"
    # comx504
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1", dec"1e-11") == dec"1"
    # comx505
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1", dec"1e-10") == dec"1"
    # comx506
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1", dec"1e-9") == dec"1"
    # comx507
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1", dec"1e-8") == dec"1"
    # comx508
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1", dec"1e-7") == dec"1"
    # comx509
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1", dec"1e-6") == dec"1"
    # comx510
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1", dec"1e-5") == dec"1"
    # comx511
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1", dec"1e-4") == dec"1"
    # comx512
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1", dec"1e-3") == dec"1"
    # comx513
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1", dec"1e-2") == dec"1"
    # comx514
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1", dec"1e-1") == dec"1"
    # comx515
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1", dec"1e-0") == dec"0"
    # comx516
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1", dec"1e+1") == dec"-1"
    # comx517
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1", dec"1e+2") == dec"-1"
    # comx518
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1", dec"1e+3") == dec"-1"
    # comx519
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1", dec"1e+4") == dec"-1"
    # comx521
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1", dec"1e+5") == dec"-1"
    # comx522
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1", dec"1e+6") == dec"-1"
    # comx523
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1", dec"1e+7") == dec"-1"
    # comx524
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1", dec"1e+8") == dec"-1"
    # comx525
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1", dec"1e+9") == dec"-1"
    # comx526
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1", dec"1e+10") == dec"-1"
    # comx527
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1", dec"1e+11") == dec"-1"
    # comx528
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1", dec"1e+12") == dec"-1"
    # comx529
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1", dec"1e+13") == dec"-1"
    # comx530
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1", dec"1e+14") == dec"-1"
    # comx531
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1", dec"1e+15") == dec"-1"
    # comx540
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1e-15", dec"1") == dec"-1"
    # comx541
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1e-14", dec"1") == dec"-1"
    # comx542
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1e-13", dec"1") == dec"-1"
    # comx543
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1e-12", dec"1") == dec"-1"
    # comx544
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1e-11", dec"1") == dec"-1"
    # comx545
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1e-10", dec"1") == dec"-1"
    # comx546
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1e-9", dec"1") == dec"-1"
    # comx547
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1e-8", dec"1") == dec"-1"
    # comx548
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1e-7", dec"1") == dec"-1"
    # comx549
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1e-6", dec"1") == dec"-1"
    # comx550
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1e-5", dec"1") == dec"-1"
    # comx551
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1e-4", dec"1") == dec"-1"
    # comx552
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1e-3", dec"1") == dec"-1"
    # comx553
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1e-2", dec"1") == dec"-1"
    # comx554
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1e-1", dec"1") == dec"-1"
    # comx555
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1e-0", dec"1") == dec"0"
    # comx556
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1e+1", dec"1") == dec"1"
    # comx557
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1e+2", dec"1") == dec"1"
    # comx558
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1e+3", dec"1") == dec"1"
    # comx559
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1e+4", dec"1") == dec"1"
    # comx561
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1e+5", dec"1") == dec"1"
    # comx562
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1e+6", dec"1") == dec"1"
    # comx563
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1e+7", dec"1") == dec"1"
    # comx564
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1e+8", dec"1") == dec"1"
    # comx565
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1e+9", dec"1") == dec"1"
    # comx566
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1e+10", dec"1") == dec"1"
    # comx567
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1e+11", dec"1") == dec"1"
    # comx568
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1e+12", dec"1") == dec"1"
    # comx569
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1e+13", dec"1") == dec"1"
    # comx570
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1e+14", dec"1") == dec"1"
    # comx571
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1e+15", dec"1") == dec"1"
    # comx580
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"0.000000987654321", dec"1e-15") == dec"1"
    # comx581
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"0.000000987654321", dec"1e-14") == dec"1"
    # comx582
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"0.000000987654321", dec"1e-13") == dec"1"
    # comx583
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"0.000000987654321", dec"1e-12") == dec"1"
    # comx584
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"0.000000987654321", dec"1e-11") == dec"1"
    # comx585
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"0.000000987654321", dec"1e-10") == dec"1"
    # comx586
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"0.000000987654321", dec"1e-9") == dec"1"
    # comx587
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"0.000000987654321", dec"1e-8") == dec"1"
    # comx588
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"0.000000987654321", dec"1e-7") == dec"1"
    # comx589
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"0.000000987654321", dec"1e-6") == dec"-1"
    # comx590
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"0.000000987654321", dec"1e-5") == dec"-1"
    # comx591
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"0.000000987654321", dec"1e-4") == dec"-1"
    # comx592
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"0.000000987654321", dec"1e-3") == dec"-1"
    # comx593
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"0.000000987654321", dec"1e-2") == dec"-1"
    # comx594
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"0.000000987654321", dec"1e-1") == dec"-1"
    # comx595
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"0.000000987654321", dec"1e-0") == dec"-1"
    # comx596
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"0.000000987654321", dec"1e+1") == dec"-1"
    # comx597
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"0.000000987654321", dec"1e+2") == dec"-1"
    # comx598
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"0.000000987654321", dec"1e+3") == dec"-1"
    # comx599
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"0.000000987654321", dec"1e+4") == dec"-1"
    # comx600
    @with_context (Emax=999999999, Emin=-999999999, precision=20, rounding=RoundNearestTiesAway) @test cmp(dec"12", dec"12.2345") == dec"-1"
    # comx601
    @with_context (Emax=999999999, Emin=-999999999, precision=20, rounding=RoundNearestTiesAway) @test cmp(dec"12.0", dec"12.2345") == dec"-1"
    # comx602
    @with_context (Emax=999999999, Emin=-999999999, precision=20, rounding=RoundNearestTiesAway) @test cmp(dec"12.00", dec"12.2345") == dec"-1"
    # comx603
    @with_context (Emax=999999999, Emin=-999999999, precision=20, rounding=RoundNearestTiesAway) @test cmp(dec"12.000", dec"12.2345") == dec"-1"
    # comx604
    @with_context (Emax=999999999, Emin=-999999999, precision=20, rounding=RoundNearestTiesAway) @test cmp(dec"12.0000", dec"12.2345") == dec"-1"
    # comx605
    @with_context (Emax=999999999, Emin=-999999999, precision=20, rounding=RoundNearestTiesAway) @test cmp(dec"12.00000", dec"12.2345") == dec"-1"
    # comx606
    @with_context (Emax=999999999, Emin=-999999999, precision=20, rounding=RoundNearestTiesAway) @test cmp(dec"12.000000", dec"12.2345") == dec"-1"
    # comx607
    @with_context (Emax=999999999, Emin=-999999999, precision=20, rounding=RoundNearestTiesAway) @test cmp(dec"12.0000000", dec"12.2345") == dec"-1"
    # comx608
    @with_context (Emax=999999999, Emin=-999999999, precision=20, rounding=RoundNearestTiesAway) @test cmp(dec"12.00000000", dec"12.2345") == dec"-1"
    # comx609
    @with_context (Emax=999999999, Emin=-999999999, precision=20, rounding=RoundNearestTiesAway) @test cmp(dec"12.000000000", dec"12.2345") == dec"-1"
    # comx610
    @with_context (Emax=999999999, Emin=-999999999, precision=20, rounding=RoundNearestTiesAway) @test cmp(dec"12.1234", dec"12") == dec"1"
    # comx611
    @with_context (Emax=999999999, Emin=-999999999, precision=20, rounding=RoundNearestTiesAway) @test cmp(dec"12.1234", dec"12.0") == dec"1"
    # comx612
    @with_context (Emax=999999999, Emin=-999999999, precision=20, rounding=RoundNearestTiesAway) @test cmp(dec"12.1234", dec"12.00") == dec"1"
    # comx613
    @with_context (Emax=999999999, Emin=-999999999, precision=20, rounding=RoundNearestTiesAway) @test cmp(dec"12.1234", dec"12.000") == dec"1"
    # comx614
    @with_context (Emax=999999999, Emin=-999999999, precision=20, rounding=RoundNearestTiesAway) @test cmp(dec"12.1234", dec"12.0000") == dec"1"
    # comx615
    @with_context (Emax=999999999, Emin=-999999999, precision=20, rounding=RoundNearestTiesAway) @test cmp(dec"12.1234", dec"12.00000") == dec"1"
    # comx616
    @with_context (Emax=999999999, Emin=-999999999, precision=20, rounding=RoundNearestTiesAway) @test cmp(dec"12.1234", dec"12.000000") == dec"1"
    # comx617
    @with_context (Emax=999999999, Emin=-999999999, precision=20, rounding=RoundNearestTiesAway) @test cmp(dec"12.1234", dec"12.0000000") == dec"1"
    # comx618
    @with_context (Emax=999999999, Emin=-999999999, precision=20, rounding=RoundNearestTiesAway) @test cmp(dec"12.1234", dec"12.00000000") == dec"1"
    # comx619
    @with_context (Emax=999999999, Emin=-999999999, precision=20, rounding=RoundNearestTiesAway) @test cmp(dec"12.1234", dec"12.000000000") == dec"1"
    # comx620
    @with_context (Emax=999999999, Emin=-999999999, precision=20, rounding=RoundNearestTiesAway) @test cmp(dec"-12", dec"-12.2345") == dec"1"
    # comx621
    @with_context (Emax=999999999, Emin=-999999999, precision=20, rounding=RoundNearestTiesAway) @test cmp(dec"-12.0", dec"-12.2345") == dec"1"
    # comx622
    @with_context (Emax=999999999, Emin=-999999999, precision=20, rounding=RoundNearestTiesAway) @test cmp(dec"-12.00", dec"-12.2345") == dec"1"
    # comx623
    @with_context (Emax=999999999, Emin=-999999999, precision=20, rounding=RoundNearestTiesAway) @test cmp(dec"-12.000", dec"-12.2345") == dec"1"
    # comx624
    @with_context (Emax=999999999, Emin=-999999999, precision=20, rounding=RoundNearestTiesAway) @test cmp(dec"-12.0000", dec"-12.2345") == dec"1"
    # comx625
    @with_context (Emax=999999999, Emin=-999999999, precision=20, rounding=RoundNearestTiesAway) @test cmp(dec"-12.00000", dec"-12.2345") == dec"1"
    # comx626
    @with_context (Emax=999999999, Emin=-999999999, precision=20, rounding=RoundNearestTiesAway) @test cmp(dec"-12.000000", dec"-12.2345") == dec"1"
    # comx627
    @with_context (Emax=999999999, Emin=-999999999, precision=20, rounding=RoundNearestTiesAway) @test cmp(dec"-12.0000000", dec"-12.2345") == dec"1"
    # comx628
    @with_context (Emax=999999999, Emin=-999999999, precision=20, rounding=RoundNearestTiesAway) @test cmp(dec"-12.00000000", dec"-12.2345") == dec"1"
    # comx629
    @with_context (Emax=999999999, Emin=-999999999, precision=20, rounding=RoundNearestTiesAway) @test cmp(dec"-12.000000000", dec"-12.2345") == dec"1"
    # comx630
    @with_context (Emax=999999999, Emin=-999999999, precision=20, rounding=RoundNearestTiesAway) @test cmp(dec"-12.1234", dec"-12") == dec"-1"
    # comx631
    @with_context (Emax=999999999, Emin=-999999999, precision=20, rounding=RoundNearestTiesAway) @test cmp(dec"-12.1234", dec"-12.0") == dec"-1"
    # comx632
    @with_context (Emax=999999999, Emin=-999999999, precision=20, rounding=RoundNearestTiesAway) @test cmp(dec"-12.1234", dec"-12.00") == dec"-1"
    # comx633
    @with_context (Emax=999999999, Emin=-999999999, precision=20, rounding=RoundNearestTiesAway) @test cmp(dec"-12.1234", dec"-12.000") == dec"-1"
    # comx634
    @with_context (Emax=999999999, Emin=-999999999, precision=20, rounding=RoundNearestTiesAway) @test cmp(dec"-12.1234", dec"-12.0000") == dec"-1"
    # comx635
    @with_context (Emax=999999999, Emin=-999999999, precision=20, rounding=RoundNearestTiesAway) @test cmp(dec"-12.1234", dec"-12.00000") == dec"-1"
    # comx636
    @with_context (Emax=999999999, Emin=-999999999, precision=20, rounding=RoundNearestTiesAway) @test cmp(dec"-12.1234", dec"-12.000000") == dec"-1"
    # comx637
    @with_context (Emax=999999999, Emin=-999999999, precision=20, rounding=RoundNearestTiesAway) @test cmp(dec"-12.1234", dec"-12.0000000") == dec"-1"
    # comx638
    @with_context (Emax=999999999, Emin=-999999999, precision=20, rounding=RoundNearestTiesAway) @test cmp(dec"-12.1234", dec"-12.00000000") == dec"-1"
    # comx639
    @with_context (Emax=999999999, Emin=-999999999, precision=20, rounding=RoundNearestTiesAway) @test cmp(dec"-12.1234", dec"-12.000000000") == dec"-1"
    # comx640
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"0", dec"0") == dec"0"
    # comx641
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"0", dec"-0") == dec"0"
    # comx642
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"0", dec"-0.0") == dec"0"
    # comx643
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"0", dec"0.0") == dec"0"
    # comx644
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-0", dec"0") == dec"0"
    # comx645
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-0", dec"-0") == dec"0"
    # comx646
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-0", dec"-0.0") == dec"0"
    # comx647
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-0", dec"0.0") == dec"0"
    # comx648
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"0.0", dec"0") == dec"0"
    # comx649
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"0.0", dec"-0") == dec"0"
    # comx650
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"0.0", dec"-0.0") == dec"0"
    # comx651
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"0.0", dec"0.0") == dec"0"
    # comx652
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-0.0", dec"0") == dec"0"
    # comx653
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-0.0", dec"-0") == dec"0"
    # comx654
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-0.0", dec"-0.0") == dec"0"
    # comx655
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-0.0", dec"0.0") == dec"0"
    # comx656
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-0e1", dec"0.0") == dec"0"
    # comx657
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-0e2", dec"0.0") == dec"0"
    # comx658
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"0e1", dec"0.0") == dec"0"
    # comx659
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"0e2", dec"0.0") == dec"0"
    # comx660
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-0e1", dec"0") == dec"0"
    # comx661
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-0e2", dec"0") == dec"0"
    # comx662
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"0e1", dec"0") == dec"0"
    # comx663
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"0e2", dec"0") == dec"0"
    # comx664
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-0e1", dec"-0e1") == dec"0"
    # comx665
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-0e2", dec"-0e1") == dec"0"
    # comx666
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"0e1", dec"-0e1") == dec"0"
    # comx667
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"0e2", dec"-0e1") == dec"0"
    # comx668
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-0e1", dec"-0e2") == dec"0"
    # comx669
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-0e2", dec"-0e2") == dec"0"
    # comx670
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"0e1", dec"-0e2") == dec"0"
    # comx671
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"0e2", dec"-0e2") == dec"0"
    # comx672
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-0e1", dec"0e1") == dec"0"
    # comx673
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-0e2", dec"0e1") == dec"0"
    # comx674
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"0e1", dec"0e1") == dec"0"
    # comx675
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"0e2", dec"0e1") == dec"0"
    # comx676
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-0e1", dec"0e2") == dec"0"
    # comx677
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-0e2", dec"0e2") == dec"0"
    # comx678
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"0e1", dec"0e2") == dec"0"
    # comx679
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"0e2", dec"0e2") == dec"0"
    # comx680
    @with_context (Emax=999999999, Emin=-999999999, precision=20, rounding=RoundNearestTiesAway) @test cmp(dec"12", dec"12") == dec"0"
    # comx681
    @with_context (Emax=999999999, Emin=-999999999, precision=20, rounding=RoundNearestTiesAway) @test cmp(dec"12", dec"12.0") == dec"0"
    # comx682
    @with_context (Emax=999999999, Emin=-999999999, precision=20, rounding=RoundNearestTiesAway) @test cmp(dec"12", dec"12.00") == dec"0"
    # comx683
    @with_context (Emax=999999999, Emin=-999999999, precision=20, rounding=RoundNearestTiesAway) @test cmp(dec"12", dec"12.000") == dec"0"
    # comx684
    @with_context (Emax=999999999, Emin=-999999999, precision=20, rounding=RoundNearestTiesAway) @test cmp(dec"12", dec"12.0000") == dec"0"
    # comx685
    @with_context (Emax=999999999, Emin=-999999999, precision=20, rounding=RoundNearestTiesAway) @test cmp(dec"12", dec"12.00000") == dec"0"
    # comx686
    @with_context (Emax=999999999, Emin=-999999999, precision=20, rounding=RoundNearestTiesAway) @test cmp(dec"12", dec"12.000000") == dec"0"
    # comx687
    @with_context (Emax=999999999, Emin=-999999999, precision=20, rounding=RoundNearestTiesAway) @test cmp(dec"12", dec"12.0000000") == dec"0"
    # comx688
    @with_context (Emax=999999999, Emin=-999999999, precision=20, rounding=RoundNearestTiesAway) @test cmp(dec"12", dec"12.00000000") == dec"0"
    # comx689
    @with_context (Emax=999999999, Emin=-999999999, precision=20, rounding=RoundNearestTiesAway) @test cmp(dec"12", dec"12.000000000") == dec"0"
    # comx690
    @with_context (Emax=999999999, Emin=-999999999, precision=20, rounding=RoundNearestTiesAway) @test cmp(dec"12", dec"12") == dec"0"
    # comx691
    @with_context (Emax=999999999, Emin=-999999999, precision=20, rounding=RoundNearestTiesAway) @test cmp(dec"12.0", dec"12") == dec"0"
    # comx692
    @with_context (Emax=999999999, Emin=-999999999, precision=20, rounding=RoundNearestTiesAway) @test cmp(dec"12.00", dec"12") == dec"0"
    # comx693
    @with_context (Emax=999999999, Emin=-999999999, precision=20, rounding=RoundNearestTiesAway) @test cmp(dec"12.000", dec"12") == dec"0"
    # comx694
    @with_context (Emax=999999999, Emin=-999999999, precision=20, rounding=RoundNearestTiesAway) @test cmp(dec"12.0000", dec"12") == dec"0"
    # comx695
    @with_context (Emax=999999999, Emin=-999999999, precision=20, rounding=RoundNearestTiesAway) @test cmp(dec"12.00000", dec"12") == dec"0"
    # comx696
    @with_context (Emax=999999999, Emin=-999999999, precision=20, rounding=RoundNearestTiesAway) @test cmp(dec"12.000000", dec"12") == dec"0"
    # comx697
    @with_context (Emax=999999999, Emin=-999999999, precision=20, rounding=RoundNearestTiesAway) @test cmp(dec"12.0000000", dec"12") == dec"0"
    # comx698
    @with_context (Emax=999999999, Emin=-999999999, precision=20, rounding=RoundNearestTiesAway) @test cmp(dec"12.00000000", dec"12") == dec"0"
    # comx699
    @with_context (Emax=999999999, Emin=-999999999, precision=20, rounding=RoundNearestTiesAway) @test cmp(dec"12.000000000", dec"12") == dec"0"
    # comx701
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"12345678000", dec"1") == dec"1"
    # comx702
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1", dec"12345678000") == dec"-1"
    # comx703
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1234567800", dec"1") == dec"1"
    # comx704
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1", dec"1234567800") == dec"-1"
    # comx705
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1234567890", dec"1") == dec"1"
    # comx706
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1", dec"1234567890") == dec"-1"
    # comx707
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1234567891", dec"1") == dec"1"
    # comx708
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1", dec"1234567891") == dec"-1"
    # comx709
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"12345678901", dec"1") == dec"1"
    # comx710
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1", dec"12345678901") == dec"-1"
    # comx711
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1234567896", dec"1") == dec"1"
    # comx712
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1", dec"1234567896") == dec"-1"
    # comx713
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-1234567891", dec"1") == dec"-1"
    # comx714
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1", dec"-1234567891") == dec"1"
    # comx715
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-12345678901", dec"1") == dec"-1"
    # comx716
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1", dec"-12345678901") == dec"1"
    # comx717
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-1234567896", dec"1") == dec"-1"
    # comx718
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1", dec"-1234567896") == dec"1"
    # comx721
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test cmp(dec"12345678000", dec"1") == dec"1"
    # comx722
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test cmp(dec"1", dec"12345678000") == dec"-1"
    # comx723
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test cmp(dec"1234567800", dec"1") == dec"1"
    # comx724
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test cmp(dec"1", dec"1234567800") == dec"-1"
    # comx725
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test cmp(dec"1234567890", dec"1") == dec"1"
    # comx726
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test cmp(dec"1", dec"1234567890") == dec"-1"
    # comx727
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test cmp(dec"1234567891", dec"1") == dec"1"
    # comx728
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test cmp(dec"1", dec"1234567891") == dec"-1"
    # comx729
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test cmp(dec"12345678901", dec"1") == dec"1"
    # comx730
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test cmp(dec"1", dec"12345678901") == dec"-1"
    # comx731
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test cmp(dec"1234567896", dec"1") == dec"1"
    # comx732
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test cmp(dec"1", dec"1234567896") == dec"-1"
    # comx740
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearestTiesAway) @test cmp(dec"1", dec"0.9999999") == dec"1"
    # comx741
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearestTiesAway) @test cmp(dec"1", dec"0.999999") == dec"1"
    # comx742
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearestTiesAway) @test cmp(dec"1", dec"0.99999") == dec"1"
    # comx743
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearestTiesAway) @test cmp(dec"1", dec"1.0000") == dec"0"
    # comx744
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearestTiesAway) @test cmp(dec"1", dec"1.00001") == dec"-1"
    # comx745
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearestTiesAway) @test cmp(dec"1", dec"1.000001") == dec"-1"
    # comx746
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearestTiesAway) @test cmp(dec"1", dec"1.0000001") == dec"-1"
    # comx750
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearestTiesAway) @test cmp(dec"0.9999999", dec"1") == dec"-1"
    # comx751
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearestTiesAway) @test cmp(dec"0.999999", dec"1") == dec"-1"
    # comx752
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearestTiesAway) @test cmp(dec"0.99999", dec"1") == dec"-1"
    # comx753
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearestTiesAway) @test cmp(dec"1.0000", dec"1") == dec"0"
    # comx754
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearestTiesAway) @test cmp(dec"1.00001", dec"1") == dec"1"
    # comx755
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearestTiesAway) @test cmp(dec"1.000001", dec"1") == dec"1"
    # comx756
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearestTiesAway) @test cmp(dec"1.0000001", dec"1") == dec"1"
    # comx760
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearestTiesAway) @test cmp(dec"-36852134.84194296250843579428931", dec"-5830629.8347085025808756560357940") == dec"-1"
    # comx761
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearestTiesAway) @test cmp(dec"-36852134.84194296250843579428931", dec"-36852134.84194296250843579428931") == dec"0"
    # comx762
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearestTiesAway) @test cmp(dec"-36852134.94194296250843579428931", dec"-36852134.84194296250843579428931") == dec"-1"
    # comx763
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearestTiesAway) @test cmp(dec"-36852134.84194296250843579428931", dec"-36852134.94194296250843579428931") == dec"1"
    # comx764
    @with_context (Emax=999, Emin=-999, precision=11, rounding=RoundNearestTiesAway) @test cmp(dec"-36852134.84194296250843579428931", dec"-36852134.94194296250843579428931") == dec"1"
    # comx765
    @with_context (Emax=999, Emin=-999, precision=10, rounding=RoundNearestTiesAway) @test cmp(dec"-36852134.84194296250843579428931", dec"-36852134.94194296250843579428931") == dec"1"
    # comx766
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-36852134.84194296250843579428931", dec"-36852134.94194296250843579428931") == dec"1"
    # comx767
    @with_context (Emax=999, Emin=-999, precision=8, rounding=RoundNearestTiesAway) @test cmp(dec"-36852134.84194296250843579428931", dec"-36852134.94194296250843579428931") == dec"1"
    # comx768
    @with_context (Emax=999, Emin=-999, precision=7, rounding=RoundNearestTiesAway) @test cmp(dec"-36852134.84194296250843579428931", dec"-36852134.94194296250843579428931") == dec"1"
    # comx769
    @with_context (Emax=999, Emin=-999, precision=6, rounding=RoundNearestTiesAway) @test cmp(dec"-36852134.84194296250843579428931", dec"-36852134.94194296250843579428931") == dec"1"
    # comx770
    @with_context (Emax=999, Emin=-999, precision=5, rounding=RoundNearestTiesAway) @test cmp(dec"-36852134.84194296250843579428931", dec"-36852134.94194296250843579428931") == dec"1"
    # comx771
    @with_context (Emax=999, Emin=-999, precision=4, rounding=RoundNearestTiesAway) @test cmp(dec"-36852134.84194296250843579428931", dec"-36852134.94194296250843579428931") == dec"1"
    # comx772
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test cmp(dec"-36852134.84194296250843579428931", dec"-36852134.94194296250843579428931") == dec"1"
    # comx773
    @with_context (Emax=999, Emin=-999, precision=2, rounding=RoundNearestTiesAway) @test cmp(dec"-36852134.84194296250843579428931", dec"-36852134.94194296250843579428931") == dec"1"
    # comx774
    @with_context (Emax=999, Emin=-999, precision=1, rounding=RoundNearestTiesAway) @test cmp(dec"-36852134.84194296250843579428931", dec"-36852134.94194296250843579428931") == dec"1"
    # comx880
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"+1.23456789012345e-0", dec"9e+999999999") == dec"-1"
    # comx881
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"9e+999999999", dec"+1.23456789012345e-0") == dec"1"
    # comx882
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"+0.100", dec"9e-999999999") == dec"1"
    # comx883
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"9e-999999999", dec"+0.100") == dec"-1"
    # comx885
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-1.23456789012345e-0", dec"9e+999999999") == dec"-1"
    # comx886
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"9e+999999999", dec"-1.23456789012345e-0") == dec"1"
    # comx887
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-0.100", dec"9e-999999999") == dec"-1"
    # comx888
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"9e-999999999", dec"-0.100") == dec"1"
    # comx889
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1e-599999999", dec"1e-400000001") == dec"-1"
    # comx890
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1e-599999999", dec"1e-400000000") == dec"-1"
    # comx891
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1e-600000000", dec"1e-400000000") == dec"-1"
    # comx892
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"9e-999999998", dec"0.01") == dec"-1"
    # comx893
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"9e-999999998", dec"0.1") == dec"-1"
    # comx894
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"0.01", dec"9e-999999998") == dec"1"
    # comx895
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1e599999999", dec"1e400000001") == dec"1"
    # comx896
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1e599999999", dec"1e400000000") == dec"1"
    # comx897
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1e600000000", dec"1e400000000") == dec"1"
    # comx898
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"9e999999998", dec"100") == dec"1"
    # comx899
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"9e999999998", dec"10") == dec"1"
    # comx900
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"100", dec"9e999999998") == dec"-1"
    # comx901
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1e+777777777", dec"1e+411111111") == dec"1"
    # comx902
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1e+777777777", dec"-1e+411111111") == dec"1"
    # comx903
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-1e+777777777", dec"1e+411111111") == dec"-1"
    # comx904
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-1e+777777777", dec"-1e+411111111") == dec"-1"
    # comx905
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1e-777777777", dec"1e-411111111") == dec"-1"
    # comx906
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"1e-777777777", dec"-1e-411111111") == dec"1"
    # comx907
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-1e-777777777", dec"1e-411111111") == dec"-1"
    # comx908
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-1e-777777777", dec"-1e-411111111") == dec"1"
    # comx910
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"0e-383", dec"0") == dec"0"
    # comx911
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"0e-383", dec"-0") == dec"0"
    # comx912
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-0e-383", dec"0") == dec"0"
    # comx913
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-0e-383", dec"-0") == dec"0"
    # comx914
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"0e-383", dec"0e+384") == dec"0"
    # comx915
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"0e-383", dec"-0e+384") == dec"0"
    # comx916
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-0e-383", dec"0e+384") == dec"0"
    # comx917
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-0e-383", dec"-0e+384") == dec"0"
    # comx918
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"0", dec"0e+384") == dec"0"
    # comx919
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"0", dec"-0e+384") == dec"0"
    # comx920
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-0", dec"0e+384") == dec"0"
    # comx921
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-0", dec"-0e+384") == dec"0"
    # comx930
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"0e+384", dec"0") == dec"0"
    # comx931
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"0e+384", dec"-0") == dec"0"
    # comx932
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-0e+384", dec"0") == dec"0"
    # comx933
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-0e+384", dec"-0") == dec"0"
    # comx934
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"0e+384", dec"0e-383") == dec"0"
    # comx935
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"0e+384", dec"-0e-383") == dec"0"
    # comx936
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-0e+384", dec"0e-383") == dec"0"
    # comx937
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-0e+384", dec"-0e-383") == dec"0"
    # comx938
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"0", dec"0e-383") == dec"0"
    # comx939
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"0", dec"-0e-383") == dec"0"
    # comx940
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-0", dec"0e-383") == dec"0"
    # comx941
    @with_context (Emax=999999999, Emin=-999999999, precision=9, rounding=RoundNearestTiesAway) @test cmp(dec"-0", dec"-0e-383") == dec"0"
end
