data Colour = RGB Int Int Int | CMYK Float Float Float Float deriving Show

colourModel :: Colour -> String
colourModel c = 
    case c of RGB _ _ _ -> "RGB"
              CMYK _ _ _ _ -> "CMYK"

main :: IO ()
main = do
    let c = CMYK 1.0 2.0 3.0 4.0
    putStrLn $ colourModel c
