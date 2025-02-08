#
# Module names start with a capital letter.
# Use keyword 'import' to import a module.
# Types from a module can be exposed using the 'exposing' keyword.
# Some built-in modules, like Str don't need importing.
#
app [main!] {
    pf: platform "https://github.com/roc-lang/basic-cli/releases/download/0.19.0/Hj-J_zxz7V9YurCSTFcFdu6cQJie4guzsPMUi5kBYUk.tar.br",
}

import pf.Stdout
import MyModule exposing [sqr]

main! = |_|
    Stdout.line!? "${Num.to_str (MyModule.cube 5)}"
    Stdout.line! "${Num.to_str (sqr 5)}"
