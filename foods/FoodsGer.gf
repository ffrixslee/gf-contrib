
-- (c) 2009 Aarne Ranta under LGPL

--# -path=.:../foods:present

concrete FoodsGer of Foods = FoodsI with 
  (Syntax = SyntaxGer),
  (LexFoods = LexFoodsGer) ;
