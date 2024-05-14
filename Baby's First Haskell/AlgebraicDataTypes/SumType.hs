-- Sum Types are similar to Enums in cpp
-- Algebraic Data Type

module ColourSimpleSumType (Colour) where
data Colour = Red | Green | Blue deriving Show
-- Colour is Type Constructor, Red Green Blue are Data Constructors. Auto derive to show to print

x = Colour -- won't work as Colour is type constructor
x = Red  -- :type x  x :: Colour (evaluates to Red as we're using deriving Show)
