# Show x without using exponential notation
function show_plain(io::IO, x::Decimal)
    if x.s
        print(io, '-')
    end

    if x.q ≥ 0
        # Print coefficient and `x.q` zeros
        print(io, x.c, repeat('0', x.q))
    else # x.q < 0
        coef = string(x.c)
        coefdigits = ncodeunits(coef)
        pointpos = -x.q # How many digits should go after the decimal point

        # If there are some (non-zero) digits before the decimal point,
        # print them, then print the decimal point, and then the digits after
        # the decimal point
        # Otherwise, print "0." and then print zeros so that the number of
        # zeros plus `coefdigits` is `pointpos`
        if pointpos < coefdigits
            print(io, @view(coef[1:end - pointpos]), ".",
                  @view(coef[end - pointpos + 1:end]))
        else
            print(io, "0.", repeat('0', pointpos - coefdigits), coef)
        end
    end
end

# Show x using exponential notation
function show_exponential(io::IO, x::Decimal)
    coef = string(x.c)
    coefdigits = ncodeunits(coef)

    if x.s
        print(io, '-')
    end

    # If there are more than one digit,
    # put a decimal point right after the first digit
    if coefdigits > 1
        print(io, coef[1], ".", @view coef[2:end])
    else
        print(io, coef)
    end

    adjusted_exp = x.q + coefdigits - 1
    exp_sign = adjusted_exp > 0 ? '+' : '-'
    print(io, "E", exp_sign, abs(adjusted_exp))
end

# Prints `x` using the scientific notation
function scientific_notation(io::IO, x::Decimal)
    adjusted_exp = x.q + ndigits(x.c) - 1

    # Decide whether to use the exponential notation
    if x.q ≤ 0 && adjusted_exp ≥ -6
        show_plain(io, x)
    else
        show_exponential(io, x)
    end
end

Base.show(io::IO, x::Decimal) = print(io, "Decimal($(Int(x.s)), $(x.c), $(x.q))")
Base.show(io::IO, ::MIME"text/plain", x::Decimal) = scientific_notation(io, x)
