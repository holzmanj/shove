module Main where

import Prelude hiding (lookup)
import System.Environment (getArgs)
import System.Console.Haskeline
import System.IO (stdout, hSetBuffering, BufferMode(NoBuffering))
import Types (Value(..), FuncBody(..), Store)
import Interpret (interpret, runInterpreter)
import qualified AbsGrammar as AST
import ParGrammar (pReplCmd, pProg, myLexer)
import Data.Map (insert, empty, lookup)
import Control.Monad.Reader (ReaderT(runReaderT))
import Control.Monad.Except (runExceptT)
import Control.Monad.Trans (MonadIO(liftIO))


printErr :: String -> IO ()
printErr err = putStrLn $ "\x1b[31m" ++ err ++ "\x1b[0m"


handleResult :: IO b -> (t -> IO b) -> Either String t -> IO b
handleResult f g res = do
  case res of
    Left  err -> printErr ("Runtime error: " ++ err) >> f
    Right val -> g val


runProgram :: String -> IO ()
runProgram filename = do
  source <- readFile filename
  case pProg $ myLexer source of
    Left err -> do
      printErr $ "Parsing error: " ++ err
    Right (AST.Program stmts) -> do
      env <- makeEnv stmts empty
      case lookup "main" env of
        Nothing -> putStrLn "\"main\" not defined. Nothing to do."
        Just (Lambda [] (Expr exp, _)) -> do
          res <- runInterpreter exp env
          handleResult (return ()) (const $ return ()) res
        Just v -> print v
 where
  makeEnv [] env = return env
  makeEnv ((AST.SBind (AST.Ident ident) exp) : ss) env = do
    res <- runInterpreter exp env
    handleResult (return env) (\v -> makeEnv ss (insert ident v env)) res


repl :: Store -> InputT IO ()
repl env = do
  input <- getInputLine "\x1b[36m~> \x1b[0m"
  case input of
    Nothing     -> return ()
    Just "exit" -> return ()
    Just line   -> do
      env' <- liftIO $ runCmd env $ pReplCmd (myLexer line)
      repl env'
 where
  runCmd env parseResult = case parseResult of
    Left err -> do
      printErr $ "Parsing error: " ++ err
      return env
    Right (AST.RBind (AST.Ident ident) exp) -> do
      res <- runInterpreter exp env
      handleResult (return env) (\v -> return $ insert ident v env) res
    Right (AST.REval exp) -> do
      res <- runInterpreter exp env
      handleResult (return env) (\v -> print v >> return env) res


main :: IO ()
main = do
  hSetBuffering stdout NoBuffering
  args <- getArgs
  case args of
    [] -> do
      runInputT defaultSettings (repl empty)
    (x : _) -> runProgram x
