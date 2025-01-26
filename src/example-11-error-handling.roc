#
# Error handling is done with tags.
# Functions return a value of type Result, which can be either 'Ok' with an optional payload,
#     or 'Err' with an error tag.
# Results can be pattern matched, mapped, and chained in different ways.
#
app [main] {
    pf: platform "https://github.com/roc-lang/basic-cli/releases/download/0.16.0/O00IPk-Krg_diNS2dVWlI0ZQP794Vctxzv0ha96mK0E.tar.br",
}

import pf.Stdout

main =
    Str.toU8 "14"
    |> Result.map \x -> x * 2
    |> Result.withDefault 17
    |> Num.toStr
    |> Stdout.line!

    # Pattern matching
    when Str.toU8 "14" is
        Ok x -> Stdout.line "Value is $(Num.toStr x)"
        Err InvalidNumStr -> Stdout.line "Values is not a U8"
