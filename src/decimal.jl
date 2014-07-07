# Convert a string to a decimal, e.g. "0.01" -> Decimal(0, 1, -2)
function decimal(str::String)
    if 'e' in str
        n, expo = split(str, 'e')
        n = split(n, '.')
        sgn = ""
        if n[1][1] == '-'
            sgn *= "-"
            n[1] = n[1][2:end]
        end
        if int(expo) > 0
            digits = (length(n) == 2) ? length(n[2]) : 0
            steps = int(expo) - digits
            param = sgn * join(n) * repeat("0", steps)
        else
            digits = (length(n) == 2) ? length(n[1]) : length(n)
            steps = -int(expo) - digits
            param = sgn * "0." * repeat("0", steps) * join(n)
        end
        return decimal(param)
    end
    s = (str[1] == '-') ? 1 : 0
    arr = split(str, '.')
    c = join(arr)
    q = (length(arr) == 2) ? length(arr[2]) : 0
    Decimal(s, abs(int(c)), -q)
end

# Convert a number to a decimal
decimal(x::Number) = decimal(string(x))

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
