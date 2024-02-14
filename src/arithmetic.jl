Base.promote_rule(::Type{Decimal}, ::Type{<:Real}) = Decimal

# override definitions in Base
Base.promote_rule(::Type{BigFloat}, ::Type{Decimal}) = Decimal
Base.promote_rule(::Type{BigInt}, ::Type{Decimal}) = Decimal

# Addition
# To add, convert both decimals to the same exponent.
# (If the exponents are different, use the smaller exponent
# to make sure we're adding integers.)
function +(x::Decimal, y::Decimal)
    cx = (-1)^x.s * x.c * 10^max(x.q - y.q, 0)
    cy = (-1)^y.s * y.c * 10^max(y.q - x.q, 0)
    s = (abs(cx) > abs(cy)) ? x.s : y.s
    c = BigInt(cx) + BigInt(cy)
    normalize(Decimal(s, abs(c), min(x.q, y.q)))
end

# Negation
-(x::Decimal) = Decimal((x.s == 1) ? 0 : 1, x.c, x.q)

# Subtraction
-(x::Decimal, y::Decimal) = +(x, -y)

# Multiplication
function *(x::Decimal, y::Decimal)
    s = (x.s == y.s) ? 0 : 1
    normalize(Decimal(s, BigInt(x.c) * BigInt(y.c), x.q + y.q))
end

# Inversion
function Base.inv(x::Decimal)
    c = round(BigInt(10)^(-x.q + DIGITS) / x.c) # the decimal point of 1/x.c is shifted by -x.q so that the integer part of the result is correct and then it is shifted further by DIGITS to also cover some digits from the fractional part.
    q = -DIGITS # we only need to remember that there are these digits after the decimal point
    normalize(Decimal(x.s, c, q))
end

# Division
/(x::Decimal, y::Decimal) = x * inv(y)

# Exponentiation, please test

function ^(x::Decimal, y::Decimal)
    #(-1.23)^(something) code to catch errors prior to the routine
    x.s == 1 && begin
        (y.q < 0  && throw(DomainError(y),"Exponentiation yielding a complex result requires a complex argument."))
    end
    y.s == 1 && (return ^(inv(x),-y))
    y.q < 0 && (return Decimal(BigFloat(x)^BigFloat(y))) #add correction to precision, its too much
    
    if iseven(y.c) #squared number
        zs = 0
    else
        if x.s == 0 
            zs =0
        else
            zs = 1
        end
    end
    
        zc = x.c^((y.c)*(10^y.q))
        zq = (x.q)*((y.c)*(10^y.q))
        return  Decimal(zs,zc,zq)
 
end
