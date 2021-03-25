module Numbers.Primes
        ( primeFactors
        , isPrime
        , primes
        , nDivisors
        ) where

import Data.List
import Numbers.Core

primeFactors :: Int -> [Int]
primeFactors x = primeFactors' x []

primeFactors' :: Int -> [Int] -> [Int]
primeFactors' x acc =
        let divisor = find (\i -> x `divides` i) [2..x]
         in case divisor of
          Just d -> primeFactors' (quot x d) (d:acc)
          Nothing -> acc

isPrime :: Int -> Bool
isPrime x = not $ any (divides x) [2,3..(floor $ sqrt (fromIntegral x))]

primes :: [Int]
primes = filter isPrime (2:[3,5..])

nDivisors :: Int -> Int
nDivisors n = product $ map ((+1) . length) (group (primeFactors n))

