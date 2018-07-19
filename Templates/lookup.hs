module Main where

lookup' :: Eq a => a -> [(a,b)] -> Maybe b
lookup' _ [] = Nothing
lookup' x ((y,z):as)
    | x == y = Just z
    | otherwise = lookup' x as

main :: IO()
main = print $ lookup' 'c' [('a',1),('b',2),('c',3),('d',4)]
