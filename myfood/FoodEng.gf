concrete FoodEng of Food = {

      lincat
        Phrase, Item, Kind, Quality = {s : Str} ;

      lin
        Pardon item quality = {s = ("excuse" ++ "me" ++ "but") ++ ("is" ++ item.s ++ quality.s) | (item.s ++ "is" ++ quality.s)} ;
        Question item quality = {s = "is" ++ item.s ++ quality.s } ;
        Is item quality = {s = item.s ++ "is" ++ quality.s} ;
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
        Expensive = {s = "expensive"} ;
        Delicious = {s = "delicious" | "exquisite" | "tasty"} ;
        Boring = {s = "boring"} ;

    }
