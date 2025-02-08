#
# Error handling is done with tags.
# Functions return a value of type Result, which can be either 'Ok' with an optional payload,
#     or 'Err' with an error tag.
# Results can be pattern matched, mapped, and chained in different ways.
#
app [main!] {
    pf: platform "https://github.com/roc-lang/basic-cli/releases/download/0.19.0/Hj-J_zxz7V9YurCSTFcFdu6cQJie4guzsPMUi5kBYUk.tar.br",
}

import pf.Stdout

main! = |_|
    Str.to_u8 "14"
    |> Result.map_ok |x| x * 2
    |> Result.with_default 17
    |> Num.to_str
    |> Stdout.line!?

    # Pattern matching
    when Str.to_u8 "14" is
        Ok x -> Stdout.line! "Value is ${Num.to_str x}"
        Err InvalidNumStr -> Stdout.line! "Value is not a U8"
