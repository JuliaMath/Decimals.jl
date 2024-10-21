macro dec_str(s)
    # Taken from @big_str in Base
    msg = "Invalid decimal: $s"
    throw_error = :(throw(ArgumentError($msg)))

    if '_' in s
        # remove _ in s[2:end-1]
        bf = IOBuffer(maxsize=lastindex(s))
        c = s[1]
        print(bf, c)
        is_prev_underscore = (c == '_')
        is_prev_dot = (c == '.')
        for c in SubString(s, 2, lastindex(s) - 1)
            c != '_' && print(bf, c)
            c == '_' && is_prev_dot && return throw_error
            c == '.' && is_prev_underscore && return throw_error
            is_prev_underscore = (c == '_')
            is_prev_dot = (c == '.')
        end
        print(bf, s[end])
        s = String(take!(bf))
    end

    x = tryparse(Decimal, s)
    x === nothing || return x
    return throw_error
end

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
