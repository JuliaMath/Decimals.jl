function _precision(line)
    m = match(r"^precision:\s*(\d+)$", line)
    isnothing(m) && throw(ArgumentError(line))
    return parse(Int, m[1])
end

function _rounding(line)
    m = match(r"^rounding:\s*(\w+)$", line)
    isnothing(m) && throw(ArgumentError(line))
    r = m[1]
    if r == "ceiling"
        return "RoundUp"
    elseif r == "down"
        return "RoundToZero"
    elseif r == "floor"
        return "RoundDown"
    elseif r == "half_even"
        return "RoundNearest"
    elseif r == "half_up"
        return "RoundNearestTiesAway"
    elseif r == "up"
        return "RoundFromZero"
    elseif r == "half_down"
        return "RoundHalfDownUnsupported"
    elseif r == "05up"
        return "Round05UpUnsupported"
    else
        throw(ArgumentError(r))
    end
end

function _maxexponent(line)
    m = match(r"^maxexponent:\s*\+?(\d+)$", line)
    isnothing(m) && throw(ArgumentError(line))
    return parse(Int, m[1])
end

function _minexponent(line)
    m = match(r"^minexponent:\s*(-\d+)$", line)
    isnothing(m) && throw(ArgumentError(line))
    return parse(Int, m[1])
end

function _test(line)
    occursin("->", line) || throw(ArgumentError(line))
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

function print_operation(io, operation, operands)
    if operation == "abs"
        print_abs(io, operands...)
    elseif operation == "add"
        print_add(io, operands...)
    elseif operation == "apply"
        print_apply(io, operands...)
    elseif operation == "compare"
        print_compare(io, operands...)
    elseif operation == "divide"
        print_divide(io, operands...)
    elseif operation == "max"
        print_max(io, operands...)
    elseif operation == "min"
        print_min(io, operands...)
    elseif operation == "minus"
        print_minus(io, operands...)
    elseif operation == "multiply"
        print_multiply(io, operands...)
    elseif operation == "plus"
        print_plus(io, operands...)
    elseif operation == "reduce"
        print_reduce(io, operands...)
    elseif operation == "subtract"
        print_subtract(io, operands...)
    else
        throw(ArgumentError(operation))
    end
end
print_abs(io, x) = print(io, "abs(", decimal(x), ")")
print_add(io, x, y) = print(io, decimal(x), " + ", decimal(y))
print_apply(io, x) = print(io, decimal(x))
print_compare(io, x, y) = print(io, "cmp(", decimal(x), ", ", decimal(y), ")")
print_divide(io, x, y) = print(io, decimal(x), " / ", decimal(y))
print_max(io, x, y) = print(io, "max(", decimal(x), ", ", decimal(y), ")")
print_min(io, x, y) = print(io, "min(", decimal(x), ", ", decimal(y), ")")
print_minus(io, x) = print(io, "-(", decimal(x), ")")
print_multiply(io, x, y) = print(io, decimal(x), " * ", decimal(y))
print_plus(io, x) = print(io, "+(", decimal(x), ")")
print_reduce(io, x) = print(io, "reduce(", decimal(x), ")")
print_subtract(io, x, y) = print(io, decimal(x), " - ", decimal(y))

function print_test(io, test, directives)
    println(io, "    # $(test.id)")

    names = sort!(collect(keys(directives)))
    params = join(("$k=$(directives[k])" for k in names), ", ")
    print(io, "    @with_context ($params) ")

    if :overflow ∈ test.conditions
        print(io, "@test_throws OverflowError ")
        print_operation(io, test.operation, test.operands)
        println(io)
    elseif :division_undefined ∈ test.conditions
        print(io, "@test_throws UndefinedDivisionError ")
        print_operation(io, test.operation, test.operands)
        println(io)
    elseif :division_by_zero ∈ test.conditions
        print(io, "@test_throws DivisionByZeroError ")
        print_operation(io, test.operation, test.operands)
        println(io)
    else
        print(io, "@test ")
        print_operation(io, test.operation, test.operands)
        print(io, " == ")
        println(io, decimal(test.result))
    end
end

function isspecial(value)
    value = lowercase(value)
    return occursin(r"(inf|nan|#)", value)
end

function translate(io, dectest_path)
    directives = Dict{String, Any}()

    for line in eachline(dectest_path)
        line = strip(line)

        isempty(line) && continue
        startswith(line, "--") && continue

        line = lowercase(line)

        if startswith(line, "version:")
            # ...
        elseif startswith(line, "extended:")
            # ...
        elseif startswith(line, "clamp:")
            # ...
        elseif startswith(line, "precision:")
            directives["precision"] = _precision(line)
        elseif startswith(line, "rounding:")
            directives["rounding"] = _rounding(line)
        elseif startswith(line, "maxexponent:")
            directives["Emax"] = _maxexponent(line)
        elseif startswith(line, "minexponent:")
            directives["Emin"] = _minexponent(line)
        else
            test = _test(line)
            any(isspecial, test.operands) && continue
            occursin("Unsupported", directives["rounding"]) && continue
            print_test(io, test, directives)
        end
    end
end

function (@main)(args=ARGS)
    name, dectest_path, output_path = args

    open(output_path, "w") do io
        println(io, """
                using Decimals
                using ScopedValues
                using Test
                using Decimals: @with_context

                @testset \"$name\" begin""")

        translate(io, dectest_path)

        println(io, "end")
    end
end

