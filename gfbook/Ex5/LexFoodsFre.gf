instance LexFoodsFre of LexFoods = 
    open SyntaxFre, ParadigmsFre in {
  oper
    wine_N = mkN "vin" ;
    pizza_N = mkN "pizza" ;
    cheese_N = mkN "fromage" ;
    fish_N = mkN "poisson" ;
    fresh_A = mkA "frais" ;
    warm_A = mkA "warm" ;
    italian_A = mkA "Italien" ;
    expensive_A = mkA "cher" ; 
    delicious_A = mkA "délicieux" ;
    boring_A = mkA "ennuyeux" ;
    }