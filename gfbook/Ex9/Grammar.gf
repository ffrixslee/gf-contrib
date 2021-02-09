-- code from gfbook
abstract Grammar = {
  flags startcat = S ;

  cat
    S ; Cl ; NP ; VP ; AP ; CN ;
    Det ; N ; A ; V ; V2 ; AdA ; Tense ;

  fun
    UseCl : Tense -> Cl -> S ; -- fixes tense and polarity
    PredVP : NP -> VP -> Cl ; -- predication
    ComplV2 : V2 -> NP -> VP ; -- complementation
    DetCN : Det -> CN -> NP ; -- determination
    AdjCN : AP -> CN -> CN ; -- modification
    CompAP : AP -> VP ; -- adjectival predication
    AdaP : AdA -> AP -> AP ; --adjectival modification

    UseV : V -> VP ; -- lexical insertion
    UseN : N -> CN ; -- lexical insertion
    UseA : A -> AP ; -- lexical insertion

    Pres, Perf : Tense ;

    a_Det, every_Det, the_Det : Det ;
    this_Det, these_Det : Det ; 
    that_Det, those_Det : Det ;
    i_NP, she_NP, we_NP : NP ;
    very_AdA : AdA ;

    -- coordination
    cat Conj ;
    fun 
      ConjS : Conj -> S -> S -> S ;
      ConjNP : Conj -> NP -> NP -> NP ; 
      and_Conj, or_Conj : Conj ;
}