module Main where

odd' :: Integral a => a -> Bool
odd' x | mod x 2 /= 0 = True
odd' _ = False

main :: IO()
main = print $ odd 5
