module Builtins where

import Prelude hiding (lookup)
import Data.Map (lookup, Map, empty, fromList)
import Control.Monad.Trans (MonadTrans(lift))
import Control.Monad.Except (MonadError(throwError))
import Control.Monad.Reader (MonadReader(ask))

import qualified AbsGrammar as AST
import Types (Value(Int, Lambda, List), Interp, Store, FuncBody(BuiltIn))


paramList :: Int -> [String]
paramList n = ("p" ++) . show <$> [1 .. n]


builtinEnv :: Store
builtinEnv = fromList
  [ ("head"  , Lambda (paramList 1) (BuiltIn bHead, empty))
  , ("tail"  , Lambda (paramList 1) (BuiltIn bTail, empty))
  , ("length", Lambda (paramList 1) (BuiltIn bLength, empty))
  ]


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
