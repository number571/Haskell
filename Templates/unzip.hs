module Main where

unzip' :: [(a,b)] -> ([a],[b])
unzip' [] = ([],[])
unzip' ((x,y):zs) = (x:fst(unzip' zs), y:snd(unzip' zs))

main :: IO()
main = print $ unzip' [(1,5),(2,6),(3,7),(4,8),(5,9)]
