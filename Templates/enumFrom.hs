module Main where

take' :: Int -> [a] -> [a]
take' 0 _ = []
take' _ [] = []
take' x (y:ys) = y : take' (x-1) ys

enumFrom' :: Enum a => a -> [a]
enumFrom' x = [x..]

main :: IO()
main = print $ take' 26 $ enumFrom' 'a'
