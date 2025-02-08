#
# A record is a group of named values.
# We can give a name to the type of a record.
# You can create new records from existing records and modify one or more values.
#
app [main!] {
    pf: platform "https://github.com/roc-lang/basic-cli/releases/download/0.19.0/Hj-J_zxz7V9YurCSTFcFdu6cQJie4guzsPMUi5kBYUk.tar.br",
}

import pf.Stdout

# Point : { x : I128, y : I128 }

main! = |_|
    p1 = createPoint 5 8
    p2 = { x: 5, y: 8 }
    Stdout.line!? "${Inspect.to_str p1}"
    Stdout.line!? "${Inspect.to_str p2}"
    Stdout.line!? "Equal: ${Inspect.to_str (p1 == p2)}"

    { x: myX, y: myY } = p2
    Stdout.line!? "myX: ${Num.to_str myX}, myY: ${Num.to_str myY}"

    p3 = { p1 & x: 7 }
    Stdout.line! "${Inspect.to_str p3}"

# createPoint : I128, I128 -> Point
createPoint = |x, y|
    { x, y }
