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

  describe "fib2 should return the correct results ..." $ do
    it "... for 0" $ do
      fib2 0 `shouldBe` 0
    it "... for 1" $ do
      fib2 1 `shouldBe` 1
    it "... for 10" $ do
      fib2 10 `shouldBe` 55
    it "... for 100" $ do
      fib2 100 `shouldBe` 354224848179261915075
    it "... for 1000" $ do
      fib2 1000 `shouldBe` 43466557686937456435688527675040625802564660517371780402481729089536555417949051890403879840079255169295922593080322634775209689623239873322471161642996440906533187938298969649928516003704476137795166849228875

  describe "fib3 should return the correct results ..." $ do
    it "... for 0" $ do
      fib3 0 `shouldBe` 0
    it "... for 1" $ do
      fib3 1 `shouldBe` 1
    it "... for 10" $ do
      fib3 10 `shouldBe` 55
    it "... for 100" $ do
      fib3 100 `shouldBe` 354224848179261915075
    it "... for 1000" $ do
      fib3 1000 `shouldBe` 43466557686937456435688527675040625802564660517371780402481729089536555417949051890403879840079255169295922593080322634775209689623239873322471161642996440906533187938298969649928516003704476137795166849228875
