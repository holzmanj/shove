-- Haskell data types for the abstract syntax.
-- Generated by the BNF converter.

{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module AbsSperg where

import Prelude (Char, Double, Integer, String)
import qualified Prelude as C (Eq, Ord, Show, Read)
import qualified Data.String

newtype Ident = Ident String
  deriving (C.Eq, C.Ord, C.Show, C.Read, Data.String.IsString)

newtype Prog = Program [Stmt]
  deriving (C.Eq, C.Ord, C.Show, C.Read)

data Stmt = SBind Ident Expr
  deriving (C.Eq, C.Ord, C.Show, C.Read)

data Expr
    = EIdent Ident
    | ELit Lit
    | EPlace
    | EApply Expr Expr
    | EForce Expr
    | EMul Expr Expr
    | EDiv Expr Expr
    | EMod Expr Expr
    | EAdd Expr Expr
    | ESub Expr Expr
    | ECons Expr Expr
    | ELess Expr Expr
    | EMore Expr Expr
    | ELessEq Expr Expr
    | EMoreEq Expr Expr
    | EEqual Expr Expr
    | ENEqual Expr Expr
    | EAnd Expr Expr
    | EOr Expr Expr
    | EShove Expr Expr
    | EIfThen Expr Expr Expr
    | ELetIn [Bind] Expr
  deriving (C.Eq, C.Ord, C.Show, C.Read)

data Lit
    = LInt Integer
    | LDouble Double
    | LChar Char
    | LString String
    | LTrue
    | LFalse
    | LVoid
    | LList [Expr]
    | LLambda [Ident] Expr
  deriving (C.Eq, C.Ord, C.Show, C.Read)

data Bind = Bind Ident Expr
  deriving (C.Eq, C.Ord, C.Show, C.Read)

