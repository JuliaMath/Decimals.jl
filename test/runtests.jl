using Decimals
using Base.Test

tests = ["constructor",
         "decimal", 
         "norm",
         "arithmetic",
         "equals",
         "round"]

println("Running tests:")

for t in tests
    tfile = string("test_", t, ".jl")
    println(" * $(t) ...")
    include(tfile)
end
