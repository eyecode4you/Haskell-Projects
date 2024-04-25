module Main (main) where

main :: IO ()
main = print $ foldr (+) 0 [1, 2, 3]
