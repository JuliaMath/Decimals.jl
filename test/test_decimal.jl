using Decimals
using Base.Test

# Number/string to decimal conversions
@test decimal("0.01") == decimal(0.01) == Decimal(0, 1, -2)
@test decimal(".001") == decimal(.001) == Decimal(0, 1, -3)
@test decimal("15.23") == decimal(15.23) == Decimal(0, 1523, -2)
@test decimal("543") == decimal(543) == Decimal(0, 543, 0)
@test decimal("-345") == decimal(-345) == Decimal(1, 345, 0)
@test decimal("000123") == decimal(000123) == Decimal(0, 123, 0)
@test decimal("-00032") == decimal(-00032) == Decimal(1, 32, 0)
@test decimal("200100") == decimal(200100) == Decimal(0, 2001, 2)
@test decimal("-.123") == decimal(-.123) == Decimal(1, 123, -3)
@test decimal("1.23000") == decimal(1.23000) == Decimal(0, 123, -2)
@test decimal("4734.612") == decimal(4734.612) == Decimal(0, 4734612, -3)
@test decimal("541724.2") == decimal(541724.2) == Decimal(0,5417242,-1)
@test decimal("2.5e6") == decimal(2.5e6) == Decimal(0, 25, 5)
@test decimal("2.385350e8") == decimal(2.385350e8) == Decimal(0, 238535, 3)
@test decimal("12.3e-4") == decimal(12.3e-4) == Decimal(0, 123, -5)
@test decimal("-12.3e4") == decimal(-12.3e4) == Decimal(1, 123000, 0)
@test decimal("-12.3e-4") == decimal(-12.3e-4) == Decimal(1, 123, -5)

# Decimal-to-string conversions
@test string(Decimal(0, 1, -2)) == "0.01"
@test string(Decimal(0, 1, -3)) == "0.001"
@test string(Decimal(0, 1523, -2)) == "15.23"
@test string(Decimal(0, 543, 0)) == "543"
@test string(Decimal(1, 345, 0)) == "-345"
@test string(Decimal(0, 123, 0)) == "123"
@test string(Decimal(1, 32, 0)) == "-32"
@test string(Decimal(0, 2001, 2)) == "200100"
@test string(Decimal(1, 123, -3)) == "-0.123"
@test string(Decimal(0, 123, -2)) == "1.23"

# Decimal-to-number conversions
@test float(Decimal(0, 1, -2)) == 0.01
@test float(Decimal(0, 1, -3)) == 0.001
@test float(Decimal(0, 1523, -2)) == 15.23
@test float(Decimal(0, 543, 0)) == 543
@test float(Decimal(1, 345, 0)) == -345
@test float(Decimal(0, 123, 0)) == 123
@test float(Decimal(1, 32, 0)) == -32
@test float(Decimal(0, 2001, 2)) == 200100
@test float(Decimal(1, 123, -3)) == -0.123
@test float(Decimal(0, 123, -2)) == 1.23
@test number(Decimal(0, 1, -2)) == 0.01
@test number(Decimal(0, 1, -3)) == 0.001
@test number(Decimal(0, 1523, -2)) == 15.23
@test number(Decimal(0, 543, 0)) == 543
@test number(Decimal(1, 345, 0)) == -345
@test number(Decimal(0, 123, 0)) == 123
@test number(Decimal(1, 32, 0)) == -32
@test number(Decimal(0, 2001, 2)) == 200100
@test number(Decimal(1, 123, -3)) == -0.123
@test number(Decimal(0, 123, -2)) == 1.23
@test string(float(Decimal(0, 543, 0))) == "543.0"
@test string(number(Decimal(0, 543, 0))) == "543"
@test string(number(Decimal(0, 543, -1))) == "54.3"
