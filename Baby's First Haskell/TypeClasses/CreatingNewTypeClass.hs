class Dingus a where
    dingu :: a -> (String, Integer)  -- some type a to tuple, any class implementing Dingus must have this format

-- handle 3 algebraic data types
data A = A { aValue :: Int }
instance Dingus A where
  dingu a = let value = aValue a in (show value, toInteger value)  -- extract value, show, and convert to int

data B = B { bValue :: Integer }
instance Dingus B where
  dingu b = let value = bValue b in (show value, toInteger value)

data C = C { cValue :: Double }
instance Dingus C where
  dingu c = let value = cValue c in (show value, round value)

printDinguResult :: Dingus a => a -> IO ()
printDinguResult = print . dingu  -- print tuple

main :: IO ()
main = do
    printDinguResult (A 100)  -- ("100",100)
    printDinguResult (B (2 ^ 70))  -- try it yourself
    printDinguResult (C 3.141)  -- ("3.141",3)
