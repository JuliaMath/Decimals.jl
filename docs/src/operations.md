```@meta
DocTestSetup = quote
using Decimals
using Decimals: @with_context
end
```

# Operations

Users can parametrize the decimal arithmetic by setting
[`Decimals.Context`](@ref) using the [`Decimals.with_context`](@ref) function
or the [`Decimals.@with_context`](@ref) macro. Operations affected by context
are denoted by the badge ![Affected by
context](https://img.shields.io/badge/ctxt-affected-blue).


```@docs
Decimals.Context
Decimals.with_context
Decimals.@with_context
```

## Arithmetic operations

### Unary plus, minus

![Affected by context](https://img.shields.io/badge/ctxt-affected-blue)

The unary plus, `+x`, and unary minus, `-x`, is equivalent to `0 + x` and
`0 - x`, respectively.

```jldoctest
julia> x = dec"1.1"
1.1

julia> +x
1.1

julia> -x
-1.1
```

### Addition, subtraction

![Affected by context](https://img.shields.io/badge/ctxt-affected-blue)

Addition and subtraction are implemented via the binary operators `+` and `y`.

```jldoctest
julia> x = dec"1.1"
1.1

julia> y = dec"2.2"
2.2

julia> x + y
3.3

julia> x - y
-1.1
```

### Multiplication, division

![Affected by context](https://img.shields.io/badge/ctxt-affected-blue)

Multiplication and division are implemented via the binary operators `*` and
`/`.

Division by zero throws [`DivisionByZeroError`](@ref) unless the dividend is also zero, in which case [`UndefinedDivisionError`](@ref) is thrown.

```jldoctest
julia> x = dec"2"
2

julia> y = dec"3"
3

julia> x * y
6

julia> x / y
0.6666666666666666666666666667

julia> x / dec"0"
ERROR: DivisionByZeroError()

julia> dec"0" / dec"0"
ERROR: UndefinedDivisionError()
```

### Square root

![Affected by context](https://img.shields.io/badge/ctxt-affected-blue)

Square root is implemented via the `Base.sqrt` function.
```jldoctest
julia> sqrt(dec"9")
3.000000000000000000000000000

julia> sqrt(dec"2")
1.414213562373095048801688724
```

### Absolute value

![Affected by context](https://img.shields.io/badge/ctxt-affected-blue)

Absolute value is implemented via the `Base.abs` function.

```jldoctest
julia> abs(dec"1")
1

julia> abs(dec"-1")
1
```

### Minimum, maximum

![Affected by context](https://img.shields.io/badge/ctxt-affected-blue)

Selecting the minimum and maximum of two `Decimal`s is implemented via the
`Base.min` and `Base.max` functions.

```jldoctest
julia> x = dec"0.123"
0.123

julia> y = dec"4.567"
4.567

julia> min(x, y)
0.123

julia> max(x, y)
4.567
```

## Comparison operations

The basic comparison operation is implemented via `Base.cmp`, which compares
`x` and `y` and returns `-1`, `0`, or `+1` if `x` is less than, equal to, or
greater than `y`.

```jldoctest
julia> x = dec"0.123"
0.123

julia> y = dec"4.567"
4.567

julia> cmp(x, y)
-1

julia> cmp(y, x)
1
```

The binary operators `==`, `<`, and `<=` are also implemented.

```jldoctest
julia> x = dec"0.123"
0.123

julia> y = dec"4.567"
4.567

julia> x == y
false

julia> x < y
true

julia> x > y
false

julia> x <= y
true

julia> x >= y
false
```

## Miscellaneous

### Hashing

Hashing of `Decimal`s is supported via the `Base.hash` function. It holds for
the output hash code that `x == y` implies `hash(x) == hash(y)`, and this is
true even if one of the operands is not a `Decimal`.

```jldoctest
julia> x = Decimal(0, 2125, -3)
2.125

julia> y = Decimal(0, 212500, -5)
2.12500

julia> hash(x) == hash(y)
true

julia> hash(x) == hash(2.125)
true
```

### Rounding

The standard interface for rounding floating-point numbers is supported:
```jldoctest
julia> x = dec"123.45678"
123.45678

julia> round(x) # Round to the nearest integer
123

julia> round(Int, x) # Round to the nearest integer and convert to Int
123

julia> round(x, RoundUp) # Round using a particular rounding mode
124

julia> round(x, digits=4) # Round to four decimal places
123.4568

julia> round(x, sigdigits=4) # Round to four significant digits
123.5
```

Our test suite covers six rounding modes that are specified by the Decimal
arithmetic specification.  The rounding modes are

  - `RoundNearest` (*round-half-even* in the specification),
  - `RoundNearestTiesAway` (*round-half-up*),
  - `RoundUp` (*round-ceiling*),
  - `RoundDown` (*round-floor*),
  - `RoundFromZero` (*round-up*),
  - `RoundToZero` (*round-down*).

The default mode is `RoundNearest`.

## Normalization

![Affected by context](https://img.shields.io/badge/ctxt-affected-blue)

Normalization of a `Decimal` removes all trailing zeros of the coefficient $c$
while adjusting the exponent $q$ so that the `Decimal` remains the same (up to
the precision given by context). The operation is semantically equivalent to
unary plus.

```@docs
normalize
```

## Exception types

```@docs
DivisionByZeroError
UndefinedDivisionError
```
