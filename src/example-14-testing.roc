#
# Tests are written in the source code files.
#
# You run tests like this:
#
# roc test example-14-testing.roc
#
app [main] {
    pf: platform "https://github.com/roc-lang/basic-cli/releases/download/0.16.0/O00IPk-Krg_diNS2dVWlI0ZQP794Vctxzv0ha96mK0E.tar.br",
}

import pf.Stdout

main =
    Stdout.line "fac(5) = $(Num.toStr (fac 5))"

fac = \n ->
    if n <= 1 then
        1
    else
        n * fac (n - 1)

expect fac(5) == 120

expect
    result = fac(3)
    result == 120
