-- Sample structure of how to write unittests in a package's Spec.hs file
main = hspec $ do
    describe "SomeValue" $ do
      it "Should have some value" $ do
        SomeValue `shouldBe` "Must be this text"
    
    -- we can also test output of functions e.g.
    describe "ListData" $ do
      it "ListData should find words that exist in ListToSearch" $ do
        ListData ListToSearch "CHEESE" `shouldBe` Just "CHEESE"
        ListData ListToSearch "VANILLA" `shouldBe` Just "VANILLA"
      it "Should not find words that don't exist in ListToSearch" $ do
        ListData ListToSearch "DIGERIDOO" `shouldBe` Nothing
    
    describe "MatchWords" $ do
      it "Should find all words present in a list" $ do
        MatchWords ListToSearch WordsToSearchFor `shouldBe` WordsToSearchFor
