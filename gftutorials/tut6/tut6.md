# Exercises on precedence
1. Define non-associative and right-associative infix operations analogous to infixl.

      EPlus  = infixl 0 "+" ;
      EMinus = infixl 0 "-" ;
      ETimes = infixl 1 "*" ;
      EDiv   = infixl 1 "/" ;
      EInt i = constant i.s ;

      Answer:

      Eexp = infixr 1 "^" ;
      Eparenl = infix 0 "(" ;
      Eparenr = infix 0 ")" ;

2. Add a constructor that puts parentheses around expressions to raise their precedence, but that is eliminated by a def definition. Test parsing with and without a pipe to pt -transform=compute.

# Exercises on code generation
1. Define a C-like concrete syntax of the straight-code language.

2. Extend the straight-code language to expressions of type float. To guarantee type safety, you can define a category Typ of types, and make Exp and Var dependent on Typ. Basic floating point expressions can be formed from literal of the built-in GF type Float. The arithmetic operations should be made polymorphic (as here).

3. Extend JVM generation to the straight-code language, using two more instructions

iload x, which loads the value of the variable x
istore x which stores a value to the variable x
Thus the code for the example in the previous section is

    iconst 2 ; iconst 3 ; iadd ; istore x ;
    iload x ; iconst 1 ; iadd ; istore y ;
    iload x ; iconst 9 ; iload y ; imul ; iadd ; istore x ;
4. If you made the exercise of adding floating point numbers to the language, you can now cash out the main advantage of type checking for code generation: selecting type-correct JVM instructions. The floating point instructions are precisely the same as the integer one, except that the prefix is f instead of i, and that fconst takes floating point literals as arguments.