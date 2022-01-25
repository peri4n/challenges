{-# LANGUAGE DeriveGeneric #-}

module Main where

import Control.Monad
import Criterion
import Criterion.Main
import Criterion.Types
import Lib
import System.Random
import Control.DeepSeq
import GHC.Generics (Generic)

data TestCase = TestCase
  { nums :: [Int],
    target :: Int
  } deriving Generic

newtype TestSetup = TestSetup
  { cases :: [TestCase]
  } deriving Generic

instance NFData TestSetup
instance NFData TestCase

main :: IO ()
main = do
  defaultMainWith 
    defaultConfig { csvFile = Just "performance.csv" }
    [ env setups $ \ ~[l1, l2, l3, l4, l5] ->
        bgroup "twoSums"
          [ bgroup
              "Solution 1"
              [ bench "10" $ nf (map (\t -> solution1 (nums t) (target t))) (cases l1),
                bench "100" $ nf (map (\t -> solution1 (nums t) (target t))) (cases l2),
                bench "1000" $ nf (map (\t -> solution1 (nums t) (target t))) (cases l3),
                bench "10000" $ nf (map (\t -> solution1 (nums t) (target t))) (cases l4),
                bench "100000" $ nf (map (\t -> solution1 (nums t) (target t))) (cases l5)
              ],
            bgroup
              "Solution 2"
              [ bench "10" $ nf (map (\t -> solution2 (nums t) (target t))) (cases l1),
                bench "100" $ nf (map (\t -> solution2 (nums t) (target t))) (cases l2),
                bench "1000" $ nf (map (\t -> solution2 (nums t) (target t))) (cases l3),
                bench "10000" $ nf (map (\t -> solution2 (nums t) (target t))) (cases l4),
                bench "100000" $ nf (map (\t -> solution2 (nums t) (target t))) (cases l5)
              ],
            bgroup
              "Solution 3"
              [ bench "10" $ nf (map (\t -> solution3 (nums t) (target t))) (cases l1),
                bench "100" $ nf (map (\t -> solution3 (nums t) (target t))) (cases l2),
                bench "1000" $ nf (map (\t -> solution3 (nums t) (target t))) (cases l3),
                bench "10000" $ nf (map (\t -> solution3 (nums t) (target t))) (cases l4),
                bench "100000" $ nf (map (\t -> solution3 (nums t) (target t))) (cases l5)
              ]
          ]
    ]

testCaseOfSize :: Int -> IO TestCase
testCaseOfSize n = do
  nums <- replicateM n (randomRIO (1, 10000 :: Int))
  index1 <- randomRIO (0, n -2)
  index2 <- randomRIO (index1, n -1)
  return $ TestCase nums ((nums !! index1) + (nums !! index2))

setupOfSize :: Int -> IO TestSetup
setupOfSize n = TestSetup <$> replicateM reps (testCaseOfSize n)
  where reps = 100

setups :: IO [TestSetup]
setups = mapM setupOfSize [10, 100, 1000, 10000, 100000]
