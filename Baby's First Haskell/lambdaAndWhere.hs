-- Lamda Functions & Writing our Own Where Clause

{- Lambda function example:
From:
doubleDouble x = dubs*2
where dubs = x*2

To:
doubleDouble x (\dubs -> dubs*2) (x*2)
-}

{- Consider:
sumSquareOrSquareSum x y = if (x^2 + y^2) > ((x+y)^2)
                           then (x^2 + y^2)
                           else (x+y)^2
-}


{- Another solution to not having variables is to split functions into separate steps:
body sumSquare squareSum = if sumSquare > squareSum
                           then sumSquare
                           else squareSum
sumSquareOrSquareSum x y = body (x^2 + y^2) ((x+y)^2)

This makes our function easier to use but requires an intermediary body function -}


{- A lambda function can get rid of the intermediary function e.g.:
1: Create a lambda function for body:
body = (\sumSquare squareSum ->
         if sumSquare > squareSum
         then sumSquare
         else squareSum)

2: Substitute our lambda function for body in the prev. sumSquareOrSquareSum function:
sumSquareOrSquareSum x y = (\sumSquare squareSum ->
                             if sumSquare > squareSum
                             then sumSquare
                             else squareSum) (x^2 + y^2) ((x+y)^2)
-}


-- using the where clause makes code easier to read and reduces computations:
sumSquareOrSquareSum x y = if sumSquare > squareSum
                           then sumSquare
                           else squareSum
  where sumSquare = x^2 + y^2
        squareSum = (x+y)^2


main :: IO()
main = do 
       print $ sumSquareOrSquareSum 2 4