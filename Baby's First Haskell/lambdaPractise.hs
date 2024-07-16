-- Lambda Practise
ex1 = (\x -> 
       (\y -> 
        (\z -> x + y + z) 1) 2)


-- (x + y + z)^2 - (x^2 + y^2 + z^2)
-- ex2 x y z = (x+y+z)^2 - (x^2 + y^2 + z^2)
ex2 x y z = (\sumSquare squareSum -> sumSquare - squareSum) ((x+y+z)^2) (x^2 + y^2 + z^2)

ex3 x = (\x ->
         (\x ->
          (\x -> x) 4
          )3
         )2

inc = (\x -> x + 1)
double = (\x -> x * 2)
square = (\x -> x^2)


{- Won't work as let and lambda aren't exactly the same thing
counter x = let x = x + 1
             in
              let x = x + 1
               in
                x
-}
-- This will work, increments by 2
counter x = (\x -> x + 1)
             ((\x -> x + 1)
              ((\x -> x) x))