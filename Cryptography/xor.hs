module Main where

import System.IO (hSetBuffering, stdout, BufferMode(..))
import Data.Bits (xor)
import Data.Char (chr, ord)

encrypt :: Char -> Int-> Char
encrypt c k = chr(xor (ord c) k)

xor' :: String -> Int -> String
xor' s k = [encrypt c k | c <- s]

main :: IO()
main = do
    hSetBuffering stdout NoBuffering
    putStr "Message: "; message <- getLine
    putStr "Key: " ; key <- readLn :: IO Int
    putStrLn $ "Final: " ++ xor' message key
