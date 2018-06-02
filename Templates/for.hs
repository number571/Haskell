module Main where

for :: [Integer] -> String
for [] = []
for (x:xs) = show x ++ for xs

main :: IO()
main = putStrLn $ for [0..9]
