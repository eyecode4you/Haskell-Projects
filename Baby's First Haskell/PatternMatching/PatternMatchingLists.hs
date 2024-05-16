NewHead :: [a] -> a
NewHead [] = error "Empty List!"
-- we can return head of single element list; however, we would need to define again for 2, 3, 4... element lists
-- NewHead [a] = a

-- :info [] shows that data [] a = [] | a : [a] meaning a list is either empty or a concatenation of elements using : operator
NewHead (x:xs) = x -- will now work with any size

NewTail :: [a] -> [a]
NewTail [] = error "Empty List!"
NewTail (x:xs) = xs

-- NewHead [] returns Empty List!
-- NwHead [1,2,3] returns 1
-- NewTail [1,2,3] returns [2,3]
