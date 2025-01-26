#
# Roc has type inference everywhere, even for function arguments.
#
# No curly brackets - indentation matters.
# Parentheses only when needed.
# Function arguments start with backslash.
#
app [main] {
    pf: platform "https://github.com/roc-lang/basic-cli/releases/download/0.16.0/O00IPk-Krg_diNS2dVWlI0ZQP794Vctxzv0ha96mK0E.tar.br",
}

import pf.Stdout

main =
    x = f 5
    Stdout.line! "$(Num.toStr x)"

# f : U128 -> U128
f = \x -> x
