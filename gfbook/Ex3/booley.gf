-- Question: Can we only have 1 parameter per field ?  (ie True && True => True; False && True => False)

--Exercise 3-0 
-- The type Bool with the values `True` and `False` is a useful parameter type in all programming, also frequently used in grammars.  
-- Define this type and write tables of type `Bool => Bool => Bool` that compute the **conjunction** and **disjunction** of any two boolean values.

-- Type: Bool => Bool => Bool

param Bool = True | False

oper Booley: Bool => Bool => Bool = table {
    True  => table {True => True ; False => True} ;
    False => table {True => True ; False => False}
} ;



-- Pending: Can we do this ?
table {
    True => table {
        True  => table {True => True ; False => False} ;
        False => table {True => True ; False => False} 
        }
    False => table {
        True  => table {True => True ; False => False} ;
        False => table {True => True ; False => False} 
        }



--Exercise 3-1. Continuing the exercise in Section 3.2, define boolean \and" and \or" as opers of type Bool -> Bool -> Bool.

oper conj : Str -> {s : Bool => Str} =
    \and -> {s = table {
    True  => table {True => True ; False => True} 
    } }

oper disj : Str -> {s : Bool => Str} =
    \or -> {s = table {
    False => table {True => True ; False => False}
    } }

-- Exercise 3-2. Define some other inflection functions, e.g. for English nouns of type fly - flies and Italian nouns of type vino - vini. What are the expected arguments of these functions?

oper infFly : Str -> 
