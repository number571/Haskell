module Main where

drop' :: Int -> [a] -> [a]
drop' _ [] = []
drop' x (y:ys)
    | x /= 0 = drop' (x-1) ys
    | otherwise = y:ys

length' :: [a] -> Int
length' [] = 0
length' (x:xs) = 1 + length' xs

accumulate :: Char -> String -> String
accumulate _ [] = []
accumulate c (x:xs)
    | x == c = []
    | otherwise = x : accumulate c xs

split :: Char -> String -> [String]
split _ [] = []
split c (x:xs)
    | x == c = split c xs
    | otherwise = accumulate c (x:xs) : split
        c (drop' (length' (accumulate c (x:xs))) xs)

main :: IO()
main = print $ split ' ' "Hello World!"
