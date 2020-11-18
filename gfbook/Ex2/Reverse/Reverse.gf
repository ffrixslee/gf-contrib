abstract Reverse = {
  
      flags startcat = Phrase ;
  
      cat
        Phrase ; Item ; Kind ; Quality ;
  
      fun
        Is : Item -> Quality -> Phrase ;
        This, That : Kind -> Item ;
        QKind : Quality -> Kind -> Kind ;
        Very : Quality -> Quality ;
        Wine, Cheese, Fish : Kind ;
        Fresh, Warm, Italian, French, Expensive, Delicious, Boring, Clean, Weird : Quality ;
    }