main = print $ show $ foldr1 lcm [1..20]

-- dividable :: Int -> Int -> Bool
-- dividable x n = x `mod` n == 0

-- f (x : xs)  = if all (dividable x) [1..20]
--               then x
--               else f xs
