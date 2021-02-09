concrete ArithmEng of Arithm = open SyntaxEng, ParadigmsEng, Combinators in {

    lincat
      Prop = Utt ;
      Nat = NP ;
    
    lin 
      Zero = mkNP zero_N ; -- (pending)
      Succ successor = mkNP successor_N   ; --(pending)  -- N2 -> NP -> NP
      Even x = mkUtt (mkCl (mkNP x_N) even_A) ;     -- A -> NP -> Cl
      And x y = mkUtt (mkNP and_Conj A_NP B_NP);
      A_NP = mkNP A_N ;
      B_NP = mkNP B_N ;

    oper 
      x_N         = mkN "x" ;
      zero_N      = mkN "0" ;
      successor_N = mkN "successor" ;
      even_A      = mkA "even" ;
      A_N = mkN "A" ;
      B_N = mkN "B" ;
}