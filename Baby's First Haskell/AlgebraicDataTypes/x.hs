module ColourRGBCMYK (Colour) where

-- Using alternative data constructors
data Colour = RGB Int Int Int | CMYK Float Float Float Float deriving Show

x = RGB 11 22 33
y = CMYK 1.0 2.0 3.0 4.0
-- both are of type Colour
