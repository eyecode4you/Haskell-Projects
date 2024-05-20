import Test.Hspec
import Lib

main :: IO ()
main = hspec $ do
    describe "formatGrid" $ do
      it "Should concatenate every line with a newline" $ do
        (formatGrid ["abc", "def", "ghi"]) `shouldBe` "abc\ndef\nghi\n"
    
    describe "findWord" $ do
      it "Should find words that exist in wordsearch grid" $ do
        findWord grid "REBOOT" `shouldBe` Just "REBOOT"
        findWord grid "QRADAR" `shouldBe` Just "QRADAR"
      it "Should not find words that don't exist in grid" $ do
        findWord grid "DIGERIDOO" `shouldBe` Nothing
    
    describe "matchedWords" $ do
      it "Should find all words present in grid" $ do
        matchedWords grid searchws `shouldBe` searchws
