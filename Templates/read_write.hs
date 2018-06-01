module Main where

main :: IO()
main = do
    writeFile path "Hello World!\n"
    appendFile path "Hello World!"
    readFile path >>= \x -> putStrLn x
    where path = "file.txt"
