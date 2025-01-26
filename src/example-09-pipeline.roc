#
# Pipelines are constructed using the combination |>
# The piped value becomes the first argument to the next function.
# Some names are different: 'keepIf' instead of 'filter', and 'walk' instead of 'fold'.
#
app [main] {
    pf: platform "https://github.com/roc-lang/basic-cli/releases/download/0.16.0/O00IPk-Krg_diNS2dVWlI0ZQP794Vctxzv0ha96mK0E.tar.br",
}

import pf.Stdout
import MyModule exposing [sqr]

main =
    [1, 2, 3, 4, 5]
    |> List.keepIf \x -> x % 2 != 0
    |> List.map sqr
    |> List.map Num.toStr
    |> List.walk
        ""
        \state, elem ->
            state
            |> Str.concat " "
            |> Str.concat elem
    |> Stdout.line!
