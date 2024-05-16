data Compass = North | East | South | West
-- North  = error, as no Show instance is defined
-- :info Compass shows us the definition of Compass and where it is in src

instance Show Compass where
  show North = "North"
  show East = "East"
  show South = "South"
  show West = "West"

-- North = North

-- North == North will fail as there'e no instane of Eq for Compass
instance Eq Compass where
  North == North = True

-- North == North returns True
