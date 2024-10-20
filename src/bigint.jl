@static if VERSION < v"1.10-"
    const libgmp = :libgmp
else
    const libgmp = Base.GMP.libgmp
end

function isdivisible(x::BigInt, n::Int)
    r = ccall((:__gmpz_divisible_ui_p, libgmp), Cint,
              (Base.GMP.MPZ.mpz_t, Culong), x, n)
    return r != 0
end

function exactdiv(x::BigInt, n::Int)
    y = BigInt()
    ccall((:__gmpz_divexact_ui, libgmp), Cvoid,
          (Base.GMP.MPZ.mpz_t, Base.GMP.MPZ.mpz_t, Culong), y, x, n)
    return y
end

"""
    maxexp(n)

Return maximum exponent E such that n^E is representable both as Int and
Culong (i.e., n^(E+1) would overflow).
"""
function maxexp(n::Int)
    maxval = min(typemax(Culong), typemax(Int))
    return ceil(Int, log(n, maxval)) - 1
end

"""
    cancelfactor(x::BigInt, ::Val{N})

Remove all occurrences of the factor `N` from `x`. The result is pair `(y, E)`
such that `x = y * N^E`.
"""
function cancelfactor(x::BigInt, ::Val{N}) where {N}
    if iszero(x)
        return x, 0
    end

    q = 0
    while isdivisible(x, N)
        d = N
        q += 1
        for e in 2:maxexp(N)
            isdivisible(x, d * N) || break
            d *= N
            q += 1
        end
        x = exactdiv(x, d)
    end

    return x, q
end
