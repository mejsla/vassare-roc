#
# You can run a program with compilation errors:
#
# roc run example-06-run.roc
#
# If program execution reaches a compilation error, the program crashes.
#
app [main!] {
    pf: platform "https://github.com/roc-lang/basic-cli/releases/download/0.19.0/Hj-J_zxz7V9YurCSTFcFdu6cQJie4guzsPMUi5kBYUk.tar.br",
}

import pf.Stdout

main! = |_|
    foo = 7
    if foo > 0 then
        Stdout.line! "Ok"
    else
        Stdout.line! "Compilation" "error"
