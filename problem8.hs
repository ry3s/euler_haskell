import Data.Char
import Data.List

main :: IO ()
main = do
  str <- readFile "problem8_in.txt"
  let int_list =  map (fromIntegral . digitToInt)
                  . concat
                  . lines
                  $ str
      int_list13 = take 13 . tails $ int_list
      res = maximum
            . map product
            . foldr (zipWith (:)) (repeat [])
            $ int_list13
  print res
