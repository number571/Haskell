module Main where

foldl1' :: (a -> a -> a) -> [a] -> a
foldl1' _ [x] = x
foldl1' f (x:xs) = f x (foldl1' f xs)

product' :: Num a => [a] -> a
product' x = foldl1' (*) x

main :: IO()
main = print $ product' [1..6]
