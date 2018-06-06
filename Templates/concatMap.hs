module Main where

concatMap' :: (a -> [b]) -> [a] -> [b]
concatMap' _ [] = []
concatMap' f (x:xs) = f x ++ concatMap' f xs

main :: IO()
main = print $ concatMap' (\x -> [(x,x+2,x/2)]) [1,3,5] 
