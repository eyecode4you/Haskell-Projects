import Data.List (isInfixOf)
type Grid = [String]
findWordInLine :: String -> String -> Bool
findWordInLine word line = word `isInfixOf` line

-- check for word in all lines (note this only searches from right -> left):
findWordInLines :: Grid -> String -> Bool
findWordInLines grid word = or $ map (findWordInLine word) grid

grid = [ "LMTH________Q__"
       , "___O_______R___"
       , "__C_O_____A____"
       , "__O__B_U_D_____"
       , "__M___ENA_S____"
       , "__P____R__W____"
       , "__T____EEDOCEYE"
       , "__IBM_MA__D____"
       , "_HASKELL__I____"  -- grid !! 8
       , "________L_W____"
       ]

main :: IO ()
main = do
-- we need to reverse the grid to check for words spelled backwards
        print (reverse "LMTH________Q__") -- reverses a line, we'll see HTML...
        
        -- print (reverse grid) won't work as it just reverses bottom-to-top
        -- we can use map with reverse to reverse each line of the grid
        print (map reverse grid)
        print (findWordInLines (map reverse grid) "HTML")  -- True
