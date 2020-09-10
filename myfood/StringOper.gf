--resource module type is used to package oper definitions into reusable resources
  resource StringOper = {
    oper
      SS : Type = {s : Str} ;
      ss : Str -> SS = \x -> {s = x} ;
      cc : SS -> SS -> SS = \x,y -> ss (x.s ++ y.s) ;
      prefix : Str -> SS -> SS = \p,x -> ss (p ++ x.s) ;
  }
