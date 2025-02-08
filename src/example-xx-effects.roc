#
# Effects.
#
app [main!] {
    pf: platform "https://github.com/roc-lang/basic-cli/releases/download/0.19.0/Hj-J_zxz7V9YurCSTFcFdu6cQJie4guzsPMUi5kBYUk.tar.br",
}

import pf.Stdout
import pf.Utc

main! = |_|
    startTime = Utc.now! {}
    sum =
        List.range { start: At 0, end: At 50_000 }
        |> List.walk 0 (|s, x| s + x)
    Stdout.line!? "Sum: ${Num.to_str sum}"
    endTime = Utc.now! {}
    runTime = Utc.delta_as_nanos startTime endTime
    Stdout.line! "Run time: ${Num.to_str runTime} nanos"
