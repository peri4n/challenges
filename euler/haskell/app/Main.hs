module Main where

import System.Environment
import Problems.Problem1 as P1
import Problems.Problem2 as P2
import Problems.Problem3 as P3
import Problems.Problem4 as P4
import Problems.Problem5 as P5
import Problems.Problem6 as P6
import Problems.Problem7 as P7
import Problems.Problem8 as P8
import Problems.Problem9 as P9
import Problems.Problem10 as P10
import Problems.Problem11 as P11
import Problems.Problem12 as P12
import Problems.Problem13 as P13
import Problems.Problem14 as P14
import Problems.Problem15 as P15
import Problems.Problem16 as P16
import Problems.Problem18 as P18
import Problems.Problem19 as P19

main = do
  p <- getArgs
  let solution = case head p of
              "1" -> P1.solution
              "2" -> P2.solution
              "3" -> P3.solution
              "4" -> P4.solution
              "5" -> P5.solution
              "6" -> P6.solution
              "7" -> P7.solution
              "8" -> P8.solution
              "9" -> P9.solution
              "10" -> P10.solution
              "11" -> P11.solution
              "12" -> P12.solution
              "13" -> P13.solution
              "14" -> P14.solution
              "15" -> P15.solution
              "16" -> P16.solution
              "18" -> P18.solution
              "19" -> P19.solution
              _ -> 0
  if solution == 0 then putStrLn $ "I have now solution Euler problem " ++ head p else print solution
