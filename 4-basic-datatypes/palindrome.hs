module Palindrome where

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome x =
  if test
    then True
  else
    False 
  where test =
          x == (reverse x)
