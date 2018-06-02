{-# LANGUAGE MultiWayIf #-}
module Main where

any' :: (a -> Bool) -> [a] -> Bool
any' _ [] = False
any' f (x:xs) = if
    | not $ f x -> any' f xs
    | otherwise -> True

main = print $ any' (== 5) [1,2,3,4,5]
