-- (c) 2009 Aarne Ranta under LGPL
--# -path=.:../foods:present

concrete FoodsEng of Foods = FoodsI with
  (Syntax = SyntaxEng),
  (LexFoods = LexFoodsEng) ;