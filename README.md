## Decimals.jl

[![Build Status](https://travis-ci.org/tensorjack/Decimals.jl.svg?branch=master)](https://travis-ci.org/tensorjack/Decimals.jl) [![Coverage Status](https://coveralls.io/repos/tensorjack/Decimals.jl/badge.png)](https://coveralls.io/r/tensorjack/Decimals.jl)

Some basic routines for exact decimal arithmetic.  Supports addition, subtraction, negation, multiplication, division, and equality operations; exponentiation coming as soon as I find the time to write it.  Note that this is a pure Julia implementation; calling `libmpdec` functions directly is likely to be faster.  (Tested in Julia v. 0.3.0-prerelease+4028.)

### Background

Why is this needed?  Because floating point arithmetic does things like this:

    julia> 0.1 + 0.2
    0.30000000000000004

Clearly, this is not okay for fields like finance, where it's important to be able to trust that $0.30 is actually 30 cents, rather than 30.000000000000004 cents.

(For an in-depth explanation of the underlying problem - "ordinary" decimals like 0.1 and 0.2 are base-10 numbers, many of which do not have an exact representation in binary - check out the amusingly-named [floating-point-gui.de](http://floating-point-gui.de/ "What Every Programmer Should Know About Floating-Point Arithmetic").)

### Installation and use

    julia> Pkg.clone("git://github.com/tensorjack/Decimals.jl.git")

    julia> using Decimals

#### The Decimal object

You can create Decimal objects from either strings or numbers, using `decimal()`:

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

`==` returns true for Decimal vs. Number comparisons:

    julia> x == 0.2
    true

`===` and `is` only return true between two equivalent Decimal objects:

    julia> x === decimal("0.2")
    true

    julia> x === 0.2
    false

Rounding:

    julia> round(decimal(3.1415), 2)
    Decimal(0,314,-2)

    julia> string(ans)
    "3.14"

### Tests

Unit tests are in `test/`.  To run the tests:

    $ julia test/runtests.jl
