#
# More tags examples.
#
app [main!] {
    pf: platform "https://github.com/roc-lang/basic-cli/releases/download/0.19.0/Hj-J_zxz7V9YurCSTFcFdu6cQJie4guzsPMUi5kBYUk.tar.br",
}

import pf.Stdout

main! = |_|
    # c = createColor 0 0 0
    c = dbg createColor(10, 20, 30)
    when c is
        Black -> Stdout.line! "Black"
        Color(red, green, blue) -> Stdout.line! "Red: ${Num.to_str red}, green: ${Num.to_str green}, blue: ${Num.to_str blue}"

createColor = |r, g, b|
    if r == 0 and g == 0 and b == 0 then
        Black
    else
        Color(r, g, b)
