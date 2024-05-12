c0 :: Char
c0 = 'X'

c1 :: Char
c1 = '\0088'  -- Decimal unicode

c2 :: Char
c2 = '\x0058'  -- Hex unicode

c3 :: Char
c3 = '\o0130'  -- Octal unicode

s0 :: String
s0 = "abc"

s1 :: String
s1 = "\0088\x0058\o0130"

main :: IO ()
main = do
    putChar c0 >> putChar '\n'
    putChar c1 >> putChar '\n'
    putChar c2 >> putChar '\n'
    putChar c3 >> putChar '\n'  -- all print X

    putStrLn s0  -- abc
    putStrLn s1  -- XXX
