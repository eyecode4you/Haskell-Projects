foo = x y z = x ++ y ++ z  -- :type foo = foo :: [a] -> [a] -> [a] -> [a]
foo "aaa" "bbb" "ccc"  -- "aaabbbccc"

x = foo "aaa"  -- :type x = x :: [char] -> [char] -> [char]
y = x "bbb"  -- :type y = y :: [char] -> [char]
z = y "ccc"  -- :type z = z :: [char]

z  -- "aaabbbccc"
