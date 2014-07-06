## Decimals.jl

Some basic routines for exact decimal arithmetic, as specified in [IEEE 754](http://en.wikipedia.org/wiki/IEEE_floating_point "Wikipedia: IEEE floating point").  Supports addition, subtraction, negation, multiplication, and equality operations; division and exponentiation coming as soon as I find the time to write them.  Tested in Julia v. 0.3.0-prerelease+4028.

### Background

Why is this needed?  Because floating point arithmetic does things like this:

    julia> 0.1+0.2
    0.30000000000000004

Yikes.  Clearly, this is not okay for fields like finance, where it's important to be able to trust that $0.30 is actually 30 cents, not 30.000000000000004 cents.

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

The numerical value of a Decimal is given by `(-1)^s * c * 10^q`.  `s` must be 0 (positive) or 1 (negative).  `c` and `q` must be non-negative integers.

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

Equals (can't export overloaded `==` operator...):

    julia> equals(x, decimal("0.2"))
    true

    julia> equals(x, decimal("0.1"))
    false

`equals` returns true for Decimal-Number comparisons:

    julia> equals(x, 0.2)
    true

`is` only returns true between two Decimal objects:

    julia> is(x, decimal("0.2"))
    true

    julia> is(x, 0.2)
    false

### Tests

Unit tests are in `test/runtests.jl`.  To run the tests:

    $ julia test/runtests.jl
