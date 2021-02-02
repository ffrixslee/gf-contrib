concrete SmartHouseEng of SmartHouse = open SyntaxEng, ParadigmsEng, Prelude in {
    lincat
      Command, Device, Kind, Action = {s : Str} ;
    
    lin
      Act _ act dev = {s = act.s ++ dev.s} ;
      The kind = {s = "the" ++ kind.s} ;
      Dim_Light = {s = "dim"} ;
      Switchable_Light = {s = ("switch-on" | "switch-off") };
      -- argument for Kind does not appear in the linearization;
      -- type checker can reconstruct the kind from the dev argument (technique of suppression)
      Light = {s = "light"} ;
      Fan = {s = "fan"} ;
}