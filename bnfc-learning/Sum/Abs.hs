-- Haskell data types for the abstract syntax.
-- Generated by the BNF converter.

module Sum.Abs where

import Prelude (Char, Double, Integer, String)
import qualified Prelude as C (Eq, Ord, Show, Read)
import qualified Data.String

data Exp = EInt Integer | EPlus Exp Integer
  deriving (C.Eq, C.Ord, C.Show, C.Read)

