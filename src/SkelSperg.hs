-- Haskell module generated by the BNF converter

module SkelSperg where

import qualified AbsSperg

type Err = Either String
type Result = Err String

failure :: Show a => a -> Result
failure x = Left $ "Undefined case: " ++ show x

transIdent :: AbsSperg.Ident -> Result
transIdent x = case x of
  AbsSperg.Ident string -> failure x
transProg :: AbsSperg.Prog -> Result
transProg x = case x of
  AbsSperg.Program stmts -> failure x
transStmt :: AbsSperg.Stmt -> Result
transStmt x = case x of
  AbsSperg.SBind ident expr -> failure x
transExpr :: AbsSperg.Expr -> Result
transExpr x = case x of
  AbsSperg.EIdent ident -> failure x
  AbsSperg.ELit lit -> failure x
  AbsSperg.EPlace -> failure x
  AbsSperg.EApply expr1 expr2 -> failure x
  AbsSperg.EForce expr -> failure x
  AbsSperg.EMul expr1 expr2 -> failure x
  AbsSperg.EDiv expr1 expr2 -> failure x
  AbsSperg.EMod expr1 expr2 -> failure x
  AbsSperg.EAdd expr1 expr2 -> failure x
  AbsSperg.ESub expr1 expr2 -> failure x
  AbsSperg.ECons expr1 expr2 -> failure x
  AbsSperg.ELess expr1 expr2 -> failure x
  AbsSperg.EMore expr1 expr2 -> failure x
  AbsSperg.ELessEq expr1 expr2 -> failure x
  AbsSperg.EMoreEq expr1 expr2 -> failure x
  AbsSperg.EEqual expr1 expr2 -> failure x
  AbsSperg.ENEqual expr1 expr2 -> failure x
  AbsSperg.EAnd expr1 expr2 -> failure x
  AbsSperg.EOr expr1 expr2 -> failure x
  AbsSperg.EShove expr1 expr2 -> failure x
  AbsSperg.EIfThen expr1 expr2 expr3 -> failure x
  AbsSperg.ELetIn binds expr -> failure x
transLit :: AbsSperg.Lit -> Result
transLit x = case x of
  AbsSperg.LInt integer -> failure x
  AbsSperg.LDouble double -> failure x
  AbsSperg.LChar char -> failure x
  AbsSperg.LString string -> failure x
  AbsSperg.LTrue -> failure x
  AbsSperg.LFalse -> failure x
  AbsSperg.LVoid -> failure x
  AbsSperg.LList exprs -> failure x
  AbsSperg.LLambda idents expr -> failure x
transBind :: AbsSperg.Bind -> Result
transBind x = case x of
  AbsSperg.Bind ident expr -> failure x

