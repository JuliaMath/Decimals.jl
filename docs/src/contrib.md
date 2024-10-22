## Development

### Standard tests

There is a standard test suite called
[DecTests](https://speleotrove.com/decimal/dectest.html). The test suite is
provided in a [custom format](https://speleotrove.com/decimal/dtfile.html). We
have a script `scripts/dectest.jl` for translating test cases from the custom
format to common Julia tests. The script should be called like this:
```
julia scripts/dectest.jl <testset name> <dectest path> <output path>
```
For example:
`julia scripts/dectest.jl Plus dectests/plus.decTest test/dectests/test_plus.jl`.
We put these test files into the `test/dectests` subdirectory.
