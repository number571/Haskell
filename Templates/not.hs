module Main where

not' :: Bool -> Bool
not' False = True
not' True = False

main :: IO()
main = print $ not' False
