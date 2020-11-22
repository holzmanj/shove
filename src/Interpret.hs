module Interpret where

import Prelude hiding (lookup)
import Control.Monad.Reader (ReaderT)
import Control.Monad.Except (ExceptT)
import Data.Map.Strict (Map)
import Data.List (intercalate)
import qualified AbsSperg as AST

newtype Env = Env (Map String Closure)
type Closure = (AST.Expr, Env)

type Interp a = ExceptT String (ReaderT Env IO) a

data Value
  = Bool Bool
  | Int Int
  | Double Double
  | Char Char
  | String String
  | List [Value]
  | Func Closure

instance Show Value where
  show (Bool   b) = show b
  show (Int    i) = show i
  show (Double d) = show d
  show (Char   c) = show c
  show (String s) = s
  show (List   l) = "[" ++ intercalate "," (map show l) ++ "]"
  show (Func   _) = "<function>"
