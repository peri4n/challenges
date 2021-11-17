module Problems.Problem41 where

import Numbers.Combinatorics (permute)
import Numbers.Primes (isPrime)

fromDigits :: [Int] -> Int
fromDigits = foldl addDigit 0
   where addDigit num d = 10*num + d

solve :: IO Int
solve = return solution

solution = maximum pali
  where pali = filter isPrime $ map fromDigits (permute [1..7])

