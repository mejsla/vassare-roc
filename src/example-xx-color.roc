#
# More tags examples.
#
app [main] {
    pf: platform "https://github.com/roc-lang/basic-cli/releases/download/0.16.0/O00IPk-Krg_diNS2dVWlI0ZQP794Vctxzv0ha96mK0E.tar.br",
}

import pf.Stdout

main =
    # c = createColor 0 0 0
    c = createColor 10 20 30
    dbg c
    when c is
        Black -> Stdout.line "Black"
        Color red green blue -> Stdout.line "Red: $(Num.toStr red), green: $(Num.toStr green), blue: $(Num.toStr blue)"

createColor = \r, g, b ->
    if r == 0 && g == 0 && b == 0 then
        Black
    else
        Color r g b
