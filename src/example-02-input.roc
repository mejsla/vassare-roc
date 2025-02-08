#
# To read from the command line, use Stdin.line!
#
# The exclamation mark means the function is "effectful", that is, has an effect
# other than returning a result. The question mark means we extract the string read
# from stdin if successful, and pass any errors up the call stack.
#
# String interpolation with ${...} syntax.
#
app [main!] {
    pf: platform "https://github.com/roc-lang/basic-cli/releases/download/0.19.0/Hj-J_zxz7V9YurCSTFcFdu6cQJie4guzsPMUi5kBYUk.tar.br",
}

import pf.Stdin
import pf.Stdout

main! = |_|
    _ = Stdout.line! "What is your name?"
    name = Stdin.line!? {}
    Stdout.line! "Hello, ${name}!"
