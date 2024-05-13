f x y = a + b
    where
        a = x
        b = y

g x y = a + b
    where x = a    -- first add can also be inline
          y = b

q x = case x of p0 -> a    -- ensure next line follows same indentation
                p1 -> b

p x = case x of
        p0 -> a
        p1 -> b

a = let { x = 5; y = 6} in print (x + y)
b = let {
                x = 5;    -- with { }, indentation is ignored
y = 6; } in print (x + y)

a = undefined; b = undefined;
main = undefined
