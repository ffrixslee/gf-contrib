abstract FoodsExt = {
  
      flags startcat = Comment ;
  
      cat
        Comment ; Drink ; Freshness ;
  
      fun
        Pred : Drink -> Freshness -> Comment ;
        Dontlike : Drink -> Comment;
        Want : Drink -> Comment ;
        Know : Drink -> Freshness -> Comment ;
        Can : Drink -> Comment ;
        Wine, Juice : Drink ;
        Good, Bad : Freshness ;
        --Mod : Quality -> Kind -> Kind ;
        --Wine, Cheese, Fish, Pizza : Kind ;
        --Very : Quality -> Quality ;
        --Fresh, Warm, Italian, Expensive, Delicious, Boring : Quality ;
    }