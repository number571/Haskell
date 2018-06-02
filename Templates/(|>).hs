module Main where

(|>) :: a -> (a -> b) -> b
(|>) x f = f x

main :: IO()
main = 5 |> print
