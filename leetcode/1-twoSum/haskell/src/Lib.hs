{-# LANGUAGE TupleSections #-}

module Lib
  ( solution1,
    solution2,
    solution3,
  )
where

import Data.HashMap.Lazy as M
import Data.List as L
import Data.Maybe (isJust, listToMaybe)

solution1 :: [Int] -> Int -> Maybe (Int, Int)
solution1 nums target = listToMaybe $ [(i, j) | (n, i) <- indexedNums, (m, j) <- indexedNums, i /= j, m + n == target]
  where
    indexedNums = zip nums [0 ..]

solution2 :: [Int] -> Int -> Maybe (Int, Int)
solution2 nums target = do
  let numsWithIndex = zip nums [0 ..]
  let index = fromList numsWithIndex
  let complement (n, i) = toBool $ (/= i) <$> M.lookup (target - n) index
  (match, index1) <- L.find complement numsWithIndex
  index2 <- M.lookup (target - match) index
  return (index1, index2)

toBool :: Maybe Bool -> Bool
toBool (Just True) = True
toBool _ = False

solution3 :: [Int] -> Int -> Maybe (Int, Int)
solution3 nums target = solution3' nums target 0 empty

solution3' :: [Int] -> Int -> Int -> HashMap Int Int -> Maybe (Int, Int)
solution3' (x : xs) target i idx = if isJust complement then (,i) <$> complement else solution3' xs target (i + 1) (M.insert x i idx)
  where
    complement = M.lookup (target - x) idx
solution3' [] target i idx = Nothing
