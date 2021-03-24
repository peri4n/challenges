module Numbers.Primes
        ( primeFactors
        , isPrime
        ) where

import Data.List
import Numbers.Core

primeFactors :: Int -> [Int]
primeFactors x = primeFactors' x []

primeFactors' :: Int -> [Int] -> [Int]
primeFactors' x acc =
        let divisor = find (\i -> mod x i == 0) [2..x]
         in case divisor of
          Just d -> primeFactors' (quot x d) (d:acc)
          Nothing -> acc

isPrime :: Int -> Bool
isPrime x = not $ any (divides x) [2,3..(floor $ sqrt (fromIntegral x))]
