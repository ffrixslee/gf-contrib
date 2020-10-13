1. Write an abstract syntax of the whole predicate calculus, with the connectives "and", "or", "implies", and "not", and the quantifiers "exists" and "for all". Use higher-order functions to guarantee that unbounded variables do not occur.

abstract PredCalc = {

flags startcat = Pred

cat
    Pred; Connectives ; Quantifiers; Terms

fun
    ALL : (Terms->Connectives) -> Pred

    and, or, implies, not : Connectives;
    exists, for all : Quantifiers ;  


}


