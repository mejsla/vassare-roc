#
# You can do pattern matching on lists.
#
app [main] {
    pf: platform "https://github.com/roc-lang/basic-cli/releases/download/0.16.0/O00IPk-Krg_diNS2dVWlI0ZQP794Vctxzv0ha96mK0E.tar.br",
}

import pf.Stdout

main =
    x =
        when [1, 2, 3] is
            [n, ..] -> n
            _ -> Num.maxU64
    y =
        when [1, 2, 3] is
            [.., 3] -> 3
            _ -> Num.maxU64
    Stdout.line! "x: $(Num.toStr x)"
    Stdout.line! "y: $(Num.toStr y)"

    Stdout.line! "reversed: $(Inspect.toStr (reverse [1, 2, 3]))"

reverse = \list ->
    when list is
        [head, .. as tail] -> List.append (reverse tail) head
        _ -> []
