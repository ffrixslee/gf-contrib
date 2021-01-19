abstract Movies = {
  
      flags startcat = Comment ;
  
      cat
        Comment ; Item ; Kind ; Quality ;
  
      fun
        Pred : Item -> Quality -> Comment ;
        This, That, These, Those : Kind -> Item ;
        Mod : Quality -> Kind -> Kind ;
        Movie, Romance, Horror, Thriller : Kind ;
        Very : Quality -> Quality ;
        Fresh, Warm, Scary, Sweet, Funny : Quality ;
    }