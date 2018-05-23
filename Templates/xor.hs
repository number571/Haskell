{-# LANGUAGE MultiWayIf #-}
module Main where
import Data.Bits (Bits, shiftL, (.|.))

pack :: (Num b, Foldable t, Bits b) => t b -> b
pack a = foldl go 0 a
    where go acc i = (acc `shiftL` 1) .|. i

addFalse :: [Bool] -> [Bool]
addFalse xN = False : xN

toBool :: Int -> Bool
toBool 1 = True
toBool 0 = False

toNum :: Bool -> Int
toNum True = 1
toNum False = 0

getNum :: [Bool] -> [Int]
getNum xN = [toNum x | x <- xN]

toBitList :: Int -> [Int]
toBitList x  = do
    if  | x == 0 -> []
        | odd  x -> 1 : toBitList (div x 2)
        | even x -> 0 : toBitList (div x 2)

len :: [Bool] -> Int
len [] = 0
len (x:xs) = (+) 1 $ len xs

ind :: [Bool] -> [Int]
ind xs = [(len xs - 1), (len xs - 2) .. 0]

rev :: [Bool] -> [Bool]
rev xs = [(!!) xs x | x <- ind xs]

getXor :: Bool -> Bool -> Bool
getXor x y = (||) ((&&) (not x) y) ((&&) x (not y))

plus :: [Bool] -> [Bool] -> [Bool]
plus [] _ = []
plus _ [] = []
plus (x:xs) (y:ys) = do
    if  | len allX >  len allY -> plus allX $ addFalse allY
        | len allX <  len allY -> plus allY $ addFalse allX
        | len allX == len allY -> getXor x y : plus xs ys
    where
        allX = x:xs
        allY = y:ys

xor' :: Int -> Int -> Int
xor' xN yN = do
    pack . getNum $ plus xs ys
    where
        xs = rev [toBool x | x <- toBitList xN]
        ys = rev [toBool y | y <- toBitList yN]

main :: IO()
main = print $ xor' 5 10
