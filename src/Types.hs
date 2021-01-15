module Types where

import Data.Map (Map)
import Control.Monad.Reader (ReaderT)
import Control.Monad.Except (ExceptT)
import Data.List (intercalate)

import qualified AbsGrammar as AST


type Store = Map String Value
type Closure = (AST.Expr, Store)

type Interp a = ExceptT String (ReaderT Store IO) a

data Value
  = Bool Bool
  | Int Integer
  | Double Double
  | Char Char
  | String String
  | List [Value]
  | Lambda [String] Closure -- [String] is unapplied params
  | Void
  | Defer

instance Eq Value where
  (Bool   i) == (Bool   j) = i == j
  (Int    i) == (Int    j) = i == j
  (Double i) == (Double j) = i == j
  (Char   i) == (Char   j) = i == j
  (String i) == (String j) = i == j
  (List   i) == (List   j) = i == j
  Void       == Void       = True
  _          == _          = False

class MaybeOrd a where
  tryCompare :: a -> a -> Maybe Ordering

instance MaybeOrd Value where
  tryCompare (Bool   i) (Bool   j) = Just $ compare i j
  tryCompare (Int    i) (Int    j) = Just $ compare i j
  tryCompare (Double i) (Double j) = Just $ compare i j
  tryCompare (Char   i) (Char   j) = Just $ compare i j
  tryCompare (String i) (String j) = Just $ compare i j
  tryCompare Void       Void       = Just EQ
  tryCompare _          _          = Nothing

instance Show Value where
  show (Bool   b  ) = show b
  show (Int    i  ) = show i
  show (Double d  ) = show d
  show (Char   c  ) = show c
  show (String s  ) = s
  show (List   l  ) = "[" ++ intercalate "," (map show l) ++ "]"
  show (Lambda _ _) = "<lambda>"
  show Void         = "<void>"
  show Defer        = "<defer>"


showType :: Value -> String
showType (Bool   _  ) = "Bool"
showType (Int    _  ) = "Int"
showType (Double _  ) = "Double"
showType (Char   _  ) = "Char"
showType (String _  ) = "String"
showType (List   _  ) = "List"
showType (Lambda _ _) = "Lambda"
showType Void         = "Void"
showType Defer        = "Defer"
