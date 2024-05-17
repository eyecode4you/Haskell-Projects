
import Data.List (isInfixOf)
findWordInLine :: String -> String -> Bool
findWordInLine word line = word `isInfixOf` line

grid = ["ONE", "TWO", "THREE", "FOUR", "FIVE"]  -- test list

main :: IO ()
main = do
        print grid
        -- check for word in all lines. We can use map:
        print (map (findWordInLine "THREE") grid) -- returns list of bools for check result in every line: [False,False,True,False,False]
        -- check ^^^ list if any is True. We can use Logical OR:
        print (or (map (findWordInLine "THREE") grid)) -- True
