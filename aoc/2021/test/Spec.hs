import AdventOfCode.Day1 as Day1
import AdventOfCode.Day2 as Day2
import AdventOfCode.Day4 as Day4
import Test.HUnit

problem1a = TestCase (Day1.solveA >>= assertEqual "Solution to problem 1a" 1711)

problem1b = TestCase (Day1.solveB >>= assertEqual "Solution to problem 1b" 1743)

problem2a = TestCase (Day2.solveA >>= assertEqual "Solution to problem 2a" 1660158)

problem2b = TestCase (Day2.solveB >>= assertEqual "Solution to problem 2b" 1604592846)

problem4a = TestCase (Day4.solveA >>= assertEqual "Solution to problem 4a" 58374)

problem4b = TestCase (Day4.solveB >>= assertEqual "Solution to problem 4b" 11377)

main :: IO ()
main =
  runTestTTAndExit $
    TestList
      [ problem1a,
        problem1b,
        problem2a,
        problem2b,
        problem4a,
        problem4b
      ]
