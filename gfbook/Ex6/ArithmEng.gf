concrete ArithmEng of Arithm = open SyntaxEng, ParadigmsEng, Combinators in {

    lincat
      Prop = S ;
      Nat = NP ;
    
    lin 
      Zero = mkNP zero_N ; -- (pending)
      Succ x = mkNP (mkCN successor_N2 (mkNP x_N)) ; --(pending)  -- N2 -> NP -> NP
      Even x = mkS (mkCl x even_A) ;     -- A -> NP -> Cl
      And x y = mkS and_Conj x y;
      A_NP = mkNP A_N ;
      B_NP = mkNP B_N ;

    oper 
      x_N         = mkN "x" ;
      zero_N      = mkN "0" ;
      successor_N2 = mkN2 (mkN "successor") ;
      even_A      = mkA "even" ;
      A_N = mkN "A" ;
      B_N = mkN "B" ;
}