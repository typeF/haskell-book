module Seven1 where

myNum :: Num a => a
myNum = 1

myVal :: Num a => a -> a
myVal f = f + myNum

stillAFunction :: [a] -> [a] -> [a] -> [a]
stillAFunction a b c = a ++ b ++ c

addOne :: Integer -> Integer
addOne x = x + 1

bindExp :: Integer -> String
bindExp x =
  let y = 5 in
  "the integer was: " ++ show x
  ++ " and y was : " ++ show y

-- The 2nd x shadows the initial x argument, overwriting it
bindExp2 :: Integer -> String
bindExp2 x =
  let x = 10; y = 15 in
  "the integer was: " ++ show x
  ++ " and y was : " ++ show y
