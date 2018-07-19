module Main where

null' :: [a] -> Bool
null' [] = True
null' x = False

main :: IO()
main = print $ null' ""
