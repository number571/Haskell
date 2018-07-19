module Main where

notElem' :: Eq a => a -> [a] -> Bool
notElem' _ [] = True
notElem' x (y:ys)
    | x == y = False
    | otherwise = notElem' x ys

main :: IO()
main = print $ notElem' 11 [1,2,3,4,5]
