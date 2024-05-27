import Control.Monad (guard)

data Cell = Cell (Integer,Integer) Char deriving (Eq, Ord, Show)

-- output grid
og :: Show a => [a] -> IO ()
og = putStrLn . unlines . map show

-- sample grid
coords = [ [(0,0), (0,1), (0,2), (0,3), (0,4), (0,5), (0,6), (0,7)]
         , [(1,0), (1,1), (1,2), (1,3), (1,4), (1,5), (1,6), (1,7)]
         , [(2,0), (2,1), (2,2), (2,3), (2,4), (2,5), (2,6), (2,7)]
         , [(3,0), (3,1), (3,2), (3,3), (3,4), (3,5), (3,6), (3,7)]
         , [(4,0), (4,1), (4,2), (4,3), (4,4), (4,5), (4,6), (4,7)]
         , [(5,0), (5,1), (5,2), (5,3), (5,4), (5,5), (5,6), (5,7)]
         , [(6,0), (6,1), (6,2), (6,3), (6,4), (6,5), (6,6), (6,7)]
         , [(7,0), (7,1), (7,2), (7,3), (7,4), (7,5), (7,6), (7,7)]
         ]

grid = [ "LMTH________Q__"
       , "___O_______R___"
       , "__C_O_____A____"
       , "__O__B_U_DN____"
       , "__M___ENA_A___O"
       , "__P____R__D___Y"
       , "__T____EEDOCEYE"
       , "__IBM_MA__H___H"
       , "_HASKELL__S____"
       , "________L______"
       ]

-- building infinite coord grid:
cols = repeat [0..]
rows = map repeat [0..]
zipOverGrid = zipWith zip
infiniteCoords = zipOverGrid rows cols

-- zipOverGridWith f a b = (zipWith (zipWith f)) a b
-- can simplify by removing a and b and outer (): zipOverGridWith f = zipWith (zipWith f)
-- can further simplify by using . composition, removing f
zipOverGridWith = zipWith . zipWith

main :: IO ()
main = do
         print (zipWith (zipWith Cell) coords grid)
         {-
         [[Cell (0,0) 'L',Cell (0,1) 'M',Cell (0,2) 'T',Cell (0,3) 'H',Cell (0,4) '_',Cell (0,5) '_',
         Cell (0,6) '_',Cell (0,7) '_'],[Cell (1,0) '_',Cell (1,1) '_',Cell (1,2) '_',Cell (1,3) 'O',
         Cell (1,4) '_',Cell (1,5) '_',Cell (1,6) '_',Cell (1,7) '_'],[Cell (2,0) '_',Cell (2,1) '_',
         Cell (2,2) 'C',Cell (2,3) '_',Cell (2,4) 'O',Cell (2,5) '_',Cell (2,6) '_',Cell (2,7) '_'],
         [Cell (3,0) '_',Cell (3,1) '_',Cell (3,2) 'O',Cell (3,3) '_',Cell (3,4) '_',Cell (3,5) 'B',
         Cell (3,6) '_',Cell (3,7) 'U'],[Cell (4,0) '_',Cell (4,1) '_',Cell (4,2) 'M',Cell (4,3) '_',
         Cell (4,4) '_',Cell (4,5) '_',Cell (4,6) 'E',Cell (4,7) 'N'],[Cell (5,0) '_',Cell (5,1) '_',
         Cell (5,2) 'P',Cell (5,3) '_',Cell (5,4) '_',Cell (5,5) '_',Cell (5,6) '_',Cell (5,7) 'R'],
         [Cell (6,0) '_',Cell (6,1) '_',Cell (6,2) 'T',Cell (6,3) '_',Cell (6,4) '_',Cell (6,5) '_',
         Cell (6,6) '_',Cell (6,7) 'E'],[Cell (7,0) '_',Cell (7,1) '_',Cell (7,2) 'I',Cell (7,3) 'B',
         Cell (7,4) 'M',Cell (7,5) '_',Cell (7,6) 'M',Cell (7,7) 'A']]
         -}

         print (zipOverGridWith Cell coords grid) -- same output as above
