abstract Unary = {
    flags startcat = Less ;
    cat
      Nat ; Less Nat Nat ; Span ;
    fun
      Zero : Nat ;
      Succ : Nat -> Nat ;
      LessZ : (y : Nat) -> Less Zero (Succ y) ;
      LessS : (x,y : Nat) -> Less x y -> Less (Succ x) (Succ y) ;
      FromTo : (m,n : Nat) -> Less m n -> Span ;
}