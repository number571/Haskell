module Main where

for :: Integer -> IO() -> IO()
for 0 _ = return ()
for x code = do
    code
    for (x-1) code

main :: IO()
main = for 10 $ print "Hello World"
