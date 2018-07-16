# Convert a string to a decimal, e.g. "0.01" -> Decimal(0, 1, -2)
function Base.parse(::Type{Decimal}, str::AbstractString)
    # Read sign
    s = (str[1] == '-') ? 1 : 0
    # Unpack scientific notation
    scno = split(str, 'e')
    expo = length(scno) == 2 ? parse(Int64, scno[2]) : zero(Int64)
    # Unpack coefficient and get fractional part
    coef = split(scno[1], '.')
    frac = length(coef) == 2 ? rstrip(coef[2], '0') : ""
    # Update exponent
    if length(frac) == 0
        c = rstrip(coef[1], '0')
        expo += length(coef[1]) - length(c)
    else
        c = coef[1] * frac
        expo -= length(frac)
    end
    Decimal(s, abs(parse(BigInt, c)), expo)
end

decimal(str::AbstractString) = parse(Decimal, str)

# convert an array to an array of decimals
@deprecate decimal(x::Array) map(decimal, x)

# Convert a number to a decimal
Decimal(num::Real) = parse(Decimal, string(num))
Base.convert(::Type{Decimal}, num::Real) = Decimal(num::Real)
decimal(x::Real) = Decimal(x)
Decimal(x::Decimal) = x

# Convert a decimal to a string
function Base.print(io::IO, x::Decimal)
    c = string(x.c)
    negative = (x.s == 1) ? "-" : ""
    if x.q > 0
        print(io, negative, c, repeat("0", x.q))
    elseif x.q < 0
        shift = x.q + length(c)
        if shift > 0
            print(io, negative, c[1:shift], ".", c[(shift+1):end])
        else
            print(io, negative, "0.", repeat("0", -shift), c)
        end
    else
        print(io, negative, c)
    end
end

# Zero/one value
Base.zero(::Type{Decimal}) = Decimal(0,0,0)
Base.one(::Type{Decimal}) = Decimal(0,1,0)

# Convert a decimal to a float
@deprecate float(x::Decimal) Float64(x)
@deprecate float(x::Array{Decimal}) map(Float64, x)

# convert a decimal to any subtype of Real
(::Type{T})(x::Decimal) where {T<:Real} = parse(T, string(x))

# Convert a decimal to an integer if possible, a float if not
function number(x::Decimal)
    ix = (str = string(x) ; fx = parse(Float64, str); round(Int64, fx))
    (ix == fx) ? ix : fx
end
@deprecate number(x::Array{Decimal}) map(number, x)

# Check if integer
@deprecate isint(x::Integer) isinteger(x)
@deprecate isint(x::AbstractFloat) isinteger(x)
@deprecate isint(x::AbstractString) isinteger(parse(Float64, x))
