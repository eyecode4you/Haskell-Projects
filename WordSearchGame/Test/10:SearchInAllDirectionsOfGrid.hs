
import Data.List (isInfixOf, Transpose)
import Data.Maybe (catMaybes)
type Grid = [String]

outputGrid :: Grid -> IO()
outputGrid grid = putStrLn (formatGrid grid)

formatGrid :: Grid -> String
formatGrid = unlines

findWordInLine :: String -> String -> Bool
findWordInLine word line = word `isInfixOf` line

findWordInLines :: Grid -> String -> Maybe String
findWordInLines grid word = 
  let lines = grid ++ (map reverse grid)
      found = or $ map (findWordInLine word) lines
  in if found then Just word else Nothing

findwords grid words = 
  let foundWords = map (findWordInLines grid) words
  in catMaybes foundWords

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

wordsToSearch = [ "WINDOWS"
                , "COMPTIA"
                , "HASKELL"
                , "UNREAL"
                , "QRADAR"
                , "HTML"
                , "IBM"
                , "EYECODE"
                , "LLM"
                , "REBOOT"
                ]

main :: IO ()
main = do
        print (findwords grid wordsToSearch) -- ["HASKELL","HTML","IBM","EYECODE"]
