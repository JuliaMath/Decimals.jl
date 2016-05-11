# Convert a string to a decimal, e.g. "0.01" -> Decimal(0, 1, -2)
function decimal(str::AbstractString)
    if 'e' in str
        return decimal(scinote(str))
    end
    c, q = parameters(('.' in str) ? split(str, '.') : str)
    norm(Decimal((str[1] == '-') ? 1 : 0, c, q))
end

# Convert a number to a decimal
decimal(x::Number) = decimal(string(x))

# If it's already a decimal, do nothing
decimal(x::Decimal) = x

# Convert an array to an array of decimals
decimal(x::Array) = map(decimal, x)

# Get Decimal constructor parameters from string
parameters(x::AbstractString) = (abs(parse(BigInt, x)), 0)

# Get Decimal constructor parameters from array
function parameters(x::Array)
    c = parse(BigInt, join(x))
    (abs(c), -length(x[2]))
end

# Get decimal() argument from scientific notation
function scinote(str::AbstractString)
    s = (str[1] == '-') ? "-" : ""
    n, expo = split(str, 'e')
    n = split(n, '.')
    if s == "-"
        n[1] = n[1][2:end]
    end
    if parse(Int64, expo) > 0
        shift = parse(Int64, expo) - ((length(n) == 2) ? length(n[2]) : 0)
        s * join(n) * repeat("0", shift)
    else
        shift = -parse(Int64, expo) - ((length(n) == 2) ? length(n[1]) : length(n))
        s * "0." * repeat("0", shift) * join(n)
    end
end

# Convert a decimal to a string
function Base.string(x::Decimal)
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

# Zero value
Base.zero(::Type{Decimals.Decimal}) = Decimal(0,0,0)

# Convert a decimal to a float
Base.float(x::Decimal) = float(string(x))
Base.float(x::Array{Decimal}) = map(float, x)

# Convert a decimal to an integer if possible, a float if not
function number(x::Decimal)
    ix = (str = string(x) ; fx = float(str); round(Int64, fx))
    (ix == fx) ? ix : fx
end
number(x::Array{Decimal}) = map(number, x)

# Check if integer
isint(x::Integer) = (length(string(x)) < length(string(typemax(Int))))
isint(x::AbstractFloat) = ((round(x) == x) && isint(round(x)))
isint(x::AbstractString) = isint(float(x))
