#
# You can run a program with compilation errors:
#
# roc run example-06-run.roc
#
# If program execution reaches a compilation error, the program crashes.
#
app [main] {
    pf: platform "https://github.com/roc-lang/basic-cli/releases/download/0.16.0/O00IPk-Krg_diNS2dVWlI0ZQP794Vctxzv0ha96mK0E.tar.br",
}

import pf.Stdout

main =
    foo = -7
    if foo > 0 then
        Stdout.line! "Ok"
    else
        Stdout.line! "Compilation" "error"
