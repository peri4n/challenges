module Problems.Problem2 where

import Data.List
import Numbers.Fibonacci

-- Project euler problem 2
-- Find the sum of all even-valued fibonacci numbers not exceeding 4 million
solution :: Int
solution = sum [ x | x <- takeWhile (<=4000000) fibonacci, even x ]

