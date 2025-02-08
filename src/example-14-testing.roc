#
# Tests are written in the source code files.
#
# You run tests like this:
#
# roc test example-14-testing.roc
#
app [main!] {
    pf: platform "https://github.com/roc-lang/basic-cli/releases/download/0.19.0/Hj-J_zxz7V9YurCSTFcFdu6cQJie4guzsPMUi5kBYUk.tar.br",
}

import pf.Stdout

main! = |_|
    Stdout.line! "fac(5) = ${Num.to_str (fac 5)}"

fac = |n|
    if n <= 1 then
        1
    else
        n * fac (n - 1)

expect fac(5) == 120

expect
    result = fac(3)
    result == 120
