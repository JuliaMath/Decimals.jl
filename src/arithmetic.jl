# Addition
# To add, convert both decimals to the same exponent.
# (If the exponents are different, use the smaller exponent
# to make sure we're adding integers.)
function +(x::Decimal, y::Decimal)
    cx = (-1)^x.s * x.c * 10^max(x.q - y.q, 0)
    cy = (-1)^y.s * y.c * 10^max(y.q - x.q, 0)
    s = (abs(cx) > abs(cy)) ? x.s : y.s
    c = BigInt(cx) + BigInt(cy)
    norm(Decimal(s, abs(c), min(x.q, y.q)))
end
+(x::Decimal, y::Number) = +(x, decimal(y))
+(x::Number, y::Decimal) = +(decimal(x), y)
+{T<:Number}(x::Union(Number, Array{T}), y::Array{Decimal}) = broadcast(+, x, y)
+{T<:Number}(x::Array{Decimal}, y::Union(Number, Array{T})) = broadcast(+, x, y)

# Negation
-(x::Decimal) = Decimal((x.s == 1) ? 0 : 1, x.c, x.q)

# Subtraction
-(x::Decinum, y::Decinum) = +(x, -y)
-{T<:Number}(x::Union(Number, Array{T}), y::Array{Decimal}) = broadcast(-, x, y)
-{T<:Number}(x::Array{Decimal}, y::Union(Number, Array{T})) = broadcast(-, x, y)

# Multiplication
function *(x::Decimal, y::Decimal)
    s = (x.s == y.s) ? 0 : 1
    norm(Decimal(s, BigInt(x.c) * BigInt(y.c), x.q + y.q))
end
*(x::Decimal, y::Number) = *(x, decimal(y))
*(x::Number, y::Decimal) = *(decimal(x), y)
.*(x::Decimal, y::Array{Decimal}) = [i * x for i in y]
.*(x::Array{Decimal}, y::Decimal) = [i * y for i in x]
.*(x::Number, y::Array{Decimal}) = decimal(x) .* y
.*(x::Array{Decimal}, y::Number) = x .* decimal(y)
.*{T<:Number}(x::Union(Number, Array{T}), y::Array{Decimal}) = broadcast(*, decimal(x), y)
.*{T<:Number}(x::Array{Decimal}, y::Union(Number, Array{T})) = broadcast(*, x, decimal(y))
.*(x::Array{Decimal}, y::Union(BitArray, Array{Bool})) = x .* int(y)
.*(x::Union(BitArray, Array{Bool}), y::Array{Decimal}) = int(x) .* y

# Inversion
function Base.inv(x::Decimal)
    str = string(x)
    if str[1] == '-'
        str = str[2:end]
    end
    b = ('.' in str) ? length(split(str, '.')[1]) : 0
    c = round(BIG10^(-x.q + DIGITS) / x.c)
    q = (x.q < 0) ? 1 - b - DIGITS : -b - DIGITS
    norm(Decimal(x.s, c, q))
end
Base.inv(x::Array{Decimal}) = map(inv, x)

# Division
/(x::Decimal, y::Decimal) = x * inv(y)
/(x::Decinum, y::Decimal) = decimal(x) * inv(y)
/(x::Decimal, y::Decinum) = x * inv(decimal(y))
./(x::Decimal, y::Array{Decimal}) = [x / i for i in y]
./(x::Array{Decimal}, y::Decimal) = [i / y for i in x]
./(x::Number, y::Array{Decimal}) = decimal(x) ./ y
./(x::Array{Decimal}, y::Number) = x ./ decimal(y)
./{T<:Number}(x::Union(Number, Array{T}), y::Array{Decimal}) = broadcast(/, decimal(x), y)
./{T<:Number}(x::Array{Decimal}, y::Union(Number, Array{T})) = broadcast(/, x, decimal(y))

# TODO exponentiation
# TODO max, min
# TODO inequalities
