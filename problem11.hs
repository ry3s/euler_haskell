import Data.Array
main :: IO ()
main = do
  str <- readFile "problem11_in.txt"
  let arr = listArray ((1, 1), (20, 20)) . map (read :: String -> Integer) . words $ str
  print arr
