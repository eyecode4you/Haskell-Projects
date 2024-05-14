func x y z = x + y + z  -- Here, x y z arguments also provide pattern matching

data Colour = RGB Int Int Int deriving Show

red :: Colour -> Int
red (RGB r _ _) = r  -- Pattern matching; ignore 2nd and 3rd ints, extract the 1st

green :: Colour -> Int
green (RGB _ g _) = g

blue :: Colour -> Int
blue (RGB _ _ b) = b

main :: IO ()
main = do
    print $ func 1 2 3
    
    let c = RGB 10 20 30
    print $ red c
    print $ green c
    print $ blue c
