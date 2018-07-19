module Main where

squareRoot :: Int -> Int
squareRoot n = f n
   where
      f :: Int -> Int
      f x
         | x ^ 2 > n = f (x - 1)
         | otherwise = x

main :: IO()
main = print $ squareRoot 121
