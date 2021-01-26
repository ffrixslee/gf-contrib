abstract FoodsExt = {
  
      flags startcat = Comment ;
  
      cat
        Comment ; Item ; Kind ; Quality ;
  
      fun
        Pred : Item -> Quality -> Comment ;
        Pred' : Item -> Comment ;
        ILike : Item -> Comment ;
        Know : Item -> Quality -> Comment ;
        Can : Kind -> Comment ;
        This, That, These, Those : Kind -> Item ;
        Mod : Quality -> Kind -> Kind ;
        Wine, Cheese, Fish, Pizza : Kind ;
        Very : Quality -> Quality ;
        Fresh, Warm, Italian, Expensive, Delicious, Boring : Quality ;
    }