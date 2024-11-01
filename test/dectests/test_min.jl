using Decimals
using ScopedValues
using Test
using Decimals: @with_context

@testset "Min" begin
    # mnmx001
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test min(dec"-2", dec"-2") == dec"-2"
    # mnmx002
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test min(dec"-2", dec"-1") == dec"-2"
    # mnmx003
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test min(dec"-2", dec"0") == dec"-2"
    # mnmx004
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test min(dec"-2", dec"1") == dec"-2"
    # mnmx005
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test min(dec"-2", dec"2") == dec"-2"
    # mnmx006
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test min(dec"-1", dec"-2") == dec"-2"
    # mnmx007
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test min(dec"-1", dec"-1") == dec"-1"
    # mnmx008
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test min(dec"-1", dec"0") == dec"-1"
    # mnmx009
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test min(dec"-1", dec"1") == dec"-1"
    # mnmx010
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test min(dec"-1", dec"2") == dec"-1"
    # mnmx011
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test min(dec"0", dec"-2") == dec"-2"
    # mnmx012
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test min(dec"0", dec"-1") == dec"-1"
    # mnmx013
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test min(dec"0", dec"0") == dec"0"
    # mnmx014
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test min(dec"0", dec"1") == dec"0"
    # mnmx015
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test min(dec"0", dec"2") == dec"0"
    # mnmx016
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test min(dec"1", dec"-2") == dec"-2"
    # mnmx017
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test min(dec"1", dec"-1") == dec"-1"
    # mnmx018
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test min(dec"1", dec"0") == dec"0"
    # mnmx019
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test min(dec"1", dec"1") == dec"1"
    # mnmx020
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test min(dec"1", dec"2") == dec"1"
    # mnmx021
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test min(dec"2", dec"-2") == dec"-2"
    # mnmx022
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test min(dec"2", dec"-1") == dec"-1"
    # mnmx023
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test min(dec"2", dec"0") == dec"0"
    # mnmx025
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test min(dec"2", dec"1") == dec"1"
    # mnmx026
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test min(dec"2", dec"2") == dec"2"
    # mnmx030
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test min(dec"0", dec"0") == dec"0"
    # mnmx031
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test min(dec"0", dec"-0") == dec"-0"
    # mnmx032
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test min(dec"0", dec"-0.0") == dec"-0.0"
    # mnmx033
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test min(dec"0", dec"0.0") == dec"0.0"
    # mnmx034
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test min(dec"-0", dec"0") == dec"-0"
    # mnmx035
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test min(dec"-0", dec"-0") == dec"-0"
    # mnmx036
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test min(dec"-0", dec"-0.0") == dec"-0"
    # mnmx037
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test min(dec"-0", dec"0.0") == dec"-0"
    # mnmx038
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test min(dec"0.0", dec"0") == dec"0.0"
    # mnmx039
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test min(dec"0.0", dec"-0") == dec"-0"
    # mnmx040
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test min(dec"0.0", dec"-0.0") == dec"-0.0"
    # mnmx041
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test min(dec"0.0", dec"0.0") == dec"0.0"
    # mnmx042
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test min(dec"-0.0", dec"0") == dec"-0.0"
    # mnmx043
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test min(dec"-0.0", dec"-0") == dec"-0"
    # mnmx044
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test min(dec"-0.0", dec"-0.0") == dec"-0.0"
    # mnmx045
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test min(dec"-0.0", dec"0.0") == dec"-0.0"
    # mnmx046
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test min(dec"0e1", dec"-0e1") == dec"-0e+1"
    # mnmx047
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test min(dec"-0e1", dec"0e2") == dec"-0e+1"
    # mnmx048
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test min(dec"0e2", dec"0e1") == dec"0e+1"
    # mnmx049
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test min(dec"0e1", dec"0e2") == dec"0e+1"
    # mnmx050
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test min(dec"-0e3", dec"-0e2") == dec"-0e+3"
    # mnmx051
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test min(dec"-0e2", dec"-0e3") == dec"-0e+3"
    # mnmx201
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test min(dec"-12345678000", dec"1") == dec"-1.23456780e+10"
    # mnmx202
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test min(dec"1", dec"-12345678000") == dec"-1.23456780e+10"
    # mnmx203
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test min(dec"-1234567800", dec"1") == dec"-1.23456780e+9"
    # mnmx204
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test min(dec"1", dec"-1234567800") == dec"-1.23456780e+9"
    # mnmx205
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test min(dec"-1234567890", dec"1") == dec"-1.23456789e+9"
    # mnmx206
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test min(dec"1", dec"-1234567890") == dec"-1.23456789e+9"
    # mnmx207
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test min(dec"-1234567891", dec"1") == dec"-1.23456789e+9"
    # mnmx208
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test min(dec"1", dec"-1234567891") == dec"-1.23456789e+9"
    # mnmx209
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test min(dec"-12345678901", dec"1") == dec"-1.23456789e+10"
    # mnmx210
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test min(dec"1", dec"-12345678901") == dec"-1.23456789e+10"
    # mnmx211
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test min(dec"-1234567896", dec"1") == dec"-1.23456790e+9"
    # mnmx212
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test min(dec"1", dec"-1234567896") == dec"-1.23456790e+9"
    # mnmx213
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test min(dec"1234567891", dec"1") == dec"1"
    # mnmx214
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test min(dec"1", dec"1234567891") == dec"1"
    # mnmx215
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test min(dec"12345678901", dec"1") == dec"1"
    # mnmx216
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test min(dec"1", dec"12345678901") == dec"1"
    # mnmx217
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test min(dec"1234567896", dec"1") == dec"1"
    # mnmx218
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test min(dec"1", dec"1234567896") == dec"1"
    # mnmx221
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"-12345678000", dec"1") == dec"-12345678000"
    # mnmx222
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"1", dec"-12345678000") == dec"-12345678000"
    # mnmx223
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"-1234567800", dec"1") == dec"-1234567800"
    # mnmx224
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"1", dec"-1234567800") == dec"-1234567800"
    # mnmx225
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"-1234567890", dec"1") == dec"-1234567890"
    # mnmx226
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"1", dec"-1234567890") == dec"-1234567890"
    # mnmx227
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"-1234567891", dec"1") == dec"-1234567891"
    # mnmx228
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"1", dec"-1234567891") == dec"-1234567891"
    # mnmx229
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"-12345678901", dec"1") == dec"-12345678901"
    # mnmx230
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"1", dec"-12345678901") == dec"-12345678901"
    # mnmx231
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"-1234567896", dec"1") == dec"-1234567896"
    # mnmx232
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"1", dec"-1234567896") == dec"-1234567896"
    # mnmx233
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"1234567891", dec"1") == dec"1"
    # mnmx234
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"1", dec"1234567891") == dec"1"
    # mnmx235
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"12345678901", dec"1") == dec"1"
    # mnmx236
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"1", dec"12345678901") == dec"1"
    # mnmx237
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"1234567896", dec"1") == dec"1"
    # mnmx238
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"1", dec"1234567896") == dec"1"
    # mnmx280
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"3", dec"2") == dec"2"
    # mnmx281
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"-10", dec"3") == dec"-10"
    # mnmx282
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"1.0", dec"1") == dec"1.0"
    # mnmx283
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"1", dec"1.0") == dec"1.0"
    # mnmx330
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"-1.23456789012345e-0", dec"-9e+999999999") == dec"-9e+999999999"
    # mnmx331
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"-9e+999999999", dec"-1.23456789012345e-0") == dec"-9e+999999999"
    # mnmx332
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"-0.100", dec"-9e-999999999") == dec"-0.100"
    # mnmx333
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"-9e-999999999", dec"-0.100") == dec"-0.100"
    # mnmx335
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"+1.23456789012345e-0", dec"-9e+999999999") == dec"-9e+999999999"
    # mnmx336
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"-9e+999999999", dec"1.23456789012345e-0") == dec"-9e+999999999"
    # mnmx337
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"+0.100", dec"-9e-999999999") == dec"-9e-999999999"
    # mnmx338
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"-9e-999999999", dec"0.100") == dec"-9e-999999999"
    # mnmx339
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"-1e-599999999", dec"-1e-400000001") == dec"-1e-400000001"
    # mnmx340
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"-1e-599999999", dec"-1e-400000000") == dec"-1e-400000000"
    # mnmx341
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"-1e-600000000", dec"-1e-400000000") == dec"-1e-400000000"
    # mnmx342
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"-9e-999999998", dec"-0.01") == dec"-0.01"
    # mnmx343
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"-9e-999999998", dec"-0.1") == dec"-0.1"
    # mnmx344
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"-0.01", dec"-9e-999999998") == dec"-0.01"
    # mnmx345
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"-1e599999999", dec"-1e400000001") == dec"-1e+599999999"
    # mnmx346
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"-1e599999999", dec"-1e400000000") == dec"-1e+599999999"
    # mnmx347
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"-1e600000000", dec"-1e400000000") == dec"-1e+600000000"
    # mnmx348
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"-9e999999998", dec"-100") == dec"-9e+999999998"
    # mnmx349
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"-9e999999998", dec"-10") == dec"-9e+999999998"
    # mnmx350
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"-100", dec"-9e999999998") == dec"-9e+999999998"
    # mnmx351
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"-1e+777777777", dec"-1e+411111111") == dec"-1e+777777777"
    # mnmx352
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"-1e+777777777", dec"+1e+411111111") == dec"-1e+777777777"
    # mnmx353
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"+1e+777777777", dec"-1e+411111111") == dec"-1e+411111111"
    # mnmx354
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"+1e+777777777", dec"+1e+411111111") == dec"1e+411111111"
    # mnmx355
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"-1e-777777777", dec"-1e-411111111") == dec"-1e-411111111"
    # mnmx356
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"-1e-777777777", dec"+1e-411111111") == dec"-1e-777777777"
    # mnmx357
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"+1e-777777777", dec"-1e-411111111") == dec"-1e-411111111"
    # mnmx358
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"+1e-777777777", dec"+1e-411111111") == dec"1e-777777777"
    # mnmx402
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"1.1", dec"1") == dec"1"
    # mnmx403
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"1", dec"1.0") == dec"1.0"
    # mnmx404
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"1.0", dec"0.1") == dec"0.1"
    # mnmx405
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"0.1", dec"0.10") == dec"0.10"
    # mnmx406
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"0.10", dec"0.100") == dec"0.100"
    # mnmx407
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"0.10", dec"0") == dec"0"
    # mnmx408
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"0", dec"0.0") == dec"0.0"
    # mnmx409
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"0.0", dec"-0") == dec"-0"
    # mnmx410
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"0.0", dec"-0.0") == dec"-0.0"
    # mnmx411
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"0.00", dec"-0.0") == dec"-0.0"
    # mnmx412
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"0.0", dec"-0.00") == dec"-0.00"
    # mnmx413
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"0", dec"-0.0") == dec"-0.0"
    # mnmx414
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"0", dec"-0") == dec"-0"
    # mnmx415
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"-0.0", dec"-0") == dec"-0"
    # mnmx416
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"-0", dec"-0.100") == dec"-0.100"
    # mnmx417
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"-0.100", dec"-0.10") == dec"-0.10"
    # mnmx418
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"-0.10", dec"-0.1") == dec"-0.1"
    # mnmx419
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"-0.1", dec"-1.0") == dec"-1.0"
    # mnmx420
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"-1.0", dec"-1") == dec"-1"
    # mnmx421
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"-1", dec"-1.1") == dec"-1.1"
    # mnmx432
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"1", dec"1.1") == dec"1"
    # mnmx433
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"1.0", dec"1") == dec"1.0"
    # mnmx434
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"0.1", dec"1.0") == dec"0.1"
    # mnmx435
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"0.10", dec"0.1") == dec"0.10"
    # mnmx436
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"0.100", dec"0.10") == dec"0.100"
    # mnmx437
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"0", dec"0.10") == dec"0"
    # mnmx438
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"0.0", dec"0") == dec"0.0"
    # mnmx439
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"-0", dec"0.0") == dec"-0"
    # mnmx440
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"-0.0", dec"0.0") == dec"-0.0"
    # mnmx441
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"-0.0", dec"0.00") == dec"-0.0"
    # mnmx442
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"-0.00", dec"0.0") == dec"-0.00"
    # mnmx443
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"-0.0", dec"0") == dec"-0.0"
    # mnmx444
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"-0", dec"0") == dec"-0"
    # mnmx445
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"-0", dec"-0.0") == dec"-0"
    # mnmx446
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"-0.100", dec"-0") == dec"-0.100"
    # mnmx447
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"-0.10", dec"-0.100") == dec"-0.10"
    # mnmx448
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"-0.1", dec"-0.10") == dec"-0.1"
    # mnmx449
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"-1.0", dec"-0.1") == dec"-1.0"
    # mnmx450
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"-1", dec"-1.0") == dec"-1"
    # mnmx451
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"-1.1", dec"-1") == dec"-1.1"
    # mnmx460
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"1000", dec"1e+3") == dec"1000"
    # mnmx461
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"1e+3", dec"1000") == dec"1000"
    # mnmx462
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"1000", dec"-1e+3") == dec"-1e+3"
    # mnmx463
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"1e+3", dec"-1000") == dec"-1000"
    # mnmx464
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"-1000", dec"1e+3") == dec"-1000"
    # mnmx465
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"-1e+3", dec"1000") == dec"-1e+3"
    # mnmx466
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"-1000", dec"-1e+3") == dec"-1e+3"
    # mnmx467
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test min(dec"-1e+3", dec"-1000") == dec"-1e+3"
    # mnmx470
    @with_context (Emax=999999999, Emin=-999999999, precision=3, rounding=RoundNearestTiesAway) @test min(dec"1", dec"5") == dec"1"
    # mnmx471
    @with_context (Emax=999999999, Emin=-999999999, precision=3, rounding=RoundNearestTiesAway) @test min(dec"10", dec"50") == dec"10"
    # mnmx472
    @with_context (Emax=999999999, Emin=-999999999, precision=3, rounding=RoundNearestTiesAway) @test min(dec"100", dec"500") == dec"100"
    # mnmx473
    @with_context (Emax=999999999, Emin=-999999999, precision=3, rounding=RoundNearestTiesAway) @test min(dec"1000", dec"5000") == dec"1.00e+3"
    # mnmx474
    @with_context (Emax=999999999, Emin=-999999999, precision=3, rounding=RoundNearestTiesAway) @test min(dec"10000", dec"50000") == dec"1.00e+4"
    # mnmx475
    @with_context (Emax=999999999, Emin=-999999999, precision=3, rounding=RoundNearestTiesAway) @test min(dec"6", dec"50") == dec"6"
    # mnmx476
    @with_context (Emax=999999999, Emin=-999999999, precision=3, rounding=RoundNearestTiesAway) @test min(dec"66", dec"500") == dec"66"
    # mnmx477
    @with_context (Emax=999999999, Emin=-999999999, precision=3, rounding=RoundNearestTiesAway) @test min(dec"666", dec"5000") == dec"666"
    # mnmx478
    @with_context (Emax=999999999, Emin=-999999999, precision=3, rounding=RoundNearestTiesAway) @test min(dec"6666", dec"50000") == dec"6.67e+3"
    # mnmx479
    @with_context (Emax=999999999, Emin=-999999999, precision=3, rounding=RoundNearestTiesAway) @test min(dec"66666", dec"500000") == dec"6.67e+4"
    # mnmx480
    @with_context (Emax=999999999, Emin=-999999999, precision=3, rounding=RoundNearestTiesAway) @test min(dec"33333", dec"500000") == dec"3.33e+4"
    # mnmx481
    @with_context (Emax=999999999, Emin=-999999999, precision=3, rounding=RoundNearestTiesAway) @test min(dec"75401", dec"1") == dec"1"
    # mnmx482
    @with_context (Emax=999999999, Emin=-999999999, precision=3, rounding=RoundNearestTiesAway) @test min(dec"75402", dec"10") == dec"10"
    # mnmx483
    @with_context (Emax=999999999, Emin=-999999999, precision=3, rounding=RoundNearestTiesAway) @test min(dec"75403", dec"100") == dec"100"
    # mnmx484
    @with_context (Emax=999999999, Emin=-999999999, precision=3, rounding=RoundNearestTiesAway) @test min(dec"75404", dec"1000") == dec"1.00e+3"
    # mnmx485
    @with_context (Emax=999999999, Emin=-999999999, precision=3, rounding=RoundNearestTiesAway) @test min(dec"75405", dec"10000") == dec"1.00e+4"
    # mnmx486
    @with_context (Emax=999999999, Emin=-999999999, precision=3, rounding=RoundNearestTiesAway) @test min(dec"75406", dec"6") == dec"6"
    # mnmx487
    @with_context (Emax=999999999, Emin=-999999999, precision=3, rounding=RoundNearestTiesAway) @test min(dec"75407", dec"66") == dec"66"
    # mnmx488
    @with_context (Emax=999999999, Emin=-999999999, precision=3, rounding=RoundNearestTiesAway) @test min(dec"75408", dec"666") == dec"666"
    # mnmx489
    @with_context (Emax=999999999, Emin=-999999999, precision=3, rounding=RoundNearestTiesAway) @test min(dec"75409", dec"6666") == dec"6.67e+3"
    # mnmx490
    @with_context (Emax=999999999, Emin=-999999999, precision=3, rounding=RoundNearestTiesAway) @test min(dec"75410", dec"66666") == dec"6.67e+4"
    # mnmx491
    @with_context (Emax=999999999, Emin=-999999999, precision=3, rounding=RoundNearestTiesAway) @test min(dec"75411", dec"33333") == dec"3.33e+4"
    # mnmx500
    @with_context (Emax=999999999, Emin=-999999999, precision=3, rounding=RoundNearestTiesAway) @test min(dec"9.999e+999999999", dec"0") == dec"0"
    # mnmx501
    @with_context (Emax=999999999, Emin=-999999999, precision=3, rounding=RoundNearestTiesAway) @test_throws OverflowError min(dec"-9.999e+999999999", dec"0")
    # mnmx510
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test min(dec"1.00e-999", dec"0") == dec"0"
    # mnmx511
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test min(dec"0.1e-999", dec"0") == dec"0"
    # mnmx512
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test min(dec"0.10e-999", dec"0") == dec"0"
    # mnmx513
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test min(dec"0.100e-999", dec"0") == dec"0"
    # mnmx514
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test min(dec"0.01e-999", dec"0") == dec"0"
    # mnmx515
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test min(dec"0.999e-999", dec"0") == dec"0"
    # mnmx516
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test min(dec"0.099e-999", dec"0") == dec"0"
    # mnmx517
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test min(dec"0.009e-999", dec"0") == dec"0"
    # mnmx518
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test min(dec"0.001e-999", dec"0") == dec"0"
    # mnmx519
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test min(dec"0.0009e-999", dec"0") == dec"0"
    # mnmx520
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test min(dec"0.0001e-999", dec"0") == dec"0"
    # mnmx530
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test min(dec"-1.00e-999", dec"0") == dec"-1.00e-999"
    # mnmx531
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test min(dec"-0.1e-999", dec"0") == dec"-1e-1000"
    # mnmx532
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test min(dec"-0.10e-999", dec"0") == dec"-1.0e-1000"
    # mnmx533
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test min(dec"-0.100e-999", dec"0") == dec"-1.0e-1000"
    # mnmx534
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test min(dec"-0.01e-999", dec"0") == dec"-1e-1001"
    # mnmx535
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test min(dec"-0.999e-999", dec"0") == dec"-1.00e-999"
    # mnmx536
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test min(dec"-0.099e-999", dec"0") == dec"-1.0e-1000"
    # mnmx537
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test min(dec"-0.009e-999", dec"0") == dec"-1e-1001"
    # mnmx538
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test min(dec"-0.001e-999", dec"0") == dec"-0e-1001"
    # mnmx539
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test min(dec"-0.0009e-999", dec"0") == dec"-0e-1001"
    # mnmx540
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test min(dec"-0.0001e-999", dec"0") == dec"-0e-1001"
    # mnmx551
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test min(dec"1.0", dec"0.1") == dec"0.1"
    # mnmx552
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test min(dec"0.1", dec"1.0") == dec"0.1"
    # mnmx553
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test min(dec"10.0", dec"0.1") == dec"0.1"
    # mnmx554
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test min(dec"0.1", dec"10.0") == dec"0.1"
    # mnmx555
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test min(dec"100", dec"1.0") == dec"1.0"
    # mnmx556
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test min(dec"1.0", dec"100") == dec"1.0"
    # mnmx557
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test min(dec"1000", dec"10.0") == dec"10.0"
    # mnmx558
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test min(dec"10.0", dec"1000") == dec"10.0"
    # mnmx559
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test min(dec"10000", dec"100.0") == dec"100.0"
    # mnmx560
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test min(dec"100.0", dec"10000") == dec"100.0"
    # mnmx561
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test min(dec"100000", dec"1000.0") == dec"1000.0"
    # mnmx562
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test min(dec"1000.0", dec"100000") == dec"1000.0"
    # mnmx563
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test min(dec"1000000", dec"10000.0") == dec"10000.0"
    # mnmx564
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test min(dec"10000.0", dec"1000000") == dec"10000.0"
end
