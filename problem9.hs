main :: IO ()
main = print $ res


res :: Int
res = head $ zipWith (\a b ->
                        let c = 1000 - a - b
                        in )
