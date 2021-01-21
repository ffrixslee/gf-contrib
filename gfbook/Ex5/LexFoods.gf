interface LexFoods = open Syntax in {
  oper
    wine_N : N ;
    --pizza_N : N ;
    --italianpie_CN : CN ;
    pizza_N = mkCN (mkA "Italian")(mkN "pie") ;
    cheese_N : N ;
    fish_N : N ;
    fresh_A : A ;
    warm_A : A ;
    italian_A : A ;
    expensive_A : A ;
    delicious_A : A ;
    boring_A : A ;
}