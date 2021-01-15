Exercise 8-0. Define non-associative and right-associative inx operations
analogous to infixl.
Exercise 8-1. Add a constructor that puts parentheses around expressions to raise their precedence, but is eliminated by a def denition (see
Section 6.10 ). Test parsing with and without a pipe to pt -compute.
Exercise 8-2.* Implement a calculator that returns numeric results
as an embedded grammar application. You can even extend this to a
natural-language calculator that uses number words, which are implemented
in GF currently for 88 languages (see examples/numerals on
the GF web page).

Exercise 8-3.* Extend the straight-code language to expressions of
type float. To guarantee type safety, you can dene a category Typ of
types, and make Exp and Var dependent on Typ. Basic 
oating point expressions
can be formed from literals of the built-in GF type Float. The
arithmetic operations should be made polymorphic, as in Section 6.4.

Exercise 8-4.* Finish the implementation of the C-to-JVM compiler
by extending the expression modules to straight code programs. Would
it be possible to use numeric addresses instead of symbolic ones?
Exercise 8-5.* If you made the exercise of adding 
oating point numbers
to the language, you can now cash out the main advantage of type checking for code generation: selecting type-correct JVM instructions.
The 
oating point instructions are precisely the same as the integer
one, except that the prex is f instead of i. The ldc instruction can
take both integers and 
oating point numbers as arguments.

Exercise 8-6. Write a grammar for straight code without higher-order
abstract syntax.
Exercise 8-7.* Extend the liberal straight code grammar to while
loops and some other imperative program constructs.

Exercise 8-8.*+ The book C programming language by Kernighan and
Ritchie (p. 123, 2nd edition, 1988) describes an English-like syntax for
pointer and array declarations, and a C program for translating between
English and C. The following example pair shows all the expression
forms needed:
char (*(*x[3])())[5]
x: array[3] of pointer to function returning
pointer to array[5] of char
Implement these translations by a GF grammar.
Exercise 8-9.*+ Extend the natural language translator to other programming
language constructs. Investigate if you can build a reasonable
text generator for this fragment. One potentially useful application of
such a text generator is the conversion of code into speech, by the use
of speech synthesis software. When combined with speech recognition,
it could also enable programming by speech.
Exercise 8-10.*+ Design a natural-language interface to Unix command
lines. It should be able to express verbally commands such as
cat, cd, grep, ls, mv, rm, wc and also pipes built from them. For
instance,
ls ~ | wc -l
might be expressed as list the les in my home directory and count
the lines or, more ambitiously, how many les are there in my home
directory.

Exercise 8-11. Build a domain lexicon of your own on top of Logic in
Figure 61.
Exercise 8-12.* Write a symbolic concrete syntax for Logic in Figure
61 and Geometry in Figure 62, to produce formulas in your favourite
formalism of predicate logic.
Exercise 8-13.* Dene the abstract and concrete syntax for a universal
quantier that binds a list of one or more variables, each of the same
type. This syntax should permit formulas such as
(All x,y,z : Nat)(x < y & y < z -> x < z)
and guarantee the well-typedness of formulas by higher-order abstract
syntax.
Exercise 8-14. Complete the improvement of the LogicEng module for
negations using the isAtom parameter.
Exercise 8-15.* Negation expressions in LogicEng can be further simpli
ed if we assume the laws of double negation ( A , A) and the
De Morgan laws ( (A _ B) ,  A&  B,  (A&B) ,  A_  B).
Implement this idea in the LogicEng module.

Exercise 8-16.*+ Extend the semantics of Test by giving denotations
to all constructs, so that you can compute denotations free from interpretation
function applications.
Exercise 8-17. Give a concrete syntax of Logic as dened in Figure 64,
so that you can compute denotations as decent logical formulas.

Exercise 8-18. What makes the Sierpinski grammar non-context-free?

Exercise 8-19.*+ Find out more about graftals and create your own
ones in GF. The Wikipedia article en.wikipedia.org/wiki/Graftal
is a good starting point.