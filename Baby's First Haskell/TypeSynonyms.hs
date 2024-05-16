ProcessString :: String -> Int  -- can write String instead of [Char]

-- Likewise we can use synonym for Int to make code more readable:
type Count = Int
ProcessString :: String -> Count
