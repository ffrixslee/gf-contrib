# Exercise 3-0
The type Bool with the values `True` and `False` is a useful parameter type in all programming, also frequently used in grammars.  
Define this type and write tables of type `Bool => Bool => Bool` that compute the **conjunction** and **disjunction** of any two boolean values.

Inari's ans:

```hs
# This default stack file is a copy of stack-ghc8.6.5.yaml
# But committing a symlink is probably a bad idea, so it's a real copy

resolver: lts-14.27 # ghc 8.6.5

extra-deps:
- network-2.6.3.6
- httpd-shed-0.4.0.3
- cgi-3001.5.0.0
```

# Exercise 3-1
Continuing the exercise in Section 3.2, dene boolean \and" and \or" as opers of type Bool -> Bool -> Bool.

# Exercise 3-2
Define some other inflection functions, e.g. for English nouns of type fly - fies and Italian nouns of type vino - vini. What are the expected arguments of these functions?

# Exercise 3-3.*
Add a rule for building verb phrases from verbs to the
grammar in Figure 22. In the English concrete syntax, you have to find a way to treat the auxiliary do correctly.

# Exercise 3-4.* 
Write a grammar that generates the (non-context-free)
language anbncn, i.e. a language whose strings are the empty string, abc, aabbcc, etc, where there are always as many a's as b's and c's.

# Exercise 3-5.*
Write a grammar that generates the (non-context-free)
language (a^m)(b^n)(c^m)(d^n), i.e. where the number of a's and c's is the same and so is the number of b's and d's. This language is well-known as a model of Swiss German, originally presented by Shieber in 1985 in his
argument that Swiss German is not context-free.

# Exercise 3-6.+ 
Now we have defined a part of GF that is complete
in the sense that pretty much any GF grammar can be written in it.
So you can try and write a concrete syntax of Foods for any language you please, and make it correct. This is a useful exercise to repeat after reading Chapter 4 when you have learnt more of GF to make your
programming more efficient. And then again after Chapter 5, when you can do it with the minimum of work conceivable!