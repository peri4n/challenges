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

data TestSetup = TestSetup
  { nums :: [Int],
    target :: Int
  } deriving Generic

instance NFData TestSetup

main :: IO ()
main = do
  defaultMain
    [ env setups $ \ ~[l1, l2, l3, l4, l5] ->
        bgroup "twoSums"
          [ bgroup
              "Solution 1"
              [ bench "Solution 1 size 10" $ nf (solution1 (nums l1)) (target l1),
                bench "Solution 1 size 100" $ nf (solution1 (nums l2)) (target l2),
                bench "Solution 1 size 1000" $ nf (solution1 (nums l3)) (target l3),
                bench "Solution 1 size 10000" $ nf (solution1 (nums l4)) (target l4),
                bench "Solution 1 size 100000" $ nf (solution1 (nums l5)) (target l5)
              ],
            bgroup
              "Solution 2"
              [ bench "Solution 2 size 10" $ nf (solution2 (nums l1)) (target l1),
                bench "Solution 2 size 100" $ nf (solution2 (nums l2)) (target l2),
                bench "Solution 2 size 1000" $ nf (solution2 (nums l3)) (target l3),
                bench "Solution 2 size 10000" $ nf (solution2 (nums l4)) (target l4),
                bench "Solution 2 size 100000" $ nf (solution2 (nums l5)) (target l5)
              ],
            bgroup
              "Solution 3"
              [ bench "Solution 3 size 10" $ nf (solution3 (nums l1)) (target l1),
                bench "Solution 3 size 100" $ nf (solution3 (nums l2)) (target l2),
                bench "Solution 3 size 1000" $ nf (solution3 (nums l3)) (target l3),
                bench "Solution 3 size 10000" $ nf (solution3 (nums l4)) (target l4),
                bench "Solution 3 size 100000" $ nf (solution3 (nums l5)) (target l5)
              ]
          ]
    ]

setupOfSize :: Int -> IO TestSetup
setupOfSize n = do
  nums <- replicateM n (randomRIO (1, 10000 :: Int))
  index1 <- randomRIO (0, n -2)
  index2 <- randomRIO (index1, n -1)
  return $ TestSetup nums ((nums !! index1) + (nums !! index2))

setups :: IO [TestSetup]
setups = mapM setupOfSize [10, 100, 1000, 10000, 100000]
