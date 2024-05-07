readInts :: String -> [Int]
readInts s = let ws = words s in map read ws

minMax :: Ord a => [a] -> Maybe (a, a)
minMax (h : t) = Just $ foldr
  (\x (min, max) -> (if x < min then x else min, if x > max then x else max))  -- \x is similar to lamda func
  (h, h)  -- head
  t  -- tail
minMax _ = Nothing

main :: IO ()
main = do
  content <- readFile "numbers.txt"
  let values = readInts content
      count = length values
      total = sum values
      mean = fromIntegral total / fromIntegral count
      range = minMax values
  print count
  print total
  print mean
  print range
    
