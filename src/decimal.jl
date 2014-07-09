# Convert a string to a decimal, e.g. "0.01" -> Decimal(0, 1, -2)
function decimal(str::String)
    if 'e' in str
        return decimal(scinote(str))
    end
    arr = split(str, '.')
    Decimal(
        (str[1] == '-') ? 1 : 0,
        abs(int(join(arr))),
        (length(arr) == 2) ? -length(arr[2]) : 0
    )
end

# Convert a number to a decimal
decimal(x::Number) = decimal(string(x))

# Get decimal() argument from scientific notation
function scinote(str::String)
    s = (str[1] == '-') ? "-" : ""
    n, expo = split(str, 'e')
    n = split(n, '.')
    if s == "-"
        n[1] = n[1][2:end]
    end
    if int(expo) > 0
        shift = int(expo) - ((length(n) == 2) ? length(n[2]) : 0)
        s * join(n) * repeat("0", shift)
    else
        shift = -int(expo) - ((length(n) == 2) ? length(n[1]) : length(n))
        s * "0." * repeat("0", shift) * join(n)
    end
end

# Convert a decimal to a string
function string(x::Decimal)
    c = string(x.c)
    if x.q > 0
        for i in 1:x.q
            c *= "0"
        end
    elseif x.q < 0
        shift = x.q + length(c)
        if shift > 0
            c = c[1:shift] * "." * c[(shift+1):end]
        else
            c = "0." * repeat("0", -shift) * c            
        end
    end
    ((x.s == 1) ? "-" : "") * c
end

# Convert a decimal to a float
float(x::Decimal) = float(string(x))

# Convert a decimal to an integer if possible, a float if not
function number(x::Decimal)
    ix = (str = string(x); fx = float(str); int(fx))
    (ix == fx) ? ix : fx
end
