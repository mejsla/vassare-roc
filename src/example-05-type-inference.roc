#
# Roc has type inference everywhere, even for function arguments.
#
# No curly brackets to define blocks - indentation matters.
# Parentheses only when needed.
# Function arguments between vertical bars.
#
app [main!] {
    pf: platform "https://github.com/roc-lang/basic-cli/releases/download/0.19.0/Hj-J_zxz7V9YurCSTFcFdu6cQJie4guzsPMUi5kBYUk.tar.br",
}

import pf.Stdout

main! = |_|
    x = f 5
    Stdout.line! "${Num.to_str x}"

# f : U128 -> U128
f = |x| x
