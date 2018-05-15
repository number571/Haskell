module Main where

cyclef :: Integer -> IO() -> IO()
cyclef 0 _ = return ()
cyclef x action = do
    action
    cyclef (x-1) (action)

main :: IO()
main = cyclef 10 (print "Hello World!")
