{-# LANGUAGE MultiWayIf #-}
module Main where

delete' :: Eq a => a -> [a] -> [a]
delete' _ [] = []
delete' n (x:xs) = if
   | n /= x -> x : delete' n xs
   | otherwise -> xs

main :: IO()
main = print $ delete' 9 [8,7,9,4,5,6,3,1,2]
