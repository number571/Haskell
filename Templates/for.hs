module Main where

(|>) :: a -> (a -> b) -> b
(|>) x f = f x

for :: [Integer] -> String
for [] = []
for (x:xs) = show x ++ "\n" ++ for xs

main :: IO()
main = for [0..10] |> putStrLn
