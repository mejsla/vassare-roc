#
# Since everything is immutable, you can use a variable before defining it. 🙃
#
app [main!] {
    pf: platform "https://github.com/roc-lang/basic-cli/releases/download/0.19.0/Hj-J_zxz7V9YurCSTFcFdu6cQJie4guzsPMUi5kBYUk.tar.br",
}

import pf.Stdout

main! = |_|
    foo = bar + 3
    bar = 5
    Stdout.line! "foo = ${Num.to_str foo}"
