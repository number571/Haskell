module Main where

(&&&) :: Bool -> Bool -> Bool
(&&&) False _ = False
(&&&) _ False = False
(&&&) _ _ = True

main :: IO()
main = print $ True &&& False
