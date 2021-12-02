import AdventOfCode.Day1 as Day1
import AdventOfCode.Day2 as Day2
import Test.HUnit

problem1a = TestCase (Day1.solveA >>= assertEqual "Solution to problem 1a" 888331)

problem1b = TestCase (Day1.solveB >>= assertEqual "Solution to problem 1b" 130933530)

problem2a = TestCase (Day2.solveA >>= assertEqual "Solution to problem 2a" 607)

problem2b = TestCase (Day2.solveB >>= assertEqual "Solution to problem 2b" 321)

main :: IO ()
main =
  runTestTTAndExit $
    TestList
      [ problem1a,
        problem1b,
        problem2a,
        problem2b
      ]
