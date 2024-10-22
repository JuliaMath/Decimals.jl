using Decimals
using Documenter

makedocs(sitename="Decimals.jl",
         pages=["index.md",
                "operations.md"])
deploydocs(repo="github.com/JuliaMath/Decimals.jl.git",
           push_preview=true)
