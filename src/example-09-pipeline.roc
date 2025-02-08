#
# Pipelines are constructed using the combination of | and >.
# The piped value becomes the first argument to the next function.
# Some names are different: 'keep_if' instead of 'filter', and 'walk' instead of 'fold'.
#
app [main!] {
    pf: platform "https://github.com/roc-lang/basic-cli/releases/download/0.19.0/Hj-J_zxz7V9YurCSTFcFdu6cQJie4guzsPMUi5kBYUk.tar.br",
}

import pf.Stdout
import MyModule exposing [sqr]

main! = |_|
    [1, 2, 3, 4, 5]
    |> List.keep_if |x| x % 2 != 0
    |> List.map sqr
    |> List.map Num.to_str
    |> List.walk
        ""
        |state, elem|
            state
            |> Str.concat " "
            |> Str.concat elem
    |> Stdout.line!
