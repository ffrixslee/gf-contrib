abstract Arithm = { 
    flags startcat = Prop ;
    cat
      Prop ; -- proposition 
      Nat  ; -- natural number
    fun 
      Zero : Nat ; -- 0
      Succ : Nat -> Nat ; -- the successor of x
      Even : Nat -> Prop ; -- x is even
      And : Prop -> Prop -> Prop ; -- x and y
      A_NP,  B_NP : Nat ;
}