-- Lexical Scope
{- Whenever a new func is created, a new scope is created. When a var is used, 
the program looks to the nearest scope; if the var isn't found there, it goes 
to the next level up. This is called lexical scope. -}

x = 4

add1 y = y + x -- finds x above

add2 y = (\x -> y + x) 3 -- finds x (3) within the lambda first

add3 y = (\y ->
          (\x -> y + x) 1) 2 -- ignores the argument in add3 and uses lamda argument instead

-- add1 23 = (23 + 4) = 27
-- add2 22 = (22 + 3) = 25
-- add3 999 = (2 + 1) = 3, 999 is ignored