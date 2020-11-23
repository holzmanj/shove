module Interpret where

import Prelude hiding (lookup)
import Control.Monad.Trans (MonadTrans(lift))
import Control.Monad.Reader (ReaderT(runReaderT), MonadReader(ask, local))
import Control.Monad.Except (ExceptT, MonadError(throwError), runExceptT)
import Data.Map.Strict (Map, fromList, empty, lookup)
import Data.List (intercalate)
import qualified AbsSperg as AST

newtype Env = Env (Map String Closure)
type Closure = (AST.Expr, Env)

type Interp a = ExceptT String (ReaderT Env IO) a

data Value
  = Bool Bool
  | Int Integer
  | Double Double
  | Char Char
  | String String
  | List [Value]
  | Lambda [String] Closure -- [String] is unapplied params
  | Void

instance Show Value where
  show (Bool   b  ) = show b
  show (Int    i  ) = show i
  show (Double d  ) = show d
  show (Char   c  ) = show c
  show (String s  ) = s
  show (List   l  ) = "[" ++ intercalate "," (map show l) ++ "]"
  show (Lambda _ _) = "<function>"
  show Void         = "<void>"


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
    Left  err -> putStrLn $ "Runtime Error: " ++ err
    Right val -> print val


interpret :: AST.Expr -> Interp Value

interpret (AST.EIdent id) = do
  let (AST.Ident name) = id
  (Env env) <- lift ask
  case lookup name env of
    Nothing           -> throwError $ "Unbound identifier \"" ++ name ++ "\""
    Just (nexp, nenv) -> local (const nenv) $ interpret nexp

interpret (AST.ELit lit) = case lit of
  AST.LInt    i -> return $ Int i
  AST.LDouble d -> return $ Double d
  AST.LChar   c -> return $ Char c
  AST.LString s -> return $ String s
  AST.LTrue     -> return $ Bool True
  AST.LFalse    -> return $ Bool False
  AST.LVoid     -> return Void
  AST.LList l   -> do
    l' <- mapM interpret l
    return $ List l'
  AST.LLambda ps exp -> do
    env <- lift ask
    let ps' = map (\(AST.Ident s) -> s) ps
    return $ Lambda ps' (exp, env)

interpret _ = return Void
