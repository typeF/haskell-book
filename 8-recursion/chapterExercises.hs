module ChapterExercises where

cattyConny :: String -> String -> String
cattyConny x y = x ++ " mrow " ++ y

flippy = flip cattyConny
appedCatty = cattyConny "woops"
frappe = flippy "haha"

recursiveSum :: (Eq a, Num a) => a -> a
recursiveSum 0 = 0
recursiveSum n = n + recursiveSum(n - 1)

recursiveMult :: Integral a => a -> a -> a
recursiveMult n 0 = 0
recursiveMult n mult = n + recursiveMult n (mult - 1)

mc91 :: Integral a => a -> a
mc91 x
 | x > 100 = x - 10
 | otherwise = mc91 (mc91 (x + 11))
