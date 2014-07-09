using Decimals
using Base.Test

# Rounding
@test round(decimal(7.123456), 0) == decimal(7)
@test round(decimal(7.123456), 2) == decimal(7.12)
@test round(decimal(7.123456), 3) == decimal(7.123)
@test round(decimal(7.123456), 5) == decimal(7.12346)
@test round(decimal(7.123456), 6) == decimal(7.123456)
@test_throws ErrorException round(decimal(0.123456), 7)
@test_throws ErrorException round(decimal(0.123456), -1)
