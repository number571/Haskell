{-# LANGUAGE MultiWayIf #-}
module Main where

check :: Integer -> Integer -> Bool
check p q = if
    | q ^ (p-1) `mod` p == 1 -> True
    | otherwise -> False

main :: IO()
main = do
    if check p q 
        then print "q ^ (p-1) mod p == 1"
        else error "q ^ (p-1) mod p != 1"
    print [priv_A, priv_B]
    where
        p = 3001;   a = 41
        q = 3;      b = 12

        priv_A = (q ^ b `mod` p) ^ a `mod` p
        priv_B = (q ^ a `mod` p) ^ b `mod` p
