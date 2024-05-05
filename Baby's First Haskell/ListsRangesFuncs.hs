[1..10]  -- [1,2,3,4,5,6,7,8,9,10]

lessThanFive x = x < 5
filter lessThanFive [1..10]  -- [1,2,3,4]
filter (\x -> x < 5) [1..10]  -- [1,2,3,4]
filter (< 5) [1..10]  -- [1,2,3,4]

map (* 2) $ filter (< 5) [1..10]  -- [2,4,6,8]
