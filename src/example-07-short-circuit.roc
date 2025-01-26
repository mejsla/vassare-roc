#
# The operators && and || are not short-circuit operators.
# They are sugar for function calls to Bool.and and Bool.or.
#
app [main] {
    pf: platform "https://github.com/roc-lang/basic-cli/releases/download/0.16.0/O00IPk-Krg_diNS2dVWlI0ZQP794Vctxzv0ha96mK0E.tar.br",
}

import pf.Stdout

main =
    foo = 0
    if foo != 0 && 5 / foo > 20 then
        Stdout.line! "A"
    else
        Stdout.line! "B"
