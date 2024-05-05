-- \x -> x + 1    Meaning: Lambda x maps to x + 1
-- \x y -> x + y
-- \x -> \y -> x + y
-- \x -> (\y -> x + y)

parenthesizeWords s = unwords $ map parenthesizeWord (words s)
    where parenthesizeWord s = "(" ++ s ++ ")"
parenthesizeWords "We love Haskell!"  -- "(We) (love) (Haskell!)"

parenthesizeWords s = unwords $ map (\s -> "(" ++ s ++ ")") (words s)  -- "(We) (love) (Haskell!)"

parenthesizeWord = \s -> "(" ++ s ++ ")"
parenthesizeWord "we"  -- "(we)"

parenthesizeWord s = "(" ++ s ++ ")"
parenthesizeWord "love"  -- "(love)"

parenthesizeWord = ("(" ++) . (++ ")")  -- function composition
parenthesizeWord "functions"  -- "(functions)"
