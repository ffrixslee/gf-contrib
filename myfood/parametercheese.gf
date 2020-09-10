param Number = Sg | Pl ;
lincat Kind = {s: Number => Str} ;

lin Cheese = {
      s = table {
        Sg => "cheese" ;
        Pl => "cheeses"
      }
    } ;

oper regNoun : Str -> {s: Number => Str} = \dog -> {
  s = table {
    Sg => dog ;
    Pl => dog + "s"
  }
} ;
