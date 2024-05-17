-- format and print our wordsearch grid with words placed inside
import Data.List
main :: do
-- we can search functions that do String -> String -> Bool on hoogle.haskell.org. E.g. using isInfixOf - https://hackage.haskell.org/package/basement-0.0.16/docs/Basement-String.html#v:isInfixOf
          print (isInfixOf "HASKELL" "LKHVPWIHASKELL OWPJC") -- True
          print (isInfixOf "HASKELL" "GOBBLEDIGOOK") -- False

          -- can also write this as:
          print ("HASKELL" `isInfixOf` "HCGEIGHASKELLOH:VVN") -- True
