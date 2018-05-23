module Chapter2 where

sayHello :: String -> IO ()
sayHello x = putStrLn ("Hello " ++ x ++ "!")

triple x = x * 3


{-
Excercises: comprehension check

1.

let half x = x / 2
let square x = x * x

^^^ let is not necessary anymore
-}

-- 2.

piRSquared x = 3.14 * (x * x)

-- 3.

betterPiRSquared x = pi * (x * x)

{-
Parentheses and Association
-}

-- 1. parenthese matters because multiplication
-- has higher precedence

a = 8 + 7 * 9
a' = (8 + 7) * 9
checkparen1 = "Should not be the same, are they? " ++ show (a == a') ++ ". Good."


-- 2. parenthese don't matter because they are just restating
-- multiplication precedence

perimeter x y = (x * 2) + (y * 2)
perimeter' x y = x * 2 + y * 2
checkparen2 = "Should be the same, are they? " ++ show (perimeter 7 2 == perimeter' 7 2) ++ ". Good."


-- 3. parentheses matter because diviion has higher precedence
f x = x / 2 + 9
f' x = x / (2 + 9)
checkparen3 = "Should not be the same, are they? " ++ show (f 3 == f' 3) ++ ". Good."


-- learn.hs

x = 10 * 5 + y

myResult = x * 5

y = 10

{- heal the sick
-}
area x = 3.14 * (x * x) -- remove space after point

double x = x * 2 -- bind the parameter

x' = 7
y' = 10 -- remove indentation
g = x + y

{- head code -}

--1. 5
--2. 25
--3. 25
--4. 1003

{-- rewrite with where --}

xx = x * 3 + y
      where x = 3
            y = 1000

yy = x * 5
      where y = 10
            x = 10 * 5 + y

zz = z / x + y
      where x = 7
            y = negate x
            z = y * 10


{- chapter excercises -}

aa = 2 + (2 * 3) - 1
bb = 10 ^ (1 + 1)
cc = (2 ^ 2) * (4 ^ 5) + 1

{- equivalent expressions -}

--1 yes
dd = 1 + 1 == 2

--2 yes
ee = 10 ^ 2 == 10 + 9 * 10

--3 no
ff = not (400 - 37 == (-) 37 400)

--4 no, can't even compare without conversion


--5 no

hh = not (2 * 5 + 18 == 2 * (5 + 18))


{- more fun with functions -}


z'' = 7
y'' = z'' + 8
x'' = y'' ^ 2
waxOn = x'' * 5

--1. 10 + waxOn == 1135
--   (+10) waxOn = 1135
--   (-) 15 waxOn = -1110

waxOn''' = x''' * 5
   where x''' = y''' ^ 2
         y''' = z''' + 8
         z''' = 7

waxOff x = triple x

