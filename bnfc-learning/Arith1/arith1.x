{
module Lexer (Token(..),P,evalP,lexer) where
import Control.Monad.State
import Control.Monad.Error
import Data.Word
}

tokens :-
    $white+ ;
    true {TTrue}
    false {TFalse}
    0 {TZero}
    succ {TSucc}
    pred {TPred}
    if {TIf}
    then {TThen}
    else {TElse}
    iszero {TIsZero}

{
data Token = 
     TTrue
   | TFalse
   | TZero
   | TSucc
   | TPred
   | TIf
   | TThen
   | TElse
   | TIsZero
   deriving (Eq, Show)

type AlexInput = [Word8]
alexGetByte :: AlexInput -> Maybe (Word8, AlexInput)
alexGetByte (b:bs) = Just (b:bs)
alexGetByte [] = Nothing

alexInputPrevChar :: AlexInput -> Char
alexInputPrevChar = undefined

type P a = StateT AlexInput (Either String) a

evalP::P a -> AlexInput -> Either String a
evalP = evalStateT

readToken::P Token
readToken = do
    s <- get
    case alexScan s 0 of
                AlexEOF -> return TEOF
    AlexError _ -> throwError "!Lexical error"
      AlexSkip inp' _ -> do
        put inp'
        readToken
      AlexToken inp' _ tk -> do
        put inp'
        return tk

}