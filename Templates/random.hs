module Main where
import System.Random

main :: IO()
main = print =<< drawInt 1 100

drawInt :: Int -> Int -> IO Int
drawInt x y = getStdRandom . randomR $ (x,y)
