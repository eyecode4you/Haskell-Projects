import Data.List (isInfixOf) -- https://hackage.haskell.org/package/basement-0.0.16/docs/Basement-String.html#v:isInfixOf
-- format and print our wordsearch grid with words placed inside
outputGrid :: [String] -> IO()
outputGrid grid = putStrLn (formatGrid grid)

formatGrid :: [String] -> String
formatGrid = unlines -- https://hackage.haskell.org/package/base-4.20.0.0/docs/Prelude.html#v:unlines

-- find word in a line
findWordInLine :: String -> String -> Bool
findWordInLine word line = isInfixOf word line    -- can also be written as: findWordInLine = isInfixOf  -  it is really just an alias
findWordInLine word line = word `isInfixOf` line  -- looks nice

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
        print (findWordInLine "HASKELL" (grid !! 0))  -- is HASKELL in 1st line? False
        print (findWordInLine "HASKELL" (grid !! 1))  -- False
        -- ...
        print (findWordInLine "HASKELL" (grid !! 8))  -- True
