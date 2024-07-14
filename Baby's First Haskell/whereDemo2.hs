-- where demo 2
inc x = x + 1
double x = x * 2
square x = x^2

-- combining these
doubleThenInc x = double + 1
  where double = x * 2

squareThenDouble x = square * 2
  where square = x^2

incThenSquare x = inc^2 where 
  inc = x + 1

-- double then square then increment
doubleSquareInc x = square + 1 where 
  square = double ^ 2
  double = x * 2

main :: IO()
main = do
  putStr "2 incremented = "
  print $ inc 2
  
  putStr "2 doubled = "
  print $ double 2
  
  putStr "2 squared = "
  print $ square 2
  
  putStr "2 doubled then incremented = "
  print $ doubleThenInc 2
  
  putStr "2 squared then doubled = "
  print $ squareThenDouble 2
  
  putStr "2 incremented then squared = "
  print $ incThenSquare 2
  
  putStr "2 doubled then squared then incremented = "
  print $ doubleSquareInc 2