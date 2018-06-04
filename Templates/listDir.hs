module Main where
import System.Directory

main :: IO()
main = listDirectory "/home/user/" >>= print
