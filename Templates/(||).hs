module Main where

(|||) :: Bool -> Bool -> Bool
(|||) True _ = True
(|||) _ True = True
(|||) _ _ = False

main :: IO()
main = print $ True ||| False
