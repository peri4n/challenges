import Test.HUnit
import AdventOfCode.Day1 as Day1

problem1a = TestCase (Day1.solveA >>= assertEqual "Solution to problem 1a" 888331)
problem1b = TestCase (Day1.solveB >>= assertEqual "Solution to problem 1b" 130933530)

main :: IO ()
main = runTestTTAndExit $ TestList [ problem1a
                                   , problem1b
                                   ]
