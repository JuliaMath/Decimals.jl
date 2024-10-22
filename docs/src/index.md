```@meta
DocTestSetup = quote
using Decimals
end
```

# Introduction

This package is a Julia implementation of arbitrary precision decimal floating
point arithmetic, where numbers $x \in \mathbb{R}$ are represented using the
`Decimal` type as
```math
x = (-1)^s \cdot c \cdot 10^q,
```
where $s \in \{0, 1\}$ is the signbit, $c \in \mathbb{N}$ is the coefficient, and $q \in \mathbb{Z}$ is the exponent.


## Construction

The `Decimal` object can be created directly, or by conversion from a number,
or by parsing from a string:

```jldoctest
julia> Decimal(0, 5, -1) # (-1)^0 * 5 * 10^-1
0.5

julia> Decimal(0.5)
0.5

julia> Decimal(5E-1)
0.5

julia> parse(Decimal, "0.5")
0.5

julia> parse(Decimal, "5E-1")
0.5
```

Alternatively, a `Decimal` can be parsed from a string literal via the
`@dec_str` macro, which also supports the thousands separator `_`:
```jldoctest
julia> dec"1_000.000_000_1"
1000.0000001
```
The thousands separator is not supported by the `parse` function:
```jldoctest
julia> parse(Decimal, "1_000")
ERROR: ArgumentError: Invalid decimal: 1_000
```

!!! warning "Conversion from numbers is exact"
    The constructor `Decimal(::Real)` converts the given number to a `Decimal`
    exactly. The consequence is that `Decimal(x)` is not generally equal to
    `parse(Decimal, string(x))`. For example,
    ```jldoctest
    julia> Decimal(0.1)
    0.1000000000000000055511151231257827021181583404541015625

    julia> parse(Decimal, "0.1")
    0.1

    julia> dec"0.1" # Alternative to parse
    0.1

    julia> big(0.1) # Exact value of 0.1 represented by a binary floating-point number
    0.1000000000000000055511151231257827021181583404541015625

    julia> string(0.1) # The string representation of 0.1 is deceiving
    "0.1"
    ```

