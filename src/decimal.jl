@noinline function _parse_failure(T, str::AbstractString)
    throw(ArgumentError("cannot parse $str as $T"))
end

# Convert a string to a decimal, e.g. "0.01" -> Decimal(0, 1, -2)
function Base.parse(::Type{Decimal}, str::AbstractString)
    @something tryparse(Decimal, str) _parse_failure(Decimal, str)
end

# Support for tryparse: useful also for integration with other packages, e.g. CSVFiles.jl, Parsers.jl
function Base.tryparse(::Type{Decimal}, str::AbstractString)
    if 'e' in str
        sci = @something _scinote_internal(str) return
        return tryparse(Decimal, sci)
    end
    c, q = @something _parameters_internal(('.' in str) ? split(str, '.') : str) return
    normalize(Decimal((str[1] == '-') ? 1 : 0, c, q))
end

decimal(str::AbstractString) = parse(Decimal, str)

# Convert a number to a decimal
Decimal(num::Real) = parse(Decimal, string(num))
Base.convert(::Type{Decimal}, num::Real) = Decimal(num::Real)
decimal(x::Real) = Decimal(x)
Decimal(x::Decimal) = x


function _parameters_internal(x::AbstractString)
    c = @something tryparse(BigInt, x) return
    abs(c), 0
end

function _parameters_internal(x::Array)
    c = @something tryparse(BigInt, join(x)) return
    length(x) == 2 || return
    abs(c), -length(x[2])
end

function _parameters_internal(x::AbstractString, raise::Bool)
    @something _parameters_internal(x) begin
        raise && _parse_failure(Decimal, x)
        return
    end
end

function _parameters_internal(x::Array, raise::Bool)
    @something _parameters_internal(x) begin
        raise && _parse_failure(Decimal, repr(x))
        return
    end
end

# Get Decimal constructor parameters from string
parameters(x::AbstractString) = _parameters_internal(x, true)

# Get Decimal constructor parameters from array
function parameters(x::Array)
    c = parse(BigInt, join(x))
    (abs(c), -length(x[2]))
end

function _scinote_internal(str::AbstractString)
    s = (str[1] == '-') ? "-" : ""
    n, expo = split(str, 'e')
    n = split(n, '.')
    if s == "-"
        n[1] = n[1][2:end]
    end
    expo_ = @something tryparse(Int64, expo) return
    if expo_ > 0
        shift = expo_ - ((length(n) == 2) ? length(n[2]) : 0)
        s * join(n) * repeat("0", shift)
    else
        shift = -expo_ - ((length(n) == 2) ? length(n[1]) : length(n))
        s * "0." * repeat("0", shift) * join(n)
    end
end

function _scinote_internal(str::AbstractString, raise::Bool)
    @something _scinote_internal(str) begin
        raise && throw(ArgumentError("cannot parse scientific notation for $str"))
        return
    end
end

# Get decimal() argument from scientific notation
function scinote(str::AbstractString)
    _scinote_internal(str, true)
end

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

# convert a decimal to any subtype of Real
(::Type{T})(x::Decimal) where {T<:Real} = parse(T, string(x))

# Convert a decimal to an integer if possible, a float if not
function number(x::Decimal)
    ix = (str = string(x) ; fx = parse(Float64, str); round(Int64, fx))
    (ix == fx) ? ix : fx
end

# sign
Base.signbit(x::Decimal) = x.s != 0
