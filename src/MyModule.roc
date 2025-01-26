#
# The module name is given by the file name.
# Types can be exported using the keyword 'module'.
# Doc comments are written with two ## in the beginning.
#
module [cube, sqr]

## Calculate the cube of 'x'.
cube : Num a -> Num a
cube = \x ->
    x * x * x

sqr : Num a -> Num a
sqr = \x ->
    x * x
