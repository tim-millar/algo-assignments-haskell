module KaratsubaSpec (main, spec) where

import Test.Hspec
import Test.QuickCheck

import Karatsuba (multiply)

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "Karatsuba.multiply" $ do
    it "multiplies two small numbers together" $ do
      multiply 2 3 `shouldBe` 6
    it "multiplies two 2-digit numbers together" $ do
      multiply 12 23 `shouldBe` 276
    it "multiplies two 3-digit numbers together" $ do
      multiply 123 456 `shouldBe` 56088
    it "multiplies two 6-digit numbers together" $ do
      multiply 123456 456789 `shouldBe` 56393342784
    it "multiplies a 6 and a 4-digit number together" $ do
      multiply 12345 6789 `shouldBe` 83810205
    it "multiplies a 9 amd 10-digit number together" $ do
      multiply 1234567890 123456789 `shouldBe` 152415787501905210
    it "multiplies two big numbers" $ do
      multiply 1234567890 123456789 `shouldBe` 152415787501905210
    it "multiplies two even bigger numbers" $ do
      multiply 1234567891234567890 123456789123456789 `shouldBe` 152415787806736785156226207501905210
