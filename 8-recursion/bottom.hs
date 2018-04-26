module Bottom where

f :: Bool -> Int
f True = error "blah"
f False = 0

-- data Maybe a = Nothing | Just a
f' :: Bool -> Maybe Int
f' False = Just 0
f' _ = Nothing
