-- (c) 2009 Aarne Ranta under LGPL
--# -coding=latin1

instance LexFoodsEng of LexFoods = 
    open SyntaxEng, ParadigmsEng in {
  oper
    wine_N = mkN "Wein" ;
    pizza_N = mkN "Pizza";
    cheese_N = mkN "cheese" ;
    fish_N = mkN "Fisch" ;
    fresh_A = mkA "frisch" ;
    warm_A = mkA "warm" ;
    italian_A = mkA "italienisch" ;
    expensive_A = mkA "teuer" ;
    delicious_A = mkA "köstlich" ;
    boring_A = mkA "langweilig" ;
}
