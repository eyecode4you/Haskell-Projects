data Compass = North | East | South | West
  deriving (Eq, Ord, Enum, Show)

-- North returns North
-- East > North returns True
-- South == West returns False etc.

data Expression = Number Int
                | Add Expression Expression
                | Subtract Expression Expression
                deriving (Eq, Ord, Show)

-- Number 1 returns Number 1
-- Number 1 == Number 1 returns True
-- Number 2 > Number 1 returns True
-- Add (Number 1) (Number 2) returns Add (Number 1) (Number 2) as we havent implemented + operation
-- We can also do: add (Number 1) (Subtract (Number 10) (Number 2))
