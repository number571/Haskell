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
toBitList x
        | x == 0 = []
        | odd  x = 1 : toBitList (div x 2)
        | even x = 0 : toBitList (div x 2)

length' :: [Bool] -> Int
length' [] = 0
length' (x:xs) = (+) 1 $ length' xs

reverse' :: [a] -> [a]
reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]

getXor :: Bool -> Bool -> Bool
getXor x y = (||) ((&&) (not x) y) ((&&) x (not y))

plus :: [Bool] -> [Bool] -> [Bool]
plus [] _ = []; plus _ [] = []
plus (x:xs) (y:ys)
        | length' allX >  length' allY = plus allX $ addFalse allY
        | length' allX <  length' allY = plus allY $ addFalse allX
        | length' allX == length' allY = getXor x y : plus xs ys
    where
        allX = x:xs
        allY = y:ys

xor' :: Int -> Int -> Int
xor' xN yN =
    pack . getNum $ plus xs ys
    where
        xs = reverse' [toBool x | x <- toBitList xN]
        ys = reverse' [toBool y | y <- toBitList yN]

main :: IO()
main = print $ xor' 5 10
