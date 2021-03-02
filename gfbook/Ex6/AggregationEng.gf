concrete AggregationEng of Aggregation = {
    lincat
      S, NP, VP = Str ;
    lin
      PredVP x y = x ++ y ;
      ConjS x y = x ++ "or" ++ y ;
      ConjVP x y = x  ++ y ;
      ConjNP x y = x ++ "or" ++ y ;

      aggr x = x ;
      -- ifS
      -- eqNP x y = x == y ;
      -- eqVP 


      John = "John" ;
      Mary = "Mary" ;
      Run = "run" ;
      Walk = "walk" ;
      True = {s = "true"} ;
      False = {s = "false"} ;
}