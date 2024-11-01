using Decimals
using ScopedValues
using Test
using Decimals: @with_context

@testset "Max" begin
    # maxx001
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test max(dec"-2", dec"-2") == dec"-2"
    # maxx002
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test max(dec"-2", dec"-1") == dec"-1"
    # maxx003
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test max(dec"-2", dec"0") == dec"0"
    # maxx004
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test max(dec"-2", dec"1") == dec"1"
    # maxx005
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test max(dec"-2", dec"2") == dec"2"
    # maxx006
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test max(dec"-1", dec"-2") == dec"-1"
    # maxx007
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test max(dec"-1", dec"-1") == dec"-1"
    # maxx008
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test max(dec"-1", dec"0") == dec"0"
    # maxx009
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test max(dec"-1", dec"1") == dec"1"
    # maxx010
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test max(dec"-1", dec"2") == dec"2"
    # maxx011
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test max(dec"0", dec"-2") == dec"0"
    # maxx012
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test max(dec"0", dec"-1") == dec"0"
    # maxx013
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test max(dec"0", dec"0") == dec"0"
    # maxx014
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test max(dec"0", dec"1") == dec"1"
    # maxx015
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test max(dec"0", dec"2") == dec"2"
    # maxx016
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test max(dec"1", dec"-2") == dec"1"
    # maxx017
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test max(dec"1", dec"-1") == dec"1"
    # maxx018
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test max(dec"1", dec"0") == dec"1"
    # maxx019
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test max(dec"1", dec"1") == dec"1"
    # maxx020
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test max(dec"1", dec"2") == dec"2"
    # maxx021
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test max(dec"2", dec"-2") == dec"2"
    # maxx022
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test max(dec"2", dec"-1") == dec"2"
    # maxx023
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test max(dec"2", dec"0") == dec"2"
    # maxx025
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test max(dec"2", dec"1") == dec"2"
    # maxx026
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test max(dec"2", dec"2") == dec"2"
    # maxx030
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test max(dec"0", dec"0") == dec"0"
    # maxx031
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test max(dec"0", dec"-0") == dec"0"
    # maxx032
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test max(dec"0", dec"-0.0") == dec"0"
    # maxx033
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test max(dec"0", dec"0.0") == dec"0"
    # maxx034
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test max(dec"-0", dec"0") == dec"0"
    # maxx035
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test max(dec"-0", dec"-0") == dec"-0"
    # maxx036
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test max(dec"-0", dec"-0.0") == dec"-0.0"
    # maxx037
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test max(dec"-0", dec"0.0") == dec"0.0"
    # maxx038
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test max(dec"0.0", dec"0") == dec"0"
    # maxx039
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test max(dec"0.0", dec"-0") == dec"0.0"
    # maxx040
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test max(dec"0.0", dec"-0.0") == dec"0.0"
    # maxx041
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test max(dec"0.0", dec"0.0") == dec"0.0"
    # maxx042
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test max(dec"-0.0", dec"0") == dec"0"
    # maxx043
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test max(dec"-0.0", dec"-0") == dec"-0.0"
    # maxx044
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test max(dec"-0.0", dec"-0.0") == dec"-0.0"
    # maxx045
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test max(dec"-0.0", dec"0.0") == dec"0.0"
    # maxx050
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test max(dec"-0e1", dec"0e1") == dec"0e+1"
    # maxx051
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test max(dec"-0e2", dec"0e2") == dec"0e+2"
    # maxx052
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test max(dec"-0e2", dec"0e1") == dec"0e+1"
    # maxx053
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test max(dec"-0e1", dec"0e2") == dec"0e+2"
    # maxx054
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test max(dec"0e1", dec"-0e1") == dec"0e+1"
    # maxx055
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test max(dec"0e2", dec"-0e2") == dec"0e+2"
    # maxx056
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test max(dec"0e2", dec"-0e1") == dec"0e+2"
    # maxx057
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test max(dec"0e1", dec"-0e2") == dec"0e+1"
    # maxx058
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test max(dec"0e1", dec"0e1") == dec"0e+1"
    # maxx059
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test max(dec"0e2", dec"0e2") == dec"0e+2"
    # maxx060
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test max(dec"0e2", dec"0e1") == dec"0e+2"
    # maxx061
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test max(dec"0e1", dec"0e2") == dec"0e+2"
    # maxx062
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test max(dec"-0e1", dec"-0e1") == dec"-0e+1"
    # maxx063
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test max(dec"-0e2", dec"-0e2") == dec"-0e+2"
    # maxx064
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test max(dec"-0e2", dec"-0e1") == dec"-0e+1"
    # maxx065
    @with_context (Emax=384, Emin=-383, precision=9, rounding=RoundNearestTiesAway) @test max(dec"-0e1", dec"-0e2") == dec"-0e+1"
    # maxx201
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test max(dec"12345678000", dec"1") == dec"1.23456780e+10"
    # maxx202
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test max(dec"1", dec"12345678000") == dec"1.23456780e+10"
    # maxx203
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test max(dec"1234567800", dec"1") == dec"1.23456780e+9"
    # maxx204
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test max(dec"1", dec"1234567800") == dec"1.23456780e+9"
    # maxx205
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test max(dec"1234567890", dec"1") == dec"1.23456789e+9"
    # maxx206
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test max(dec"1", dec"1234567890") == dec"1.23456789e+9"
    # maxx207
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test max(dec"1234567891", dec"1") == dec"1.23456789e+9"
    # maxx208
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test max(dec"1", dec"1234567891") == dec"1.23456789e+9"
    # maxx209
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test max(dec"12345678901", dec"1") == dec"1.23456789e+10"
    # maxx210
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test max(dec"1", dec"12345678901") == dec"1.23456789e+10"
    # maxx211
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test max(dec"1234567896", dec"1") == dec"1.23456790e+9"
    # maxx212
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test max(dec"1", dec"1234567896") == dec"1.23456790e+9"
    # maxx213
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test max(dec"-1234567891", dec"1") == dec"1"
    # maxx214
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test max(dec"1", dec"-1234567891") == dec"1"
    # maxx215
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test max(dec"-12345678901", dec"1") == dec"1"
    # maxx216
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test max(dec"1", dec"-12345678901") == dec"1"
    # maxx217
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test max(dec"-1234567896", dec"1") == dec"1"
    # maxx218
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test max(dec"1", dec"-1234567896") == dec"1"
    # maxx221
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"12345678000", dec"1") == dec"12345678000"
    # maxx222
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"1", dec"12345678000") == dec"12345678000"
    # maxx223
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"1234567800", dec"1") == dec"1234567800"
    # maxx224
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"1", dec"1234567800") == dec"1234567800"
    # maxx225
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"1234567890", dec"1") == dec"1234567890"
    # maxx226
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"1", dec"1234567890") == dec"1234567890"
    # maxx227
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"1234567891", dec"1") == dec"1234567891"
    # maxx228
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"1", dec"1234567891") == dec"1234567891"
    # maxx229
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"12345678901", dec"1") == dec"12345678901"
    # maxx230
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"1", dec"12345678901") == dec"12345678901"
    # maxx231
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"1234567896", dec"1") == dec"1234567896"
    # maxx232
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"1", dec"1234567896") == dec"1234567896"
    # maxx233
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"-1234567891", dec"1") == dec"1"
    # maxx234
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"1", dec"-1234567891") == dec"1"
    # maxx235
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"-12345678901", dec"1") == dec"1"
    # maxx236
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"1", dec"-12345678901") == dec"1"
    # maxx237
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"-1234567896", dec"1") == dec"1"
    # maxx238
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"1", dec"-1234567896") == dec"1"
    # maxx280
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"3", dec"2") == dec"3"
    # maxx281
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"-10", dec"3") == dec"3"
    # maxx282
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"1.0", dec"1") == dec"1"
    # maxx283
    @with_context (Emax=999, Emin=-999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"1", dec"1.0") == dec"1"
    # maxx330
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"+1.23456789012345e-0", dec"9e+999999999") == dec"9e+999999999"
    # maxx331
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"9e+999999999", dec"+1.23456789012345e-0") == dec"9e+999999999"
    # maxx332
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"+0.100", dec"9e-999999999") == dec"0.100"
    # maxx333
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"9e-999999999", dec"+0.100") == dec"0.100"
    # maxx335
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"-1.23456789012345e-0", dec"9e+999999999") == dec"9e+999999999"
    # maxx336
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"9e+999999999", dec"-1.23456789012345e-0") == dec"9e+999999999"
    # maxx337
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"-0.100", dec"9e-999999999") == dec"9e-999999999"
    # maxx338
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"9e-999999999", dec"-0.100") == dec"9e-999999999"
    # maxx339
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"1e-599999999", dec"1e-400000001") == dec"1e-400000001"
    # maxx340
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"1e-599999999", dec"1e-400000000") == dec"1e-400000000"
    # maxx341
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"1e-600000000", dec"1e-400000000") == dec"1e-400000000"
    # maxx342
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"9e-999999998", dec"0.01") == dec"0.01"
    # maxx343
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"9e-999999998", dec"0.1") == dec"0.1"
    # maxx344
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"0.01", dec"9e-999999998") == dec"0.01"
    # maxx345
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"1e599999999", dec"1e400000001") == dec"1e+599999999"
    # maxx346
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"1e599999999", dec"1e400000000") == dec"1e+599999999"
    # maxx347
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"1e600000000", dec"1e400000000") == dec"1e+600000000"
    # maxx348
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"9e999999998", dec"100") == dec"9e+999999998"
    # maxx349
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"9e999999998", dec"10") == dec"9e+999999998"
    # maxx350
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"100", dec"9e999999998") == dec"9e+999999998"
    # maxx351
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"1e+777777777", dec"1e+411111111") == dec"1e+777777777"
    # maxx352
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"1e+777777777", dec"-1e+411111111") == dec"1e+777777777"
    # maxx353
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"-1e+777777777", dec"1e+411111111") == dec"1e+411111111"
    # maxx354
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"-1e+777777777", dec"-1e+411111111") == dec"-1e+411111111"
    # maxx355
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"1e-777777777", dec"1e-411111111") == dec"1e-411111111"
    # maxx356
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"1e-777777777", dec"-1e-411111111") == dec"1e-777777777"
    # maxx357
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"-1e-777777777", dec"1e-411111111") == dec"1e-411111111"
    # maxx358
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"-1e-777777777", dec"-1e-411111111") == dec"-1e-777777777"
    # maxx402
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"1.1", dec"1") == dec"1.1"
    # maxx403
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"1", dec"1.0") == dec"1"
    # maxx404
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"1.0", dec"0.1") == dec"1.0"
    # maxx405
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"0.1", dec"0.10") == dec"0.1"
    # maxx406
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"0.10", dec"0.100") == dec"0.10"
    # maxx407
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"0.10", dec"0") == dec"0.10"
    # maxx408
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"0", dec"0.0") == dec"0"
    # maxx409
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"0.0", dec"-0") == dec"0.0"
    # maxx410
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"0.0", dec"-0.0") == dec"0.0"
    # maxx411
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"0.00", dec"-0.0") == dec"0.00"
    # maxx412
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"0.0", dec"-0.00") == dec"0.0"
    # maxx413
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"0", dec"-0.0") == dec"0"
    # maxx414
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"0", dec"-0") == dec"0"
    # maxx415
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"-0.0", dec"-0") == dec"-0.0"
    # maxx416
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"-0", dec"-0.100") == dec"-0"
    # maxx417
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"-0.100", dec"-0.10") == dec"-0.100"
    # maxx418
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"-0.10", dec"-0.1") == dec"-0.10"
    # maxx419
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"-0.1", dec"-1.0") == dec"-0.1"
    # maxx420
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"-1.0", dec"-1") == dec"-1.0"
    # maxx421
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"-1", dec"-1.1") == dec"-1"
    # maxx432
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"1", dec"1.1") == dec"1.1"
    # maxx433
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"1.0", dec"1") == dec"1"
    # maxx434
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"0.1", dec"1.0") == dec"1.0"
    # maxx435
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"0.10", dec"0.1") == dec"0.1"
    # maxx436
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"0.100", dec"0.10") == dec"0.10"
    # maxx437
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"0", dec"0.10") == dec"0.10"
    # maxx438
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"0.0", dec"0") == dec"0"
    # maxx439
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"-0", dec"0.0") == dec"0.0"
    # maxx440
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"-0.0", dec"0.0") == dec"0.0"
    # maxx441
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"-0.0", dec"0.00") == dec"0.00"
    # maxx442
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"-0.00", dec"0.0") == dec"0.0"
    # maxx443
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"-0.0", dec"0") == dec"0"
    # maxx444
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"-0", dec"0") == dec"0"
    # maxx445
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"-0", dec"-0.0") == dec"-0.0"
    # maxx446
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"-0.100", dec"-0") == dec"-0"
    # maxx447
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"-0.10", dec"-0.100") == dec"-0.100"
    # maxx448
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"-0.1", dec"-0.10") == dec"-0.10"
    # maxx449
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"-1.0", dec"-0.1") == dec"-0.1"
    # maxx450
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"-1", dec"-1.0") == dec"-1.0"
    # maxx451
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"-1.1", dec"-1") == dec"-1"
    # maxx460
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"1000", dec"1e+3") == dec"1e+3"
    # maxx461
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"1e+3", dec"1000") == dec"1e+3"
    # maxx462
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"1000", dec"-1e+3") == dec"1000"
    # maxx463
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"1e+3", dec"-1000") == dec"1e+3"
    # maxx464
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"-1000", dec"1e+3") == dec"1e+3"
    # maxx465
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"-1e+3", dec"1000") == dec"1000"
    # maxx466
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"-1000", dec"-1e+3") == dec"-1000"
    # maxx467
    @with_context (Emax=999999999, Emin=-999999999, precision=15, rounding=RoundNearestTiesAway) @test max(dec"-1e+3", dec"-1000") == dec"-1000"
    # maxx470
    @with_context (Emax=999999999, Emin=-999999999, precision=3, rounding=RoundNearestTiesAway) @test max(dec"1", dec".5") == dec"1"
    # maxx471
    @with_context (Emax=999999999, Emin=-999999999, precision=3, rounding=RoundNearestTiesAway) @test max(dec"10", dec"5") == dec"10"
    # maxx472
    @with_context (Emax=999999999, Emin=-999999999, precision=3, rounding=RoundNearestTiesAway) @test max(dec"100", dec"50") == dec"100"
    # maxx473
    @with_context (Emax=999999999, Emin=-999999999, precision=3, rounding=RoundNearestTiesAway) @test max(dec"1000", dec"500") == dec"1.00e+3"
    # maxx474
    @with_context (Emax=999999999, Emin=-999999999, precision=3, rounding=RoundNearestTiesAway) @test max(dec"10000", dec"5000") == dec"1.00e+4"
    # maxx475
    @with_context (Emax=999999999, Emin=-999999999, precision=3, rounding=RoundNearestTiesAway) @test max(dec"6", dec".5") == dec"6"
    # maxx476
    @with_context (Emax=999999999, Emin=-999999999, precision=3, rounding=RoundNearestTiesAway) @test max(dec"66", dec"5") == dec"66"
    # maxx477
    @with_context (Emax=999999999, Emin=-999999999, precision=3, rounding=RoundNearestTiesAway) @test max(dec"666", dec"50") == dec"666"
    # maxx478
    @with_context (Emax=999999999, Emin=-999999999, precision=3, rounding=RoundNearestTiesAway) @test max(dec"6666", dec"500") == dec"6.67e+3"
    # maxx479
    @with_context (Emax=999999999, Emin=-999999999, precision=3, rounding=RoundNearestTiesAway) @test max(dec"66666", dec"5000") == dec"6.67e+4"
    # maxx480
    @with_context (Emax=999999999, Emin=-999999999, precision=3, rounding=RoundNearestTiesAway) @test max(dec"33333", dec"5000") == dec"3.33e+4"
    # maxx481
    @with_context (Emax=999999999, Emin=-999999999, precision=3, rounding=RoundNearestTiesAway) @test max(dec".5", dec"1") == dec"1"
    # maxx482
    @with_context (Emax=999999999, Emin=-999999999, precision=3, rounding=RoundNearestTiesAway) @test max(dec".5", dec"10") == dec"10"
    # maxx483
    @with_context (Emax=999999999, Emin=-999999999, precision=3, rounding=RoundNearestTiesAway) @test max(dec".5", dec"100") == dec"100"
    # maxx484
    @with_context (Emax=999999999, Emin=-999999999, precision=3, rounding=RoundNearestTiesAway) @test max(dec".5", dec"1000") == dec"1.00e+3"
    # maxx485
    @with_context (Emax=999999999, Emin=-999999999, precision=3, rounding=RoundNearestTiesAway) @test max(dec".5", dec"10000") == dec"1.00e+4"
    # maxx486
    @with_context (Emax=999999999, Emin=-999999999, precision=3, rounding=RoundNearestTiesAway) @test max(dec".5", dec"6") == dec"6"
    # maxx487
    @with_context (Emax=999999999, Emin=-999999999, precision=3, rounding=RoundNearestTiesAway) @test max(dec".5", dec"66") == dec"66"
    # maxx488
    @with_context (Emax=999999999, Emin=-999999999, precision=3, rounding=RoundNearestTiesAway) @test max(dec".5", dec"666") == dec"666"
    # maxx489
    @with_context (Emax=999999999, Emin=-999999999, precision=3, rounding=RoundNearestTiesAway) @test max(dec".5", dec"6666") == dec"6.67e+3"
    # maxx490
    @with_context (Emax=999999999, Emin=-999999999, precision=3, rounding=RoundNearestTiesAway) @test max(dec".5", dec"66666") == dec"6.67e+4"
    # maxx491
    @with_context (Emax=999999999, Emin=-999999999, precision=3, rounding=RoundNearestTiesAway) @test max(dec".5", dec"33333") == dec"3.33e+4"
    # maxx500
    @with_context (Emax=999999999, Emin=-999999999, precision=3, rounding=RoundNearestTiesAway) @test_throws OverflowError max(dec"9.999e+999999999", dec"0")
    # maxx501
    @with_context (Emax=999999999, Emin=-999999999, precision=3, rounding=RoundNearestTiesAway) @test max(dec"-9.999e+999999999", dec"0") == dec"0"
    # maxx510
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test max(dec"1.00e-999", dec"0") == dec"1.00e-999"
    # maxx511
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test max(dec"0.1e-999", dec"0") == dec"1e-1000"
    # maxx512
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test max(dec"0.10e-999", dec"0") == dec"1.0e-1000"
    # maxx513
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test max(dec"0.100e-999", dec"0") == dec"1.0e-1000"
    # maxx514
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test max(dec"0.01e-999", dec"0") == dec"1e-1001"
    # maxx515
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test max(dec"0.999e-999", dec"0") == dec"1.00e-999"
    # maxx516
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test max(dec"0.099e-999", dec"0") == dec"1.0e-1000"
    # maxx517
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test max(dec"0.009e-999", dec"0") == dec"1e-1001"
    # maxx518
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test max(dec"0.001e-999", dec"0") == dec"0e-1001"
    # maxx519
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test max(dec"0.0009e-999", dec"0") == dec"0e-1001"
    # maxx520
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test max(dec"0.0001e-999", dec"0") == dec"0e-1001"
    # maxx530
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test max(dec"-1.00e-999", dec"0") == dec"0"
    # maxx531
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test max(dec"-0.1e-999", dec"0") == dec"0"
    # maxx532
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test max(dec"-0.10e-999", dec"0") == dec"0"
    # maxx533
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test max(dec"-0.100e-999", dec"0") == dec"0"
    # maxx534
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test max(dec"-0.01e-999", dec"0") == dec"0"
    # maxx535
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test max(dec"-0.999e-999", dec"0") == dec"0"
    # maxx536
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test max(dec"-0.099e-999", dec"0") == dec"0"
    # maxx537
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test max(dec"-0.009e-999", dec"0") == dec"0"
    # maxx538
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test max(dec"-0.001e-999", dec"0") == dec"0"
    # maxx539
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test max(dec"-0.0009e-999", dec"0") == dec"0"
    # maxx540
    @with_context (Emax=999, Emin=-999, precision=3, rounding=RoundNearestTiesAway) @test max(dec"-0.0001e-999", dec"0") == dec"0"
    # maxx551
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test max(dec"1.0", dec"0.1") == dec"1.0"
    # maxx552
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test max(dec"0.1", dec"1.0") == dec"1.0"
    # maxx553
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test max(dec"10.0", dec"0.1") == dec"10.0"
    # maxx554
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test max(dec"0.1", dec"10.0") == dec"10.0"
    # maxx555
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test max(dec"100", dec"1.0") == dec"100"
    # maxx556
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test max(dec"1.0", dec"100") == dec"100"
    # maxx557
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test max(dec"1000", dec"10.0") == dec"1000"
    # maxx558
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test max(dec"10.0", dec"1000") == dec"1000"
    # maxx559
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test max(dec"10000", dec"100.0") == dec"10000"
    # maxx560
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test max(dec"100.0", dec"10000") == dec"10000"
    # maxx661
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test max(dec"100000", dec"1000.0") == dec"100000"
    # maxx662
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test max(dec"1000.0", dec"100000") == dec"100000"
    # maxx663
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test max(dec"1000000", dec"10000.0") == dec"1000000"
    # maxx664
    @with_context (Emax=999, Emin=-999, precision=9, rounding=RoundNearestTiesAway) @test max(dec"10000.0", dec"1000000") == dec"1000000"
end
