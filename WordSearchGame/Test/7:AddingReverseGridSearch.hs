import Data.List (isInfixOf)
type Grid = [String]

outputGrid :: Grid -> IO()
outputGrid grid = putStrLn (formatGrid grid)

formatGrid :: Grid -> String
formatGrid = unlines

-- find word in a line
findWordInLine :: String -> String -> Bool
findWordInLine word line = word `isInfixOf` line

-- will now search for word left->right and right->left
findWordInLines :: Grid -> String -> Bool
findWordInLines grid word = 
  let lines = grid ++ (map reverse grid) -- append a new reversed grid to original
  in or $ map (findWordInLine word) lines -- search all these lines for word

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
        print (findWordInLines grid "HASKELL")
        print (findWordInLines grid "IBM")
        print (findWordInLines grid "HTML")
        print (findWordInLines grid "EYECODE") -- all True
