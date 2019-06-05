main :: IO ()
main = print $ res

primes :: Integral a => [a]
primes = map fromIntegral ([2, 3] ++ primes' :: [Integer])
  where
    primes' = 5 : sieve [] primes' 7
    sieve divs (x : xs) n = ps ++ sieve (divs ++ [x]) xs (x * x)
      where
        isPrime m = and [rem m x /= 0 | x <- divs]
        ps = filter isPrime ns
        ns = [y + z | y <- [n, n + 6 .. x * x -2], z <- [0, 4]]

res :: Integer
res = sum (takeWhile (< 2000000) primes)
