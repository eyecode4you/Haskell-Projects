data Quart = Q
    { qR :: Double
    , qI :: Double
    , qJ :: Double
    , qK :: Double
    } deriving Show  -- 2: We can auto derive show functionality. Q (qR = 1.0, qI = 2.0, qJ = 3.0, qK = 4.0)


-- 1: print $ Q 1 2 3 4 will fail as Quart has no implementation of Show, we can create a manual instance of Show:
--instance Show Quart where
--    show q = "(" ++ 
--        show (qR q) ++ " + " ++
--        show (qI q) ++ "i + " ++
--        show (qJ q) ++ "j + " ++
--        show (qK q) ++ "k)"
                                                                        -- (1.0 + 2.0i + 3.0j + 4.0k)

main :: IO ()
main = print $ Q 1 2 3 4
