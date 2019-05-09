isPalindromicNum :: Integer -> Bool
isPalindromicNum x = show x == reverse (show x)

main = print $ maximum [ x * y | x <- (reverse [1..999])
                               , y <- (reverse [1..999])
                               , isPalindromicNum (x * y)
                               ]
