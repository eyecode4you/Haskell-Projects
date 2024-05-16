add :: Int -> Int -> Int
add a b = a + b

-- add 1 2 = 3
-- :type add 1 2 = add 1 2 :: Int

-- add 1 = error, no instance for (Show (Int -> Int)) from use of print. Not a syntax error.
-- :type add 1 = add 1 :: Int -> Int

add1 = add 1
add1 2  -- = 3
-- :type add1 = add1 :: Int -> Int

add1 b = add 1 b
add1 2  -- = 3

add a b = a + b
-- :type (+) = Num a => a -> a -> a
(+) 1 2  -- = 3

add a b = (+) a b
add 1 2  -- = 3

add a = (+) a
add 1 2  -- = 3

add = (+)
add 1 2  -- = 3

-- Here, even though add func is an alias for (+) operator, add has more restrictive type signature
1.5 + 1.5  -- = 3.0
add 1.5 1.5  -- error

add = (+)
-- :type add = Num a => a -> a -> a
add 1.5 1.5  -- = 3.0
