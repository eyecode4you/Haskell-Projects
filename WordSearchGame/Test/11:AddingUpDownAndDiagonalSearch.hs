
import Data.List (isInfixOf, transpose)
import Data.Maybe (catMaybes)

-- grid def and function
type Grid = [String]
formatGrid :: Grid -> String
formatGrid = unlines
outputGrid :: Grid -> IO()
outputGrid grid = putStrLn (formatGrid grid)

getLines :: Grid -> [String]
getLines grid =
  let horizontal = grid
      vertical = transpose grid
      diagonal1 = diagonalize grid
      diagonal2 = diagonalize (map reverse grid)
      lines = horizontal ++ vertical ++ diagonal1 ++ diagonal2
    in lines ++ (map reverse lines)

diagonalize :: Grid -> Grid
diagonalize = transpose . skew

skew :: Grid -> Grid
skew [] = []
skew (l:ls) = l : skew (map indent ls)
  where indent line = '+' : line

findWordInLine :: String -> String -> Bool
findWordInLine word line = word `isInfixOf` line

findWordInLines :: Grid -> String -> Maybe String
findWordInLines grid word = 
  let lines = getLines grid
      found = or $ map (findWordInLine word) lines
  in if found then Just word else Nothing

findwords grid words = 
  let foundWords = map (findWordInLines grid) words
  in catMaybes foundWords

grid = [ "LMTH________Q__"
       , "___O_______R___"
       , "__C_O_____A____"
       , "__O__B_U_DN____"
       , "__M___ENA_A___O"
       , "__P____R__D___Y"
       , "__T____EEDOCEYE"
       , "__IBM_MA__H___H"
       , "_HASKELL__S____"
       , "________L______"
       ]

wordsToSearch = [ "SHODAN"
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
        print (findwords grid wordsToSearch) -- ["SHODAN","COMPTIA","HASKELL","UNREAL","QRADAR","HTML","IBM","EYECODE"]
