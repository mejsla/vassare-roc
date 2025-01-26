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
app [main] {
    pf: platform "https://github.com/roc-lang/basic-cli/releases/download/0.16.0/O00IPk-Krg_diNS2dVWlI0ZQP794Vctxzv0ha96mK0E.tar.br",
}

import pf.Stdout

main =
    Stdout.line "Hello, world!"
