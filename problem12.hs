import Data.List
main :: IO ()
main = print f

f = head $ filter ((> 500) . nDivisors) triangleNumbers
  where
    nDivisors n = product $ map ((+ 1) . length) (group (primeFactors n))
    triangleNumbers = scanl1 (+) [1..]


primes = 2 : filter (null . tail . primeFactors) [3,5..]
primeFactors n = factor n primes
  where
    factor n (p:ps)
        | p*p > n        = [n]
        | n `mod` p == 0 = p : factor (n `div` p) (p:ps)
        | otherwise      =     factor n ps
