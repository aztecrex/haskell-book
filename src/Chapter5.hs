module Chapter5 where
--

{-
type matching
1. functions
a. c
b. d
c. b
d. a
e. e

-}

{- type arguments

1. a
2. d
3. c
4. c
5. a
6. e
7. f
8. d
9. c


-}

{-
parametricity

1.
-}

-- 2.
aaa :: a -> a -> a
aaa _ x = x

aaa' :: a -> a -> a
aaa' x _ = x

--3.
abb :: a -> b -> b
abb _ x = x

{-
apply yourself
1.
String -> String -> String

2. Fractionl constraint
(Fractional a) => a -> a

3. Int -> String -> String

4. Int -> Int -> Bool

5. Char -> Char -> Bool

-}

{- chapter excercises
1. c
2. a
3. b
4. c

determine the type

1. Num a => a
2. Num a => a
3. Num a => a -> a
4. Integral a => a
5. String


does it compile?
-}

--1. ok
--2. ok
--3. not ok, what's it trying to do?
--4. missing c

{- type variable -}

--2 fully polymorphic -> concrete -> concrete

--3 fully polymorphic -> constrained -> concrete

--4  fully polymorphic -> fully polymorphic -> concrete

{- write a type signature -}

--1
functionH :: [a] -> a
functionH (x:_) = x

--2
functionC :: (Ord a) => a -> a -> Bool
functionC x y =
    if (x > y) then True else False


functionS :: (a, b) -> b
functionS (x, y) = y

{- write the function -}
--1
i :: a -> a
i x = x

--2
c :: a -> b -> a
c x _ = x

--3
c'' :: b -> a -> b
c'' x _ = x

--4
c' :: a -> b -> b
c' _ x = x


--5
r :: [a] -> [a]
r _ = []

--6
co :: (b -> c) -> (a -> b) -> a -> c
co f g = f . g

--7
a :: (a -> c) -> a -> a
a _ x = x

--8
a' :: (a -> b) -> a -> b
a' f = f

{- fix it -}

--1
fstString :: [Char] -> [Char]
fstString x = x ++ " in the rain"

sndString :: [Char] -> [Char]
sndString x = x ++ " over the rainbow"

sing = if (x > y) then fstString x  else sndString y
            where x = "Singin"
                  y = "Somewhere"


--2
sing' = if (x < y) then fstString x  else sndString y
            where x = "Singin"
                  y = "Somewhere"

--3


main' :: IO ()
main' = do
    print $ 1 + 2
    putStrLn "10"
    print (negate (-1))
    print ((+) 0 blah)
        where blah = negate 1

