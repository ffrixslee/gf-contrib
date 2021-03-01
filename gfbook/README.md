<ins>Questions and thoughts</ins>

Chapter 2: (tbc 2-12, 2-13,2-14)

Chapter 5:
- [x] Utterances vs Clauses ?  
> Utterances are top-level units in a discourse, and can be sentences, questions, commands, or whatever can be said by someone in one utterance.  
> Clauses are roughly, a kind of sentences. A clause expresses a proposition, that is, a thinkable fact such as "this pizza is warm", but is neutral as whether this proposition is true or when it is true.
> Clauses can be used in utterances in many ways.
> Utt is a good start category in application grammars, because it covers many of the things one may want to express.
> Refer to the flowchart diagram 

- [x] Check that my solution for ex 5-5 is correct.  
- [ ] What are some other constructs where compile-time transfer is necessary ?  
- [ ] What is meant by flattening of constructions ? Is it something like point-free function composition in Haskell ?
- [x] section 5-18: how to handle contracted (ie, don't) statements ? Solution: refer to RGL and GF Synopsis (API).
- [ ] Need to brush up on extending grammars 
- [x] Learn how to linearize Kind (linKind) using RGL
- [x] How to define a new Determiner in the the lincat (ie the next, the previous). Solution: use RGL and refer to GF Synopsis

Chapter 6:
- [x] Ex 6-1: They said preferably using the RGL but how? 
> Solution: open SyntaxXxx and ParadigmsXxx in concrete syntax.
- [x] Ex 6-1: Problems ; having trouble generating and typechecking "the successor of" and "zero" using RGL. 
> Solution: resolved using type of Prop=S (it seems S is more flexible), arguments on the RHS must be checked (whether x or x_N), mkN2 actually includes prepositions(ie, of, from)[Check the gf rgl synopsis], I also used the Combinators module but it seems that wasn't necessary.
- Learned that you can use wildcard('_') or omit arguments for non-dependent types
- Dependent type is a type that takes arguments from other types
- Still don't understand how chapter 6 works eg, how to write dependent types

Chapter 7: 
- [x] Learn how to convert other grammars to .pgf (Tutorial 7 and Chapter 7 is a bit different from blog)
- [x] Problem: ghc can't run stack ghci imported libraries(PGF) -> hence can't run: ghc --make -o trans Translator.hs. Solution: stack run <executable name> <.pgf file>


Chapter 8: (tbc: 8-1, 8-2, 8.3 )
- [https://en.wikipedia.org/wiki/Operator_associativity#Non-associative_operators]
- [https://stackoverflow.com/questions/930486/what-is-associativity-of-operators-and-why-is-it-important]

Chapter 9:

- What is complementation and its function ?