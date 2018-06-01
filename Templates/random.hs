module Main where
import System.Random

main :: IO()
main = do
    print =<< drawInt 1 100
    print =<< drawDouble 1.0 100.0

drawInt :: Int -> Int -> IO Int
drawInt x y = getStdRandom . randomR $ (x,y)

drawDouble :: Double -> Double -> IO Double
drawDouble x y = getStdRandom . randomR $ (x,y)
