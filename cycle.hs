module Main where

cycles :: Integer -> IO() -> IO()
cycles 0 _ = return ()
cycles x action = do
    action
    cycles (x-1) (action)

main :: IO()
main = cycles 10 $ print "Hello World!"
