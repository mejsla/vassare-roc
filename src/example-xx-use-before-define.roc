#
# Since everything is immutable, you can use a variable before defining it. 🙃
#
app [main] {
    pf: platform "https://github.com/roc-lang/basic-cli/releases/download/0.16.0/O00IPk-Krg_diNS2dVWlI0ZQP794Vctxzv0ha96mK0E.tar.br",
}

import pf.Stdout

main =
    foo = bar + 3
    bar = 5
    Stdout.line! "foo = $(Num.toStr foo)"
