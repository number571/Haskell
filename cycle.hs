module Main where

fun :: Integer -> IO() -> IO()
fun 0 _ = return ()
fun x action = do
    action
    fun (x-1) (action)

main :: IO()
main = fun 10 (print "Hello World!")
