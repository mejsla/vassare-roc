#
# You can do pattern matching on lists.
#
app [main!] {
    pf: platform "https://github.com/roc-lang/basic-cli/releases/download/0.19.0/Hj-J_zxz7V9YurCSTFcFdu6cQJie4guzsPMUi5kBYUk.tar.br",
}

import pf.Stdout

main! = |_|
    x =
        when [1, 2, 3] is
            [n, ..] -> n
            _ -> Num.max_u64
    y =
        when [1, 2, 3] is
            [.., 3] -> 3
            _ -> Num.max_u64
    Stdout.line!? "x: ${Num.to_str x}"
    Stdout.line!? "y: ${Num.to_str y}"

    Stdout.line! "reversed: ${Inspect.to_str (reverse [1, 2, 3])}"

reverse = |list|
    when list is
        [head, .. as tail] -> List.append (reverse tail) head
        _ -> []
