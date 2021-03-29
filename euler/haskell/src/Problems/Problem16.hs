module Problems.Problem16 where

import Data.Char

solution :: Int
solution = sum numList
  where num = show (2^1000)
        numList = map digitToInt num

