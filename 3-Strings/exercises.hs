module Exercises where

thirdLetter :: Int -> Char
thirdLetter x = (!!) "Always the same string" x

rvrs :: IO ()
rvrs = putStrLn reversedString
  where origString = "Curry is awesome"
        first = take 5 origString
        third = drop 9 origString
        second = drop 5 (take 9 origString)
        reversedString = third ++ second ++ first

main :: IO ()
main = print $ rvrs
