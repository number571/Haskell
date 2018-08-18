import Network.HTTP.Conduit (simpleHttp)

main :: IO()
main = simpleHttp url >>= putStrLn . show
    where url = "http://www.google.com"
