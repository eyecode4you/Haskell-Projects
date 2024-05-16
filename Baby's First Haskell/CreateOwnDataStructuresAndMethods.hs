data Expression = Number Int
                | Add Expression Expression
                | Subtract Expression Expression
                deriving (Eq, Ord, Show)

calculate :: Expression -> Int
calculate (Number x) = x
calculate (Add x y) = (calculate x) + (calculate y)
calculate (Subtract x y) = (calculate x) - (calculate y)

-- calculate (Number 1) returns 1
-- calculate (Add (Number 1) (Number 2)) returns 3
-- calculate (Subtract (Number 10) (Add (Number 1) (Number 2))) returns (10 - 3) = 7
