{- Demonstration of the where clause in Haskell -}

calcChange owed given = if given - owed > 0
                        then given - owed
                        else 0
-- The above code is difficult to read and repeats a computation!

-- Haskell solves these with where clause
calcChange owed given = if change > 0
                        then change
                        else 0
    where change = given - owed -- given - owed only computed once and assigned to change
{-
variable order is a bit different to other languages, change is declared after it's used in calcChange 
Because of referential transparency, this isn't an issue
-}

doublePlusTwo x = doubleX + 2
    where doubleX = x*2
