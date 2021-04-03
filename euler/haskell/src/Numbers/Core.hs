module Numbers.Core where

divides :: Int -> Int -> Bool
divides x d = (x `mod` d) == 0

powerset :: [a] -> [[a]]
powerset [] = [[]]
powerset (x:xs) = map (x:) (powerset xs) ++ powerset xs

