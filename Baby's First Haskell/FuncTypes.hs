import Data.List

f0 :: String -> Int  -- map string to int (return value) and calc length
f0 = length

f1 :: String -> (String, Int)
f1 x = (x, length x)

f2 :: [String] -> [(String, Int)]
f2 = map f1

formatList :: String -> String -> String -> [String] -> String
formatList start end separator xs = start ++ (intercalculate separator (map show xs)) ++ end
-- String (start), String (end), String (separator), List of Strings (xs) joined together and intercalculated

formatList :: String -> (String -> (String -> ([String] -> String)))  -- func in Haskell evaluate to other funcs (each func only takes single argument)

main :: IO ()
main = do
    print $ f0 "hello"  -- 5
    print $ f1 "hello"  -- ("hello", 5)
    print $ f2 ["hello", "goodbye"]  -- [("hello", 5), ("goodbye", 7)]

    putStrLn $ formatList "<list>" "<\list>" "|" ["first", "second", "third", "fourth"]
    -- <list>"first"|"second"|"third"|"fourth"<\list>
