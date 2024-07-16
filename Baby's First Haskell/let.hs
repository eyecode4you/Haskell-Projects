-- A Demo of let in Haskell
{-
A let expression allows you to combine the readability of a where clause with the 
power of lambda functions. Choosing let or where is a matter of style.
-}

{-
sumSquareOrSquareSum x y = if sumSquare > squareSum
                           then sumSquare
                           else squareSum
  where sumSquare = x^2 + y^2
        squareSum = (x+y)^2
-}

sumSquareOrSquareSum x y = let sumSquare = (x^2 + y^2) -- vars defined first
                               squareSum = (x+y)^2
                           in -- body begins
                            if sumSquare > squareSum
                            then sumSquare
                            else squareSum

-- with let we can overwrite variables, e.g. 
overwrite x = let x = 2
              in
               let x = 3
               in
                let x = 4
                in
                 x
-- same as:
overwrite x = (\x ->
              (\x ->
                (\x -> x) 4
               )3
              )2