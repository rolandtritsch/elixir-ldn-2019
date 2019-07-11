import Test.Hspec

import Fib

main :: IO ()
main = hspec $ do
  describe "fib should return the correct results ..." $ do
    it "... for 0" $ do
      fib 0 `shouldBe` 0
    it "... for 1" $ do
      fib 1 `shouldBe` 1
    it "... for 10" $ do
      fib 10 `shouldBe` 55
