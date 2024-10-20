using Decimals
using ScopedValues
using Test
using Decimals: @with_context

@testset "Plus" begin
    # plux001
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test +(dec"1") == dec"1"
    # plux002
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test +(dec"-1") == dec"-1"
    # plux003
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test +(dec"1.00") == dec"1.00"
    # plux004
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test +(dec"-1.00") == dec"-1.00"
    # plux005
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test +(dec"0") == dec"0"
    # plux006
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test +(dec"0.00") == dec"0.00"
    # plux007
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test +(dec"00.0") == dec"0.0"
    # plux008
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test +(dec"00.00") == dec"0.00"
    # plux009
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test +(dec"00") == dec"0"
    # plux010
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test +(dec"-2") == dec"-2"
    # plux011
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test +(dec"2") == dec"2"
    # plux012
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test +(dec"-2.00") == dec"-2.00"
    # plux013
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test +(dec"2.00") == dec"2.00"
    # plux014
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test +(dec"-0") == dec"0"
    # plux015
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test +(dec"-0.00") == dec"0.00"
    # plux016
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test +(dec"-00.0") == dec"0.0"
    # plux017
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test +(dec"-00.00") == dec"0.00"
    # plux018
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test +(dec"-00") == dec"0"
    # plux020
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test +(dec"-2000000") == dec"-2000000"
    # plux021
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test +(dec"2000000") == dec"2000000"
    # plux022
    @with_context (Emax=384, Emin=-383, precision=7, rounding=RoundNearestTiesAway) @test +(dec"-2000000") == dec"-2000000"
    # plux023
    @with_context (Emax=384, Emin=-383, precision=7, rounding=RoundNearestTiesAway) @test +(dec"2000000") == dec"2000000"
    # plux024
    @with_context (Emax=384, Emin=-383, precision=6, rounding=RoundNearestTiesAway) @test +(dec"-2000000") == dec"-2.00000e+6"
    # plux025
    @with_context (Emax=384, Emin=-383, precision=6, rounding=RoundNearestTiesAway) @test +(dec"2000000") == dec"2.00000e+6"
    # plux026
    @with_context (Emax=384, Emin=-383, precision=3, rounding=RoundNearestTiesAway) @test +(dec"-2000000") == dec"-2.00e+6"
    # plux027
    @with_context (Emax=384, Emin=-383, precision=3, rounding=RoundNearestTiesAway) @test +(dec"2000000") == dec"2.00e+6"
    # plux060
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test +(dec"56267e-10") == dec"0.0000056267"
    # plux061
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test +(dec"56267e-5") == dec"0.56267"
    # plux062
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test +(dec"56267e-2") == dec"562.67"
    # plux063
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test +(dec"56267e-1") == dec"5626.7"
    # plux065
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test +(dec"56267e-0") == dec"56267"
    # plux066
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test +(dec"56267e+0") == dec"56267"
    # plux067
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test +(dec"56267e+1") == dec"5.6267e+5"
    # plux068
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test +(dec"56267e+2") == dec"5.6267e+6"
    # plux069
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test +(dec"56267e+3") == dec"5.6267e+7"
    # plux070
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test +(dec"56267e+4") == dec"5.6267e+8"
    # plux071
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test +(dec"56267e+5") == dec"5.6267e+9"
    # plux072
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test +(dec"56267e+6") == dec"5.6267e+10"
    # plux080
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test +(dec"-56267e-10") == dec"-0.0000056267"
    # plux081
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test +(dec"-56267e-5") == dec"-0.56267"
    # plux082
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test +(dec"-56267e-2") == dec"-562.67"
    # plux083
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test +(dec"-56267e-1") == dec"-5626.7"
    # plux085
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test +(dec"-56267e-0") == dec"-56267"
    # plux086
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test +(dec"-56267e+0") == dec"-56267"
    # plux087
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test +(dec"-56267e+1") == dec"-5.6267e+5"
    # plux088
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test +(dec"-56267e+2") == dec"-5.6267e+6"
    # plux089
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test +(dec"-56267e+3") == dec"-5.6267e+7"
    # plux090
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test +(dec"-56267e+4") == dec"-5.6267e+8"
    # plux091
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test +(dec"-56267e+5") == dec"-5.6267e+9"
    # plux092
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test +(dec"-56267e+6") == dec"-5.6267e+10"
    # plux120
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test +(dec"-0e3") == dec"0e+3"
    # plux121
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test +(dec"-0e2") == dec"0e+2"
    # plux122
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test +(dec"-0e1") == dec"0e+1"
    # plux123
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test +(dec"-0e0") == dec"0"
    # plux124
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test +(dec"+0e0") == dec"0"
    # plux125
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test +(dec"+0e1") == dec"0e+1"
    # plux126
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test +(dec"+0e2") == dec"0e+2"
    # plux127
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test +(dec"+0e3") == dec"0e+3"
    # plux130
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test +(dec"-5e3") == dec"-5e+3"
    # plux131
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test +(dec"-5e8") == dec"-5e+8"
    # plux132
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test +(dec"-5e13") == dec"-5e+13"
    # plux133
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test +(dec"-5e18") == dec"-5e+18"
    # plux134
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test +(dec"+5e3") == dec"5e+3"
    # plux135
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test +(dec"+5e8") == dec"5e+8"
    # plux136
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test +(dec"+5e13") == dec"5e+13"
    # plux137
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test +(dec"+5e18") == dec"5e+18"
    # plux160
    @with_context (Emax=999999999, Emin=-999999999, precision=3, rounding=RoundNearestTiesAway) @test_throws OverflowError +(dec"9.999e+999999999")
    # plux161
    @with_context (Emax=999999999, Emin=-999999999, precision=3, rounding=RoundNearestTiesAway) @test_throws OverflowError +(dec"-9.999e+999999999")
    # plux210
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test +(dec"1.00e-999") == dec"1.00e-999"
    # plux211
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test +(dec"0.1e-999") == dec"1e-1000"
    # plux212
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test +(dec"0.10e-999") == dec"1.0e-1000"
    # plux213
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test +(dec"0.100e-999") == dec"1.0e-1000"
    # plux214
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test +(dec"0.01e-999") == dec"1e-1001"
    # plux215
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test +(dec"0.999e-999") == dec"1.00e-999"
    # plux216
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test +(dec"0.099e-999") == dec"1.0e-1000"
    # plux217
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test +(dec"0.009e-999") == dec"1e-1001"
    # plux218
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test +(dec"0.001e-999") == dec"0e-1001"
    # plux219
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test +(dec"0.0009e-999") == dec"0e-1001"
    # plux220
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test +(dec"0.0001e-999") == dec"0e-1001"
    # plux230
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test +(dec"-1.00e-999") == dec"-1.00e-999"
    # plux231
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test +(dec"-0.1e-999") == dec"-1e-1000"
    # plux232
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test +(dec"-0.10e-999") == dec"-1.0e-1000"
    # plux233
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test +(dec"-0.100e-999") == dec"-1.0e-1000"
    # plux234
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test +(dec"-0.01e-999") == dec"-1e-1001"
    # plux235
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test +(dec"-0.999e-999") == dec"-1.00e-999"
    # plux236
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test +(dec"-0.099e-999") == dec"-1.0e-1000"
    # plux237
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test +(dec"-0.009e-999") == dec"-1e-1001"
    # plux238
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test +(dec"-0.001e-999") == dec"-0e-1001"
    # plux239
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test +(dec"-0.0009e-999") == dec"-0e-1001"
    # plux240
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test +(dec"-0.0001e-999") == dec"-0e-1001"
    # plux251
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test +(dec"7e-398") == dec"7e-398"
    # plux252
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test +(dec"0e-398") == dec"0e-398"
    # plux253
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test +(dec"7e-399") == dec"1e-398"
    # plux254
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test +(dec"4e-399") == dec"0e-398"
    # plux255
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test +(dec"7e-400") == dec"0e-398"
    # plux256
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test +(dec"7e-401") == dec"0e-398"
    # plux257
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test +(dec"0e-399") == dec"0e-398"
    # plux258
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test +(dec"0e-400") == dec"0e-398"
    # plux259
    @with_context (Emax=384, Emin=-383, precision=16, rounding=RoundNearestTiesAway) @test +(dec"0e-401") == dec"0e-398"
    # plux301
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test +(dec"12345678000") == dec"1.23456780e+10"
    # plux302
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test +(dec"1234567800") == dec"1.23456780e+9"
    # plux303
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test +(dec"1234567890") == dec"1.23456789e+9"
    # plux304
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test +(dec"1234567891") == dec"1.23456789e+9"
    # plux305
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test +(dec"12345678901") == dec"1.23456789e+10"
    # plux306
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test +(dec"1234567896") == dec"1.23456790e+9"
    # plux321
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test +(dec"12345678000") == dec"12345678000"
    # plux322
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test +(dec"1234567800") == dec"1234567800"
    # plux323
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test +(dec"1234567890") == dec"1234567890"
    # plux324
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test +(dec"1234567891") == dec"1234567891"
    # plux325
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test +(dec"12345678901") == dec"12345678901"
    # plux326
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test +(dec"1234567896") == dec"1234567896"
end
