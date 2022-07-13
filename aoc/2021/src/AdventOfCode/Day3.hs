module AdventOfCode.Day3 where

import Data.List as L
import Data.Map as M
import Data.Char

solveA :: IO Int
solveA = do
  bins <- binaries
  let total = length bins
  let sums = foldl1' agg bins
  let bits = L.map (\x -> if total - x > x then '1' else '0') sums
  let gamma = toDec bits
  let epsilon = toDec (L.map (\x -> if x == '1' then '0' else '1') bits)
  return $ gamma * epsilon

binaries :: IO [[Int]]
binaries = toNums . lines <$> readFile "data/day3.txt"
 where toNums = L.map (L.map digitToInt)

agg :: [Int] -> [Int] -> [Int]
agg = zipWith (+)

toDec :: String -> Int
toDec = L.foldl' (\acc x -> acc * 2 + digitToInt x) 0
