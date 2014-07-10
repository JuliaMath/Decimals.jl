using Decimals
using Base.Test

# Rounding
@test round(decimal(7.123456), 0) == decimal(7)
@test round(decimal(7.123456), 2) == decimal(7.12)
@test round(decimal(7.123456), 3) == decimal(7.123)
@test round(decimal(7.123456), 5) == decimal(7.12346)
@test round(decimal(7.123456), 6) == decimal(7.123456)

@test round(0.123, 1) == 0.1
@test round([0.1111 0.2222 0.8888], 2) == [0.11 0.22 0.89]

@test_throws ErrorException round(decimal(0.123456), 7)
@test_throws ErrorException round(decimal(0.123456), -1)
