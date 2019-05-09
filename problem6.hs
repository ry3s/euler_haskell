main :: IO ()
main = print $ (squareOfSum - sumOfSquares)

sumOfSquares :: Integer
sumOfSquares = sum [ x * x | x <- [1..100]]

squareOfSum = let x = sum [1..100]
              in x * x
