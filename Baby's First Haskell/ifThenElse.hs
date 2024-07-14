-- check if number is even or odd
checkEven n = if n `mod` 2 == 0
                then putStrLn "Yes!"
                else putStrLn "No!"

main :: IO()
main = do
  putStrLn "Is 5 even?"
  checkEven 5
  
  putStrLn "Is 197 even?"
  checkEven 197
  
  putStrLn "Is 2 even?"
  checkEven 2
  
  putStrLn "Is 90 even?"
  checkEven 90