module Numbers.Core where

divides :: Int -> Int -> Bool
divides x d = (x `mod` d) == 0

