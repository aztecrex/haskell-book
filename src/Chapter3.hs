module Chapter3 where


{- excercises: Scope
1. yes
2. no
3. no
4. yes
-}

{- chapter excercises
1.
a. yes
b. no   (++) "hello " "world" or "hello " ++ "world"
c. yes
d. yes
e. no   (!!) "hello" 4   or   "hello" !! 4
f. yes
g. no    take 4 "lovely"
h. yes

2.
a. d
b. c
c. e
d. a
e. b




-}
-- building functions

--1. and 2.
--a.
awesomeCurry :: String
awesomeCurry = "Curry is awesome" ++ "!"

--b.
yFromAwesomeCurry :: String
yFromAwesomeCurry = ["Curry is awesome!" !! 4]

awesome :: String
awesome = drop 9 "Curry is awesome!"


addexcl :: String -> String
addexcl = (++ "!")

fifthElement :: String -> String
fifthElement s = [s !! 4]

after9 :: String -> String
after9 = drop 9

awesomeCurry' :: String
awesomeCurry' = addexcl "Curry is awesome"

yFromAwesomeCurry' :: String
yFromAwesomeCurry' = fifthElement "Curry is awesome!"

awesome' :: String
awesome' = after9 "Curry is awesome!"


-- 3.

thirdLetter :: String -> Char
thirdLetter = (!! 2)

-- 4.
letterIndex :: Int -> Char
letterIndex x = "Curry is awesome!" !! x


rvrs :: String -> String
rvrs s = concat [awesome, " ", is, " ", curry]
    where   awesome = drop 9 s
            is = take 2 (drop 6 s)
            curry = take 5 s


