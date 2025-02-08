#
# Numeric types include:
#
# - integer types from U8 to U128 and from I8 to I128
# - floating point types F32 and F64
# - fixed point type Dec with 18 decimals
# - no BigDecimal
#
app [main!] {
    pf: platform "https://github.com/roc-lang/basic-cli/releases/download/0.19.0/Hj-J_zxz7V9YurCSTFcFdu6cQJie4guzsPMUi5kBYUk.tar.br",
}

import pf.Stdout

aNumber = 79u128
anotherNumber = 5i8

aFloatingPointNumber = 33.01f64

aDecimalNumber = 45.98dec

main! = |_|
    Stdout.line!? "${Num.to_str aNumber}"
    Stdout.line!? "${Num.to_str anotherNumber}"
    Stdout.line!? "${Num.to_str aFloatingPointNumber}"
    Stdout.line!? "${Num.to_str aDecimalNumber}"
    Stdout.line!? ""
    Stdout.line!? "${Num.to_str (0.1f64 + 0.2f64)}"
    Stdout.line! "${Num.to_str (0.1dec + 0.2dec)}"
