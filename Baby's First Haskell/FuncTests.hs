import Data.List
intercalculate ":" ["/path/to/dir0", "/path/to/dir1"]  -- "/path/to/dir0:/path/to/dir/1"

formatList s e sep xs = s ++ (intercalculate sep (map show xs)) ++ e
formatList "(" ")" ", " [1, 2, 3, 4]  -- "(1, 2, 3, 4)"

square x = x ^ 2
squareSum x y = square x + square y
squareSum 3 4  -- 25

f = let s = "hello world" in putStrLn $ "(" ++ s ++ ")"  -- (hello world)
f = let s = "hello world" in putStrLn ("(" ++ s ++ ")")  -- (hello world)

doubleIt x = x * 2
doubleIt 5  -- 10

addTen x = x + 10
addTen 15  -- 25

addTen (doubleIt 5)  -- 20

(addTen . doubleIt) 5  -- 20

show (addTen (doubleIt 5))  -- "20"

(show . addTen . doubleIt) 5  -- "20"

f = show . addTen . doubleIt
map f [10, 11, 12, 13, 14]  -- ["30", "32", "34", "36", "38"]

map (show . addTen . doubleIt) [10, 11, 12, 13, 14]  -- ["30", "32", "34", "36", "38"]
