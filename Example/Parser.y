{
    module Main where
}

%name calc
%tokentype { Token }
%error { parseError }

%token
     let { TokenLet }
     in { TokenIn }
     int { TokenInt $$ }
     var { TokenVar $$ }
     '=' { TokenEq }
     '+' { TokenPlus }
     '-' { TokenMinus }
     '*' { TokenTimes }
     '/' { TokenDiv }
     '(' { TokenOB }
     ')' { TokenCB }

-- when this declaration is included in the grammar, Happy makes a couple of changes to the generated parser: the types of the main parser function and parseError become [Token] -> P a, where P is the monad type constructor, and the function must be polymorphic in a.

-- %monad { Except String } { (>>=) } { return }
%monad { E } { thenE } { returnE }

%%

{-
Exp : let var '=' Exp in Exp { Let $2 $4 $6 }
    | Exp1 { Exp1 $1 }

Exp1 : Exp1 '+' Term { Plus $1 $3 }
     | Exp1 '-' Term { Minus $1 $3 }
     | Term {Term $1 }

Term : Term '*' Factor { Times $1 $3 }
     | Term '/' Factor { Div $1 $3 }
     | Factor { Factor $1 }

Factor : int { Int $1 }
       | var {Var $1 }
       | '(' Exp ')' { Brack $2 }

-}


{-
parseError :: [Token] -> a
parseError _ = error "Parse error"


data Exp 
     = Let String Exp Exp
     | Exp1 Exp1
     deriving Show

data Exp1
     = Plus Exp1 Term
     | Minus Exp1 Term
     | Term Term
     deriving Show

data Term 
     = Times Term Factor 
     | Div Term Factor
     deriving Show

data Factor 
     = Int int
     | Var String
     | Brack Exp
     deriving Show

data Token 
     = TokenLet
     | TokenIn
     | TokenInt Int
     | TokenVar String
     | TokenEq
     | TokenPlus
     | TokenMinus
     | TokenTimes
     | TokenDiv
     | TokenOB
     | TokenCB
     deriving Show

lexer :: String -> [Token]
lexer [] = [] 
lexer (c:cs)
      | isSpace c = lexer cs
      | isAplha c = lexVar (c:cs)
      | isDigit c = lexNum (c:cs)
lexer ('=':cs) = TokenEq : lexer cs
lexer ('+':cs) = TokenPlus : lexer cs 
lexer ('-':cs) = TokenMinus : lexer cs
lexer ('*':cs) = TokenTimes : lexer cs
lexer ('/':cs) = TokenDiv : lexer cs
lexer ('(':cs) = TokenOB : lexer cs
lexer (')':cs) = TokenCB : lexer cs

lexNum cs = TokenInt (read num) : lexer rest
      where (num, rest) = span isDigit cs

lexVar cs = 
    case span isAlpha cs of 
      ("let",rest) -> TokenLet : lexer rest
      ("in",rest) -> TokenIn : lexer rest
      (var,rest) -> TokenVar var : lexer rest

main = getContents >>= print . calc .lexer
-}

-- A more direct method and alternative way:

Exp : let var '=' Exp in Exp { \p -> $6 (($2,$4 p):p) }
    | Exp1 { $1 }

Exp1 : Exp1 '+' Term { \p -> $1 p + $3 p }
     | Exp1 '-' Term { \p -> $1 p - $3 p }
     | Term { $1 }

Term : Term '*' Factor { \p -> $1 p * $3 p }
     | Term '/' Factor { \p -> $1 p 'div' $3 p }
     | Factor { $1 }

Factor
      : int { \p -> $1 }
      | var { \p -> case lookup $1 p of
                  Nothing -> error "no var" 
                  Just i -> i }
      | '(' Exp ')' { $2 } 

{

data E a = Ok a | Failed String
thenE :: E a -> (a -> E b) -> E b
m ‘thenE‘ k =
    case m of
        Ok a -> k a
    Failed e -> Failed e

returnE :: a -> E a
returnE a = Ok a

failE :: String -> E a
failE err = Failed err

catchE :: E a -> (String -> E a) -> E a
catchE m k =
    case m of
        Ok a -> OK a
    Failed e -> k e

parseError tokens = faileE "Parse error"

prec :: { Int }
      : int {% if $1 < 0 || $1 > 9
               then failE "Precedence out of range" 
               else returnE $1 } 

data ParseResult a = Ok a | Failed String
type P a = String -> ParseResult a

thenP :: P a -> (a -> P b) -> P b
m ‘thenP‘ k = \s ->
     case m s of
          Ok a -> k a s
     Failed e -> Failed e

returnP :: a -> P a
returnP a = \s -> Ok a

failP :: String -> P a
failP err = \s -> Failed err

catchP :: P a -> (String -> P a) -> P a
catchP m k = \s ->
     case m s of
          Ok a -> OK a
     Failed e -> k e s
}