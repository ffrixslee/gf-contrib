concrete FoodsEng of Foods = open Prelude in {

  lincat
    Kind = LinKind ;
    Item = LinItem ;
  lin
    -- : Item -> Quality -> Comment ;
    -- Is item quality = {s = item.s ++ copula ! item.n ++ quality.s} ;
       Is dish quality = {s = dish.s ++ "is" ++ quality.s} ;

    -- : Item -> Item -> Comment ;
    -- Has food ingrds = {s = food.s ++ have ! food.n ++ ingrds.s} ;
       Has dish ingrds = {s = dish.s ++ "has" ++ ingrds.s} ;

    -- : Kind -> Item ;
    Your dish = {s = "your" ++ dish.s} ;
    Mass kind = {s = kind.s ! Sg ; n = Sg} ;
    Plural kind = {s = kind.s ! Pl ; n = Pl} ;

    -- : Item -> Item -> Item ;
    ConjItem item1 item2 = {s = item1.s ++ "and" ++ item2.s ; n = Pl} ;

    -- : Quality -> Kind -> Kind ;
    Mod quality ingredient = {s = quality.s ++ ingredient.s} ;

    -- : Kind
    Pizza = ss "pizza" ;
    Lasagna = ss "lasagna" ;
    Risotto = ss "risotto" ;
    PineSeed = ss "pine seed" ;
    Mush = ss "mush" ;
    Zucchini = ss "zucchini" ;

    -- : Quality
    Colorless = ss "colorless" ;
    Green = ss "green" ;
    Indeterminate = ss "indeterminate" ;
    Vegan = ss "vegan" ;

  param
    Number = Sg | Pl ;
    --Item = Dish | Ingredient ;
  oper
    LinItem : Type = {s : Str ; n : Number} ;
    LinKind : Type = {s : Number => Str} ;

    mkKind : Str -> LinKind = \mush ->
      let mushes : Str = case mush of {
            _ + ("s"|"sh"|"ch") => mush + "es" ;
            _                   => mush + "s"
            } ;
      in {s = table {Sg => mush ; Pl => mushes}} ;

    mkQuality : Str -> {s : Str} = \green -> {s = green} ;

    Verb : Type = Number => Str ;
    mkVerb : (sg, pl : Str) -> Verb = \sg,pl -> table {Sg => sg ; Pl => pl} ;

    copula : Verb = mkVerb "is" "are" ;
    have : Verb = mkVerb "has" "have" ;
}