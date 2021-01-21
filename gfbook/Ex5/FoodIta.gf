concrete FoodIta of Foods = {

  lincat
    Phrase, Item, Kind, Quality = {s : Str} ;

  lin
    Pardon item quality = {s = "scusatemi" ++ "," ++ item.s ++ quality.s ++ "?"} ;
    Is item quality = {s = item.s ++ "è" ++ quality.s} ;
    isNot item quality = {s = item.s ++ "non è" ++ quality.s } ;
    With kind1 kind2 = {s = kind1.s ++ "con" ++ kind2.s } ;
    This kind = {s = "questo" ++ kind.s} ;
    That kind = {s = "quel" ++ kind.s} ;
    QKind quality kind = {s = kind.s ++ quality.s} ;
    Wine = {s = "vino"} ;
    Cheese = {s = "formaggio"} ;
    Fish = {s = "pesce"} ;
    Very quality = {s = "molto" ++ quality.s} ;
    Fresh = {s = "fresco"} ;
    Warm = {s = "caldo"} ;
    Italian = {s = "italiano"} ;
    French = {s = "francese"} ;
    Expensive = {s = "caro"} ;
    Delicious = {s = "delizioso"} ;
    Boring = {s = "noioso"} ;
    Clean = {s = "pulita" | "pulito"} ;
    Weird = {s = "strana" | "strano"} ;

}