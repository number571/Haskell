module Main where

(<->) :: (b -> c) -> (a -> b) -> (a -> c)
(<->) g f = \x -> g (f x)

func :: Int -> Int
func x = x * x

main :: IO()
main = (print <-> func) 5
