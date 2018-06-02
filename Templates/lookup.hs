{-# LANGUAGE MultiWayIf #-}
module Main where

lookup' _ [] = Nothing
lookup' x ((y,z):as) = if
    | x == y -> Just z
    | otherwise -> lookup' x as

main :: IO()
main = print $ lookup' 'c' [('a',1),('b',2),('c',3),('d',4)]
