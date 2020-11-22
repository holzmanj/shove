module Interpret where

import Prelude hiding (lookup)
import Control.Monad.Reader (ReaderT(runReaderT))
import Control.Monad.Except (ExceptT, runExceptT)
import Data.Map.Strict (Map, fromList, empty, lookup)
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
  | Void

instance Show Value where
  show (Bool   b) = show b
  show (Int    i) = show i
  show (Double d) = show d
  show (Char   c) = show c
  show (String s) = s
  show (List   l) = "[" ++ intercalate "," (map show l) ++ "]"
  show (Func   _) = "<function>"
  show Void       = "<void>"


topLevelEnv :: AST.Prog -> Env
topLevelEnv (AST.Program stmts) = Env $ fromList (map toTuple stmts)
  where toTuple (AST.SBind (AST.Ident id) expr) = (id, (expr, Env empty))


entrypoint :: Env -> AST.Expr
entrypoint (Env env) = case lookup "main" env of
  Nothing       -> AST.ELit AST.LVoid   -- if no main function, just do nop
  Just (exp, _) -> exp


runInterpreter :: AST.Prog -> IO ()
runInterpreter prog = do
  let env  = topLevelEnv prog
  let main = entrypoint env
  res <- runReaderT (runExceptT (interpret main)) env
  case res of
    Left  err -> putStrLn $ "Error: " ++ err
    Right val -> print val


interpret :: AST.Expr -> Interp Value
interpret _ = do
  return Void
