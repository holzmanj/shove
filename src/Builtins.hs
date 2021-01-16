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


getParams :: Int -> Interp [Value]
getParams n = do
  let ps = paramList n
  env <- lift ask
  getPIter env ps
 where
  getPIter :: Store -> [String] -> Interp [Value]
  getPIter _     []       = return []
  getPIter store (p : ps) = do
    case lookup p store of
      Nothing -> throwError "Failed to fetch argument for builtin."
      Just v  -> do
        rest <- getPIter store ps
        return $ v : rest


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
  [p] <- getParams 1
  case p of
    List [] -> throwError "Cannot evaluate head of empty list."
    List (x : xs) -> return x
    _ -> throwError "Cannot evaluate head of something that's not a list."


-- | Get a list excluding its first element.
bTail :: Interp Value
bTail = do
  [p] <- getParams 1
  case p of
    List [] -> throwError "Cannot evaluate tail of empty list."
    List (x : xs) -> return $ List xs
    _ -> throwError "Cannot evaluate tail of something that's not a list."


-- | Count the number of elements in a list.
bLength :: Interp Value
bLength = do
  [p] <- getParams 1
  case p of
    List l -> return $ Int (toInteger $ length l)
    _      -> throwError "Cannot evaluate tail of something that's not a list."



-- | IO 

-- | Print a value to stdout (no trailing newline).
bPrint :: Interp Value
bPrint = do
  [p] <- getParams 1
  liftIO $ putStr $ show p
  return Void


-- | Print a value to stdout, followed by a newline.
bPrintln :: Interp Value
bPrintln = do
  [p] <- getParams 1
  liftIO $ print p
  return Void


-- | Read a line of input from stdin, return the line as a string.
bReadln :: Interp Value
bReadln = do
  line <- liftIO getLine
  return $ String line
