main :: IO ()
main = print $ show (f primes 600851475143)

primes :: [Integer]
primes = sieve [2..]

sieve :: [Integer] -> [Integer]
sieve (p:xs) = p : sieve[x | x <- xs, x `mod` p /= 0]


f (x : xs) y =
  if y `div` x /= 0
  then f xs y
  else x
