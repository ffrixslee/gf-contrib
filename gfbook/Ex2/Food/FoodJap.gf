concrete FoodJap of Food = {
  
      lincat
        Phrase, Item, Kind, Quality = {s : Str} ;
  
      lin
        Pardon item quality = {s = "すみません," ++ item.s ++ quality.s } ;
        Is item quality = {s = item.s ++ "わ" ++ quality.s} ;
        This kind = {s = "この" ++ kind.s} ;
        That kind = {s = "それ" ++ kind.s} ;
        QKind quality kind = {s = quality.s ++ kind.s} ;
        Wine = {s = "お酒"} ;
        Cheese = {s = "チズ"} ;
        Fish = {s = "魚"} ;
        Very quality = {s = "とても" ++ quality.s} ;
        Fresh = {s = "新鮮な"} ;
        Warm = {s = "暖かい"} ;
        Italian = {s = "イタリア語"} ;
        French = {s = "フランス語"} ;
        Expensive = {s = "高価な"} ;
        Delicious = {s = "おいしい"} ;
        Boring = {s = "つまらない"} ;
        Clean = {s = "クリーン"} ;
        Weird = {s = "変な"} ;
    }