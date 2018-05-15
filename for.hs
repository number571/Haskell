module Main where

for :: [Integer] -> IO()
for [] = return ()
for (x:y) = do
    print x
    for y

main :: IO()
main = for [0..10]
