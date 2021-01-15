concrete FoodEng of Food = {
  
      lincat
        Phrase, Item, Kind, Quality = {s : Str} ;
  
      lin
        Pardon item quality = {s = "excuse" ++ "me" ++ "," ++ "is" ++ item.s ++ quality.s ++ "?"} ;
        Is item quality = {s = item.s ++ "is" ++ quality.s} ;
        isNot item quality = {s = item.s ++ ("isn't" | ("is" ++ "not")) ++ quality.s } ;
        With kind1 kind2 = {s = kind1.s ++ "with" ++ kind2.s } ;
        This kind = {s = "this" ++ kind.s} ;
        That kind = {s = "that" ++ kind.s} ;
        QKind quality kind = {s = quality.s ++ kind.s} ;
        Wine = {s = "wine"} ;
        Cheese = {s = "cheese"} ;
        Fish = {s = "fish"} ;
        Very quality = {s = "very" ++ quality.s} ;
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