module Main where

map' :: (a -> b) -> [a] -> [b]
map' _ [] = []
map' f (x:xs) = f x : map' f xs

while' :: Ord a => Int -> ([a] -> [a]) -> [a] -> [a]
while' 0 _ xs = xs
while' n f xs = while' (n-1) f (f xs)

main :: IO()
main = print $ while' 5 (map' (*2)) [1,2,3,4,5]
