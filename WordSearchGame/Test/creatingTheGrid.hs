-- format and print our wordsearch grid with words placed inside
outputGrid :: [String] -> IO()
outputGrid grid = putStrLn (formatGrid grid)

formatGrid :: [String] -> String
formatGrid = unlines -- https://hackage.haskell.org/package/base-4.20.0.0/docs/Prelude.html#v:unlines

grid = [ "LMTH________Q__"
       , "___O_______R___"
       , "__C_O_____A____"
       , "__O__B_U_D_____"
       , "__M___ENA_S____"
       , "__P____R__W____"
       , "__T____EEDOCEYE"
       , "__IBM_MA__D____"
       , "_HASKELL__I____"
       , "________L_W____"
       ]

main :: IO ()
main = outputGrid grid
