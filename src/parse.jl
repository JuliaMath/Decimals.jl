function Base.tryparse(::Type{Decimal}, str::AbstractString)
    regex = Regex(string(
        "^",
        # Optional sign
        "(?<sign>[+-])?",
        # Decimal part: either 1[234].[567]  or  [.]1[234]
        "(?<dec>(?:\\d+\\.\\d*)|(?:\\.?\\d+))",
        # Optional exponent part: e or E followed by optional sign and digits
        "(?<exp>[eE][+-]?\\d+)?",
        "\$"
    ))

    m = match(regex, str)
    if isnothing(m)
        return nothing
    end

    sign = m[:sign]
    deci_part = m[:dec]
    expo_part = m[:exp]

    # expo_part[1] is 'e' or 'E'
    exponent = isnothing(expo_part) ? 0 : parse(Int, @view expo_part[2:end])

    int_frac = split(deci_part, ".", keepempty=true)
    if length(int_frac) == 1
        # There is no decimal point
        coef = parse(BigInt, deci_part)
    else
        # There is a decimal point
        @assert length(int_frac) == 2
        int, frac = int_frac
        coef = parse(BigInt, int * frac)
        exponent -= length(frac)
    end

    negative = sign == "-"

    return Decimal(negative, coef, exponent)
end

function Base.parse(::Type{Decimal}, str::AbstractString)
    x = tryparse(Decimal, str)
    isnothing(x) && throw(ArgumentError("Invalid decimal: $str"))
    return x
end

