for :: a -> (a -> a -> Bool) -> a -> (a -> a) -> IO() -> IO()
for i f n mov act | not (f i n) = return()
for i f n mov act = act >> for (mov i) f n mov act

main :: IO()
main = for 0 (<) 10 (+1) (print "hello, world")
