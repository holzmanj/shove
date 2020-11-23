module Interpret where

import Prelude hiding (lookup)
import Control.Monad.Trans (MonadTrans(lift))
import Control.Monad.Reader (ReaderT(runReaderT), MonadReader(ask, local))
import Control.Monad.Except (ExceptT, MonadError(throwError), runExceptT)
import Data.Map.Strict (Map, fromList, empty, lookup)
import Data.List (intercalate)
import Text.Printf (printf)
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

instance Eq Value where
  (Bool   i       ) == (Bool   j       ) = i == j
  (Int    i       ) == (Int    j       ) = i == j
  (Double i       ) == (Double j       ) = i == j
  (Char   i       ) == (Char   j       ) = i == j
  (String i       ) == (String j       ) = i == j
  (List   []      ) == (List   []      ) = True
  (List   (x : xs)) == (List   (y : ys)) = x == y && xs == ys
  Void              == Void              = True
  _                 == _                 = False

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
  show (Lambda _ _) = "<function>"
  show Void         = "<void>"


showType :: Value -> String
showType (Bool   _  ) = "Bool"
showType (Int    _  ) = "Int"
showType (Double _  ) = "Double"
showType (Char   _  ) = "Char"
showType (String _  ) = "String"
showType (List   _  ) = "List"
showType (Lambda _ _) = "Lambda"
showType Void         = "Void"


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

interpret AST.EPlace             = error "Not yet implemented!"

interpret (AST.EApply exp1 exp2) = error "Not yet implemented!"

interpret (AST.EForce exp      ) = error "Not yet implemented!"

interpret (AST.EMul exp1 exp2  ) = do
  v1 <- interpret exp1
  v2 <- interpret exp2
  case evalMul v1 v2 of
    Just res -> return res
    Nothing  -> throwError
      $ printf "Cannot multiply types %s and %s." (showType v1) (showType v2)
 where
  evalMul (Int    i) (Int    j) = Just $ Int (i * j)
  evalMul (Double i) (Double j) = Just $ Double (i * j)
  evalMul _          _          = Nothing

interpret (AST.EDiv exp1 exp2) = do
  v1 <- interpret exp1
  v2 <- interpret exp2
  case evalDiv v1 v2 of
    Just res -> return res
    Nothing  -> throwError
      $ printf "Cannot divide type %s with %s." (showType v1) (showType v2)
 where
  evalDiv (Int    i) (Int    j) = Just $ Int (i `div` j)
  evalDiv (Double i) (Double j) = Just $ Double (i / j)
  evalDiv _          _          = Nothing

interpret (AST.EMod exp1 exp2) = do
  v1 <- interpret exp1
  v2 <- interpret exp2
  case evalMod v1 v2 of
    Just res -> return res
    Nothing  -> throwError
      $ printf "Cannot MOD types %s and %s." (showType v1) (showType v2)
 where
  evalMod (Int i) (Int j) = Just $ Int (i `mod` j)
  evalMod _       _       = Nothing

interpret (AST.EAdd exp1 exp2) = do
  v1 <- interpret exp1
  v2 <- interpret exp2
  case evalAdd v1 v2 of
    Just res -> return res
    Nothing  -> throwError
      $ printf "Cannot add types %s and %s." (showType v1) (showType v2)
 where
  evalAdd (Int    i) (Int    j) = Just $ Int (i + j)
  evalAdd (Double i) (Double j) = Just $ Double (i + j)
  evalAdd (List   i) (List   j) = Just $ List (i ++ j)
  evalAdd _          _          = Nothing

interpret (AST.ESub exp1 exp2) = do
  v1 <- interpret exp1
  v2 <- interpret exp2
  case evalSub v1 v2 of
    Just res -> return res
    Nothing  -> throwError
      $ printf "Cannot subtract types %s and %s." (showType v1) (showType v2)
 where
  evalSub (Int    i) (Int    j) = Just $ Int (i - j)
  evalSub (Double i) (Double j) = Just $ Double (i - j)
  evalSub _          _          = Nothing

interpret (AST.ECons exp1 exp2) = do
  v1 <- interpret exp1
  v2 <- interpret exp2
  case evalCons v1 v2 of
    Just res -> return res
    Nothing  -> throwError
      $ printf "Cannot cons types %s and %s." (showType v1) (showType v2)
 where
  evalCons i (List l) = Just $ List (i : l)
  evalCons _ _        = Nothing

interpret (AST.ELess exp1 exp2) = do
  v1 <- interpret exp1
  v2 <- interpret exp2
  case tryCompare v1 v2 of
    Just ord -> return $ Bool (ord == LT)
    Nothing  -> throwError
      $ printf "Cannot compare types %s and %s." (showType v1) (showType v2)

interpret (AST.EMore exp1 exp2) = do
  v1 <- interpret exp1
  v2 <- interpret exp2
  case tryCompare v1 v2 of
    Just ord -> return $ Bool (ord == GT)
    Nothing  -> throwError
      $ printf "Cannot compare types %s and %s." (showType v1) (showType v2)

interpret (AST.ELessEq exp1 exp2) = do
  v1 <- interpret exp1
  v2 <- interpret exp2
  case tryCompare v1 v2 of
    Just ord -> return $ Bool (ord /= GT)
    Nothing  -> throwError
      $ printf "Cannot compare types %s and %s." (showType v1) (showType v2)

interpret (AST.EMoreEq exp1 exp2) = do
  v1 <- interpret exp1
  v2 <- interpret exp2
  case tryCompare v1 v2 of
    Just ord -> return $ Bool (ord /= LT)
    Nothing  -> throwError
      $ printf "Cannot compare types %s and %s." (showType v1) (showType v2)

interpret (AST.EEqual exp1 exp2) = do
  v1 <- interpret exp1
  v2 <- interpret exp2
  case tryCompare v1 v2 of
    Just ord -> return $ Bool (ord == EQ)
    Nothing  -> throwError
      $ printf "Cannot compare types %s and %s." (showType v1) (showType v2)

interpret (AST.ENEqual exp1 exp2) = do
  v1 <- interpret exp1
  v2 <- interpret exp2
  case tryCompare v1 v2 of
    Just ord -> return $ Bool (ord /= EQ)
    Nothing  -> throwError
      $ printf "Cannot compare types %s and %s." (showType v1) (showType v2)

interpret (AST.EAnd exp1 exp2) = do
  v1 <- interpret exp1
  v2 <- interpret exp2
  case evalAnd v1 v2 of
    Just b  -> return $ Bool b
    Nothing -> throwError
      $ printf "Cannot AND types %s and %s." (showType v1) (showType v2)
 where
  evalAnd (Bool i) (Bool j) = Just (i && j)
  evalAnd _        _        = Nothing

interpret (AST.EOr exp1 exp2) = do
  v1 <- interpret exp1
  v2 <- interpret exp2
  case evalOr v1 v2 of
    Just b  -> return $ Bool b
    Nothing -> throwError
      $ printf "Cannot OR types %s and %s." (showType v1) (showType v2)
 where
  evalOr (Bool i) (Bool j) = Just (i || j)
  evalOr _        _        = Nothing

interpret (AST.EShove exp1 exp2      ) = error "Not yet implemented!"

interpret (AST.EIfThen cond exp1 exp2) = error "Not yet implemented!"

interpret (AST.ELetIn binds exp      ) = error "Not yet implemented!"
