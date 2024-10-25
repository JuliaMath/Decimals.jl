using Decimals
using Test

@testset "Compare" begin
    # com001
    @test cmp(dec"-2", dec"-2") == 0
    # com002
    @test cmp(dec"-2", dec"-1") == -1
    # com003
    @test cmp(dec"-2", dec"0") == -1
    # com004
    @test cmp(dec"-2", dec"1") == -1
    # com005
    @test cmp(dec"-2", dec"2") == -1
    # com006
    @test cmp(dec"-1", dec"-2") == 1
    # com007
    @test cmp(dec"-1", dec"-1") == 0
    # com008
    @test cmp(dec"-1", dec"0") == -1
    # com009
    @test cmp(dec"-1", dec"1") == -1
    # com010
    @test cmp(dec"-1", dec"2") == -1
    # com011
    @test cmp(dec"0", dec"-2") == 1
    # com012
    @test cmp(dec"0", dec"-1") == 1
    # com013
    @test cmp(dec"0", dec"0") == 0
    # com014
    @test cmp(dec"0", dec"1") == -1
    # com015
    @test cmp(dec"0", dec"2") == -1
    # com016
    @test cmp(dec"1", dec"-2") == 1
    # com017
    @test cmp(dec"1", dec"-1") == 1
    # com018
    @test cmp(dec"1", dec"0") == 1
    # com019
    @test cmp(dec"1", dec"1") == 0
    # com020
    @test cmp(dec"1", dec"2") == -1
    # com021
    @test cmp(dec"2", dec"-2") == 1
    # com022
    @test cmp(dec"2", dec"-1") == 1
    # com023
    @test cmp(dec"2", dec"0") == 1
    # com025
    @test cmp(dec"2", dec"1") == 1
    # com026
    @test cmp(dec"2", dec"2") == 0
    # com031
    @test cmp(dec"-20", dec"-20") == 0
    # com032
    @test cmp(dec"-20", dec"-10") == -1
    # com033
    @test cmp(dec"-20", dec"00") == -1
    # com034
    @test cmp(dec"-20", dec"10") == -1
    # com035
    @test cmp(dec"-20", dec"20") == -1
    # com036
    @test cmp(dec"-10", dec"-20") == 1
    # com037
    @test cmp(dec"-10", dec"-10") == 0
    # com038
    @test cmp(dec"-10", dec"00") == -1
    # com039
    @test cmp(dec"-10", dec"10") == -1
    # com040
    @test cmp(dec"-10", dec"20") == -1
    # com041
    @test cmp(dec"00", dec"-20") == 1
    # com042
    @test cmp(dec"00", dec"-10") == 1
    # com043
    @test cmp(dec"00", dec"00") == 0
    # com044
    @test cmp(dec"00", dec"10") == -1
    # com045
    @test cmp(dec"00", dec"20") == -1
    # com046
    @test cmp(dec"10", dec"-20") == 1
    # com047
    @test cmp(dec"10", dec"-10") == 1
    # com048
    @test cmp(dec"10", dec"00") == 1
    # com049
    @test cmp(dec"10", dec"10") == 0
    # com050
    @test cmp(dec"10", dec"20") == -1
    # com051
    @test cmp(dec"20", dec"-20") == 1
    # com052
    @test cmp(dec"20", dec"-10") == 1
    # com053
    @test cmp(dec"20", dec"00") == 1
    # com055
    @test cmp(dec"20", dec"10") == 1
    # com056
    @test cmp(dec"20", dec"20") == 0
    # com061
    @test cmp(dec"-2.0", dec"-2.0") == 0
    # com062
    @test cmp(dec"-2.0", dec"-1.0") == -1
    # com063
    @test cmp(dec"-2.0", dec"0.0") == -1
    # com064
    @test cmp(dec"-2.0", dec"1.0") == -1
    # com065
    @test cmp(dec"-2.0", dec"2.0") == -1
    # com066
    @test cmp(dec"-1.0", dec"-2.0") == 1
    # com067
    @test cmp(dec"-1.0", dec"-1.0") == 0
    # com068
    @test cmp(dec"-1.0", dec"0.0") == -1
    # com069
    @test cmp(dec"-1.0", dec"1.0") == -1
    # com070
    @test cmp(dec"-1.0", dec"2.0") == -1
    # com071
    @test cmp(dec"0.0", dec"-2.0") == 1
    # com072
    @test cmp(dec"0.0", dec"-1.0") == 1
    # com073
    @test cmp(dec"0.0", dec"0.0") == 0
    # com074
    @test cmp(dec"0.0", dec"1.0") == -1
    # com075
    @test cmp(dec"0.0", dec"2.0") == -1
    # com076
    @test cmp(dec"1.0", dec"-2.0") == 1
    # com077
    @test cmp(dec"1.0", dec"-1.0") == 1
    # com078
    @test cmp(dec"1.0", dec"0.0") == 1
    # com079
    @test cmp(dec"1.0", dec"1.0") == 0
    # com080
    @test cmp(dec"1.0", dec"2.0") == -1
    # com081
    @test cmp(dec"2.0", dec"-2.0") == 1
    # com082
    @test cmp(dec"2.0", dec"-1.0") == 1
    # com083
    @test cmp(dec"2.0", dec"0.0") == 1
    # com085
    @test cmp(dec"2.0", dec"1.0") == 1
    # com086
    @test cmp(dec"2.0", dec"2.0") == 0
    # com100
    @test cmp(dec"7.0", dec"7.0") == 0
    # com101
    @test cmp(dec"7.0", dec"7") == 0
    # com102
    @test cmp(dec"7", dec"7.0") == 0
    # com103
    @test cmp(dec"7E+0", dec"7.0") == 0
    # com104
    @test cmp(dec"70E-1", dec"7.0") == 0
    # com105
    @test cmp(dec"0.7E+1", dec"7") == 0
    # com106
    @test cmp(dec"70E-1", dec"7") == 0
    # com107
    @test cmp(dec"7.0", dec"7E+0") == 0
    # com108
    @test cmp(dec"7.0", dec"70E-1") == 0
    # com109
    @test cmp(dec"7", dec"0.7E+1") == 0
    # com110
    @test cmp(dec"7", dec"70E-1") == 0
    # com120
    @test cmp(dec"8.0", dec"7.0") == 1
    # com121
    @test cmp(dec"8.0", dec"7") == 1
    # com122
    @test cmp(dec"8", dec"7.0") == 1
    # com123
    @test cmp(dec"8E+0", dec"7.0") == 1
    # com124
    @test cmp(dec"80E-1", dec"7.0") == 1
    # com125
    @test cmp(dec"0.8E+1", dec"7") == 1
    # com126
    @test cmp(dec"80E-1", dec"7") == 1
    # com127
    @test cmp(dec"8.0", dec"7E+0") == 1
    # com128
    @test cmp(dec"8.0", dec"70E-1") == 1
    # com129
    @test cmp(dec"8", dec"0.7E+1") == 1
    # com130
    @test cmp(dec"8", dec"70E-1") == 1
    # com140
    @test cmp(dec"8.0", dec"9.0") == -1
    # com141
    @test cmp(dec"8.0", dec"9") == -1
    # com142
    @test cmp(dec"8", dec"9.0") == -1
    # com143
    @test cmp(dec"8E+0", dec"9.0") == -1
    # com144
    @test cmp(dec"80E-1", dec"9.0") == -1
    # com145
    @test cmp(dec"0.8E+1", dec"9") == -1
    # com146
    @test cmp(dec"80E-1", dec"9") == -1
    # com147
    @test cmp(dec"8.0", dec"9E+0") == -1
    # com148
    @test cmp(dec"8.0", dec"90E-1") == -1
    # com149
    @test cmp(dec"8", dec"0.9E+1") == -1
    # com150
    @test cmp(dec"8", dec"90E-1") == -1
    # com200
    @test cmp(dec"-7.0", dec"7.0") == -1
    # com201
    @test cmp(dec"-7.0", dec"7") == -1
    # com202
    @test cmp(dec"-7", dec"7.0") == -1
    # com203
    @test cmp(dec"-7E+0", dec"7.0") == -1
    # com204
    @test cmp(dec"-70E-1", dec"7.0") == -1
    # com205
    @test cmp(dec"-0.7E+1", dec"7") == -1
    # com206
    @test cmp(dec"-70E-1", dec"7") == -1
    # com207
    @test cmp(dec"-7.0", dec"7E+0") == -1
    # com208
    @test cmp(dec"-7.0", dec"70E-1") == -1
    # com209
    @test cmp(dec"-7", dec"0.7E+1") == -1
    # com210
    @test cmp(dec"-7", dec"70E-1") == -1
    # com220
    @test cmp(dec"-8.0", dec"7.0") == -1
    # com221
    @test cmp(dec"-8.0", dec"7") == -1
    # com222
    @test cmp(dec"-8", dec"7.0") == -1
    # com223
    @test cmp(dec"-8E+0", dec"7.0") == -1
    # com224
    @test cmp(dec"-80E-1", dec"7.0") == -1
    # com225
    @test cmp(dec"-0.8E+1", dec"7") == -1
    # com226
    @test cmp(dec"-80E-1", dec"7") == -1
    # com227
    @test cmp(dec"-8.0", dec"7E+0") == -1
    # com228
    @test cmp(dec"-8.0", dec"70E-1") == -1
    # com229
    @test cmp(dec"-8", dec"0.7E+1") == -1
    # com230
    @test cmp(dec"-8", dec"70E-1") == -1
    # com240
    @test cmp(dec"-8.0", dec"9.0") == -1
    # com241
    @test cmp(dec"-8.0", dec"9") == -1
    # com242
    @test cmp(dec"-8", dec"9.0") == -1
    # com243
    @test cmp(dec"-8E+0", dec"9.0") == -1
    # com244
    @test cmp(dec"-80E-1", dec"9.0") == -1
    # com245
    @test cmp(dec"-0.8E+1", dec"9") == -1
    # com246
    @test cmp(dec"-80E-1", dec"9") == -1
    # com247
    @test cmp(dec"-8.0", dec"9E+0") == -1
    # com248
    @test cmp(dec"-8.0", dec"90E-1") == -1
    # com249
    @test cmp(dec"-8", dec"0.9E+1") == -1
    # com250
    @test cmp(dec"-8", dec"90E-1") == -1
    # com300
    @test cmp(dec"7.0", dec"-7.0") == 1
    # com301
    @test cmp(dec"7.0", dec"-7") == 1
    # com302
    @test cmp(dec"7", dec"-7.0") == 1
    # com303
    @test cmp(dec"7E+0", dec"-7.0") == 1
    # com304
    @test cmp(dec"70E-1", dec"-7.0") == 1
    # com305
    @test cmp(dec".7E+1", dec"-7") == 1
    # com306
    @test cmp(dec"70E-1", dec"-7") == 1
    # com307
    @test cmp(dec"7.0", dec"-7E+0") == 1
    # com308
    @test cmp(dec"7.0", dec"-70E-1") == 1
    # com309
    @test cmp(dec"7", dec"-.7E+1") == 1
    # com310
    @test cmp(dec"7", dec"-70E-1") == 1
    # com320
    @test cmp(dec"8.0", dec"-7.0") == 1
    # com321
    @test cmp(dec"8.0", dec"-7") == 1
    # com322
    @test cmp(dec"8", dec"-7.0") == 1
    # com323
    @test cmp(dec"8E+0", dec"-7.0") == 1
    # com324
    @test cmp(dec"80E-1", dec"-7.0") == 1
    # com325
    @test cmp(dec".8E+1", dec"-7") == 1
    # com326
    @test cmp(dec"80E-1", dec"-7") == 1
    # com327
    @test cmp(dec"8.0", dec"-7E+0") == 1
    # com328
    @test cmp(dec"8.0", dec"-70E-1") == 1
    # com329
    @test cmp(dec"8", dec"-.7E+1") == 1
    # com330
    @test cmp(dec"8", dec"-70E-1") == 1
    # com340
    @test cmp(dec"8.0", dec"-9.0") == 1
    # com341
    @test cmp(dec"8.0", dec"-9") == 1
    # com342
    @test cmp(dec"8", dec"-9.0") == 1
    # com343
    @test cmp(dec"8E+0", dec"-9.0") == 1
    # com344
    @test cmp(dec"80E-1", dec"-9.0") == 1
    # com345
    @test cmp(dec".8E+1", dec"-9") == 1
    # com346
    @test cmp(dec"80E-1", dec"-9") == 1
    # com347
    @test cmp(dec"8.0", dec"-9E+0") == 1
    # com348
    @test cmp(dec"8.0", dec"-90E-1") == 1
    # com349
    @test cmp(dec"8", dec"-.9E+1") == 1
    # com350
    @test cmp(dec"8", dec"-90E-1") == 1
    # com400
    @test cmp(dec"-7.0", dec"-7.0") == 0
    # com401
    @test cmp(dec"-7.0", dec"-7") == 0
    # com402
    @test cmp(dec"-7", dec"-7.0") == 0
    # com403
    @test cmp(dec"-7E+0", dec"-7.0") == 0
    # com404
    @test cmp(dec"-70E-1", dec"-7.0") == 0
    # com405
    @test cmp(dec"-.7E+1", dec"-7") == 0
    # com406
    @test cmp(dec"-70E-1", dec"-7") == 0
    # com407
    @test cmp(dec"-7.0", dec"-7E+0") == 0
    # com408
    @test cmp(dec"-7.0", dec"-70E-1") == 0
    # com409
    @test cmp(dec"-7", dec"-.7E+1") == 0
    # com410
    @test cmp(dec"-7", dec"-70E-1") == 0
    # com420
    @test cmp(dec"-8.0", dec"-7.0") == -1
    # com421
    @test cmp(dec"-8.0", dec"-7") == -1
    # com422
    @test cmp(dec"-8", dec"-7.0") == -1
    # com423
    @test cmp(dec"-8E+0", dec"-7.0") == -1
    # com424
    @test cmp(dec"-80E-1", dec"-7.0") == -1
    # com425
    @test cmp(dec"-.8E+1", dec"-7") == -1
    # com426
    @test cmp(dec"-80E-1", dec"-7") == -1
    # com427
    @test cmp(dec"-8.0", dec"-7E+0") == -1
    # com428
    @test cmp(dec"-8.0", dec"-70E-1") == -1
    # com429
    @test cmp(dec"-8", dec"-.7E+1") == -1
    # com430
    @test cmp(dec"-8", dec"-70E-1") == -1
    # com440
    @test cmp(dec"-8.0", dec"-9.0") == 1
    # com441
    @test cmp(dec"-8.0", dec"-9") == 1
    # com442
    @test cmp(dec"-8", dec"-9.0") == 1
    # com443
    @test cmp(dec"-8E+0", dec"-9.0") == 1
    # com444
    @test cmp(dec"-80E-1", dec"-9.0") == 1
    # com445
    @test cmp(dec"-.8E+1", dec"-9") == 1
    # com446
    @test cmp(dec"-80E-1", dec"-9") == 1
    # com447
    @test cmp(dec"-8.0", dec"-9E+0") == 1
    # com448
    @test cmp(dec"-8.0", dec"-90E-1") == 1
    # com449
    @test cmp(dec"-8", dec"-.9E+1") == 1
    # com450
    @test cmp(dec"-8", dec"-90E-1") == 1
    # com460
    @test cmp(dec"9.99999999E+999999999", dec"9.99999999E+999999999") == 0
    # com461
    @test cmp(dec"-9.99999999E+999999999", dec"9.99999999E+999999999") == -1
    # com462
    @test cmp(dec"9.99999999E+999999999", dec"-9.99999999E+999999999") == 1
    # com463
    @test cmp(dec"-9.99999999E+999999999", dec"-9.99999999E+999999999") == 0
    # com470
    @test cmp(dec"123.4560000000000000E789", dec"123.456E789") == 0
    # com471
    @test cmp(dec"123.456000000000000E-89", dec"123.456E-89") == 0
    # com472
    @test cmp(dec"123.45600000000000E789", dec"123.456E789") == 0
    # com473
    @test cmp(dec"123.4560000000000E-89", dec"123.456E-89") == 0
    # com474
    @test cmp(dec"123.456000000000E789", dec"123.456E789") == 0
    # com475
    @test cmp(dec"123.45600000000E-89", dec"123.456E-89") == 0
    # com476
    @test cmp(dec"123.4560000000E789", dec"123.456E789") == 0
    # com477
    @test cmp(dec"123.456000000E-89", dec"123.456E-89") == 0
    # com478
    @test cmp(dec"123.45600000E789", dec"123.456E789") == 0
    # com479
    @test cmp(dec"123.4560000E-89", dec"123.456E-89") == 0
    # com480
    @test cmp(dec"123.456000E789", dec"123.456E789") == 0
    # com481
    @test cmp(dec"123.45600E-89", dec"123.456E-89") == 0
    # com482
    @test cmp(dec"123.4560E789", dec"123.456E789") == 0
    # com483
    @test cmp(dec"123.456E-89", dec"123.456E-89") == 0
    # com484
    @test cmp(dec"123.456E-89", dec"123.4560000000000000E-89") == 0
    # com485
    @test cmp(dec"123.456E789", dec"123.456000000000000E789") == 0
    # com486
    @test cmp(dec"123.456E-89", dec"123.45600000000000E-89") == 0
    # com487
    @test cmp(dec"123.456E789", dec"123.4560000000000E789") == 0
    # com488
    @test cmp(dec"123.456E-89", dec"123.456000000000E-89") == 0
    # com489
    @test cmp(dec"123.456E789", dec"123.45600000000E789") == 0
    # com490
    @test cmp(dec"123.456E-89", dec"123.4560000000E-89") == 0
    # com491
    @test cmp(dec"123.456E789", dec"123.456000000E789") == 0
    # com492
    @test cmp(dec"123.456E-89", dec"123.45600000E-89") == 0
    # com493
    @test cmp(dec"123.456E789", dec"123.4560000E789") == 0
    # com494
    @test cmp(dec"123.456E-89", dec"123.456000E-89") == 0
    # com495
    @test cmp(dec"123.456E789", dec"123.45600E789") == 0
    # com496
    @test cmp(dec"123.456E-89", dec"123.4560E-89") == 0
    # com497
    @test cmp(dec"123.456E789", dec"123.456E789") == 0
    # com500
    @test cmp(dec"1", dec"1E-15") == 1
    # com501
    @test cmp(dec"1", dec"1E-14") == 1
    # com502
    @test cmp(dec"1", dec"1E-13") == 1
    # com503
    @test cmp(dec"1", dec"1E-12") == 1
    # com504
    @test cmp(dec"1", dec"1E-11") == 1
    # com505
    @test cmp(dec"1", dec"1E-10") == 1
    # com506
    @test cmp(dec"1", dec"1E-9") == 1
    # com507
    @test cmp(dec"1", dec"1E-8") == 1
    # com508
    @test cmp(dec"1", dec"1E-7") == 1
    # com509
    @test cmp(dec"1", dec"1E-6") == 1
    # com510
    @test cmp(dec"1", dec"1E-5") == 1
    # com511
    @test cmp(dec"1", dec"1E-4") == 1
    # com512
    @test cmp(dec"1", dec"1E-3") == 1
    # com513
    @test cmp(dec"1", dec"1E-2") == 1
    # com514
    @test cmp(dec"1", dec"1E-1") == 1
    # com515
    @test cmp(dec"1", dec"1E-0") == 0
    # com516
    @test cmp(dec"1", dec"1E+1") == -1
    # com517
    @test cmp(dec"1", dec"1E+2") == -1
    # com518
    @test cmp(dec"1", dec"1E+3") == -1
    # com519
    @test cmp(dec"1", dec"1E+4") == -1
    # com521
    @test cmp(dec"1", dec"1E+5") == -1
    # com522
    @test cmp(dec"1", dec"1E+6") == -1
    # com523
    @test cmp(dec"1", dec"1E+7") == -1
    # com524
    @test cmp(dec"1", dec"1E+8") == -1
    # com525
    @test cmp(dec"1", dec"1E+9") == -1
    # com526
    @test cmp(dec"1", dec"1E+10") == -1
    # com527
    @test cmp(dec"1", dec"1E+11") == -1
    # com528
    @test cmp(dec"1", dec"1E+12") == -1
    # com529
    @test cmp(dec"1", dec"1E+13") == -1
    # com530
    @test cmp(dec"1", dec"1E+14") == -1
    # com531
    @test cmp(dec"1", dec"1E+15") == -1
    # com540
    @test cmp(dec"1E-15", dec"1") == -1
    # com541
    @test cmp(dec"1E-14", dec"1") == -1
    # com542
    @test cmp(dec"1E-13", dec"1") == -1
    # com543
    @test cmp(dec"1E-12", dec"1") == -1
    # com544
    @test cmp(dec"1E-11", dec"1") == -1
    # com545
    @test cmp(dec"1E-10", dec"1") == -1
    # com546
    @test cmp(dec"1E-9", dec"1") == -1
    # com547
    @test cmp(dec"1E-8", dec"1") == -1
    # com548
    @test cmp(dec"1E-7", dec"1") == -1
    # com549
    @test cmp(dec"1E-6", dec"1") == -1
    # com550
    @test cmp(dec"1E-5", dec"1") == -1
    # com551
    @test cmp(dec"1E-4", dec"1") == -1
    # com552
    @test cmp(dec"1E-3", dec"1") == -1
    # com553
    @test cmp(dec"1E-2", dec"1") == -1
    # com554
    @test cmp(dec"1E-1", dec"1") == -1
    # com555
    @test cmp(dec"1E-0", dec"1") == 0
    # com556
    @test cmp(dec"1E+1", dec"1") == 1
    # com557
    @test cmp(dec"1E+2", dec"1") == 1
    # com558
    @test cmp(dec"1E+3", dec"1") == 1
    # com559
    @test cmp(dec"1E+4", dec"1") == 1
    # com561
    @test cmp(dec"1E+5", dec"1") == 1
    # com562
    @test cmp(dec"1E+6", dec"1") == 1
    # com563
    @test cmp(dec"1E+7", dec"1") == 1
    # com564
    @test cmp(dec"1E+8", dec"1") == 1
    # com565
    @test cmp(dec"1E+9", dec"1") == 1
    # com566
    @test cmp(dec"1E+10", dec"1") == 1
    # com567
    @test cmp(dec"1E+11", dec"1") == 1
    # com568
    @test cmp(dec"1E+12", dec"1") == 1
    # com569
    @test cmp(dec"1E+13", dec"1") == 1
    # com570
    @test cmp(dec"1E+14", dec"1") == 1
    # com571
    @test cmp(dec"1E+15", dec"1") == 1
    # com580
    @test cmp(dec"0.000000987654321", dec"1E-15") == 1
    # com581
    @test cmp(dec"0.000000987654321", dec"1E-14") == 1
    # com582
    @test cmp(dec"0.000000987654321", dec"1E-13") == 1
    # com583
    @test cmp(dec"0.000000987654321", dec"1E-12") == 1
    # com584
    @test cmp(dec"0.000000987654321", dec"1E-11") == 1
    # com585
    @test cmp(dec"0.000000987654321", dec"1E-10") == 1
    # com586
    @test cmp(dec"0.000000987654321", dec"1E-9") == 1
    # com587
    @test cmp(dec"0.000000987654321", dec"1E-8") == 1
    # com588
    @test cmp(dec"0.000000987654321", dec"1E-7") == 1
    # com589
    @test cmp(dec"0.000000987654321", dec"1E-6") == -1
    # com590
    @test cmp(dec"0.000000987654321", dec"1E-5") == -1
    # com591
    @test cmp(dec"0.000000987654321", dec"1E-4") == -1
    # com592
    @test cmp(dec"0.000000987654321", dec"1E-3") == -1
    # com593
    @test cmp(dec"0.000000987654321", dec"1E-2") == -1
    # com594
    @test cmp(dec"0.000000987654321", dec"1E-1") == -1
    # com595
    @test cmp(dec"0.000000987654321", dec"1E-0") == -1
    # com596
    @test cmp(dec"0.000000987654321", dec"1E+1") == -1
    # com597
    @test cmp(dec"0.000000987654321", dec"1E+2") == -1
    # com598
    @test cmp(dec"0.000000987654321", dec"1E+3") == -1
    # com599
    @test cmp(dec"0.000000987654321", dec"1E+4") == -1
    # com600
    @test cmp(dec"12", dec"12.2345") == -1
    # com601
    @test cmp(dec"12.0", dec"12.2345") == -1
    # com602
    @test cmp(dec"12.00", dec"12.2345") == -1
    # com603
    @test cmp(dec"12.000", dec"12.2345") == -1
    # com604
    @test cmp(dec"12.0000", dec"12.2345") == -1
    # com605
    @test cmp(dec"12.00000", dec"12.2345") == -1
    # com606
    @test cmp(dec"12.000000", dec"12.2345") == -1
    # com607
    @test cmp(dec"12.0000000", dec"12.2345") == -1
    # com608
    @test cmp(dec"12.00000000", dec"12.2345") == -1
    # com609
    @test cmp(dec"12.000000000", dec"12.2345") == -1
    # com610
    @test cmp(dec"12.1234", dec"12") == 1
    # com611
    @test cmp(dec"12.1234", dec"12.0") == 1
    # com612
    @test cmp(dec"12.1234", dec"12.00") == 1
    # com613
    @test cmp(dec"12.1234", dec"12.000") == 1
    # com614
    @test cmp(dec"12.1234", dec"12.0000") == 1
    # com615
    @test cmp(dec"12.1234", dec"12.00000") == 1
    # com616
    @test cmp(dec"12.1234", dec"12.000000") == 1
    # com617
    @test cmp(dec"12.1234", dec"12.0000000") == 1
    # com618
    @test cmp(dec"12.1234", dec"12.00000000") == 1
    # com619
    @test cmp(dec"12.1234", dec"12.000000000") == 1
    # com620
    @test cmp(dec"-12", dec"-12.2345") == 1
    # com621
    @test cmp(dec"-12.0", dec"-12.2345") == 1
    # com622
    @test cmp(dec"-12.00", dec"-12.2345") == 1
    # com623
    @test cmp(dec"-12.000", dec"-12.2345") == 1
    # com624
    @test cmp(dec"-12.0000", dec"-12.2345") == 1
    # com625
    @test cmp(dec"-12.00000", dec"-12.2345") == 1
    # com626
    @test cmp(dec"-12.000000", dec"-12.2345") == 1
    # com627
    @test cmp(dec"-12.0000000", dec"-12.2345") == 1
    # com628
    @test cmp(dec"-12.00000000", dec"-12.2345") == 1
    # com629
    @test cmp(dec"-12.000000000", dec"-12.2345") == 1
    # com630
    @test cmp(dec"-12.1234", dec"-12") == -1
    # com631
    @test cmp(dec"-12.1234", dec"-12.0") == -1
    # com632
    @test cmp(dec"-12.1234", dec"-12.00") == -1
    # com633
    @test cmp(dec"-12.1234", dec"-12.000") == -1
    # com634
    @test cmp(dec"-12.1234", dec"-12.0000") == -1
    # com635
    @test cmp(dec"-12.1234", dec"-12.00000") == -1
    # com636
    @test cmp(dec"-12.1234", dec"-12.000000") == -1
    # com637
    @test cmp(dec"-12.1234", dec"-12.0000000") == -1
    # com638
    @test cmp(dec"-12.1234", dec"-12.00000000") == -1
    # com639
    @test cmp(dec"-12.1234", dec"-12.000000000") == -1
    # com680
    @test cmp(dec"12", dec"12") == 0
    # com681
    @test cmp(dec"12", dec"12.0") == 0
    # com682
    @test cmp(dec"12", dec"12.00") == 0
    # com683
    @test cmp(dec"12", dec"12.000") == 0
    # com684
    @test cmp(dec"12", dec"12.0000") == 0
    # com685
    @test cmp(dec"12", dec"12.00000") == 0
    # com686
    @test cmp(dec"12", dec"12.000000") == 0
    # com687
    @test cmp(dec"12", dec"12.0000000") == 0
    # com688
    @test cmp(dec"12", dec"12.00000000") == 0
    # com689
    @test cmp(dec"12", dec"12.000000000") == 0
    # com690
    @test cmp(dec"12", dec"12") == 0
    # com691
    @test cmp(dec"12.0", dec"12") == 0
    # com692
    @test cmp(dec"12.00", dec"12") == 0
    # com693
    @test cmp(dec"12.000", dec"12") == 0
    # com694
    @test cmp(dec"12.0000", dec"12") == 0
    # com695
    @test cmp(dec"12.00000", dec"12") == 0
    # com696
    @test cmp(dec"12.000000", dec"12") == 0
    # com697
    @test cmp(dec"12.0000000", dec"12") == 0
    # com698
    @test cmp(dec"12.00000000", dec"12") == 0
    # com699
    @test cmp(dec"12.000000000", dec"12") == 0
    # com701
    @test cmp(dec"12345678000", dec"1") == 1
    # com702
    @test cmp(dec"1", dec"12345678000") == -1
    # com703
    @test cmp(dec"1234567800", dec"1") == 1
    # com704
    @test cmp(dec"1", dec"1234567800") == -1
    # com705
    @test cmp(dec"1234567890", dec"1") == 1
    # com706
    @test cmp(dec"1", dec"1234567890") == -1
    # com707
    @test cmp(dec"1234567891", dec"1") == 1
    # com708
    @test cmp(dec"1", dec"1234567891") == -1
    # com709
    @test cmp(dec"12345678901", dec"1") == 1
    # com710
    @test cmp(dec"1", dec"12345678901") == -1
    # com711
    @test cmp(dec"1234567896", dec"1") == 1
    # com712
    @test cmp(dec"1", dec"1234567896") == -1
    # com713
    @test cmp(dec"-1234567891", dec"1") == -1
    # com714
    @test cmp(dec"1", dec"-1234567891") == 1
    # com715
    @test cmp(dec"-12345678901", dec"1") == -1
    # com716
    @test cmp(dec"1", dec"-12345678901") == 1
    # com717
    @test cmp(dec"-1234567896", dec"1") == -1
    # com718
    @test cmp(dec"1", dec"-1234567896") == 1
    # com741
    @test cmp(dec"12345678000", dec"1") == 1
    # com742
    @test cmp(dec"1", dec"12345678000") == -1
    # com743
    @test cmp(dec"1234567800", dec"1") == 1
    # com744
    @test cmp(dec"1", dec"1234567800") == -1
    # com745
    @test cmp(dec"1234567890", dec"1") == 1
    # com746
    @test cmp(dec"1", dec"1234567890") == -1
    # com747
    @test cmp(dec"1234567891", dec"1") == 1
    # com748
    @test cmp(dec"1", dec"1234567891") == -1
    # com749
    @test cmp(dec"12345678901", dec"1") == 1
    # com750
    @test cmp(dec"1", dec"12345678901") == -1
    # com751
    @test cmp(dec"1234567896", dec"1") == 1
    # com752
    @test cmp(dec"1", dec"1234567896") == -1
end
