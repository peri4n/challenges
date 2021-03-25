module Numbers.Series 
        ( collatz
        , triplets
        , pyTriplets
        ) where

collatz :: Int -> Int
collatz n
  | even n =  1 + collatz (quot n 2)
  | n == 1 = 1
  | otherwise = 1 + collatz (3 * n + 1)

triplets :: [(Int, Int, Int)]
triplets = [(a,b,c) | c <- [1..1000], b <- [1..(c-1)], a <- [1..(b-1)]]

isPythagoraen :: (Int, Int,Int) -> Bool
isPythagoraen (a,b,c) = (a*a) + (b*b) == (c*c)

pyTriplets :: [(Int, Int, Int)]
pyTriplets = filter isPythagoraen triplets
