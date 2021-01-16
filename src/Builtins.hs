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


-- LIST OPERATIONS

-- | Get the first element of a list.
bHead :: Interp Value
bHead = do
  let [p] = paramList 1
  env <- lift ask
  case lookup p env of
    Nothing              -> throwError "Failed to fetch argument for builtin."
    Just (List []      ) -> throwError "Cannot evaluate head of empty list."
    Just (List (x : xs)) -> return x
    Just _ -> throwError "Cannot evaluate head of something that's not a list."


-- | Get a list excluding its first element.
bTail :: Interp Value
bTail = do
  let [p] = paramList 1
  env <- lift ask
  case lookup p env of
    Nothing              -> throwError "Failed to fetch argument for builtin."
    Just (List []      ) -> throwError "Cannot evaluate tail of empty list."
    Just (List (x : xs)) -> return (List xs)
    Just _ -> throwError "Cannot evaluate tail of something that's not a list."


-- | Count the number of elements in a list.
bLength :: Interp Value
bLength = do
  let [p] = paramList 1
  env <- lift ask
  case lookup p env of
    Nothing -> throwError "Failed to fetch argument for builtin."
    Just (List l) -> return $ Int (toInteger $ length l)
    Just _ -> throwError "Cannot evaluate tail of something that's not a list."



-- | IO 

-- | Print a value to stdout (no trailing newline).
bPrint :: Interp Value
bPrint = do
  let [p] = paramList 1
  env <- lift ask
  case lookup p env of
    Nothing -> throwError "Failed to fetch argument for builtin."
    Just v  -> do
      liftIO $ putStr $ show v
      return Void


-- | Print a value to stdout, followed by a newline.
bPrintln :: Interp Value
bPrintln = do
  let [p] = paramList 1
  env <- lift ask
  case lookup p env of
    Nothing -> throwError "Failed to fetch argument for builtin."
    Just v  -> do
      liftIO $ print v
      return Void


-- | Read a line of input from stdin, return the line as a string.
bReadln :: Interp Value
bReadln = do
  line <- liftIO getLine
  return $ String line
