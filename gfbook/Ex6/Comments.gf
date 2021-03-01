abstract Comments = {
    flags startcat = Comment ;
    cat
      Comment ; Item ; Kind ; Quality ; Foods ;
    fun
      Pred : Item -> Quality -> Comment ;
      This, That, These, Those : Kind -> Item ;
      Mod : Quality -> Kind -> Kind ;
      Very : Quality -> Quality ;
      Phrase : (k : Kind) -> Kind k -> Quality k -> Comment ;
      Expensive : Kind Foods ;
}