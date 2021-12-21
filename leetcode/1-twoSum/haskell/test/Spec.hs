import Lib
import Test.Hspec

main :: IO ()
main = hspec $
  describe "solution1" $ do
    runTestCases solution1
    runTestCases solution2
    runTestCases solution3

runTestCases solution = do
    it "correctly computes the first test case" $
      solution [2, 7, 11, 19] 9 `shouldBe` Just (0, 1)
    it "correctly computes the second test case" $
      solution [3, 2, 4] 6 `shouldBe` Just (1, 2)
    it "correctly computes the third test case" $
      solution [3, 3] 6 `shouldBe` Just (0, 1)
