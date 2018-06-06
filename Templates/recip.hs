module Main where

recip' :: Fractional a => a -> a
recip' x = 1 / x

main = print $ recip' 10
