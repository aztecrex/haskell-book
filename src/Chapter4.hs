module Chapter4 where
--


{- excercises: Mood Swing
1. Mood
2. Blah or Woot
3. should be Mood -> Mood, Woot is a value constructor
4.
-}
data Mood = Woot | Blah deriving (Show)
changeMood :: Mood -> Mood

changeMood Blah = Woot
changeMood    _ = Blah
-- 5.


{-
1. OK
2. not (x == 6)
3. OK
4. ["Merry"] > ["Happ"]
5. nope


-}


{-

1. length :: [a] -> Integer
2.
a. 5
b. 3
c. 2
d. 5

3. second one
4. use div
5. Bool, True
6. Bool, False

7.
ok, True
not ok, heterogeneous
ok, 4 :: Int
ok, False
not OK, 9 is not Bool



-}

--8

isPalindrome :: String -> Bool
isPalindrome x = reverse x == x

myAbs :: Integer -> Integer
myAbs a = if a < 0 then a * (-1) else a

f :: (a, b) -> (c, d) -> ((b, d), (a, c))
f x y = ((snd x, snd y), (fst x, fst y))

{- syntax -}

-- 1

x :: Int -> Int -> Int
x = (+)
f1 :: [a] -> Int
f1 xs = w `x` 1
    where w = length xs

myId :: a -> a
myId = \x -> x

f3 :: (a, b) -> a
f3 (a, b) = a


{- match
1. c
2. b
3. a
4. d





-}


