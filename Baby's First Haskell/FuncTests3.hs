func x y = show x ++ show y  -- :type func = func :: (show a1, show a) => a -> a1 -> [char]

x `func` y = show x ++ show y  -- :type func = func :: (show a1, show a) => a -> a1 -> [char]

func "aaa" "bbb"  -- "\"aaa\"\"bbb\""

leftSection = (5 `func`)  -- :type leftSection = leftSection :: show a1 => a1 -> [char]
leftSection "6"  -- "5\"6\""

rightSection = (`func` "five")
rightSection 6  -- "6\"five\""
