module Main where

any' :: (a -> Bool) -> [a] -> Bool
any' _ [] = False
any' f (x:xs)
    | not $ f x = any' f xs
    | otherwise = True

main :: IO()
main = print $ any' (== 5) [1,2,3,4,5]
