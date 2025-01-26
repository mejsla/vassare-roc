#
# Numeric types include:
#
# - integer types from U8 to U128 and from I8 to I128
# - floating point types F32 and F64
# - fixed point type Dec with 18 decimals
# - no BigDecimal
#
app [main] {
    pf: platform "https://github.com/roc-lang/basic-cli/releases/download/0.16.0/O00IPk-Krg_diNS2dVWlI0ZQP794Vctxzv0ha96mK0E.tar.br",
}

import pf.Stdout

aNumber = 79u128
anotherNumber = 5i8

aFloatingPointNumber = 33.01f64

aDecimalNumber = 45.98dec

main =
    Stdout.line! "$(Num.toStr aNumber)"
    Stdout.line! "$(Num.toStr anotherNumber)"
    Stdout.line! "$(Num.toStr aFloatingPointNumber)"
    Stdout.line! "$(Num.toStr aDecimalNumber)"
    Stdout.line! ""
    Stdout.line! "$(Num.toStr (0.1f64 + 0.2f64))"
    Stdout.line! "$(Num.toStr (0.1dec + 0.2dec))"
