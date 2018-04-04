module Exercises where
import Data.List

-- Question 1
data Person = Person Bool deriving Show

printPerson :: Person -> IO ()
printPerson person = putStrLn (show person)

-- Question 2
data Mood = Blah
          | Woot deriving (Show, Eq)

settleDown x = if x == Woot
                 then Blah
                 else x

-- Question 3
type Subject = String
type Verb = String
type Object = String

data Sentence =
  Sentence Subject Verb Object
  deriving (Eq, Show)

s1 = Sentence "dogs" "drool"
s2 = Sentence "Julie" "loves" "dogs"

-- Given a datatype declaration, what can we do?
data Rocks =
  Rocks String deriving (Eq, Show)

data Yeah =
  Yeah Bool deriving (Eq, Show)

data Papu =
  Papu Rocks Yeah
  deriving (Eq, Show)

-- phew = Papu "chases" True
-- Doesn't typecheck

truth = Papu (Rocks "chomskydoz")
             (Yeah True)

equalityForAll :: Papu -> Papu -> Bool
equalityForAll p p' = p == p'

-- comparePapus :: Papu -> Papu -> Bool
-- comparePapus p p' = p > p'

-- Match the types

-- 1
i :: Num a => a
i = 1

-- 2
f :: Float
f = 1.0

-- 3
f2 :: Fractional a => a
f2 = 1.0

-- 4
-- f3 :: RealFrac a => a
-- f3 = 1.0

-- 5
freud :: Ord a => a -> a
freud x = x

-- 6
freud' :: Int -> Int
freud' x = x

-- 7
myX = 1 :: Int

sigmund :: Int -> Int
sigmund x = myX

-- 8
myX2 = 1 :: Int

sigmund' :: Int -> Int
sigmund' x = myX2

-- 9
jung :: Ord a => [a] -> a
jung xs = head (sort xs)

-- 10 
young :: [Char] -> Char
young xs = head (sort xs)

-- 11 
mySort :: [Char] -> [Char]
mySort = sort

signifier :: [Char] -> Char
signifier xs = head (mySort xs)

-- Round 2

-- 1
chk :: Eq b => (a -> b) -> a -> b -> Bool
chk xs = head (sort xs) 

-- 2
arith :: Num b
      => (a -> b)
      -> Integer
      -> a
      -> b
arith = ???
-- 2
