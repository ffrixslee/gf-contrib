-- first, rewrite regNoun so that the analysis needed to build s-forms is factored out as a separate oper, which is shared with regVerb. Then write a regular verb paradigm.

oper regNoun : Str -> Noun =
    \word -> mkNoun word (word + "s") ;