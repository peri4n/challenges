module Numbers.Primes
        ( primeFactors
        ) where

import Data.List

primeFactors :: Int -> [Int]
primeFactors x = primeFactors' x []

primeFactors' :: Int -> [Int] -> [Int]
primeFactors' x acc =
        let divisor = find (\i -> (mod x i) == 0) [i | i <- [2..x]]
         in case divisor of
          Just d -> primeFactors' (quot x d) (d:acc)
          Nothing -> acc

