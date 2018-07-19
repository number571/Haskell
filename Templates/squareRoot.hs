module Main where

squareRoot :: Int -> Int
squareRoot n = func n
   where
      func :: Int -> Int
      func x
         | x ^ 2 > n = func (x - 1)
         | otherwise = x

main :: IO()
main = print $ squareRoot 121
