-- Parametric polymorphism example
myMap :: (a -> b) -> [a] -> [b]
myMap _ [] = []  -- _ is for aruguments we don't care about
myMap f (a : as) = f a : myMap f as

myFilter :: (a -> Bool) -> [a] -> [a]
myFilter _ [] = []
myFilter f (a : as) = if f a then a : myFilter f as else myFilter f as

myFold :: (a -> b -> b) -> b -> [a] -> b
myFold _ b [] = b
myFold f b (a : as) = myFold f (f a b) as

main :: IO ()
main = do
    print $ myMap show [10, 20, 30]  -- ["10", "20", "30"]
    print $ myFilter (< 25) [10, 20, 30]  -- [10, 20]
    print $ myFold (+) 100 [10, 20, 30]  -- 160  (+) operand is (a -> b -> b), 100 is b, list of ints is [a] -> b
    -- :type (+) is Num a => a -> a -> a
