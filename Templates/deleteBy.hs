{-# LANGUAGE MultiWayIf #-}
module Main where

deleteBy' :: (a -> a -> Bool) -> a -> [a] -> [a]
deleteBy' f n (x:xs) = if
   | f n x -> xs
   | otherwise -> x : deleteBy' f n xs

main :: IO()
main = print $ deleteBy' 
   (\x y -> mod x y == 0) 4 [8,7,9,4,5,6,3,1,2]
