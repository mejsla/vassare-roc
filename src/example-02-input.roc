#
# To read from the command line, use Stdin.line!
#
# The exclamation mark means "wait for task to finish and get result".
#
# String interpolation with $(...) syntax.
#
app [main] {
    pf: platform "https://github.com/roc-lang/basic-cli/releases/download/0.16.0/O00IPk-Krg_diNS2dVWlI0ZQP794Vctxzv0ha96mK0E.tar.br",
}

import pf.Stdin
import pf.Stdout

main =
    Stdout.line! "What is your name?"
    name = Stdin.line!
    Stdout.line! "Hello, $(name)!"
