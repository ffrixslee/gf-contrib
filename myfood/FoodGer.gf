concrete FoodEng of Food = {

      lincat
        Phrase, Item, Kind, Quality = {s : Str} ;

      lin
        Pardon item quality = {s = ("entschuldigen" ++ "Sie" "aber") ++ ("ist" ++ item.s ++ quality.s) | (item.s ++ "ist" ++ quality.s)} ;
        Question item quality = {s = "ist" ++ item.s ++ quality.s } ;
        Is item quality = {s = item.s ++ "ist" ++ quality.s} ;
        This kind = {s = "dieser" ++ kind.s} ;
        That kind = {s = "dieser" ++ kind.s} ;
        QKind quality kind = {s = quality.s ++ kind.s} ;
        Wine = {s = "Wein"} ;
        Cheese = {s = "Käse"} ;
        Fish = {s = "Fisch"} ;
        Very quality = {s = "sehr" ++ quality.s} ;
        Fresh = {s = "frisch"} ;
        Warm = {s = "warm"} ;
        Italian = {s = "Italienisch"} ;
        Expensive = {s = "teuer"} ;
        Delicious = {s = "köstlich"} ;
        Boring = {s = "langweilig"} ;

    }
