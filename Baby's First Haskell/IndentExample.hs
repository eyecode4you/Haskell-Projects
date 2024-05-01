f x y = a + b
    where
        a = x
        b = y

g x y = a + b
    where x = a
          y = b

q x = case x of p0 -> a
                p1 -> b

p x = case x of
        p0 -> a
        p1 -> b

a = let { x = 5; y = 6} in print (x + y)

b = let {
                x = 5;
y = 6; } in print (x + y)

a = undefined; b = undefined;
main = undefined
