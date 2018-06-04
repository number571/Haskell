module Main where
import System.Process

main :: IO()
main = system "ls" >>= print
