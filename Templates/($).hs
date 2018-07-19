module Main where

(<+>) :: (a -> b) -> a -> b
(<+>) f x = f x

func :: Int -> Int
func x = x * x

main :: IO()
main = print <+> func 5
