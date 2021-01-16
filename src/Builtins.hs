module Builtins where

import Prelude hiding (lookup)
import Data.Map (lookup, Map, empty, fromList)
import Control.Monad.Trans (MonadIO(liftIO), MonadTrans(lift))
import Control.Monad.Except (MonadError(throwError))
import Control.Monad.Reader (MonadReader(ask))

import qualified AbsGrammar as AST
import Types (Value(..), Interp, Store, FuncBody(BuiltIn))


paramList :: Int -> [String]
paramList n = ("p" ++) . show <$> [1 .. n]


builtinEnv :: Store
builtinEnv = fromList
  [ ("head"   , Lambda (paramList 1) (BuiltIn bHead, empty))
  , ("tail"   , Lambda (paramList 1) (BuiltIn bTail, empty))
  , ("length" , Lambda (paramList 1) (BuiltIn bLength, empty))
  , ("print"  , Lambda (paramList 1) (BuiltIn bPrint, empty))
  , ("println", Lambda (paramList 1) (BuiltIn bPrintln, empty))
  , ("readln" , Lambda [] (BuiltIn bReadln, empty))
  ]


-- | List Operations

bHead :: Interp Value
bHead = do
  let [p] = paramList 1
  env <- lift ask
  case lookup p env of
    Nothing              -> throwError "Failed to fetch argument for builtin."
    Just (List []      ) -> throwError "Cannot evaluate head of empty list."
    Just (List (x : xs)) -> return x
    Just _ -> throwError "Cannot evaluate head of something that's not a list."


bTail :: Interp Value
bTail = do
  let [p] = paramList 1
  env <- lift ask
  case lookup p env of
    Nothing              -> throwError "Failed to fetch argument for builtin."
    Just (List []      ) -> throwError "Cannot evaluate tail of empty list."
    Just (List (x : xs)) -> return (List xs)
    Just _ -> throwError "Cannot evaluate tail of something that's not a list."


bLength :: Interp Value
bLength = do
  let [p] = paramList 1
  env <- lift ask
  case lookup p env of
    Nothing -> throwError "Failed to fetch argument for builtin."
    Just (List l) -> return $ Int (toInteger $ length l)
    Just _ -> throwError "Cannot evaluate tail of something that's not a list."


-- | IO 

bPrint :: Interp Value
bPrint = do
  let [p] = paramList 1
  env <- lift ask
  case lookup p env of
    Nothing -> throwError "Failed to fetch argument for builtin."
    Just v  -> do
      liftIO $ putStr $ show v
      return Void


bPrintln :: Interp Value
bPrintln = do
  let [p] = paramList 1
  env <- lift ask
  case lookup p env of
    Nothing -> throwError "Failed to fetch argument for builtin."
    Just v  -> do
      liftIO $ print v
      return Void


bReadln :: Interp Value
bReadln = do
  line <- liftIO getLine
  return $ String line
