# Exercise 6-0
Give a concrete syntax of Arithm, preferably by using the resource library.  

```hs
Abstract syntax:

abstract Arithm = { 
    flags startcat = Prop ;
    cat
      Prop ; -- proposition 
      Nat  ; -- natural number
    fun 
      Zero : Nat ; -- 0
      Succ : Nat -> Nat ; -- the successor of x
      Even : Nat -> Prop ; -- x is even
      And : Prop -> Prop -> Prop ; -- x and y
      A_NP,  B_NP : Nat ;
}

Concrete syntax:
concrete ArithmEng of Arithm = open SyntaxEng, ParadigmsEng, Combinators in {

    lincat
      Prop = S ;
      Nat = NP ;
    
    lin 
      Zero = mkNP zero_N ;
      Succ x = mkNP (mkCN  successor_N2 (mkNP x_N)) ;  -- N2 -> NP -> NP
      Even x = mkS (mkCl x even_A) ;     -- A -> NP -> Cl
      And x y = mkS and_Conj x y;
      A_NP = mkNP A_N ;
      B_NP = mkNP B_N ;

    oper 
      x_N         = mkN "x" ;
      zero_N      = mkN "0" ;
      successor_N2 = mkN2 (mkN "successor") ;
      even_A      = mkA "even" ;
      A_N = mkN "A" ;
      B_N = mkN "B" ;
}
```

# Exercise 6-1
Write an abstract syntax module with the contents above and an appropriate English concrete syntax. Try out parsing and generation.
```hs 
Abstract syntax:
abstract SmartHouse = {
    flags startcat = Command ;

    cat
      Command ;
      Kind ;
      Device Kind ;
      Action Kind ;
    
    fun 
      Act : (k : Kind) -> Action k -> Device k -> Command ;
      The : (k : Kind) -> Device k ; -- the light
      Light, Fan : Kind ;
      Dim : Action Light ;
}

Concrete syntax:
concrete SmartHouseEng of SmartHouse = open SyntaxEng, ParadigmsEng, Prelude in {
    lincat
      Command, Device, Kind, Action = {s : Str} ;
    
    lin
      Act _ act dev = {s = act.s ++ dev.s} ;
      The kind = {s = "The" ++ kind.s} ;
      Dim = {s = "dim"} ;
      -- argument for Kind does not appear in the linearization;
      -- type checker can reconstruct the kind from the dev argument (technique of suppression)
      Light = {s = "light"} ;
      Fan = {s = "fan"} ;
}
```

# Exercise 6-2
Add some device kinds and actions to the grammar.  
```hs
Abstract syntax:
abstract SmartHouse = {
    flags startcat = Command ;

    cat
      Command ;
      Kind ;
      Device Kind ;
      Action Kind ;
    
    fun 
      Act : (k : Kind) -> Action k -> Device k -> Command ;
      The : (k : Kind) -> Device k ; -- the light
      Light, Fan : Kind ;
      Dim_Light : Action Light ;
      Switchable_Light : Action Light;
}

Concrete syntax:
concrete SmartHouseEng of SmartHouse = open SyntaxEng, ParadigmsEng, Prelude in {
    lincat
      Command, Device, Kind, Action = {s : Str} ;
    
    lin
      Act _ act dev = {s = act.s ++ dev.s} ;
      The kind = {s = "the" ++ kind.s} ;
      Dim_Light = {s = "dim"} ;
      Switchable_Light = {s = ("switch-on" | "switch-off") };
      -- argument for Kind does not appear in the linearization;
      -- type checker can reconstruct the kind from the dev argument (technique of suppression)
      Light = {s = "light"} ;
      Fan = {s = "fan"} ;
}
```
> Learnt: Able to use omission of arguments for types when the dependent types are specified; can use blank string in record syntax when writing linearizations of ie, Actions.

# Exercise 6-3.* (pending)
Define some rules involving agreement in abstract syntax by using dependent types --- for instance, the number agreement in NP-VP predication in English.  
To this end, you need to introduce Number as a type in the abstract syntax and make NP and VP dependent
on it.  


# Exercise 6-4.*+ (pending)
In the GF resource grammar library, there are several
categories of verbs|V, V2, V3, VS, etc|and corresponding complementation rules for building verb phrases; see Section 5.15 and Appendix D.  
An alternative analysis, perhaps more elegant, would be to have just one category of verbs, but make it dependent on another category, sayVSub, which is the type of verb subcategorizations.  
We would also need a type of actual complement lists, say Comps, dependent on VSub. With this machinery, just one complementation rule is needed, of type (vs : VSub) -> V vs -> Comps vs -> VP  
Work out the details of this idea, covering at least the four verb categories listed above.  

# Exercise 6-5.
The grammar Shopping in Section 4.8 permits the formation
of phrases such as this shirt is delicious and that sh is comfortable.  
A way to prevent would be to distinguish between clothing
and food items. To avoid duplicated code for these items, the best way to go is by making the categories of Item and Quality dependent on Kind.  
The predicates elegant, expensive, and Italian can be made polymorphic.  
Rewrite the abstract syntax in Figure 27 in accordance with these ideas.

# Exercise 6-6.
Write an abstract and concrete syntax with the concepts
of this section, and experiment with it in GF.  

# Exercise 6-7.  
Define the notions of "even" and "odd" by using proof
objects.
**Hint**. You need one function for proving that 0 is even, and two other functions for propagating the properties from each number to its successor.

# Exercise 6-8.* Write a new version of the Smart grammar with classes,
and test it in GF.

# Exercise 6-9.* Add some actions, kinds, and classes to the grammar.
Try to port the grammar to a new language.

# Exercise 6-10.* A better structure can be given for the code by treating
classes as zero-place funs of category Class, and making all proof
objects have the category saying that a kind is an instance of a class:
cat Instance Class Kind ;
Actions can then be made dependent on just classes, and devices on
kinds. Work out the details of this alternative, in particular, the Act
function that forms commands.

# Exercise 6-11.*+ Write an abstract syntax of the whole predicate
calculus, with the connectives \and", \or", \implies", and \not",
and the quantiers \exists" and \for all". Use higher-order functions
to guarantee that unbounded variables do not occur.
# Exercise 6-12. *+ Write a concrete syntax for your favourite notation
of predicate calculus. You can use LaTeX as target language if you want
nice output. You can also try producing boolean expressions of some
programming language. Use as many parenthesis as you need to guarantee
non-ambiguity. You can also minimize the number of parentheses
by using a precedence level parameter, as described in Section 8.1.
# Exercise 6-13. *+ Write an English concrete syntax for predicate
calculus, to translate between formulas and natural language. Even
better, use a functor over the resource grammar Syntax interface to
write a generic natural-language grammar for predicate calculus. You
can thereby use the Symbolic library to enable the use of variables and other mathematical symbols inside natural language text; see Section
D.4.3.


# Exercise 6-14. *+ Implement an interpreter of a small functional programming
language with natural numbers, lists, pairs, lambdas abstracts,
etc. Use higher-order abstract syntax with semantic denitions.
As concrete syntax, use the notation of your favourite functional programming
language.


# Exercise 6-15.* 
Write a concrete syntax of Aggregation and test the grammar in the GF shell.  
Notice that we have used `or` as the only conjunction to simplify number agreement for noun phrases; however, there is no extra problem to use `and` if linearization is defined by using the resource grammar.

> Output (need to fix the code):  
Aggregation> gr -number=5 | l  
Mary or Mary walk  
Mary run or John walk or Mary run  
John walk or John walk or John run or Mary walk or John walk or Mary run  
John walk walk walk walk or John walk  
Mary run  

```hs
Abstract syntax:
abstract Aggregation = {
    cat S ; NP ; VP ;
    data
      PredVP : NP -> VP -> S ;
      ConjS  : S -> S -> S ;
      ConjVP : VP -> VP -> VP ;
      ConjNP : NP -> NP -> NP ;
      Run, Walk : VP ;
      John, Mary : NP ;
    
    fun aggr : S -> S ; -- main aggregation function
    def aggr (ConjS (PredVP x X) (PredVP y Y)) = 
      ifS (eqNP x y)
        (PredVP x (ConjVP X Y))
        (ifS (eqVP X Y)
          (PredVP (ConjNP x y) X)
          (ConjS (PredVP x X) (PredVP y Y))) ;
    fun ifS : Bool -> S -> S -> S ; -- if then else
    def
      ifS True x _ = x ;
      ifS False _ y = y ;
    fun eqNP : NP -> NP -> Bool ; -- x == y
    def
      eqNP John John = True ;
      eqNP Mary Mary = True ;
      eqNP _ _ = False ;
    fun eqVP : VP -> VP -> Bool ; -- X == Y
    def
      eqVP Run Run = True ;
      eqVP Walk Walk = True ;
      eqVP _ _ = False ;
    cat  Bool ;
    data True, False : Bool ;
}

Concrete syntax: 
concrete AggregationEng of Aggregation = {
    lincat
      S, NP, VP = Str ;
    lin
      PredVP x y = x ++ y ;
      ConjS x y = x ++ "or" ++ y ;
      ConjVP x y = x  ++ y ;
      ConjNP x y = x ++ "or" ++ y ;

      aggr x = x ;
      -- ifS
      -- eqNP x y = x == y ;
      -- eqVP 


      John = "John" ;
      Mary = "Mary" ;
      Run = "run" ;
      Walk = "walk" ;
      True = {s = "true"} ;
      False = {s = "false"} ;
}
```

# Exercise 6-16.* English phrases of the form A and B or C are ambiguous.
Generalize the Aggregation grammar by using the conjunction
word, either and and or, as an extra argument of conjunctions, and
generalize aggregation accordingly. Give an example where aggregation
actually resolves an ambiguity.
# Exercise 6-17.* Generalize the aggr function to arbitrary iterations,
so that e.g. John walks or John runs or John walks becomes John walks
or runs or walks.
# Exercise 6-18.* Languages sometimes put particular restrictions to the
co-occurrences of words. For example, in the Food grammar ( Figure 12
in Section 2.6 ), the word very in very delicious might be super
uous
and clumsy in some languages. But it can be removed by a suitable
transfer function, without changing the grammar. Dene this function, operating on the top level Comments, and test it in the translation from
English to Italian under the assumption that Italian doesn't permit
molto in combination with delizioso.
# Exercise 6-19.*+ The GF web page contains a multilingual grammar
of the numeral systems of 88 languages (GF/examples/numerals). This
is possible because the numeral systems in all those languages are decimal
(base 10), at least for numbers above a certain size. If we want
to translate between binary numbers (base 2) and decimals, we cannot
use a common abstract syntax with linearizations, but need a transfer
function. Now, such a function would be tedious to write in GF, because
of its limited programming constructs|in particular, the lack of
built-in arithmetic. However, the same idea is illustrated by the easier
task of dening a translator between binary and unary numbers (base
1, that is, the type Nat with the constructors Zero and Succ). Implement
this in GF, by means of two separate categories Nat and Bin, and
the transfer functions bin2nat and nat2bin. Test your conversions by
random-generating numbers and converting them back and forth.

# Exercise 6-20
Generate 100 random trees in the Food grammar and count the frequencies of This and That, to verify that the generator obeys the probabilities.  

> Yes, the generator obeys the probabilities.

```hs
excuse me , is this expensive cheese with cheese with chocolate French ?
this fish with cheese with chocolate is fresh
excuse me , is that chocolate fresh ?
this cheese with fish with chocolate isn't delicious
this chocolate is Italian
this chocolate is fresh
this cheese with fish with chocolate isn't Italian
that water isn't Italian
that clean fish with fish with chocolate isn't clean
excuse me , is this water expensive ?
this chocolate isn't expensive
excuse me , is that chocolate French ?
that fresh cheese with water is fresh
this fish with chocolate isn't fresh
this cheese with fish with water isn't fresh
excuse me , is this cheese with cheese with chocolate expensive ?
this water is fresh
this chocolate is fresh
this chocolate isn't fresh
excuse me , is this chocolate fresh ?
excuse me , is this cheese with chocolate Italian ?
that chocolate is fresh
this cheese with cheese with water isn't weird
this fresh fish with water is fresh
that cheese with chocolate is fresh
that water isn't very fresh
this chocolate isn't fresh
this water isn't boring
excuse me , is that chocolate Italian ?
this water is weird
this water is expensive
this cheese with chocolate isn't fresh
excuse me , is this fish with water fresh ?
excuse me , is this water fresh ?
this fresh cheese with chocolate is French
this chocolate is fresh
excuse me , is this fish with chocolate French ?
excuse me , is this water boring ?
excuse me , is this fresh cheese with water expensive ?
this chocolate is very fresh
excuse me , is this weird cheese with chocolate fresh ?
excuse me , is this chocolate French ?
this chocolate isn't fresh
excuse me , is this chocolate fresh ?
this fish with cheese with water isn't fresh
this water isn't French
excuse me , is this chocolate warm ?
this water isn't warm
this water isn't very boring
excuse me , is this fish with water delicious ?
that French cheese with water is fresh
this water isn't fresh
excuse me , is that chocolate boring ?
excuse me , is this water warm ?
excuse me , is this warm fish with water weird ?
excuse me , is this French fish with water boring ?
excuse me , is that chocolate expensive ?
this chocolate is very very fresh
this chocolate isn't warm
that fish with water isn't fresh
this fish with cheese with chocolate is French
this French fish with chocolate is fresh
this water is fresh
this water is very clean
this cheese with chocolate isn't very delicious
excuse me , is this chocolate French ?
excuse me , is this water fresh ?
excuse me , is this cheese with water fresh ?
this water isn't fresh
excuse me , is that fish with cheese with water delicious ?
this warm fish with chocolate is French
this water is fresh
excuse me , is this fish with chocolate fresh ?
excuse me , is this chocolate weird ?
this chocolate is fresh
excuse me , is this fish with chocolate fresh ?
this chocolate is Italian
this chocolate isn't fresh
this water is fresh
excuse me , is that water warm ?
excuse me , is this chocolate boring ?
this chocolate isn't fresh
this water isn't very fresh
this chocolate is Italian
that water is French
this water is delicious
this chocolate isn't fresh
excuse me , is this chocolate delicious ?
this fish with cheese with chocolate isn't fresh
that water is very fresh
excuse me , is this cheese with water very clean ?
this fish with water is clean
this warm cheese with water is expensive
this chocolate isn't fresh
excuse me , is this chocolate French ?
this cheese with cheese with chocolate isn't weird
this chocolate is fresh
this water is delicious
this clean fish with fish with chocolate is very clean
this fresh cheese with chocolate is fresh
```