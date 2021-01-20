-- to implement the predication rule fun PredVP : NP -> VP -> Cl


-- Complementation:
param 
  Tense, Case, Agr
lincat 
  Cl = {s : Tense        => Str}
  NP = {s : Case         => Str ; a : Agr}
  VP = {s : Tense => Agr => Str}
  V2 = {s : Tense => Agr => Str ; c : Case}
oper
  nom : Case
lin PredVP np vp =
    {s = \\t => np.s ! nom ++ vp.s ! t ! np.a}
lin ComplV2 v np = 
    {s = \\t,a => v.s ! t ! a ++ np.s ! v.c}


-- Determination:
lincat 
  NP  = {s :           Case => Str ; a : Agr}
  CN  = {s : Number => Case => Str ; g : Gender}
  Det = {s : Gender => Case => Str ; n : Number}
lin DetCN det cn = {
    s = \\c => det.s ! cn.g ! c ++ cn.s ! det.n ! c ;
    a = agr cn.g det.n Per3 
}
oper agr : Gender -> Number -> Person -> Agr

-- Modification:
lincat
  AP = {s : Gender => Number => Case => Str }
  CN = {s : Number => Case => Str ; g : Gender}

lin AdjCN ap cn = {
    s = \\n,c => ap.s ! cn.g ! n ! c ++ cn.s ! n ! c ;
    g = cn.g
}