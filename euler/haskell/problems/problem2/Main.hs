import Data.List
import Numbers.Fibonacci

-- Project euler problem 2
-- Find the sum of all even-valued fibonacci numbers not exceeding 4 million
main = print result
    where
        result = sum [ x | x <- takeWhile (<=4000000) fibonacci, even x ]

