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
