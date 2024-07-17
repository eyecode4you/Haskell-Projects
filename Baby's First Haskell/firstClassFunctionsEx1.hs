-- First-Class Functions: Functions as Arguments
{- Here we have 3 similar funcs:
ifEvenInc n = if even n
              then n + 1
              else n

ifEvenDouble n = if even n
                 then n*2
                 else n 

ifEvenSquare n = if even n
                 then n^2
                 else n
-}



{- Instead of writing cumbersome, samey funcs, 
we can write a new func that will work with abstracted 
versions of our prev. funcs: 
-}

ifEven myFunction x = if even x
                      then myFunction x
                      else x

-- We can abstract out our prev. functions
inc n = n + 1
double n = n*2
square n = n^2
cube n = n^3

-- And pass them to the ifEven function:
ifEvenInc n = ifEven inc n
ifEvenDouble n = ifEven double n
ifEvenSquare n = ifEven square n
ifEvenCube n = ifEven cube n