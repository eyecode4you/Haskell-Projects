module ColourRGBRecord (Colour) where

data Colour = RGB
    { red :: Int  -- compiler will generate accessor functions for each named field
    , green :: Int
    , blue :: Int
    } deriving Show

x = RGB 10 20 30  -- RGB {red = 10, green = 20, blue = 30}
-- red x  10
-- green x   20
-- blue x   30

-- record update syntax (Note: data types are immutable in Haskell, cannot use this to mutate existing value)
y = x { green = 40 }  -- RGB {red = 10, green = 40, blue = 30}
