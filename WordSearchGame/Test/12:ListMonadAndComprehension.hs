import Control.Monad (guard)
-- check if divisible by 2
div2 x = x `mod` 2 == 0

-- List monad notation
mapped = do
  i <- [0..9]
  return (i * 2)

filtered = do
  i <- [0..9]
  guard (div2 i)
  return i

mappedAndFiltered = do
  i <- [0..9]
  guard (div2 i)
  return (i + 1)

-- List comprehension
qwert = [ i * 2 | i <- [0..9] ]
qwert1 = [ i * 2 | i <- [0..9], div2 i]

main :: IO ()
main = do
  print (div2 10) -- True
  print (mapped) -- [0,2,4,6,8,10,12,14,16,18]
  print (filtered) -- [0,2,4,6,8]
  print (mappedAndFiltered) -- [1,3,5,7,9]
  print qwert -- [0,2,4,6,8,10,12,14,16,18]
  print qwert1 -- [0,4,8,12,16]
