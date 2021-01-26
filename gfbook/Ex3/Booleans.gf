-- Inari's answer ! (thanks @inariksit)
resource Booleans = {

  param
    Bool = True | False ;

  oper

    BoolTable : Type = Bool => Bool => Bool ;

    -- 1) Completely spelled out
    conjTable1 : BoolTable =
      table {
        True  => table {True => True  ; False => False} ;
        False => table {True => False ; False => False}
      } ;

    -- 2) Wildcard inside the table
    conjTable2 : BoolTable =
      table {
        True  => table {True => True  ; False => False} ;
        False => table {_ => False} -- Both lead to false, so use _
      } ;

    -- 3) The \\ syntax
    conjTable3 : BoolTable =
      table {
        True  => table {True => True  ; False => False} ;
        False => \\_ => False -- Shorter way to write table always returning False
      } ;

    -- 4) Use \\ syntax also in the True branch
    conjTable4 : BoolTable =
      table {
        True  => \\b => b ; -- replace True=>True ; False=>False with just b=>b
        False => \\_ => False
      } ;


    -- 5) Use \\ and case-expression
    conjTable5 : BoolTable = \\bool1,bool2 =>
      case <bool1,bool2> of {
        <True,True> => True ;
        _           => False
      } ;


    -- The syntax in conjTable5 is exaclt like a function,
    -- except for double arrows and lambda.
    -- Replace \\ with \ and => with ->, you have a function.

    BoolFun : Type = Bool -> Bool -> Bool ;

    conjFun : BoolFun = \bool1,bool2 ->
      case <bool1,bool2> of {
        <True,True> => True ;
        _           => False
      } ;

{- How to test in GF shell:
1) open GF shell
$ gf
2) Import Booleans.gf with -retain flag
> i -retain Booleans.gf
3) Use cc to compute values
> cc conjFun False True
Booleans.False
> cc conjTable1 ! False ! True
Booleans.False
-}
}