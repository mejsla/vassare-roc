#
# Effects.
#
app [main] {
    pf: platform "https://github.com/roc-lang/basic-cli/releases/download/0.16.0/O00IPk-Krg_diNS2dVWlI0ZQP794Vctxzv0ha96mK0E.tar.br",
}

import pf.Stdout
import pf.Utc

main =
    startTime = Utc.now! {}
    sum =
        List.range { start: At 0, end: At 50_000 }
        |> List.walk 0 (\s, x -> s + x)
    Stdout.line! "Sum: $(Num.toStr sum)"
    endTime = Utc.now! {}
    runTime = Utc.deltaAsNanos startTime endTime
    Stdout.line "Run time: $(Num.toStr runTime) nanos"
