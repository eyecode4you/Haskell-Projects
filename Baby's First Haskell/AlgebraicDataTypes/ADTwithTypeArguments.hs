module ColourRGB (Colour) where

-- Similar to Struct in cpp
-- single data constructor RGB taking 3 type arguments (3-tuple of Ints)
data Colour = RGB Int Int Int deriving Show
x = RGB 10 20 30
