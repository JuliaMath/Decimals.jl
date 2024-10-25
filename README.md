
## Decimals.jl: Arbitrary precision decimal floating point arithmetics in Julia

[![Coverage Status](https://coveralls.io/repos/github/JuliaMath/Decimals.jl/badge.svg?branch=master)](https://coveralls.io/github/JuliaMath/Decimals.jl?branch=master)

The `Decimals` package provides basic data type and functions for arbitrary precision [decimal floating point](https://en.wikipedia.org/wiki/Decimal_floating_point) arithmetic in Julia. It supports addition, subtraction, negation, multiplication, division, and equality operations.

Why is this needed?  The following code in Julia gives an answer

    julia> 0.1 + 0.2
    0.30000000000000004

In words, the binary floating point arithmetics implemented in computers has finite resolution - not all real numbers (even within the limits) can be expressed exactly. While many scientific and engineering fields can handle this behavior, it is not acceptable in fields like finance, where it's important to be able to trust that $0.30 is actually 30 cents, rather than 30.000000000000004 cents.

## Installation

```julia
julia> Pkg.add("Decimals")
```
or just `Ctrl`+`]` and
```julia
(v1.2) pkg> add Decimals
```

## Usage

```julia
julia> using Decimals
```

### Construction


`Decimal` is constructed by passing values `s`, `c`, `q` such that
`x = (-1)^s * c * 10^q`:
```julia
julia> Decimal(0, 1, -1)
0.1

julia> Decimal(1, 1, -1)
-0.1
```


### Parsing from string

You can parse `Decimal` objects from strings:

```julia
julia> x = "0.2"
"0.2"

julia> parse(Decimal, x)
0.2

julia> tryparse(Decimal, x)
0.2
```
Parsing support scientific notation.  Alternatively, you can use the `@dec_str`
macro, which also supports the thousands separator `_`:
```julia
julia> dec"0.2"
0.2

julia> dec"1_000.000_001"
1000.000001
```

### Conversion

Any real number can be converted to a `Decimal`:
```julia
julia> Decimal(0.2)
0.2

julia> Decimal(-10)
-10
```

A `Decimal` can be converted to numeric types that can represent it:
```julia
julia> Float64(Decimal(0.2))
0.2

julia> Int(Decimal(10))
10

julia> Float64(Decimal(0, 1, 512))
ERROR: ArgumentError: cannot parse "100[...]" as Float64

julia> Int(Decimal(0.4))
ERROR: ArgumentError: invalid base 10 digit '.' in "0.4"
```

### String representation

A string in the decimal form of a `Decimal` can be obtained via
`string(::Decimal)`:
```julia
julia> string(Decimal(0.2))
"0.2"
```

The 2- and 3-args methods for `show` are implemented:
```julia
julia> repr(Decimal(1000000.0))
"Decimal(0, 10, 5)"

julia> repr("text/plain", Decimal(1000000.0))
"1.0E+6"
```

### Operations
```julia
julia> x, y = decimal("0.2"), decimal("0.1");
```
#### Addition
```julia
julia> string(x + y)
"0.3"
```

#### Subtraction
```julia
julia> string(x - y)
"0.1"
```

#### Negation
```julia
julia> string(-x)
"-0.2"
```
#### Multiplication
```julia
julia> string(x * y)
"0.02"
```

#### Division
```julia
julia> string(x / y)
"2"
```

#### Inversion
```julia
julia> string(inv(x))
"5"
```

#### Broadcasting
```julia
julia> [x y] .* 2
2-element Array{Decimal,1}:
 Decimal(0,1,-1)
 Decimal(0,5,-2)
```
#### Equals (`==` and `isequal`)
```julia
julia> x == decimal("0.2")
true

julia> x != decimal("0.1")
true
```

#### Inequality
```julia
julia> x >= y
true

julia> isless(x, y)
false
```

#### `==` returns true for Decimal vs. Number comparisons
```julia
julia> x == 0.2
true
```

#### Rounding
```julia
julia> round(decimal(3.1415), digits=2)
Decimal(0,314,-2)

julia> string(ans)
"3.14"
```

## Comparison with other packages

Unlike another Julia package called [`DecFP`](https://github.com/JuliaMath/DecFP.jl), which aims at implementing the [IEEE 754-2008 standard](https://en.wikipedia.org/wiki/IEEE_754-2008_revision) introducing 32, 64, and 64-bit precisions ([decimal32](https://en.wikipedia.org/wiki/Decimal32_floating-point_format), [decimal64](https://en.wikipedia.org/wiki/Decimal64_floating-point_format) and [decimal128](https://en.wikipedia.org/wiki/Decimal128_floating-point_format), respectively), this package allows arbitrary precision. Note, however, that in comparision with `DecFP`, which is is essentially a wrapper for a specialized [Intel® Decimal Floating-Point Math Library](https://software.intel.com/en-us/articles/intel-decimal-floating-point-math-library), the present package is more computationally demanding. If more computational efficiency is demanded, functions from [`libmpdec`](http://www.bytereef.org/mpdecimal/index.html) library can be called directly.

The closest equivalent (and inspiration) for the present package in Python is the standard built-in [`decimal`](https://docs.python.org/3.7/library/decimal.html) package, which is based on [General Decimal Arithmetic Specification by IBM](http://speleotrove.com/decimal/decarith.html). Since version 3.3 of Python, it is actually [`libmpdec`](http://www.bytereef.org/mpdecimal/index.html)/[`cdecimal`](https://www.bytereef.org/mpdecimal/doc/cdecimal/index.html) that is under the hood.

## Further reading

1. What Every Programmer Should Know About Floating-Point Arithmetic!?!
or Why don’t my numbers add up? [floating-point-gui.de](http://floating-point-gui.de/).
2. Decimal Floating Point [https://en.wikipedia.org/wiki/Decimal_floating_point](https://en.wikipedia.org/wiki/Decimal_floating_point)
3. IEEE 754-2008 revision [https://en.wikipedia.org/wiki/IEEE_754-2008_revision](https://en.wikipedia.org/wiki/IEEE_754-2008_revision)
4. 754-2008 - IEEE Standard for Floating-Point Arithmetic [https://ieeexplore.ieee.org/document/4610935](https://ieeexplore.ieee.org/document/4610935) Superseeded by 754-2019 - IEEE Standard for Floating-Point Arithmetic [https://ieeexplore.ieee.org/document/8766229](https://ieeexplore.ieee.org/document/8766229)
5. Intel® Decimal Floating-Point Math Library [https://software.intel.com/en-us/blogs/2008/03/06/intel-decimal-floating-point-math-library/](https://software.intel.com/en-us/blogs/2008/03/06/intel-decimal-floating-point-math-library/)
6. General Decimal Arithmetic Specification, IBM, Version 1.70 – 7 Apr 2009 [http://speleotrove.com/decimal/decarith.html](http://speleotrove.com/decimal/decarith.html)
7. `mpdecimal`, `libmpdec` - C/C++ library [http://www.bytereef.org/mpdecimal/index.html](http://www.bytereef.org/mpdecimal/index.html)
8. `decimal` - Decimal fixed point and floating point arithmetic, module for Python [https://docs.python.org/2/library/decimal.html](https://docs.python.org/2/library/decimal.html)
