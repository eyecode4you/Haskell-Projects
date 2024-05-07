module Main (main) where

main :: IO ()
main = print $ filter (>3) [1, 2, 3, 4, 5, 6]  -- print numbers with filter > 3
