{-# LANGUAGE MultiWayIf #-}
module Main where

drop' :: Int -> [a] -> [a]
drop' _ [] = []
drop' x (y:ys) = if
    | x /= 0 -> drop' (x-1) ys
    | otherwise -> y:ys

length' :: [a] -> Int
length' [] = 0
length' (x:xs) = 1 + length' xs

isSpace :: Char -> Bool
isSpace x = if x == ' ' || x == '\t' || x == '\n'
    then True else False

wait :: String -> String
wait [] = []
wait (x:xs) = if
    | isSpace x -> []
    | otherwise -> x : wait xs

words' :: String -> [String]
words' [] = []
words' (x:xs) = if
    | isSpace x -> words' xs
    | otherwise -> wait (x:xs) : words' (drop' (length' (wait (x:xs))) xs)

main :: IO()
main = print $ words' "Hello World!" 
