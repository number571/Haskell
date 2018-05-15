module Main where

cyclen _ 0 = return ()
cyclen action x = do
    action x
    cyclen (action) (x-1)

main :: IO()
main = cyclen print $ 10
