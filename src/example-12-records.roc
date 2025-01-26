#
# A record is a group of named values.
# We can give a name to the type of a record.
# You can create new records from existing records and modify one or more values.
#
app [main] {
    pf: platform "https://github.com/roc-lang/basic-cli/releases/download/0.16.0/O00IPk-Krg_diNS2dVWlI0ZQP794Vctxzv0ha96mK0E.tar.br",
}

import pf.Stdout

# Point : { x : I128, y : I128 }

main =
    p1 = createPoint 5 8
    p2 = { x: 5, y: 8 }
    Stdout.line! "$(Inspect.toStr p1)"
    Stdout.line! "$(Inspect.toStr p2)"
    Stdout.line! "Equal: $(Inspect.toStr (p1 == p2))"

    { x: myX, y: myY } = p2
    Stdout.line! "myX: $(Num.toStr myX), myY: $(Num.toStr myY)"

    p3 = { p1 & x: 7 }
    Stdout.line! "$(Inspect.toStr p3)"

# createPoint : I128, I128 -> Point
createPoint = \x, y ->
    { x, y }
