resource ResEng = open Prelude in {
  param 
    Number = Sg | Pl ;
    NounPhrase : Type = 
      {s : Str ; n : Number\}
-- Ex 4.2
    oper regVerb : Str -> Verb = \x -> mkVerb x (x + "ed") ;

-- Ex 4.3
    oper regVerb : Str -> Verb = \y ->
        case y of {
          _ => y + "ed" ; 
          _ + "e" => y + "d" ;
          _ + "y" => y + "ed"
        }

-- Ex 4.4
    oper Umlaut : Str -> Str = \x ->
      let
        xs : Str = case x of {
          _ + "a" => x + "ä"
          _ + "au" => x + "äu"
          _ + "o" => x + "ö"
          _ + "u" => x + "ü"
        }
-- Ex 4.5
    oper mkV = overload {
      mkV : {arrive : Str} -> Verb = regVerb ;
      mkV : {cost : Str } -> Verb = mkVerb ;
      mkV : {cut : Str} -> Verb = mkVerb ;
      mkV : {hurt : Str} -> Verb = mkVerb ;
      mkV : {let : Str} -> Verb = mkVerb ;
      mkV : {put : Str} -> Verb = mkVerb ;
      mkV : {bring, brought : Str} -> Verb = mkVerb ;
      mkV : {buy, bought : Str} -> Verb = mkVerb ;
      mkV : {catch, caught : Str} -> Verb = mkVerb ;
      mkV : {feel, felt : Str} -> Verb = mkVerb ;
      mkV : {find, found : Str} -> Verb = mkVerb ;
      mkV : {get, got : Str} -> Verb = mkVerb ;
      mkV : {have, had : Str} -> Verb = mkVerb ;
      mkV : {hear, heard : Str} -> Verb = mkVerb ;
      mkV : {keep, caught : Str} -> Verb = mkVerb ;
      mkV : {leave, left : Str} -> Verb = mkVerb ;
      mkV : {lose, lost : Str} -> Verb = mkVerb ;
      mkV : {make, made : Str} -> Verb = mkVerb ;
      mkV : {read, read : Str} -> Verb = mkVerb ;
      mkV : {say, said : Str} -> Verb = mkVerb ;
      mkV : {sell, sold : Str} -> Verb = mkVerb ;
      mkV : {send, sent : Str} -> Verb = mkVerb ;
      mkV : {teach, taught : Str} -> Verb = mkVerb ;
      mkV : {think, thought : Str} -> Verb = mkVerb ;
      mkV : {win, won : Str} -> Verb = mkVerb ;
      mkV : {come, came : Str} -> Verb = mkVerb ;
      mkV : {become, became : Str} -> Verb = mkVerb ;
      mkV : {run,ran : Str} -> Verb = mkVerb ;
      mkV : {begin, began : Str} -> Verb = mkVerb ;
      mkV : {break, broke : Str} -> Verb = mkVerb ;
      mkV : {choose, chose : Str} -> Verb = mkVerb ;
      mkV : {drink, drank : Str} -> Verb = mkVerb ;
      mkV : {drive, drove : Str} -> Verb = mkVerb ;
      mkV : {eat, ate : Str} -> Verb = mkVerb ;
      mkV : {fall, fell : Str} -> Verb = mkVerb ;
      mkV : {give, gave : Str} -> Verb = mkVerb ;
      mkV : {go, went : Str} -> Verb = mkVerb ;
      mkV : {know, knew : Str} -> Verb = mkVerb ;
      mkV : {see, saw : Str} -> Verb = mkVerb ;
      mkV : {speak, spoke : Str} -> Verb = mkVerb ;
      mkV : {swim, swam : Str} -> Verb = mkVerb ;
      mkV : {take, took : Str} -> Verb = mkVerb ;
      mkV : {wake, woke : Str} -> Verb = mkVerb ;
      mkV : {write, wrote : Str} -> Verb = mkVerb ;
    }
}
