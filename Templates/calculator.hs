module Main where

foldl' :: (a -> b -> a) -> a -> [b] -> a
foldl' _ x [] = x
foldl' f x (y:ys) = foldl' f (f x y) ys

head' :: [a] -> a
head' [] = undefined
head' (x:xs) = x

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

calc :: String -> Float
calc s = head' . foldl' f [] $ words' s
    where 
        f :: [Float] -> String -> [Float]
        f (x:y:zs) "+"    = (y + x):zs
        f (x:y:zs) "-"    = (y - x):zs
        f (x:y:zs) "*"    = (y * x):zs
        f (x:y:zs) "/"    = (y / x):zs
        f xs       y      = read y : xs

main :: IO()
main = print . calc $ "2 5 + 3 *"
