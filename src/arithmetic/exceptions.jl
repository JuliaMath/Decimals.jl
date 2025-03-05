"""
    DivisionByZeroError

Division was attempted with a denominator value of 0.
"""
struct DivisionByZeroError <: Exception end

"""
    UndefinedDivisionError

Division was attempted with both numerator and denominator value of 0.
"""
struct UndefinedDivisionError <: Exception end

