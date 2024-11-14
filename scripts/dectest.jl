function (@main)(args=ARGS)
    name, dectest_path, output_path = args

    open(output_path, "w") do io
        println(io, """
                using Decimals
                using Test
                using Decimals: @with_context

                @testset \"$name\" begin""")

        translate(io, dectest_path)

        println(io, "end")
    end
end

function translate(io, dectest_path)
    directives = Dict{Symbol, Any}()

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
            directives[:precision] = parse_precision(line)
        elseif startswith(line, "rounding:")
            directives[:rounding] = parse_rounding(line)
        elseif startswith(line, "maxexponent:")
            directives[:Emax] = parse_maxexponent(line)
        elseif startswith(line, "minexponent:")
            directives[:Emin] = parse_minexponent(line)
        else
            if directives[:rounding] == RoundingMode{:Unsupported}
                continue
            end

            test = parse_test(line)
            any(isspecial, test.operands) && continue

            dectest = decimal_test(test, directives)
            println(io, dectest)
        end
    end
end

function isspecial(value)
    value = lowercase(value)
    return occursin(r"(inf|nan|#)", value)
end

function parse_precision(line)
    m = match(r"^precision:\s*(\d+)$", line)
    isnothing(m) && throw(ArgumentError(line))
    return parse(Int, m[1])
end

function parse_rounding(line)
    m = match(r"^rounding:\s*(\w+)$", line)
    isnothing(m) && throw(ArgumentError(line))
    r = m[1]
    if r == "ceiling"
        return RoundUp
    elseif r == "down"
        return RoundToZero
    elseif r == "floor"
        return RoundDown
    elseif r == "half_even"
        return RoundNearest
    elseif r == "half_up"
        return RoundNearestTiesAway
    elseif r == "up"
        return RoundFromZero
    elseif r == "half_down"
        return RoundingMode{:Unsupported}
    elseif r == "05up"
        return RoundingMode{:Unsupported}
    else
        throw(ArgumentError(r))
    end
end

function parse_maxexponent(line)
    m = match(r"^maxexponent:\s*\+?(\d+)$", line)
    isnothing(m) && throw(ArgumentError(line))
    return parse(Int, m[1])
end

function parse_minexponent(line)
    m = match(r"^minexponent:\s*(-\d+)$", line)
    isnothing(m) && throw(ArgumentError(line))
    return parse(Int, m[1])
end

function parse_test(line)
    occursin("->", line) || throw(ArgumentError(line))
    lhs, rhs = split(line, "->")
    id, operation, operands... = split(lhs)
    result, conditions... = split(rhs)
    conditions = Symbol.(lowercase.(conditions))
    return (;id, operation, operands, result, conditions)
end

function clean(@nospecialize ex)
    if isa(ex, Expr)
        if Meta.isexpr(ex, :macrocall)
            return Expr(:macrocall, ex.args[1], nothing, map(clean, ex.args[3:end])...)
        else
            return Expr(ex.head, map(clean, ex.args)...)
        end
    elseif isa(ex, LineNumberNode)
        return nothing
    else
        return ex
    end
end

function decimal_test(test, directives)
    ctxt = decimal_context(directives)
    op = decimal_operation(test.operation, test.operands)
    res = operation_result(test.operation, test.result)

    if :overflow in test.conditions
        ex = :(@with_context($ctxt, @test_throws OverflowError $op))
    elseif :division_undefined in test.conditions
        ex = :(@with_context($ctxt, @test_throws UndefinedDivisionError $op))
    elseif :division_by_zero in test.conditions
        ex = :(@with_context($ctxt, @test_throws DivisionByZeroError $op))
    else
        ex = :(@with_context($ctxt, @test $op == $(res)))
    end
    return clean(ex)
end

function dec(x)
    x = strip(x, ['\'', '\"'])
    return :(@dec_str $("$x"))
end

function decimal_context(directives)
    names = Tuple(sort!(collect(keys(directives))))
    values = Tuple([directives[name] for name in names])
    params = NamedTuple{names}(values)
    return params
end

function operation_result(operation, result)
    if operation == "compare"
        return parse(Int, result)
    else
        return dec(result)
    end
end

function decimal_operation(operation, operands)
    if operation == "abs"
        return decimal_abs(operands...)
    elseif operation == "add"
        return decimal_add(operands...)
    elseif operation == "apply"
        return decimal_apply(operands...)
    elseif operation == "compare"
        return decimal_compare(operands...)
    elseif operation == "divide"
        return decimal_divide(operands...)
    elseif operation == "max"
        return decimal_max(operands...)
    elseif operation == "min"
        return decimal_min(operands...)
    elseif operation == "minus"
        return decimal_minus(operands...)
    elseif operation == "multiply"
        return decimal_multiply(operands...)
    elseif operation == "plus"
        return decimal_plus(operands...)
    elseif operation == "reduce"
        return decimal_reduce(operands...)
    elseif operation == "subtract"
        return decimal_subtract(operands...)
    else
        throw(ArgumentError(operation))
    end
end

decimal_abs(x) = :(abs($(dec(x))))
decimal_add(x, y) = :($(dec(x)) + $(dec(y)))
decimal_apply(x) = dec(x)
decimal_compare(x, y) = :(cmp($(dec(x)), $(dec(y))))
decimal_divide(x, y) = :($(dec(x)) / $(dec(y)))
decimal_max(x, y) = :(max($(dec(x)), $(dec(y))))
decimal_min(x, y) = :(min($(dec(x)), $(dec(y))))
decimal_minus(x) = :(-($(dec(x))))
decimal_multiply(x, y) = :($(dec(x)) * $(dec(y)))
decimal_plus(x) = :(+($(dec(x))))
decimal_reduce(x) = :(normalize($(dec(x))))
decimal_subtract(x, y) = :($(dec(x)) - $(dec(y)))

