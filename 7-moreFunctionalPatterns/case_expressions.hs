module CaseExpressions where

funcZ x =
  case x + 1 == 1 of
    True -> "AWESOME"
    False -> "WUT"

pal xs =
  case xs == reverse xs of
    True -> "yes"
    False -> "no"

pal' xs =
  case y of
    True -> "Yes"
    False -> "no"
  where y = xs == reverse xs

greetIfCool :: String -> IO ()
greetIfCool coolness =
  case cool of
    True ->
      putStrLn "eyyyy. What's shakin'?"
    False ->
      putStrLn "pshhh."
  where cool =
          coolness == "downright frosty yo"
