module Main where

drop' :: Int -> [a] -> [a]
drop' _ [] = []
drop' x (y:ys)
    | x /= 0 = drop' (x-1) ys
    | otherwise = y:ys

length' :: [a] -> Int
length' [] = 0
length' (x:xs) = 1 + length' xs

isSpace :: Char -> Bool
isSpace x = if x == ' ' || x == '\t' || x == '\n'
    then True else False

accumulate :: String -> String
accumulate [] = []
accumulate (x:xs)
    | isSpace x = []
    | otherwise = x : accumulate xs

words' :: String -> [String]
words' [] = []
words' (x:xs)
    | isSpace x = words' xs
    | otherwise = accumulate (x:xs) : words' 
        (drop' (length' (accumulate (x:xs))) xs)

main :: IO()
main = print $ words' "Hello World!" 
