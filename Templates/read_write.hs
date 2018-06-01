module Main where

main :: IO()
main = do
    writeFile path "Hello World!!"
    readFile path >>= \x -> putStrLn x
    where path = "file.txt"
