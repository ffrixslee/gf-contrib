concrete NumAgreeEng of NumAgree = {
    lincat
        NP = {s : Str ; num : Number} ;
        VP = {s : Str} ;
        Det = {s : Str ; num : Number} ;

      lin
        Phrase det np vp = {s = np.s ! det.num ++ np.s ++ vp.s} ; -- argument for numbers is omitted
      param
        Number = Sg | Pl ;
      oper
        noun : Str -> Str -> {s : Number => Str} =
          \man,men -> {s = table {Sg => man ; Pl => men}} ;
        regNoun : Str -> {s : Number => Str} =
          \car -> noun car (car + "s") ;
}