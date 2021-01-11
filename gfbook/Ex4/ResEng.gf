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