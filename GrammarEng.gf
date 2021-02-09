concrete GrammarEng of Grammar = {
    param
      Tense, Case, Agr
    lincat
      Cl = {s : Tense => Str }
      NP = {s : Case  => Str ; a : Agr}
      VP = {s : Tense => Agr => Str}
      V2 = {s : Tense => Agr => Str ; c : Case} 
    lin 
    PredVP np vp = 
        {s = \\t => np.s ! nom ++ vp.s ! t ! np.a}
    ComplV2 v np = 
        {s = \\t,a => v.s ! t ! a ++ np.s ! v.c}
    oper
      nom : Case
}