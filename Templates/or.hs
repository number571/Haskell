module Main where

(|||) :: Bool -> Bool -> Bool
(|||) True _ = True
(|||) _ True = True
(|||) _ _ = False

or' [] = False
or' [x] = x
or' (x:y:zs)
    | x ||| y = True
    | otherwise = or' (y:zs)

main :: IO()
main = print $ or' [False, True]
