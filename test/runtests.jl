# Unit tests for Decimals.jl
# @author jack@tinybike.net

using Decimals
using Base.Test

# Decimal constructor
d = [
    Decimal(0, 2, -1),
    Decimal(0, 1, -1),
    Decimal(0, 100, -4),
    Decimal(0, 1512, -2),
    Decimal(1, 3, -2),
    Decimal(1, 4, -6),
]
@test isa(d, Array{Decimal,1})

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

# Equality
@test equals(Decimal(0, 2, -3), Decimal(0, 2, -3))
@test equals(Decimal(0, 2, -3), 0.002)
@test equals(Decimal(1, 2, 0), -2)
@test ~is(decimal("0.2"), 0.2)
@test triple_equals(Decimal(0, 2, -3), Decimal(0, 2, -3))

# Normalization
@test Decimal(1, 151100, -4) == Decimal(1, 1511, -2)
@test Decimal(0, 100100, -5) == Decimal(0, 1001, -3)

# Addition
@test d[1] + d[2] == d[2] + d[1] == add(d[1], d[2]) == add(d[2], d[1]) == Decimal(0, 3, -1)
@test decimal(0.1) + 0.2 == 0.1 + decimal(0.2) == decimal(0.1) + decimal(0.2) == decimal(0.3)

# Subtraction
@test subtract(d[1], d[2]) == d[1] - d[2] == Decimal(0, 1, -1)
@test subtract(d[3], d[4]) == d[3] - d[4] == Decimal(1, 1511, -2)
@test subtract(d[4], d[3]) == d[4] - d[3] == Decimal(0, 1511, -2)
@test decimal(0.3) - 0.1 == 0.3 - decimal(0.1) == decimal(0.3) - decimal(0.1) == decimal(0.2)

# Negation
@test negative(d[1]) == -d[1] == Decimal(1, 2, -1)
@test negative(d[5]) == -d[5] == Decimal(0, 3, -2)

# Multiplication
@test multiply(d[1], d[2]) == d[1] * d[2] == Decimal(0, 2, -2)
@test multiply(d[1], d[5]) == d[1] * d[5] == Decimal(1, 6, -3)
@test multiply(d[5], d[6]) == d[5] * d[6] == Decimal(0, 12, -8)
@test decimal(0.2) * 0.1 == 0.2 * decimal(0.1) == decimal(0.02)
@test decimal(12.34) * 0.1234 == 12.34 * decimal(0.1234) == decimal(1.522756)
@test decimal(0.21084210) * -2 == -2 * decimal(0.21084210) == decimal(-0.4216842)

# Quantization

