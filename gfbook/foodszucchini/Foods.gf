abstract Foods = {
 flags startcat = Comment ;
 cat
   Comment ; Item ; Kind ; Quality ; Dish ; Ingredient ;
 fun
   --Is : Item -> Quality -> Comment ; -- Your pizza is vegan
   --Has : Item -> Item -> Comment ;   -- Your pizza has pine seeds
     Is : Dish -> Quality -> Comment ;
     Has : Dish -> Ingredient -> Comment ;

   Your : Dish -> Dish ;             -- your pizza
   Mass : Kind -> Item ;             -- zucchini
   Plural : Kind -> Item ;           -- pine seeds
   ConjItem :
     Item -> Item -> Item ;          -- zucchini and pine seeds
   Mod : Quality -> Ingredient -> Ingredient ;   -- vegan pizza
   Pizza, Lasagna, Risotto : Dish  ;
   PineSeed, Mush, Zucchini : Ingredient ;
   Colorless, Green,
     Indeterminate, Vegan : Quality ;
}