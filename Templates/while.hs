while :: a -> (a -> a -> Bool) -> a -> IO() -> (a -> a) -> IO()
while i f n act mov | not (f i n) = return()
while i f n act mov = act >> while (mov i) f n act mov

main :: IO()
main = while 0 (<) 10 (print "hello, world") (+1)
