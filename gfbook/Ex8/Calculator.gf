abstract Calculator = {
    flags startcat = Exp ;
    cat
      Exp ;
    fun
      EPlus, EMinus, ETimes, EDiv, ECons, EAssign : Exp -> Exp -> Exp ;
      EInt : Int -> Exp ;
      Parens : Int -> Exp ;
}