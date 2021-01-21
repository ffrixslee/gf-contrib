# Exercise 5-0
Compile the grammar FoodsREng and generate and parse some sentences.  

```hs
abstract Foods = {
  
      flags startcat = Comment ;
  
      cat
        Comment ; Item ; Kind ; Quality ;
  
      fun
        Pred : Item -> Quality -> Comment ;
        This, That, These, Those : Kind -> Item ;
        Mod : Quality -> Kind -> Kind ;
        Wine, Cheese, Fish, Pizza : Kind ;
        Very : Quality -> Quality ;
        Fresh, Warm, Italian, Expensive, Delicious, Boring : Quality ;
    }

--#  -path=.:present

concrete FoodsREng of Foods =
    open SyntaxEng,ParadigmsEng in {
    lincat
      Comment = Utt ;
      Item = NP ;
      Kind = CN ;
      Quality = AP ;
    lin
      Pred item quality = mkUtt (mkCl item quality) ;
      This kind = mkNP this_Det kind ;
      That kind = mkNP that_Det kind ;
      These kind = mkNP these_Det kind ;
      Those kind = mkNP those_Det kind ;
      Mod quality kind = mkCN quality kind ;
      Wine = mkCN (mkN "wine") ;
      Pizza = mkCN (mkN "pizza") ;
      Cheese = mkCN (mkN "cheese") ; 
      Fish = mkCN (mkN "fish" "fish") ;
      Very quality = mkAP very_AdA quality ;
      Fresh = mkAP (mkA "fresh") ;
      Warm = mkAP (mkA "warm") ;
      Italian = mkAP (mkA "Italian") ;
      Expensive = mkAP (mkA "expensive") ;
      Delicious = mkAP (mkA "delicious") ;
      Boring = mkAP (mkA "boring") ;
    }
```
Command:  
`Foods> gr -tr -number=10 | l`  

Pred (This Fish) Boring  
> this fish is boring  

Pred (These Cheese) Delicious  
> these cheeses are delicious  

Pred (This Cheese) Boring  
> this cheese is boring  

Pred (That Pizza) Expensive  
> that pizza is expensive  

Pred (That Wine) Italian  
> that wine is Italian  

Pred (This Pizza) Fresh  
> this pizza is fresh  

Pred (This Wine) Warm  
> this wine is warm  

Pred (That Cheese) Expensive  
> that cheese is expensive  

Pred (These Wine) Expensive  
> these wines are expensive  

Pred (Those Fish) (Very Boring)  
> those fish are very boring

# Exercise 5-1.
Test if FoodsREng and the manually built FoodsEng given in Figure 21 in Section 3.5 yield exactly the same linearizations.  
You can do this systematically by importing these two grammar and then producing a set of trees and their linearizations by:  
> generate_trees | linearize -treebank

Foods: Pred (That Cheese) Boring  
FoodsEng: that cheese is boring  
FoodsREng: that cheese is boring  
Foods: Pred (That Cheese) Delicious  
FoodsEng: that cheese is delicious  
FoodsREng: that cheese is delicious  
Foods: Pred (That Cheese) Expensive  
FoodsEng: that cheese is expensive  
FoodsREng: that cheese is expensive  
Foods: Pred (That Cheese) Fresh  
FoodsEng: that cheese is fresh  
FoodsREng: that cheese is fresh  
Foods: Pred (That Cheese) Italian  
FoodsEng: that cheese is Italian  
FoodsREng: that cheese is Italian  
Foods: Pred (That Cheese) (Very Boring)  
FoodsEng: that cheese is very boring  
FoodsREng: that cheese is very boring  

# Exercise 5-2 
Write a concrete syntax of Foods for Italian or some
other language included in the resource library. You can compare the results with the hand-written grammars presented earlier in this tutorial.  

**Italian:**
```hs 
--#  -path=.:present

concrete FoodsRIta of Foods =
    open SyntaxIta,ParadigmsIta in {
    lincat
      Comment = Utt ;
      Item = NP ;
      Kind = CN ;
      Quality = AP ;
    lin
      Pred item quality = mkUtt (mkCl item quality) ;
      This kind = mkNP this_Det kind ;
      That kind = mkNP that_Det kind ;
      These kind = mkNP these_Det kind ;
      Those kind = mkNP those_Det kind ;
      Mod quality kind = mkCN quality kind ;
      Wine = mkCN (mkN "vino") ;
      Pizza = mkCN (mkN "pizza") ;
      Cheese = mkCN (mkN "formaggio") ; 
      Fish = mkCN (mkN "pesce") ;
      Very quality = mkAP very_AdA quality ;
      Fresh = mkAP (mkA "fresco") ;
      Warm = mkAP (mkA "caldo") ;
      Italian = mkAP (mkA "Italiano") ;
      Expensive = mkAP (mkA "costoso") ;
      Delicious = mkAP (mkA "delicious") ;
      Boring = mkAP (mkA "noioso") ;
    }
```

# Exercise 5-3
Instantiate the functor FoodsI to some language of your
choice.  

**FoodsIFre.gf**  
```hs 

-- Syntax.gf is already defined in RGL

--# -path=.:present 

concrete FoodsIFre of Foods = FoodsI with 
  (Syntax = SyntaxFre),
  (LexFoods = LexFoodsFre) ;
```

# Exercise 5-4
Divide the Foods grammar into a syntax and a lexicon
part, and implement it for some language by using the resource grammar library and following the variant suggested at the end of this section.  

**FoodsI.gf**  
```hs
incomplete concrete FoodsI of Foods = 
    open Syntax, LexFoods in {
  lincat
    Comment = Utt ;
    Item = NP ;
    Kind = CN ;
    Quality = AP ;
  lin 
    Pred item quality = mkUtt (mkCl item quality) ;
    This kind = mkNP this_Det kind ;
    That kind = mkNP that_Det kind ;
    These kind = mkNP these_Det kind ;
    Those kind = mkNP those_Det kind ;
    Mod quality kind = mkCN quality kind ;
    Very quality = mkAP very_AdA quality ;

    Wine = mkCN wine_N ;
    Pizza = mkCN pizza_N ;
    Cheese = mkCN cheese_N ;
    Fish = mkCN fish_N ;
    Fresh = mkAP fresh_A ;
    Warm = mkAP warm_A ; 
    Italian = mkAP italian_A ;
    Expensive = mkAP expensive_A ;
    Delicious = mkAP delicious_A ;
    Boring = mkAP boring_A ;
    }
```

> Lexicon-domain consists of Interface (General; LexFoods) and Instance (Language-specific; LexFoodsEng, LexFoodsFre)
**LexFoods.gf**
```hs
interface LexFoods = open Syntax in {
  oper
    wine_N : N ;
    pizza_N : N ;
    cheese_N : N ;
    fish_N : N ;
    fresh_A : A ;
    warm_A : A ;
    italian_A : A ;
    expensive_A : A ;
    delicious_A : A ;
    boring_A : A ;
}
```

**LexFoodsFre.gf**
```hs
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
```

# Exercise 5-5
Generalize the functor FoodsI and the lexicon interface
Foods so that it is not necessary to override it as we did in this section.  
> Needed to change instances of Pizza(N) to Italian Pie(CN)

**FoodsI.gf**  
```hs
incomplete concrete FoodsI of Foods = 
    open Syntax, LexFoods in {
  lincat
    Comment = Utt ;
    Item = NP ;
    Kind = CN ;
    Quality = AP ;
  lin 
    Pred item quality = mkUtt (mkCl item quality) ;
    This kind = mkNP this_Det kind ;
    That kind = mkNP that_Det kind ;
    These kind = mkNP these_Det kind ;
    Those kind = mkNP those_Det kind ;
    Mod quality kind = mkCN quality kind ;
    Very quality = mkAP very_AdA quality ;

    Wine = mkCN wine_N ;
    Pizza = mkCN pizza_N ;
    Cheese = mkCN cheese_N ;
    Fish = mkCN fish_N ;
    Fresh = mkAP fresh_A ;
    Warm = mkAP warm_A ; 
    Italian = mkAP italian_A ;
    Expensive = mkAP expensive_A ;
    Delicious = mkAP delicious_A ;
    Boring = mkAP boring_A ;
    }
```

**LexFoodsEng.gf**
```hs
- Need to take out the pizza definition for it to work(and not conflict)
instance LexFoodsEng of LexFoods = 
    open SyntaxEng, ParadigmsEng in {
  oper
    wine_N = mkN "wine" ;
    --pizza_N = mkN "pizza" ;
    cheese_N = mkN "cheese" ;
    fish_N = mkN "fish" "fish" ;
    fresh_A = mkA "fresh" ;
    warm_A = mkA "warm" ;
    italian_A = mkA "Italian" ;
    expensive_A = mkA "expensive" ; 
    delicious_A = mkA "delicious" ;
    boring_A = mkA "boring" ;
    }
```

**LexFoods.gf**
```hs
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
```

> those expensive Italian pies are fresh
these Italian pies are delicious
those cheeses are boring
those fish are warm
these Italian pies are fresh  

# Exercise 5-6
Add the ILike construct to the Foods grammar and
implement it for your favourite languages. Also invent some other constructs where compile-time transfer is necessary.

**Foods.gf**
```hs
abstract Foods = {
  
      flags startcat = Comment ;
  
      cat
        Comment ; Item ; Kind ; Quality ;
  
      fun
        Pred : Item -> Quality -> Comment ;
        ILike : Item -> Comment ;
        This, That, These, Those : Kind -> Item ;
        Mod : Quality -> Kind -> Kind ;
        Wine, Cheese, Fish, Pizza : Kind ;
        Very : Quality -> Quality ;
        Fresh, Warm, Italian, Expensive, Delicious, Boring : Quality ;
    }
```

**FoodsEng.gf**
```hs
concrete FoodsEng of Foods = {
    lincat
      Comment, Quality = {s : Str} ;
      Kind = {s : Number => Str} ;
      Item = {s : Str ; n : Number} ;
    lin
      ILike it = {s = "I like" ++ it.s } ;
      Pred item quality = 
          {s = item.s ++ copula ! item.n ++ quality.s} ;
      This = det Sg "this" ;
      That = det Sg "that" ;
      These = det Pl "these" ;
      Those = det Pl "those" ;
      Mod quality kind =
          {s = \\n => quality.s ++ kind.s ! n} ;
      Wine = regNoun "wine" ;
      Cheese = regNoun "cheese" ;
      Fish = noun "fish" "fish" ;
      Pizza = regNoun "pizza" ;
      Very a = {s = "very" ++ a.s} ;
      Fresh = adj "fresh" ; 
      Warm = adj "warm" ;
      Italian = adj "Italian" ; 
      Expensive = adj "expensive" ;
      Delicious = adj "delicious" ;
      Boring = adj "boring" ;
    param 
      Number = Sg | Pl ;
    oper
      det : Number -> Str ->
        {s : Number => Str} -> {s : Str ; n : Number} =
          \n,det,noun -> {s = det ++ noun.s ! n; n = n} ;
      noun : Str -> Str -> {s : Number => Str} =
        \man,men -> {s = table {Sg => man ; Pl => men}} ;
      regNoun : Str -> {s : Number => Str} = 
          \car -> noun car (car + "s") ;
      adj : Str -> {s : Str} = 
          \cold -> {s = cold} ;
      copula : Number => Str = 
          table {Sg => "is" ; Pl => "are"} ;
}
```

# Exercise 5-7. Test word alignment (as explained in Section 2.14) with grammar rules that perform compile-time transfer.
Languages:
> i FoodsEng.gf
linking ... OK

Languages: FoodsEng
4 msec
Foods> gr -number=5 | l
I like these warm wines
those fish are fresh
I like these fish
these cheeses are warm
these pizzas are warm


Exercise 5-8. Construct some expressions and their translations by
parsing and linearizing in the resource library: . is this wine good . I (don't) like this wine, do you like this wine . I want wine, I would like to have wine . I know that this wine is bad . can you give me wine

Exercise 5-9.+ Extend the Foods grammar with new forms of expressions,
corresponding to the examples of the previous exercise. First
extend the abstract syntax, then implement it by using the resource
grammar and a functor. You can also try to minimize the size of the
abstract syntax by using free variation as explained in Section 2.11. For
instance, I would like to have X, give me X, can you give me X, and X
can be variant expressions for one and the same order.
Exercise 5-10.+ Design a small grammar that can be used for controlling
an MP3 player. The grammar should be able to recognize commands
such as play this song, with the following variations: . objects: song, artist . modiers: this, the next, the previous . verbs with complements: play, remove . verbs without complements: stop, pause
The implementation goes in the following phases:
1. abstract syntax
2. functor and lexicon interface
3. lexicon instance for the rst language
4. functor instantiation for the rst language
5. lexicon instance for the second language
6. functor instantiation for the second language
7. . . .
Exercise 5-11.* Records of resource categories give a natural way to
represent families of words that belong together. One example is the
complex we might call Action, which involves a transitive verb (play),
a person performing the action (player), the action itself (playing),
and the quality of being a possible object (playable). Dene the type
Action as a record of resource grammar categories. Also dene a smart
paradigm
mkAction : Str -> Action
which produces such records in the most regular way. Notice that, since
this paradigm is not bound to one part of speech, it implements what
is usually called derivational morphology, as opposed to in
ectional
morphology.