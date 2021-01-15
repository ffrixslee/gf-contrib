abstract Food = {
  
      flags startcat = Phrase ;
  
      cat
        Phrase ; Item ; Kind ; Quality ;
  
      fun
        Pardon : Item -> Quality -> Phrase ;
        Is : Item -> Quality -> Phrase ;
        isNot : Item -> Quality -> Phrase ;
        --fun With : Kind -> Kind -> Kind ; -- ambiguous version
        --fun With : Kind -> ComplexKind -> ComplexKind ; --unambiguous version
        This, That : Kind -> Item ;
        QKind : Quality -> Kind -> Kind ;
        Wine, Cheese, Fish : Kind ;
        Very : Quality -> Quality ;
        Fresh, Warm, Italian, French, Expensive, Delicious, Boring, Clean, Weird : Quality ;
    }