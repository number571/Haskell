module Main where

zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' f (x:xs) (y:ys) = (f x y) : zipWith f xs ys

main :: IO()
main = print (zipWith' (+) [1..5] [5..10])
