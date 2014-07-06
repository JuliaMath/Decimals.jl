# Convert a string to a decimal, e.g. "0.01" -> Decimal(0, 1, -2)
function decimal(str::String)
    s = (str[1] == '-') ? 1 : 0
    c = ""
    index = 0
    q = 0
    if 'e' in str
        n, expo = split(str, 'e')
        n = split(n, '.')
        return decimal(join(n) * repeat("0", int(expo) - length(n[2])))
    else
        for chr in str
            index += 1
            if chr == '.'
                q = int(length(str) - index)
            else
                c *= string(chr)
            end
        end
        d = Decimal(s, abs(int(c)), -q)
    end
    normalize(d)
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
            c = c[1:shift] * "." * c[shift+1:end]
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
    str = string(x)
    fx = float(str)
    ix = int(fx)
    (ix == fx) ? ix : fx
end
