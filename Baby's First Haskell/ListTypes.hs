l0 :: [Int}
l0 = [1, 2, 3, 4, 5]

l1 :: [Int]
l1 = [1..10]

l2 :: [Int]
l2 = [1, 3..10]

l3 :: [Int]
l3 = [1..]  -- infinite list

l4 :: [String]
l4 = ["aaa", "bbb", "ccc", "ddd"]

l5 :: [Char]
l5 = ['a', 'b', 'c', 'd']

l6 :: [Char]
l6 = "abcd"

main :: IO ()
main = do
    print l0  -- [1, 2, 3, 4, 5]
    print l1  -- [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    print l2  -- [1, 3, 5, 7, 9]
    print (take 20 l3)  -- [1, to 20] (first twenty elements of list l3)
    print l4  -- ["aaa", "bbb", "ccc", "ddd"]
    print l5  -- "abcd"
    print l6  -- "abcd"
