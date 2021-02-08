--# -path=.:alltenses

concrete FoodsExtEng of FoodsExt = open SyntaxEng, ParadigmsEng in {
    lincat
      Comment = Utt ;
      Drink = NP ;
      Freshness = AP ; 
    lin
      -- is this wine good:
      Pred drink_NP freshness_AP =  mkUtt (mkQCl (mkCl drink_NP freshness_AP)) ; -- output: is wine/juice good ; Question : how to get "this wine"
      -- I (don't) like this wine, do you like this wine:
      Dontlike drink_NP = mkUtt ( mkS negativePol ( mkCl i_NP like_V2 drink_NP )) ; --Question: how to make a list (ie She did, I would) 
      -- I want wine, I would like to have wine:
      Want drink_NP = mkUtt (mkCl i_NP want_V2 drink_NP) ;
      -- I know that this wine is bad:
      --Know drink_NP freshness_AP = mkUtt (mkCl i_NP  (mkS (mkCl drink_NP freshness_AP)) ;  

      -- can you give me wine: 
      --Can drink_NP = mkUtt (mkCl you_NP give_V2 drink_NP) ;
      Good = mkAP good_A ;
      Bad = mkAP bad_A ;
      Juice = mkNP juice_N ; 
      Wine = mkNP wine_N ;
      oper
        juice_N = mkN "juice" ;
        wine_N = mkN "wine" ;
        good_A = mkA "good" ;
        bad_A = mkA "bad" ;
        like_V2 = mkV2 "like" ;
        want_V2 = mkV2 "want" ;
        know_V2 = mkV2 "know" ;
        give_V2 = mkV2 "give" ;

}