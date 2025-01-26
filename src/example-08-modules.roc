#
# Module names start with a capital letter.
# Use keyword 'import' to import a module.
# Types from a module can be exposed using the 'exposing' keyword.
# Some built-in modules, like Str don't need importing.
#
app [main] {
    pf: platform "https://github.com/roc-lang/basic-cli/releases/download/0.16.0/O00IPk-Krg_diNS2dVWlI0ZQP794Vctxzv0ha96mK0E.tar.br",
}

import pf.Stdout
import MyModule exposing [sqr]

main =
    Stdout.line! "$(Num.toStr (MyModule.cube 5))"
    Stdout.line! "$(Num.toStr (sqr 5))"
