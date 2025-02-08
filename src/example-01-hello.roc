#
# A simple hello-world program.
#
# You can build it using:
#
# roc build example-01-hello.roc
#
# Or run it directly using:
#
# roc example-01-hello.roc
#
app [main!] {
    pf: platform "https://github.com/roc-lang/basic-cli/releases/download/0.19.0/Hj-J_zxz7V9YurCSTFcFdu6cQJie4guzsPMUi5kBYUk.tar.br",
}

import pf.Stdout

main! = |_|
    Stdout.line! "Hello, world!"
