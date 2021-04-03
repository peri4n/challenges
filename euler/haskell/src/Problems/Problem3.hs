module Problems.Problem3 where

import Data.IntMap (findMax)
import Numbers.Primes (primeFactors)

-- Project euler problem 3
-- What is the largest prime factor of the number 600851475143 ?
solution :: Int
solution = fst $ findMax (primeFactors 600851475143)

