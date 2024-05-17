import Data.List (isInfixOf)
type Grid = [String]

outputGrid :: Grid -> IO()
outputGrid grid = putStrLn (formatGrid grid)

formatGrid :: Grid -> String
formatGrid = unlines

-- find word in a line
findWordInLine :: String -> String -> Bool
findWordInLine word line = word `isInfixOf` line

-- check for word in all lines:
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
        outputGrid grid
        print (or (map (findWordInLine "HASKELL") grid))  -- True
        
