module Main where

import Prelude hiding (lookup)
import System.Environment (getArgs)
import System.IO (stdout, hSetBuffering, BufferMode(NoBuffering))
import Types (Value(..), FuncBody(..), Store)
import Interpret (interpret, runInterpreter)
import qualified AbsGrammar as AST
import ParGrammar (pReplCmd, pProg, myLexer)
import Data.Map (insert, empty, lookup)
import Control.Monad.Reader (ReaderT(runReaderT))
import Control.Monad.Except (runExceptT)


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


repl :: Store -> IO ()
repl env = do
  putStr "\x1b[36mshove> \x1b[0m"
  line <- getLine
  case pReplCmd $ myLexer line of
    Left err -> do
      printErr $ "Parsing error: " ++ err
      repl env
    Right (AST.RBind (AST.Ident ident) exp) -> do
      res <- runInterpreter exp env
      handleResult (repl env) (\v -> repl $ insert ident v env) res
    Right (AST.REval exp) -> do
      res <- runInterpreter exp env
      handleResult (repl env) (\v -> print v >> repl env) res


main :: IO ()
main = do
  args <- getArgs
  case args of
    [] -> do
      hSetBuffering stdout NoBuffering
      repl empty
    (x : _) -> runProgram x
