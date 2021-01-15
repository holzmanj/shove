module Main where

import System.IO (stdout, hSetBuffering, BufferMode(NoBuffering))
import Types (Store)
import Interpret (runInterpreter)
import qualified AbsGrammar as AST
import ParGrammar (pProg, myLexer)
import Data.Map (empty)


repl :: Store -> IO ()
repl store = do
  putStr "\x1b[36mshove> \x1b[0m"
  line <- getLine
  case pProg $ myLexer line of
    Left err -> do
      putStrLn $ "Parsing error: " ++ err
      repl store
    Right (AST.Program stmts) -> do
      store' <- runInterpreter stmts store
      repl store'


main :: IO ()
main = do
  hSetBuffering stdout NoBuffering
  repl empty
