function _precision(line)
    m = match(r"^precision:\s*(\d+)$", line)
    return parse(Int, m[1])
end

function _rounding(line)
    m = match(r"^rounding:\s*(\w+)$", line)
    return Symbol(m[1])
end

function _maxexponent(line)
    m = match(r"^maxexponent:\s*(\d+)$", line)
    return parse(Int, m[1])
end

function _minexponent(line)
    m = match(r"^minexponent:\s*(-\d+)$", line)
    return parse(Int, m[1])
end

function _test(line)
    lhs, rhs = split(line, "->")
    id, operation, operands... = split(lhs)
    result, conditions... = split(rhs)
    conditions = Symbol.(lowercase.(conditions))
    return (;id, operation, operands, result, conditions)
end

function decimal(x)
    x = strip(x, ['\'', '\"'])
    return "dec\"$x\""
end

print_precision(io, p::Int) = println(io, "    setprecision(Decimal, $p)")
print_maxexponent(io, e::Int) = println(io, "    Decimals.CONTEXT.Emax = $e")
print_minexponent(io, e::Int) = println(io, "    Decimals.CONTEXT.Emin = $e")
function print_rounding(io, r::Symbol)
    modes = Dict(:ceiling => "RoundUp",
                 :down => "RoundToZero",
                 :floor => "RoundDown",
                 :half_even => "RoundNearest",
                 :half_up => "RoundNearestTiesAway",
                 :up => "RoundFromZero",
                 :half_down => "RoundHalfDownUnsupported",
                 Symbol("05up") => "Round05UpUnsupported")
    haskey(modes, r) || throw(ArgumentError(r))
    rmod = modes[r]
    println(io, "    setrounding(Decimal, $rmod)")
end

function print_operation(io, operation, operands)
    if operation == "plus"
        print_plus(io, operands...)
    elseif operation == "minus"
        print_minus(io, operands...)
    elseif operation == "compare"
        print_compare(io, operands...)
    else
        throw(ArgumentError(operation))
    end
end
print_compare(io, x, y) = print(io, "cmp(", decimal(x), ", ", decimal(y), ")")
print_minus(io, x) = print(io, "-(", decimal(x), ")")
print_plus(io, x) = print(io, "+(", decimal(x), ")")

function print_test(io, test)
    println(io, "    # $(test.id)")

    if :overflow ∈ test.conditions
        print(io, "    @test_throws OverflowError ")
        print_operation(io, test.operation, test.operands)
        println(io)
    else
        print(io, "    @test ")
        print_operation(io, test.operation, test.operands)
        print(io, " == ")
        println(io, decimal(test.result))
    end
end

function isspecial(value)
    value = lowercase(value)
    return occursin(r"(inf|nan|#)", value)
end

function translate(io, line)
    isempty(line) && return
    startswith(line, "--") && return

    line = lowercase(line)

    if startswith(line, "version:")
        # ...
    elseif startswith(line, "extended:")
        # ...
    elseif startswith(line, "clamp:")
        # ...
    elseif startswith(line, "precision:")
        precision = _precision(line)
        print_precision(io, precision)
    elseif startswith(line, "rounding:")
        rounding = _rounding(line)
        print_rounding(io, rounding)
    elseif startswith(line, "maxexponent:")
        maxexponent = _maxexponent(line)
        print_maxexponent(io, maxexponent)
    elseif startswith(line, "minexponent:")
        minexponent = _minexponent(line)
        print_minexponent(io, minexponent)
    else
        test = _test(line)
        any(isspecial, test.operands) && return
        print_test(io, test)
    end
end

function (@main)(args=ARGS)
    name, dectest_path, output_path = args

    open(output_path, "w") do io
        println(io, """
                using Decimals
                using Test

                @testset \"$name\" begin""")

        for line in eachline(dectest_path)
            translate(io, line)
        end

        println(io, "end")
    end
end

