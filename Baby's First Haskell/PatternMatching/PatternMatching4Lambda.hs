data Colour = RGB Int Int Int deriving Show

red :: Colour -> Int
red = \(RGB r _ _) -> r  -- Lambda can only match one pattern

main :: IO ()
main = do
    print $ red (RGB 100 200 300)
