import Data.List

-- Project euler problem 1
-- Find the sum of all the multiples of 3 or 5 below 1000.
main = print result
    where 
        result = sum [ x | x <- [1..1000], x `mod` 3 == 0 ||  x `mod` 5 == 0]

