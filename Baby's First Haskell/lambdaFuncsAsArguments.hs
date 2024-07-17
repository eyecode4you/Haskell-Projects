-- Lambda Functions as Arguments
{-
Function Structure: *functionName [*passedFunction(s)] *variableName(s) = *do
Functions always take precedence over operators e.g.:
inc x = x + 1
inc 2 * 3 -- = (2 + 1) * 3 = 9

This is true even for multi-function arguments:
add x y = x + y
add 1 2 * 3 -- = (1 + 2) * 3 = 9
-}

ifEven myFunction x = if even x
                      then myFunction x
                      else x

-- ifEven (\x -> x*2) 6 -- = 6 is even so (6 * 2) = 12
-- ifEven (\x -> x^3) 4 -- = 4 is even so (4^3) = 64