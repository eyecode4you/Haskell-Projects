data Quart = Q
    { qR :: Double
    , qI :: Double
    , qJ :: Double
    , qK :: Double
    } deriving Show

instance Num Quart where
    q0 + qi = Q (qR q0 + qR q1) (qI q0 + qI q1) (qJ q0 + qJ q1) (qK q0 + qK q1)  -- adding two Quarts
    -- we can also specify functionality of other "methods" of the Num type class
    q0 * q1 = undefined
    abs = undefined
    signum = undefined
    fromInteger = undefined
    negate = undefined
    -- Note: We shouldn't define instance for other people's data types, Haskell has no mechanism for choosing an instance
    -- Better to introduce new type which wraps around the old

main :: IO ()
main = print $ Q 1 2 3 4 + Q 10 20 30 40  -- Q {qR = 11.0, qI = 22.0, qJ = 33.0, qK = 44.0}
