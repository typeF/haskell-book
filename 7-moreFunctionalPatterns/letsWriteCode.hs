module LetsWriteCode where

tenDigits :: Integral a => a -> a
tenDigits x = d
  where xLast = x `div` 10
        d     = xLast `mod` 10
