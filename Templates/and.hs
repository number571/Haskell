{-# LANGUAGE MultiWayIf #-}
module Main where

not' :: Bool -> Bool
not' False = True
not' True = False

(&&&) :: Bool -> Bool -> Bool
(&&&) False _ = False
(&&&) _ False = False
(&&&) _ _ = True

and' [] = True
and' [x] = x
and' (x:y:zs) = if
    | not' $ x &&& y -> False
    | otherwise -> and' (y:zs)

main :: IO()
main = print $ and' [True, True, False, True]
