module Main where

not' False = True
not' True = False

main :: IO()
main = print $ not' True
