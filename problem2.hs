main :: IO ()
main = print $ show (loop fib 0)

zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' f (x : xs) (y : ys) =
  let z = f x y
  in z `seq` (z : zipWith' f xs ys)
fib :: [Integer]
fib = 1 : 2 : zipWith' (+) fib (tail fib)

loop (x : xs) sum =
  if x > 4000000
  then sum
  else if x `mod` 2 /= 0
       then loop xs sum
       else loop xs (sum + x)
