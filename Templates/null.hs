module Main where

null' :: [a] -> Bool
null' [] = True
null' _ = False

main :: IO()
main = print $ null' ""
