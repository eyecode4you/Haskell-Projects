data Quart = Q { qR :: Double, qI :: Double, qJ :: Double, qK :: Double }

newtype PrettyQuart = PrettyQuart { unPrettyQuart :: Quart }
instance Show PrettyQuart where
    show q = let q' = unPrettyQuart q in "(" ++
        show (qR q') ++ " + " ++
        show (qI q') ++ "i + " ++
        show (qJ q') ++ "j + " ++
        show (qK q') ++ "k)"

newtype UglyQuart = UglyQuart { unUglyQuart :: Quart }
instance Show UglyQuart where
    show q = let q' = unUglyQuart q in
        show (qR q') ++ "," ++
        show (qI q') ++ "," ++
        show (qJ q') ++ "," ++
        show (qK q') ++ ")"


main :: IO ()
main = do
    print $ PrettyQuart (Q 1 2 3 4)  -- (1.0 + 2.0i + 3.0j + 4.0k)
    print $ UglyQuart (Q 1 2 3 4)    -- 1.0,2.0,3.0,4.0)
