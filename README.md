## Decimals.jl

[![Build Status](https://travis-ci.org/JuliaMath/Decimals.jl.svg?branch=master)](https://travis-ci.org/JuliaMath/Decimals.jl)
[![Coverage Status](https://coveralls.io/repos/github/JuliaMath/Decimals.jl/badge.svg?branch=master)](https://coveralls.io/github/JuliaMath/Decimals.jl?branch=master)

Basic routines for decimal arithmetic in Julia.  Supports addition, subtraction, negation, multiplication, division, and equality operations; exponentiation coming as soon as I find the time to write it.  This is a pure Julia implementation, so if you are concerned about pure speed, calling `libmpdec` functions directly is likely to be faster.  Tested in Julia 0.6, 0.7, and 1.0.

### Background

Why is this needed?  Because floating point arithmetic does things like this:

    julia> 0.1 + 0.2
    0.30000000000000004

Clearly, this is not okay for fields like finance, where it's important to be able to trust that $0.30 is actually 30 cents, rather than 30.000000000000004 cents.

(For an in-depth explanation of the underlying problem - "ordinary" decimals like 0.1 and 0.2 are base-10 numbers, many of which do not have an exact representation in binary - check out the amusingly-named [floating-point-gui.de](http://floating-point-gui.de/ "What Every Programmer Should Know About Floating-Point Arithmetic").)

### Installation and use

    julia> Pkg.add("Decimals")

    julia> using Decimals

#### The Decimal object

You can parse Decimal objects from strings:

    julia> parse(Decimal, "0.2")
    Decimals.Decimal(0,2,-1)

    julia> parse(Decimal, "-2.5e6")
    Decimals.Decimal(1,25,5)

You can construct Decimal objects from other Real numbers:

    julia> Decimal(0.1)
    Decimal(0,1,-1)

    julia> Decimal(-1003)
    Decimals.Decimal(1, 1003, 0)

Or can create Decimal objects from either strings or numbers using `decimal`:

    julia> decimal("0.2")
    Decimal(0,2,-1)

    julia> decimal(0.1)
    Decimal(0,1,-1)

    julia> decimal("-2.5e6")
    Decimal(1,25,5)

To convert back to a string or a float:

    julia> x = decimal("0.2");

    julia> string(x)
    "0.2"

    julia> float(x)
    0.2

It is also possible to call the Decimal constructor directly, by specifying the sign (`s`), coefficient (`c`), and exponent (`q`):

    julia> Decimal(1,2,-2)

The numerical value of a Decimal is given by `(-1)^s * c * 10^q`.  `s` must be 0 (positive) or 1 (negative).  `c` must be non-negative; `c` and `q` must be integers.

#### Operations

    julia> x, y = decimal("0.2"), decimal("0.1");

Addition:

    julia> string(x + y)
    "0.3"

Subtraction:

    julia> string(x - y)
    "0.1"

Negation:

    julia> string(-x)
    "-0.2"

Multiplication:

    julia> string(x * y)
    "0.02"

Division:

    julia> string(x / y)
    "2"

Inversion:

    julia> string(inv(x))
    "5"

Broadcasting:

    julia> [x y] .* 2
    2-element Array{Decimal,1}:
     Decimal(0,1,-1)
     Decimal(0,5,-2)

Equals (`==` and `isequal`):

    julia> x == decimal("0.2")
    true

    julia> x != decimal("0.1")
    true

Inequality:

    julia> x >= y
    true

    julia> isless(x, y)
    false

`==` returns true for Decimal vs. Number comparisons:

    julia> x == 0.2
    true

Rounding:

    julia> round(decimal(3.1415), digits=2)
    Decimal(0,314,-2)

    julia> string(ans)
    "3.14"

### Tests

Unit tests are in `test/`.  To run the tests:

    julia> Pkg.test("Decimals")
