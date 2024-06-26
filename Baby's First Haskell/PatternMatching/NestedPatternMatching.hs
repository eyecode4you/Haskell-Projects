data Colour = RGB Int Int Int deriving Show

data Pixel = Pixel Int Int Int Colour
-- Data & type constructors can have same name as they're in different namespaces

pixelRed :: Pixel -> Int
pixelRed (Pixel _ _ _ (RGB r _ _)) = r

main :: IO ()
main = do
    let p = Pixel 100 100 100 (RGB 10 20 30)
    print $ pixelRed p  -- 10
