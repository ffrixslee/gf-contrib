# Exercise 4-0. Factor out a separate resource module from FoodsEng as defined in Figure 21. Then reimplement FoodsEng by using this resource.
```hs
concrete FoodsEng of Foods = open ResEng in {
  lincat
    Comment, Quality = {s : Str} ;
    Kind = {s : Number => Str} ;
    Item = {s : Str ; n : Number} ;
lin
  Pred item quality =
    {s = item.s ++ copula ! item.n ++ quality.s} ;
  This = det Sg "this" ;
  That = det Sg "that" ;
  These = det Pl "these" ;
  Those = det Pl "those" ;
  Mod quality kind =
    {s = \\n => quality.s ++ kind.s ! n} ;
  Wine = regNoun "wine" ;
  Cheese = regNoun "cheese" ;
  Fish = noun "fish" "fish" ;
  Pizza = regNoun "pizza" ;
  Very a = {s = "very" ++ a.s} ;
  Fresh = adj "fresh" ;
  Warm = adj "warm" ;
  Italian = adj "Italian" ;
  Expensive = adj "expensive" ;
  Delicious = adj "delicious" ;
  Boring = adj "boring" ;
}

resource ResEng = open Prelude in {
    param 
      Number = Sg | Pl ;

    oper
      det : Number -> Str -> 
        {s : Number => Str} -> {s : Str ; n : Number} =
          \n,det,noun -> {s = det ++ noun.s ! n ; n = n} ;
      noun : Str -> Str -> {s : Number => Str} =
        \man, men -> {s = table {Sg => man ; Pl => men}} ;
      regNoun : Str -> {s : Number => Str} = 
        \car -> noun car (car + "s") ;
      adj : Str -> {s : Str} =
        \cold -> {s = cold} ;
      copula : Number => Str =
        table {Sg => "is" ; Pl => "are"} ;

}
```

# Exercise 4-1. Write an abstract syntax similar to Foods but with a different vocabulary, possibly describing a different domain. Use the resource module created in the previous exercise to define the concrete syntax. Do the same with Italian, if you know enough Italian.
```hs
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

concrete MoviesEng of Movies = open ResEng in {
  lincat
    Comment, Quality = {s : Str} ;
    Kind = {s : Number => Str} ;
    Item = {s : Str ; n : Number} ;
lin
  Pred item quality =
    {s = item.s ++ copula ! item.n ++ quality.s} ;
  This = det Sg "this" ;
  That = det Sg "that" ;
  These = det Pl "these" ;
  Those = det Pl "those" ;
  Mod quality kind =
    {s = \\n => quality.s ++ kind.s ! n} ;
  Movie = regNoun "movie" ;
  Horror = regNoun "horror" ;
  Romance = regNoun "romance" ;
  Thriller = regNoun "thriller" ;
  Very a = {s = "very" ++ a.s} ;
  Fresh = adj "fresh" ;
  Warm = adj "warm" ;
  Scary = adj "scary" ;
  Sweet = adj "sweet" ;
  Funny = adj "funny" ;
}

resource ResEng = open Prelude in {
    param 
      Number = Sg | Pl ;

    oper
      det : Number -> Str -> 
        {s : Number => Str} -> {s : Str ; n : Number} =
          \n,det,noun -> {s = det ++ noun.s ! n ; n = n} ;
      noun : Str -> Str -> {s : Number => Str} =
        \man, men -> {s = table {Sg => man ; Pl => men}} ;
      regNoun : Str -> {s : Number => Str} = 
        \car -> noun car (car + "s") ;
      adj : Str -> {s : Str} =
        \cold -> {s = cold} ;
      copula : Number => Str =
        table {Sg => "is" ; Pl => "are"} ;

}
```

# Exercise 4-2.* The same rules that form plural nouns in English also apply in the formation of third-person singular verbs. Write a regular verb paradigm that uses this idea, but first rewrite regNoun so that the analysis needed to build s-forms is factored out as a separate oper, which is shared with regVerb.