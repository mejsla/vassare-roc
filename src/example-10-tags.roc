#
# Tags are literal values just like numbers, and can be compared using ==.
# Tags can have payloads, values associated with the tag.
# You can pattern match on tags and their payloads.
#
app [main!] {
    pf: platform "https://github.com/roc-lang/basic-cli/releases/download/0.19.0/Hj-J_zxz7V9YurCSTFcFdu6cQJie4guzsPMUi5kBYUk.tar.br",
}

import pf.Stdout

main! = |_|
    msg =
        when parity 7 is
            Odd(x) if x > 0 -> "${Num.to_str x} is odd and positive"
            Odd(x) -> "${Num.to_str x} is odd and negative"
            Even -> "Value is even"
    Stdout.line! msg

parity = |x|
    if x % 2 != 0 then
        Odd(x)
    else
        Even
