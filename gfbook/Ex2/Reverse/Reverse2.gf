concrete Reverse2 of Reverse = Reverse ** {
  
      lincat
        Phrase, Item, Kind, Quality = {s : Str} ;
  
      lin
        Is item quality = {s = quality.s ++ "is" ++ item.s} ;
        This kind = {s = kind.s ++ "this"} ;
        That kind = {s = kind.s ++ "that" } ;
        Wine = {s = "wine"} ;
        Cheese = {s = "cheese"} ;
        Fish = {s = "fish"} ;
        Very quality = {s = quality.s ++ "very"} ;
        QKind quality kind = {s = kind.s ++ quality.s} ;
        Fresh = {s = "fresh"} ;
        Warm = {s = "warm"} ;
        Italian = {s = "Italian"} ;
        French = {s = "French"} ;
        Expensive = {s = "expensive"} ;
        Delicious = {s = "delicious"} ;
        Boring = {s = "boring"} ;
        Clean = {s = "clean"} ;
        Weird = {s = "weird"} ;
    }