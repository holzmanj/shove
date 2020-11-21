{-# OPTIONS_GHC -w #-}
{-# OPTIONS_GHC -fno-warn-incomplete-patterns -fno-warn-overlapping-patterns #-}
module ParSperg where
import qualified AbsSperg
import LexSperg
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.12

data HappyAbsSyn 
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn23 (AbsSperg.Ident)
	| HappyAbsSyn24 (Integer)
	| HappyAbsSyn25 (Double)
	| HappyAbsSyn26 (Char)
	| HappyAbsSyn27 (String)
	| HappyAbsSyn28 (AbsSperg.Prog)
	| HappyAbsSyn29 ([AbsSperg.Stmt])
	| HappyAbsSyn30 (AbsSperg.Stmt)
	| HappyAbsSyn31 ([AbsSperg.Expr])
	| HappyAbsSyn32 (AbsSperg.Expr)
	| HappyAbsSyn44 (AbsSperg.Lit)
	| HappyAbsSyn45 ([AbsSperg.Ident])
	| HappyAbsSyn46 ([AbsSperg.Bind])
	| HappyAbsSyn47 (AbsSperg.Bind)

{- to allow type-synonyms as our monads (likely
 - with explicitly-specified bind and return)
 - in Haskell98, it seems that with
 - /type M a = .../, then /(HappyReduction M)/
 - is not allowed.  But Happy is a
 - code-generator that can just substitute it.
type HappyReduction m = 
	   Int 
	-> (Token)
	-> HappyState (Token) (HappyStk HappyAbsSyn -> [(Token)] -> m HappyAbsSyn)
	-> [HappyState (Token) (HappyStk HappyAbsSyn -> [(Token)] -> m HappyAbsSyn)] 
	-> HappyStk HappyAbsSyn 
	-> [(Token)] -> m HappyAbsSyn
-}

action_0,
 action_1,
 action_2,
 action_3,
 action_4,
 action_5,
 action_6,
 action_7,
 action_8,
 action_9,
 action_10,
 action_11,
 action_12,
 action_13,
 action_14,
 action_15,
 action_16,
 action_17,
 action_18,
 action_19,
 action_20,
 action_21,
 action_22,
 action_23,
 action_24,
 action_25,
 action_26,
 action_27,
 action_28,
 action_29,
 action_30,
 action_31,
 action_32,
 action_33,
 action_34,
 action_35,
 action_36,
 action_37,
 action_38,
 action_39,
 action_40,
 action_41,
 action_42,
 action_43,
 action_44,
 action_45,
 action_46,
 action_47,
 action_48,
 action_49,
 action_50,
 action_51,
 action_52,
 action_53,
 action_54,
 action_55,
 action_56,
 action_57,
 action_58,
 action_59,
 action_60,
 action_61,
 action_62,
 action_63,
 action_64,
 action_65,
 action_66,
 action_67,
 action_68,
 action_69,
 action_70,
 action_71,
 action_72,
 action_73,
 action_74,
 action_75,
 action_76,
 action_77,
 action_78,
 action_79,
 action_80,
 action_81,
 action_82,
 action_83,
 action_84,
 action_85,
 action_86,
 action_87,
 action_88,
 action_89,
 action_90,
 action_91,
 action_92,
 action_93,
 action_94,
 action_95,
 action_96,
 action_97,
 action_98,
 action_99,
 action_100,
 action_101,
 action_102,
 action_103,
 action_104,
 action_105,
 action_106,
 action_107,
 action_108,
 action_109,
 action_110,
 action_111,
 action_112,
 action_113,
 action_114,
 action_115,
 action_116,
 action_117,
 action_118,
 action_119,
 action_120,
 action_121,
 action_122,
 action_123,
 action_124,
 action_125,
 action_126,
 action_127,
 action_128,
 action_129,
 action_130,
 action_131,
 action_132,
 action_133,
 action_134,
 action_135,
 action_136,
 action_137,
 action_138,
 action_139,
 action_140,
 action_141 :: () => Int -> ({-HappyReduction (Either String) = -}
	   Int 
	-> (Token)
	-> HappyState (Token) (HappyStk HappyAbsSyn -> [(Token)] -> (Either String) HappyAbsSyn)
	-> [HappyState (Token) (HappyStk HappyAbsSyn -> [(Token)] -> (Either String) HappyAbsSyn)] 
	-> HappyStk HappyAbsSyn 
	-> [(Token)] -> (Either String) HappyAbsSyn)

happyReduce_20,
 happyReduce_21,
 happyReduce_22,
 happyReduce_23,
 happyReduce_24,
 happyReduce_25,
 happyReduce_26,
 happyReduce_27,
 happyReduce_28,
 happyReduce_29,
 happyReduce_30,
 happyReduce_31,
 happyReduce_32,
 happyReduce_33,
 happyReduce_34,
 happyReduce_35,
 happyReduce_36,
 happyReduce_37,
 happyReduce_38,
 happyReduce_39,
 happyReduce_40,
 happyReduce_41,
 happyReduce_42,
 happyReduce_43,
 happyReduce_44,
 happyReduce_45,
 happyReduce_46,
 happyReduce_47,
 happyReduce_48,
 happyReduce_49,
 happyReduce_50,
 happyReduce_51,
 happyReduce_52,
 happyReduce_53,
 happyReduce_54,
 happyReduce_55,
 happyReduce_56,
 happyReduce_57,
 happyReduce_58,
 happyReduce_59,
 happyReduce_60,
 happyReduce_61,
 happyReduce_62,
 happyReduce_63,
 happyReduce_64,
 happyReduce_65,
 happyReduce_66,
 happyReduce_67,
 happyReduce_68,
 happyReduce_69,
 happyReduce_70,
 happyReduce_71,
 happyReduce_72,
 happyReduce_73,
 happyReduce_74,
 happyReduce_75,
 happyReduce_76,
 happyReduce_77,
 happyReduce_78,
 happyReduce_79,
 happyReduce_80,
 happyReduce_81,
 happyReduce_82,
 happyReduce_83,
 happyReduce_84 :: () => ({-HappyReduction (Either String) = -}
	   Int 
	-> (Token)
	-> HappyState (Token) (HappyStk HappyAbsSyn -> [(Token)] -> (Either String) HappyAbsSyn)
	-> [HappyState (Token) (HappyStk HappyAbsSyn -> [(Token)] -> (Either String) HappyAbsSyn)] 
	-> HappyStk HappyAbsSyn 
	-> [(Token)] -> (Either String) HappyAbsSyn)

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,862) ([0,0,0,0,1024,0,0,0,0,0,4,0,0,0,0,1024,0,0,0,1152,35840,31973,0,0,0,4,57484,124,0,0,1024,35840,31968,0,0,32768,4,57484,124,0,0,1152,35840,31968,0,0,32768,4,57484,124,0,0,1152,35840,31968,0,0,32768,4,57484,124,0,0,1152,35840,31968,0,0,32768,4,57484,124,0,0,1152,35840,31968,0,0,32768,4,58764,124,0,0,1024,0,0,0,0,0,0,57480,120,0,0,0,0,1024,0,0,0,0,0,4,0,0,0,0,1024,0,0,0,0,0,4,0,0,0,0,0,0,0,0,16384,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16384,0,0,0,0,0,64,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1152,35840,31973,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1152,35840,31973,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,57484,124,0,0,0,0,0,0,0,0,530,0,0,0,0,40960,4,0,0,0,0,45057,3,0,0,0,0,8192,0,0,0,0,0,2048,0,0,0,0,0,0,0,0,0,256,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,57484,124,0,0,0,0,0,0,0,32768,4,58764,124,0,0,0,0,1024,0,0,0,256,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,40960,0,0,0,0,0,530,0,0,0,0,0,0,0,0,0,0,4,57484,124,0,0,0,0,0,0,0,0,0,0,0,0,0,16384,0,0,0,0,0,0,0,0,0,0,0,0,1024,0,0,0,0,0,0,0,0,0,8,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,16384,0,0,0,0,1152,35840,31973,0,0,0,0,0,0,0,0,1152,35840,31968,0,0,32768,4,57484,124,0,0,1152,35840,31968,0,0,32768,4,57484,124,0,0,1152,35840,31968,0,0,32768,4,57484,124,0,0,0,0,2,0,0,0,0,4096,0,0,0,1024,35840,31968,0,0,32768,4,57484,124,0,0,1152,35840,31968,0,0,32768,4,57484,124,0,0,1152,35840,31968,0,0,32768,4,57484,124,0,0,1152,35840,31968,0,0,32768,4,57484,124,0,0,1152,35840,31968,0,0,32768,4,57484,124,0,0,2048,0,0,0,0,32768,4,58764,124,0,0,0,4096,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,1152,35840,31973,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1152,35840,31973,0,0,32768,4,58764,124,0,0,0,0,0,0,0,0,530,0,0,0,0,4608,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32768,4,58764,124,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,64,0,0,0,0,0,0,0,0,32768,4,58764,124,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_pProg","%start_pListStmt","%start_pStmt","%start_pListExpr","%start_pExpr10","%start_pExpr9","%start_pExpr8","%start_pExpr7","%start_pExpr6","%start_pExpr5","%start_pExpr4","%start_pExpr3","%start_pExpr2","%start_pExpr1","%start_pExpr","%start_pExpr11","%start_pLit","%start_pListIdent","%start_pListBind","%start_pBind","Ident","Integer","Double","Char","String","Prog","ListStmt","Stmt","ListExpr","Expr10","Expr9","Expr8","Expr7","Expr6","Expr5","Expr4","Expr3","Expr2","Expr1","Expr","Expr11","Lit","ListIdent","ListBind","Bind","'!'","'!='","'%'","'('","')'","'*'","'+'","','","'-'","'->'","'/'","'::'","';'","'<'","'<='","'='","'=='","'>'","'>='","'@'","'['","']'","'and'","'else'","'false'","'if'","'in'","'let'","'or'","'then'","'true'","'void'","'{'","'|'","'}'","L_Ident","L_integ","L_doubl","L_charac","L_quoted","%eof"]
        bit_start = st * 88
        bit_end = (st + 1) * 88
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..87]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (75) = happyShift action_75
action_0 (88) = happyReduce_28
action_0 (28) = happyGoto action_78
action_0 (29) = happyGoto action_79
action_0 (30) = happyGoto action_77
action_0 _ = happyReduce_28

action_1 (75) = happyShift action_75
action_1 (88) = happyReduce_28
action_1 (29) = happyGoto action_76
action_1 (30) = happyGoto action_77
action_1 _ = happyReduce_28

action_2 (75) = happyShift action_75
action_2 (30) = happyGoto action_74
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (48) = happyShift action_58
action_3 (51) = happyShift action_43
action_3 (67) = happyShift action_59
action_3 (68) = happyShift action_33
action_3 (72) = happyShift action_34
action_3 (73) = happyShift action_60
action_3 (75) = happyShift action_61
action_3 (78) = happyShift action_35
action_3 (79) = happyShift action_36
action_3 (80) = happyShift action_37
action_3 (83) = happyShift action_21
action_3 (84) = happyShift action_38
action_3 (85) = happyShift action_39
action_3 (86) = happyShift action_40
action_3 (87) = happyShift action_41
action_3 (23) = happyGoto action_44
action_3 (24) = happyGoto action_28
action_3 (25) = happyGoto action_29
action_3 (26) = happyGoto action_30
action_3 (27) = happyGoto action_31
action_3 (31) = happyGoto action_72
action_3 (32) = happyGoto action_45
action_3 (33) = happyGoto action_46
action_3 (34) = happyGoto action_47
action_3 (35) = happyGoto action_48
action_3 (36) = happyGoto action_49
action_3 (37) = happyGoto action_50
action_3 (38) = happyGoto action_51
action_3 (39) = happyGoto action_52
action_3 (40) = happyGoto action_53
action_3 (41) = happyGoto action_54
action_3 (42) = happyGoto action_73
action_3 (43) = happyGoto action_56
action_3 (44) = happyGoto action_57
action_3 _ = happyReduce_32

action_4 (51) = happyShift action_43
action_4 (67) = happyShift action_59
action_4 (68) = happyShift action_33
action_4 (72) = happyShift action_34
action_4 (78) = happyShift action_35
action_4 (79) = happyShift action_36
action_4 (80) = happyShift action_37
action_4 (83) = happyShift action_21
action_4 (84) = happyShift action_38
action_4 (85) = happyShift action_39
action_4 (86) = happyShift action_40
action_4 (87) = happyShift action_41
action_4 (23) = happyGoto action_44
action_4 (24) = happyGoto action_28
action_4 (25) = happyGoto action_29
action_4 (26) = happyGoto action_30
action_4 (27) = happyGoto action_31
action_4 (32) = happyGoto action_71
action_4 (43) = happyGoto action_56
action_4 (44) = happyGoto action_57
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (51) = happyShift action_43
action_5 (67) = happyShift action_59
action_5 (68) = happyShift action_33
action_5 (72) = happyShift action_34
action_5 (78) = happyShift action_35
action_5 (79) = happyShift action_36
action_5 (80) = happyShift action_37
action_5 (83) = happyShift action_21
action_5 (84) = happyShift action_38
action_5 (85) = happyShift action_39
action_5 (86) = happyShift action_40
action_5 (87) = happyShift action_41
action_5 (23) = happyGoto action_44
action_5 (24) = happyGoto action_28
action_5 (25) = happyGoto action_29
action_5 (26) = happyGoto action_30
action_5 (27) = happyGoto action_31
action_5 (32) = happyGoto action_45
action_5 (33) = happyGoto action_70
action_5 (43) = happyGoto action_56
action_5 (44) = happyGoto action_57
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (48) = happyShift action_58
action_6 (51) = happyShift action_43
action_6 (67) = happyShift action_59
action_6 (68) = happyShift action_33
action_6 (72) = happyShift action_34
action_6 (78) = happyShift action_35
action_6 (79) = happyShift action_36
action_6 (80) = happyShift action_37
action_6 (83) = happyShift action_21
action_6 (84) = happyShift action_38
action_6 (85) = happyShift action_39
action_6 (86) = happyShift action_40
action_6 (87) = happyShift action_41
action_6 (23) = happyGoto action_44
action_6 (24) = happyGoto action_28
action_6 (25) = happyGoto action_29
action_6 (26) = happyGoto action_30
action_6 (27) = happyGoto action_31
action_6 (32) = happyGoto action_45
action_6 (33) = happyGoto action_46
action_6 (34) = happyGoto action_69
action_6 (43) = happyGoto action_56
action_6 (44) = happyGoto action_57
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (48) = happyShift action_58
action_7 (51) = happyShift action_43
action_7 (67) = happyShift action_59
action_7 (68) = happyShift action_33
action_7 (72) = happyShift action_34
action_7 (78) = happyShift action_35
action_7 (79) = happyShift action_36
action_7 (80) = happyShift action_37
action_7 (83) = happyShift action_21
action_7 (84) = happyShift action_38
action_7 (85) = happyShift action_39
action_7 (86) = happyShift action_40
action_7 (87) = happyShift action_41
action_7 (23) = happyGoto action_44
action_7 (24) = happyGoto action_28
action_7 (25) = happyGoto action_29
action_7 (26) = happyGoto action_30
action_7 (27) = happyGoto action_31
action_7 (32) = happyGoto action_45
action_7 (33) = happyGoto action_46
action_7 (34) = happyGoto action_47
action_7 (35) = happyGoto action_68
action_7 (43) = happyGoto action_56
action_7 (44) = happyGoto action_57
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (48) = happyShift action_58
action_8 (51) = happyShift action_43
action_8 (67) = happyShift action_59
action_8 (68) = happyShift action_33
action_8 (72) = happyShift action_34
action_8 (78) = happyShift action_35
action_8 (79) = happyShift action_36
action_8 (80) = happyShift action_37
action_8 (83) = happyShift action_21
action_8 (84) = happyShift action_38
action_8 (85) = happyShift action_39
action_8 (86) = happyShift action_40
action_8 (87) = happyShift action_41
action_8 (23) = happyGoto action_44
action_8 (24) = happyGoto action_28
action_8 (25) = happyGoto action_29
action_8 (26) = happyGoto action_30
action_8 (27) = happyGoto action_31
action_8 (32) = happyGoto action_45
action_8 (33) = happyGoto action_46
action_8 (34) = happyGoto action_47
action_8 (35) = happyGoto action_48
action_8 (36) = happyGoto action_67
action_8 (43) = happyGoto action_56
action_8 (44) = happyGoto action_57
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (48) = happyShift action_58
action_9 (51) = happyShift action_43
action_9 (67) = happyShift action_59
action_9 (68) = happyShift action_33
action_9 (72) = happyShift action_34
action_9 (78) = happyShift action_35
action_9 (79) = happyShift action_36
action_9 (80) = happyShift action_37
action_9 (83) = happyShift action_21
action_9 (84) = happyShift action_38
action_9 (85) = happyShift action_39
action_9 (86) = happyShift action_40
action_9 (87) = happyShift action_41
action_9 (23) = happyGoto action_44
action_9 (24) = happyGoto action_28
action_9 (25) = happyGoto action_29
action_9 (26) = happyGoto action_30
action_9 (27) = happyGoto action_31
action_9 (32) = happyGoto action_45
action_9 (33) = happyGoto action_46
action_9 (34) = happyGoto action_47
action_9 (35) = happyGoto action_48
action_9 (36) = happyGoto action_49
action_9 (37) = happyGoto action_66
action_9 (43) = happyGoto action_56
action_9 (44) = happyGoto action_57
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (48) = happyShift action_58
action_10 (51) = happyShift action_43
action_10 (67) = happyShift action_59
action_10 (68) = happyShift action_33
action_10 (72) = happyShift action_34
action_10 (78) = happyShift action_35
action_10 (79) = happyShift action_36
action_10 (80) = happyShift action_37
action_10 (83) = happyShift action_21
action_10 (84) = happyShift action_38
action_10 (85) = happyShift action_39
action_10 (86) = happyShift action_40
action_10 (87) = happyShift action_41
action_10 (23) = happyGoto action_44
action_10 (24) = happyGoto action_28
action_10 (25) = happyGoto action_29
action_10 (26) = happyGoto action_30
action_10 (27) = happyGoto action_31
action_10 (32) = happyGoto action_45
action_10 (33) = happyGoto action_46
action_10 (34) = happyGoto action_47
action_10 (35) = happyGoto action_48
action_10 (36) = happyGoto action_49
action_10 (37) = happyGoto action_50
action_10 (38) = happyGoto action_65
action_10 (43) = happyGoto action_56
action_10 (44) = happyGoto action_57
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (48) = happyShift action_58
action_11 (51) = happyShift action_43
action_11 (67) = happyShift action_59
action_11 (68) = happyShift action_33
action_11 (72) = happyShift action_34
action_11 (78) = happyShift action_35
action_11 (79) = happyShift action_36
action_11 (80) = happyShift action_37
action_11 (83) = happyShift action_21
action_11 (84) = happyShift action_38
action_11 (85) = happyShift action_39
action_11 (86) = happyShift action_40
action_11 (87) = happyShift action_41
action_11 (23) = happyGoto action_44
action_11 (24) = happyGoto action_28
action_11 (25) = happyGoto action_29
action_11 (26) = happyGoto action_30
action_11 (27) = happyGoto action_31
action_11 (32) = happyGoto action_45
action_11 (33) = happyGoto action_46
action_11 (34) = happyGoto action_47
action_11 (35) = happyGoto action_48
action_11 (36) = happyGoto action_49
action_11 (37) = happyGoto action_50
action_11 (38) = happyGoto action_51
action_11 (39) = happyGoto action_64
action_11 (43) = happyGoto action_56
action_11 (44) = happyGoto action_57
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (48) = happyShift action_58
action_12 (51) = happyShift action_43
action_12 (67) = happyShift action_59
action_12 (68) = happyShift action_33
action_12 (72) = happyShift action_34
action_12 (78) = happyShift action_35
action_12 (79) = happyShift action_36
action_12 (80) = happyShift action_37
action_12 (83) = happyShift action_21
action_12 (84) = happyShift action_38
action_12 (85) = happyShift action_39
action_12 (86) = happyShift action_40
action_12 (87) = happyShift action_41
action_12 (23) = happyGoto action_44
action_12 (24) = happyGoto action_28
action_12 (25) = happyGoto action_29
action_12 (26) = happyGoto action_30
action_12 (27) = happyGoto action_31
action_12 (32) = happyGoto action_45
action_12 (33) = happyGoto action_46
action_12 (34) = happyGoto action_47
action_12 (35) = happyGoto action_48
action_12 (36) = happyGoto action_49
action_12 (37) = happyGoto action_50
action_12 (38) = happyGoto action_51
action_12 (39) = happyGoto action_52
action_12 (40) = happyGoto action_63
action_12 (43) = happyGoto action_56
action_12 (44) = happyGoto action_57
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (48) = happyShift action_58
action_13 (51) = happyShift action_43
action_13 (67) = happyShift action_59
action_13 (68) = happyShift action_33
action_13 (72) = happyShift action_34
action_13 (78) = happyShift action_35
action_13 (79) = happyShift action_36
action_13 (80) = happyShift action_37
action_13 (83) = happyShift action_21
action_13 (84) = happyShift action_38
action_13 (85) = happyShift action_39
action_13 (86) = happyShift action_40
action_13 (87) = happyShift action_41
action_13 (23) = happyGoto action_44
action_13 (24) = happyGoto action_28
action_13 (25) = happyGoto action_29
action_13 (26) = happyGoto action_30
action_13 (27) = happyGoto action_31
action_13 (32) = happyGoto action_45
action_13 (33) = happyGoto action_46
action_13 (34) = happyGoto action_47
action_13 (35) = happyGoto action_48
action_13 (36) = happyGoto action_49
action_13 (37) = happyGoto action_50
action_13 (38) = happyGoto action_51
action_13 (39) = happyGoto action_52
action_13 (40) = happyGoto action_53
action_13 (41) = happyGoto action_62
action_13 (43) = happyGoto action_56
action_13 (44) = happyGoto action_57
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (48) = happyShift action_58
action_14 (51) = happyShift action_43
action_14 (67) = happyShift action_59
action_14 (68) = happyShift action_33
action_14 (72) = happyShift action_34
action_14 (73) = happyShift action_60
action_14 (75) = happyShift action_61
action_14 (78) = happyShift action_35
action_14 (79) = happyShift action_36
action_14 (80) = happyShift action_37
action_14 (83) = happyShift action_21
action_14 (84) = happyShift action_38
action_14 (85) = happyShift action_39
action_14 (86) = happyShift action_40
action_14 (87) = happyShift action_41
action_14 (23) = happyGoto action_44
action_14 (24) = happyGoto action_28
action_14 (25) = happyGoto action_29
action_14 (26) = happyGoto action_30
action_14 (27) = happyGoto action_31
action_14 (32) = happyGoto action_45
action_14 (33) = happyGoto action_46
action_14 (34) = happyGoto action_47
action_14 (35) = happyGoto action_48
action_14 (36) = happyGoto action_49
action_14 (37) = happyGoto action_50
action_14 (38) = happyGoto action_51
action_14 (39) = happyGoto action_52
action_14 (40) = happyGoto action_53
action_14 (41) = happyGoto action_54
action_14 (42) = happyGoto action_55
action_14 (43) = happyGoto action_56
action_14 (44) = happyGoto action_57
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (51) = happyShift action_43
action_15 (43) = happyGoto action_42
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (68) = happyShift action_33
action_16 (72) = happyShift action_34
action_16 (78) = happyShift action_35
action_16 (79) = happyShift action_36
action_16 (80) = happyShift action_37
action_16 (84) = happyShift action_38
action_16 (85) = happyShift action_39
action_16 (86) = happyShift action_40
action_16 (87) = happyShift action_41
action_16 (24) = happyGoto action_28
action_16 (25) = happyGoto action_29
action_16 (26) = happyGoto action_30
action_16 (27) = happyGoto action_31
action_16 (44) = happyGoto action_32
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (83) = happyShift action_21
action_17 (23) = happyGoto action_26
action_17 (45) = happyGoto action_27
action_17 _ = happyReduce_78

action_18 (83) = happyShift action_21
action_18 (23) = happyGoto action_22
action_18 (46) = happyGoto action_24
action_18 (47) = happyGoto action_25
action_18 _ = happyReduce_81

action_19 (83) = happyShift action_21
action_19 (23) = happyGoto action_22
action_19 (47) = happyGoto action_23
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (83) = happyShift action_21
action_20 _ = happyFail (happyExpListPerState 20)

action_21 _ = happyReduce_20

action_22 (63) = happyShift action_109
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (88) = happyAccept
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (88) = happyAccept
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (55) = happyShift action_108
action_25 _ = happyReduce_82

action_26 (55) = happyShift action_106
action_26 (81) = happyShift action_107
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (88) = happyAccept
action_27 _ = happyFail (happyExpListPerState 27)

action_28 _ = happyReduce_69

action_29 _ = happyReduce_70

action_30 _ = happyReduce_71

action_31 _ = happyReduce_72

action_32 (88) = happyAccept
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (48) = happyShift action_58
action_33 (51) = happyShift action_43
action_33 (67) = happyShift action_59
action_33 (68) = happyShift action_33
action_33 (72) = happyShift action_34
action_33 (73) = happyShift action_60
action_33 (75) = happyShift action_61
action_33 (78) = happyShift action_35
action_33 (79) = happyShift action_36
action_33 (80) = happyShift action_37
action_33 (83) = happyShift action_21
action_33 (84) = happyShift action_38
action_33 (85) = happyShift action_39
action_33 (86) = happyShift action_40
action_33 (87) = happyShift action_41
action_33 (23) = happyGoto action_44
action_33 (24) = happyGoto action_28
action_33 (25) = happyGoto action_29
action_33 (26) = happyGoto action_30
action_33 (27) = happyGoto action_31
action_33 (31) = happyGoto action_105
action_33 (32) = happyGoto action_45
action_33 (33) = happyGoto action_46
action_33 (34) = happyGoto action_47
action_33 (35) = happyGoto action_48
action_33 (36) = happyGoto action_49
action_33 (37) = happyGoto action_50
action_33 (38) = happyGoto action_51
action_33 (39) = happyGoto action_52
action_33 (40) = happyGoto action_53
action_33 (41) = happyGoto action_54
action_33 (42) = happyGoto action_73
action_33 (43) = happyGoto action_56
action_33 (44) = happyGoto action_57
action_33 _ = happyReduce_32

action_34 _ = happyReduce_74

action_35 _ = happyReduce_73

action_36 _ = happyReduce_75

action_37 (83) = happyShift action_21
action_37 (23) = happyGoto action_26
action_37 (45) = happyGoto action_104
action_37 _ = happyReduce_78

action_38 _ = happyReduce_21

action_39 _ = happyReduce_22

action_40 _ = happyReduce_23

action_41 _ = happyReduce_24

action_42 (88) = happyAccept
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (48) = happyShift action_58
action_43 (51) = happyShift action_43
action_43 (67) = happyShift action_59
action_43 (68) = happyShift action_33
action_43 (72) = happyShift action_34
action_43 (73) = happyShift action_60
action_43 (75) = happyShift action_61
action_43 (78) = happyShift action_35
action_43 (79) = happyShift action_36
action_43 (80) = happyShift action_37
action_43 (83) = happyShift action_21
action_43 (84) = happyShift action_38
action_43 (85) = happyShift action_39
action_43 (86) = happyShift action_40
action_43 (87) = happyShift action_41
action_43 (23) = happyGoto action_44
action_43 (24) = happyGoto action_28
action_43 (25) = happyGoto action_29
action_43 (26) = happyGoto action_30
action_43 (27) = happyGoto action_31
action_43 (32) = happyGoto action_45
action_43 (33) = happyGoto action_46
action_43 (34) = happyGoto action_47
action_43 (35) = happyGoto action_48
action_43 (36) = happyGoto action_49
action_43 (37) = happyGoto action_50
action_43 (38) = happyGoto action_51
action_43 (39) = happyGoto action_52
action_43 (40) = happyGoto action_53
action_43 (41) = happyGoto action_54
action_43 (42) = happyGoto action_103
action_43 (43) = happyGoto action_56
action_43 (44) = happyGoto action_57
action_43 _ = happyFail (happyExpListPerState 43)

action_44 _ = happyReduce_35

action_45 _ = happyReduce_40

action_46 (51) = happyShift action_43
action_46 (67) = happyShift action_59
action_46 (68) = happyShift action_33
action_46 (72) = happyShift action_34
action_46 (78) = happyShift action_35
action_46 (79) = happyShift action_36
action_46 (80) = happyShift action_37
action_46 (83) = happyShift action_21
action_46 (84) = happyShift action_38
action_46 (85) = happyShift action_39
action_46 (86) = happyShift action_40
action_46 (87) = happyShift action_41
action_46 (23) = happyGoto action_44
action_46 (24) = happyGoto action_28
action_46 (25) = happyGoto action_29
action_46 (26) = happyGoto action_30
action_46 (27) = happyGoto action_31
action_46 (32) = happyGoto action_84
action_46 (43) = happyGoto action_56
action_46 (44) = happyGoto action_57
action_46 _ = happyReduce_42

action_47 _ = happyReduce_46

action_48 (50) = happyShift action_85
action_48 (53) = happyShift action_86
action_48 (58) = happyShift action_87
action_48 _ = happyReduce_49

action_49 (54) = happyShift action_88
action_49 (56) = happyShift action_89
action_49 (59) = happyShift action_102
action_49 _ = happyReduce_51

action_50 (49) = happyShift action_96
action_50 (61) = happyShift action_97
action_50 (62) = happyShift action_98
action_50 (64) = happyShift action_99
action_50 (65) = happyShift action_100
action_50 (66) = happyShift action_101
action_50 _ = happyReduce_58

action_51 (70) = happyShift action_95
action_51 _ = happyReduce_60

action_52 (76) = happyShift action_94
action_52 _ = happyReduce_62

action_53 _ = happyReduce_64

action_54 (57) = happyShift action_90
action_54 _ = happyReduce_67

action_55 (88) = happyAccept
action_55 _ = happyFail (happyExpListPerState 55)

action_56 _ = happyReduce_38

action_57 _ = happyReduce_36

action_58 (51) = happyShift action_43
action_58 (67) = happyShift action_59
action_58 (68) = happyShift action_33
action_58 (72) = happyShift action_34
action_58 (78) = happyShift action_35
action_58 (79) = happyShift action_36
action_58 (80) = happyShift action_37
action_58 (83) = happyShift action_21
action_58 (84) = happyShift action_38
action_58 (85) = happyShift action_39
action_58 (86) = happyShift action_40
action_58 (87) = happyShift action_41
action_58 (23) = happyGoto action_44
action_58 (24) = happyGoto action_28
action_58 (25) = happyGoto action_29
action_58 (26) = happyGoto action_30
action_58 (27) = happyGoto action_31
action_58 (32) = happyGoto action_45
action_58 (33) = happyGoto action_93
action_58 (43) = happyGoto action_56
action_58 (44) = happyGoto action_57
action_58 _ = happyFail (happyExpListPerState 58)

action_59 _ = happyReduce_37

action_60 (48) = happyShift action_58
action_60 (51) = happyShift action_43
action_60 (67) = happyShift action_59
action_60 (68) = happyShift action_33
action_60 (72) = happyShift action_34
action_60 (73) = happyShift action_60
action_60 (75) = happyShift action_61
action_60 (78) = happyShift action_35
action_60 (79) = happyShift action_36
action_60 (80) = happyShift action_37
action_60 (83) = happyShift action_21
action_60 (84) = happyShift action_38
action_60 (85) = happyShift action_39
action_60 (86) = happyShift action_40
action_60 (87) = happyShift action_41
action_60 (23) = happyGoto action_44
action_60 (24) = happyGoto action_28
action_60 (25) = happyGoto action_29
action_60 (26) = happyGoto action_30
action_60 (27) = happyGoto action_31
action_60 (32) = happyGoto action_45
action_60 (33) = happyGoto action_46
action_60 (34) = happyGoto action_47
action_60 (35) = happyGoto action_48
action_60 (36) = happyGoto action_49
action_60 (37) = happyGoto action_50
action_60 (38) = happyGoto action_51
action_60 (39) = happyGoto action_52
action_60 (40) = happyGoto action_53
action_60 (41) = happyGoto action_54
action_60 (42) = happyGoto action_92
action_60 (43) = happyGoto action_56
action_60 (44) = happyGoto action_57
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (83) = happyShift action_21
action_61 (23) = happyGoto action_22
action_61 (46) = happyGoto action_91
action_61 (47) = happyGoto action_25
action_61 _ = happyReduce_81

action_62 (57) = happyShift action_90
action_62 (88) = happyAccept
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (88) = happyAccept
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (88) = happyAccept
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (88) = happyAccept
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (88) = happyAccept
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (54) = happyShift action_88
action_67 (56) = happyShift action_89
action_67 (88) = happyAccept
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (50) = happyShift action_85
action_68 (53) = happyShift action_86
action_68 (58) = happyShift action_87
action_68 (88) = happyAccept
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (88) = happyAccept
action_69 _ = happyFail (happyExpListPerState 69)

action_70 (51) = happyShift action_43
action_70 (67) = happyShift action_59
action_70 (68) = happyShift action_33
action_70 (72) = happyShift action_34
action_70 (78) = happyShift action_35
action_70 (79) = happyShift action_36
action_70 (80) = happyShift action_37
action_70 (83) = happyShift action_21
action_70 (84) = happyShift action_38
action_70 (85) = happyShift action_39
action_70 (86) = happyShift action_40
action_70 (87) = happyShift action_41
action_70 (88) = happyAccept
action_70 (23) = happyGoto action_44
action_70 (24) = happyGoto action_28
action_70 (25) = happyGoto action_29
action_70 (26) = happyGoto action_30
action_70 (27) = happyGoto action_31
action_70 (32) = happyGoto action_84
action_70 (43) = happyGoto action_56
action_70 (44) = happyGoto action_57
action_70 _ = happyFail (happyExpListPerState 70)

action_71 (88) = happyAccept
action_71 _ = happyFail (happyExpListPerState 71)

action_72 (88) = happyAccept
action_72 _ = happyFail (happyExpListPerState 72)

action_73 (55) = happyShift action_83
action_73 _ = happyReduce_33

action_74 (88) = happyAccept
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (83) = happyShift action_21
action_75 (23) = happyGoto action_82
action_75 _ = happyFail (happyExpListPerState 75)

action_76 (88) = happyAccept
action_76 _ = happyFail (happyExpListPerState 76)

action_77 (60) = happyShift action_81
action_77 (75) = happyShift action_75
action_77 (88) = happyReduce_29
action_77 (29) = happyGoto action_80
action_77 (30) = happyGoto action_77
action_77 _ = happyReduce_29

action_78 (88) = happyAccept
action_78 _ = happyFail (happyExpListPerState 78)

action_79 _ = happyReduce_25

action_80 _ = happyReduce_27

action_81 (75) = happyShift action_75
action_81 (88) = happyReduce_28
action_81 (29) = happyGoto action_135
action_81 (30) = happyGoto action_77
action_81 _ = happyReduce_28

action_82 (63) = happyShift action_134
action_82 _ = happyFail (happyExpListPerState 82)

action_83 (48) = happyShift action_58
action_83 (51) = happyShift action_43
action_83 (67) = happyShift action_59
action_83 (68) = happyShift action_33
action_83 (72) = happyShift action_34
action_83 (73) = happyShift action_60
action_83 (75) = happyShift action_61
action_83 (78) = happyShift action_35
action_83 (79) = happyShift action_36
action_83 (80) = happyShift action_37
action_83 (83) = happyShift action_21
action_83 (84) = happyShift action_38
action_83 (85) = happyShift action_39
action_83 (86) = happyShift action_40
action_83 (87) = happyShift action_41
action_83 (23) = happyGoto action_44
action_83 (24) = happyGoto action_28
action_83 (25) = happyGoto action_29
action_83 (26) = happyGoto action_30
action_83 (27) = happyGoto action_31
action_83 (31) = happyGoto action_133
action_83 (32) = happyGoto action_45
action_83 (33) = happyGoto action_46
action_83 (34) = happyGoto action_47
action_83 (35) = happyGoto action_48
action_83 (36) = happyGoto action_49
action_83 (37) = happyGoto action_50
action_83 (38) = happyGoto action_51
action_83 (39) = happyGoto action_52
action_83 (40) = happyGoto action_53
action_83 (41) = happyGoto action_54
action_83 (42) = happyGoto action_73
action_83 (43) = happyGoto action_56
action_83 (44) = happyGoto action_57
action_83 _ = happyReduce_32

action_84 _ = happyReduce_39

action_85 (48) = happyShift action_58
action_85 (51) = happyShift action_43
action_85 (67) = happyShift action_59
action_85 (68) = happyShift action_33
action_85 (72) = happyShift action_34
action_85 (78) = happyShift action_35
action_85 (79) = happyShift action_36
action_85 (80) = happyShift action_37
action_85 (83) = happyShift action_21
action_85 (84) = happyShift action_38
action_85 (85) = happyShift action_39
action_85 (86) = happyShift action_40
action_85 (87) = happyShift action_41
action_85 (23) = happyGoto action_44
action_85 (24) = happyGoto action_28
action_85 (25) = happyGoto action_29
action_85 (26) = happyGoto action_30
action_85 (27) = happyGoto action_31
action_85 (32) = happyGoto action_45
action_85 (33) = happyGoto action_46
action_85 (34) = happyGoto action_132
action_85 (43) = happyGoto action_56
action_85 (44) = happyGoto action_57
action_85 _ = happyFail (happyExpListPerState 85)

action_86 (48) = happyShift action_58
action_86 (51) = happyShift action_43
action_86 (67) = happyShift action_59
action_86 (68) = happyShift action_33
action_86 (72) = happyShift action_34
action_86 (78) = happyShift action_35
action_86 (79) = happyShift action_36
action_86 (80) = happyShift action_37
action_86 (83) = happyShift action_21
action_86 (84) = happyShift action_38
action_86 (85) = happyShift action_39
action_86 (86) = happyShift action_40
action_86 (87) = happyShift action_41
action_86 (23) = happyGoto action_44
action_86 (24) = happyGoto action_28
action_86 (25) = happyGoto action_29
action_86 (26) = happyGoto action_30
action_86 (27) = happyGoto action_31
action_86 (32) = happyGoto action_45
action_86 (33) = happyGoto action_46
action_86 (34) = happyGoto action_131
action_86 (43) = happyGoto action_56
action_86 (44) = happyGoto action_57
action_86 _ = happyFail (happyExpListPerState 86)

action_87 (48) = happyShift action_58
action_87 (51) = happyShift action_43
action_87 (67) = happyShift action_59
action_87 (68) = happyShift action_33
action_87 (72) = happyShift action_34
action_87 (78) = happyShift action_35
action_87 (79) = happyShift action_36
action_87 (80) = happyShift action_37
action_87 (83) = happyShift action_21
action_87 (84) = happyShift action_38
action_87 (85) = happyShift action_39
action_87 (86) = happyShift action_40
action_87 (87) = happyShift action_41
action_87 (23) = happyGoto action_44
action_87 (24) = happyGoto action_28
action_87 (25) = happyGoto action_29
action_87 (26) = happyGoto action_30
action_87 (27) = happyGoto action_31
action_87 (32) = happyGoto action_45
action_87 (33) = happyGoto action_46
action_87 (34) = happyGoto action_130
action_87 (43) = happyGoto action_56
action_87 (44) = happyGoto action_57
action_87 _ = happyFail (happyExpListPerState 87)

action_88 (48) = happyShift action_58
action_88 (51) = happyShift action_43
action_88 (67) = happyShift action_59
action_88 (68) = happyShift action_33
action_88 (72) = happyShift action_34
action_88 (78) = happyShift action_35
action_88 (79) = happyShift action_36
action_88 (80) = happyShift action_37
action_88 (83) = happyShift action_21
action_88 (84) = happyShift action_38
action_88 (85) = happyShift action_39
action_88 (86) = happyShift action_40
action_88 (87) = happyShift action_41
action_88 (23) = happyGoto action_44
action_88 (24) = happyGoto action_28
action_88 (25) = happyGoto action_29
action_88 (26) = happyGoto action_30
action_88 (27) = happyGoto action_31
action_88 (32) = happyGoto action_45
action_88 (33) = happyGoto action_46
action_88 (34) = happyGoto action_47
action_88 (35) = happyGoto action_129
action_88 (43) = happyGoto action_56
action_88 (44) = happyGoto action_57
action_88 _ = happyFail (happyExpListPerState 88)

action_89 (48) = happyShift action_58
action_89 (51) = happyShift action_43
action_89 (67) = happyShift action_59
action_89 (68) = happyShift action_33
action_89 (72) = happyShift action_34
action_89 (78) = happyShift action_35
action_89 (79) = happyShift action_36
action_89 (80) = happyShift action_37
action_89 (83) = happyShift action_21
action_89 (84) = happyShift action_38
action_89 (85) = happyShift action_39
action_89 (86) = happyShift action_40
action_89 (87) = happyShift action_41
action_89 (23) = happyGoto action_44
action_89 (24) = happyGoto action_28
action_89 (25) = happyGoto action_29
action_89 (26) = happyGoto action_30
action_89 (27) = happyGoto action_31
action_89 (32) = happyGoto action_45
action_89 (33) = happyGoto action_46
action_89 (34) = happyGoto action_47
action_89 (35) = happyGoto action_128
action_89 (43) = happyGoto action_56
action_89 (44) = happyGoto action_57
action_89 _ = happyFail (happyExpListPerState 89)

action_90 (48) = happyShift action_58
action_90 (51) = happyShift action_43
action_90 (67) = happyShift action_59
action_90 (68) = happyShift action_33
action_90 (72) = happyShift action_34
action_90 (78) = happyShift action_35
action_90 (79) = happyShift action_36
action_90 (80) = happyShift action_37
action_90 (83) = happyShift action_21
action_90 (84) = happyShift action_38
action_90 (85) = happyShift action_39
action_90 (86) = happyShift action_40
action_90 (87) = happyShift action_41
action_90 (23) = happyGoto action_44
action_90 (24) = happyGoto action_28
action_90 (25) = happyGoto action_29
action_90 (26) = happyGoto action_30
action_90 (27) = happyGoto action_31
action_90 (32) = happyGoto action_45
action_90 (33) = happyGoto action_46
action_90 (34) = happyGoto action_47
action_90 (35) = happyGoto action_48
action_90 (36) = happyGoto action_49
action_90 (37) = happyGoto action_50
action_90 (38) = happyGoto action_51
action_90 (39) = happyGoto action_52
action_90 (40) = happyGoto action_127
action_90 (43) = happyGoto action_56
action_90 (44) = happyGoto action_57
action_90 _ = happyFail (happyExpListPerState 90)

action_91 (74) = happyShift action_126
action_91 _ = happyFail (happyExpListPerState 91)

action_92 (77) = happyShift action_125
action_92 _ = happyFail (happyExpListPerState 92)

action_93 (51) = happyShift action_43
action_93 (67) = happyShift action_59
action_93 (68) = happyShift action_33
action_93 (72) = happyShift action_34
action_93 (78) = happyShift action_35
action_93 (79) = happyShift action_36
action_93 (80) = happyShift action_37
action_93 (83) = happyShift action_21
action_93 (84) = happyShift action_38
action_93 (85) = happyShift action_39
action_93 (86) = happyShift action_40
action_93 (87) = happyShift action_41
action_93 (23) = happyGoto action_44
action_93 (24) = happyGoto action_28
action_93 (25) = happyGoto action_29
action_93 (26) = happyGoto action_30
action_93 (27) = happyGoto action_31
action_93 (32) = happyGoto action_84
action_93 (43) = happyGoto action_56
action_93 (44) = happyGoto action_57
action_93 _ = happyReduce_41

action_94 (48) = happyShift action_58
action_94 (51) = happyShift action_43
action_94 (67) = happyShift action_59
action_94 (68) = happyShift action_33
action_94 (72) = happyShift action_34
action_94 (78) = happyShift action_35
action_94 (79) = happyShift action_36
action_94 (80) = happyShift action_37
action_94 (83) = happyShift action_21
action_94 (84) = happyShift action_38
action_94 (85) = happyShift action_39
action_94 (86) = happyShift action_40
action_94 (87) = happyShift action_41
action_94 (23) = happyGoto action_44
action_94 (24) = happyGoto action_28
action_94 (25) = happyGoto action_29
action_94 (26) = happyGoto action_30
action_94 (27) = happyGoto action_31
action_94 (32) = happyGoto action_45
action_94 (33) = happyGoto action_46
action_94 (34) = happyGoto action_47
action_94 (35) = happyGoto action_48
action_94 (36) = happyGoto action_49
action_94 (37) = happyGoto action_50
action_94 (38) = happyGoto action_51
action_94 (39) = happyGoto action_52
action_94 (40) = happyGoto action_124
action_94 (43) = happyGoto action_56
action_94 (44) = happyGoto action_57
action_94 _ = happyFail (happyExpListPerState 94)

action_95 (48) = happyShift action_58
action_95 (51) = happyShift action_43
action_95 (67) = happyShift action_59
action_95 (68) = happyShift action_33
action_95 (72) = happyShift action_34
action_95 (78) = happyShift action_35
action_95 (79) = happyShift action_36
action_95 (80) = happyShift action_37
action_95 (83) = happyShift action_21
action_95 (84) = happyShift action_38
action_95 (85) = happyShift action_39
action_95 (86) = happyShift action_40
action_95 (87) = happyShift action_41
action_95 (23) = happyGoto action_44
action_95 (24) = happyGoto action_28
action_95 (25) = happyGoto action_29
action_95 (26) = happyGoto action_30
action_95 (27) = happyGoto action_31
action_95 (32) = happyGoto action_45
action_95 (33) = happyGoto action_46
action_95 (34) = happyGoto action_47
action_95 (35) = happyGoto action_48
action_95 (36) = happyGoto action_49
action_95 (37) = happyGoto action_50
action_95 (38) = happyGoto action_51
action_95 (39) = happyGoto action_123
action_95 (43) = happyGoto action_56
action_95 (44) = happyGoto action_57
action_95 _ = happyFail (happyExpListPerState 95)

action_96 (48) = happyShift action_58
action_96 (51) = happyShift action_43
action_96 (67) = happyShift action_59
action_96 (68) = happyShift action_33
action_96 (72) = happyShift action_34
action_96 (78) = happyShift action_35
action_96 (79) = happyShift action_36
action_96 (80) = happyShift action_37
action_96 (83) = happyShift action_21
action_96 (84) = happyShift action_38
action_96 (85) = happyShift action_39
action_96 (86) = happyShift action_40
action_96 (87) = happyShift action_41
action_96 (23) = happyGoto action_44
action_96 (24) = happyGoto action_28
action_96 (25) = happyGoto action_29
action_96 (26) = happyGoto action_30
action_96 (27) = happyGoto action_31
action_96 (32) = happyGoto action_45
action_96 (33) = happyGoto action_46
action_96 (34) = happyGoto action_47
action_96 (35) = happyGoto action_48
action_96 (36) = happyGoto action_49
action_96 (37) = happyGoto action_122
action_96 (43) = happyGoto action_56
action_96 (44) = happyGoto action_57
action_96 _ = happyFail (happyExpListPerState 96)

action_97 (48) = happyShift action_58
action_97 (51) = happyShift action_43
action_97 (67) = happyShift action_59
action_97 (68) = happyShift action_33
action_97 (72) = happyShift action_34
action_97 (78) = happyShift action_35
action_97 (79) = happyShift action_36
action_97 (80) = happyShift action_37
action_97 (83) = happyShift action_21
action_97 (84) = happyShift action_38
action_97 (85) = happyShift action_39
action_97 (86) = happyShift action_40
action_97 (87) = happyShift action_41
action_97 (23) = happyGoto action_44
action_97 (24) = happyGoto action_28
action_97 (25) = happyGoto action_29
action_97 (26) = happyGoto action_30
action_97 (27) = happyGoto action_31
action_97 (32) = happyGoto action_45
action_97 (33) = happyGoto action_46
action_97 (34) = happyGoto action_47
action_97 (35) = happyGoto action_48
action_97 (36) = happyGoto action_49
action_97 (37) = happyGoto action_121
action_97 (43) = happyGoto action_56
action_97 (44) = happyGoto action_57
action_97 _ = happyFail (happyExpListPerState 97)

action_98 (48) = happyShift action_58
action_98 (51) = happyShift action_43
action_98 (67) = happyShift action_59
action_98 (68) = happyShift action_33
action_98 (72) = happyShift action_34
action_98 (78) = happyShift action_35
action_98 (79) = happyShift action_36
action_98 (80) = happyShift action_37
action_98 (83) = happyShift action_21
action_98 (84) = happyShift action_38
action_98 (85) = happyShift action_39
action_98 (86) = happyShift action_40
action_98 (87) = happyShift action_41
action_98 (23) = happyGoto action_44
action_98 (24) = happyGoto action_28
action_98 (25) = happyGoto action_29
action_98 (26) = happyGoto action_30
action_98 (27) = happyGoto action_31
action_98 (32) = happyGoto action_45
action_98 (33) = happyGoto action_46
action_98 (34) = happyGoto action_47
action_98 (35) = happyGoto action_48
action_98 (36) = happyGoto action_49
action_98 (37) = happyGoto action_120
action_98 (43) = happyGoto action_56
action_98 (44) = happyGoto action_57
action_98 _ = happyFail (happyExpListPerState 98)

action_99 (48) = happyShift action_58
action_99 (51) = happyShift action_43
action_99 (67) = happyShift action_59
action_99 (68) = happyShift action_33
action_99 (72) = happyShift action_34
action_99 (78) = happyShift action_35
action_99 (79) = happyShift action_36
action_99 (80) = happyShift action_37
action_99 (83) = happyShift action_21
action_99 (84) = happyShift action_38
action_99 (85) = happyShift action_39
action_99 (86) = happyShift action_40
action_99 (87) = happyShift action_41
action_99 (23) = happyGoto action_44
action_99 (24) = happyGoto action_28
action_99 (25) = happyGoto action_29
action_99 (26) = happyGoto action_30
action_99 (27) = happyGoto action_31
action_99 (32) = happyGoto action_45
action_99 (33) = happyGoto action_46
action_99 (34) = happyGoto action_47
action_99 (35) = happyGoto action_48
action_99 (36) = happyGoto action_49
action_99 (37) = happyGoto action_119
action_99 (43) = happyGoto action_56
action_99 (44) = happyGoto action_57
action_99 _ = happyFail (happyExpListPerState 99)

action_100 (48) = happyShift action_58
action_100 (51) = happyShift action_43
action_100 (67) = happyShift action_59
action_100 (68) = happyShift action_33
action_100 (72) = happyShift action_34
action_100 (78) = happyShift action_35
action_100 (79) = happyShift action_36
action_100 (80) = happyShift action_37
action_100 (83) = happyShift action_21
action_100 (84) = happyShift action_38
action_100 (85) = happyShift action_39
action_100 (86) = happyShift action_40
action_100 (87) = happyShift action_41
action_100 (23) = happyGoto action_44
action_100 (24) = happyGoto action_28
action_100 (25) = happyGoto action_29
action_100 (26) = happyGoto action_30
action_100 (27) = happyGoto action_31
action_100 (32) = happyGoto action_45
action_100 (33) = happyGoto action_46
action_100 (34) = happyGoto action_47
action_100 (35) = happyGoto action_48
action_100 (36) = happyGoto action_49
action_100 (37) = happyGoto action_118
action_100 (43) = happyGoto action_56
action_100 (44) = happyGoto action_57
action_100 _ = happyFail (happyExpListPerState 100)

action_101 (48) = happyShift action_58
action_101 (51) = happyShift action_43
action_101 (67) = happyShift action_59
action_101 (68) = happyShift action_33
action_101 (72) = happyShift action_34
action_101 (78) = happyShift action_35
action_101 (79) = happyShift action_36
action_101 (80) = happyShift action_37
action_101 (83) = happyShift action_21
action_101 (84) = happyShift action_38
action_101 (85) = happyShift action_39
action_101 (86) = happyShift action_40
action_101 (87) = happyShift action_41
action_101 (23) = happyGoto action_44
action_101 (24) = happyGoto action_28
action_101 (25) = happyGoto action_29
action_101 (26) = happyGoto action_30
action_101 (27) = happyGoto action_31
action_101 (32) = happyGoto action_45
action_101 (33) = happyGoto action_46
action_101 (34) = happyGoto action_47
action_101 (35) = happyGoto action_48
action_101 (36) = happyGoto action_49
action_101 (37) = happyGoto action_117
action_101 (43) = happyGoto action_56
action_101 (44) = happyGoto action_57
action_101 _ = happyFail (happyExpListPerState 101)

action_102 (48) = happyShift action_58
action_102 (51) = happyShift action_43
action_102 (67) = happyShift action_59
action_102 (68) = happyShift action_33
action_102 (72) = happyShift action_34
action_102 (78) = happyShift action_35
action_102 (79) = happyShift action_36
action_102 (80) = happyShift action_37
action_102 (83) = happyShift action_21
action_102 (84) = happyShift action_38
action_102 (85) = happyShift action_39
action_102 (86) = happyShift action_40
action_102 (87) = happyShift action_41
action_102 (23) = happyGoto action_44
action_102 (24) = happyGoto action_28
action_102 (25) = happyGoto action_29
action_102 (26) = happyGoto action_30
action_102 (27) = happyGoto action_31
action_102 (32) = happyGoto action_45
action_102 (33) = happyGoto action_46
action_102 (34) = happyGoto action_47
action_102 (35) = happyGoto action_48
action_102 (36) = happyGoto action_49
action_102 (37) = happyGoto action_116
action_102 (43) = happyGoto action_56
action_102 (44) = happyGoto action_57
action_102 _ = happyFail (happyExpListPerState 102)

action_103 (52) = happyShift action_115
action_103 _ = happyFail (happyExpListPerState 103)

action_104 (48) = happyShift action_58
action_104 (51) = happyShift action_43
action_104 (67) = happyShift action_59
action_104 (68) = happyShift action_33
action_104 (72) = happyShift action_34
action_104 (73) = happyShift action_60
action_104 (75) = happyShift action_61
action_104 (78) = happyShift action_35
action_104 (79) = happyShift action_36
action_104 (80) = happyShift action_37
action_104 (83) = happyShift action_21
action_104 (84) = happyShift action_38
action_104 (85) = happyShift action_39
action_104 (86) = happyShift action_40
action_104 (87) = happyShift action_41
action_104 (23) = happyGoto action_44
action_104 (24) = happyGoto action_28
action_104 (25) = happyGoto action_29
action_104 (26) = happyGoto action_30
action_104 (27) = happyGoto action_31
action_104 (32) = happyGoto action_45
action_104 (33) = happyGoto action_46
action_104 (34) = happyGoto action_47
action_104 (35) = happyGoto action_48
action_104 (36) = happyGoto action_49
action_104 (37) = happyGoto action_50
action_104 (38) = happyGoto action_51
action_104 (39) = happyGoto action_52
action_104 (40) = happyGoto action_53
action_104 (41) = happyGoto action_54
action_104 (42) = happyGoto action_114
action_104 (43) = happyGoto action_56
action_104 (44) = happyGoto action_57
action_104 _ = happyFail (happyExpListPerState 104)

action_105 (69) = happyShift action_113
action_105 _ = happyFail (happyExpListPerState 105)

action_106 (83) = happyShift action_21
action_106 (23) = happyGoto action_26
action_106 (45) = happyGoto action_112
action_106 _ = happyReduce_78

action_107 _ = happyReduce_79

action_108 (83) = happyShift action_21
action_108 (23) = happyGoto action_22
action_108 (46) = happyGoto action_111
action_108 (47) = happyGoto action_25
action_108 _ = happyReduce_81

action_109 (48) = happyShift action_58
action_109 (51) = happyShift action_43
action_109 (67) = happyShift action_59
action_109 (68) = happyShift action_33
action_109 (72) = happyShift action_34
action_109 (73) = happyShift action_60
action_109 (75) = happyShift action_61
action_109 (78) = happyShift action_35
action_109 (79) = happyShift action_36
action_109 (80) = happyShift action_37
action_109 (83) = happyShift action_21
action_109 (84) = happyShift action_38
action_109 (85) = happyShift action_39
action_109 (86) = happyShift action_40
action_109 (87) = happyShift action_41
action_109 (23) = happyGoto action_44
action_109 (24) = happyGoto action_28
action_109 (25) = happyGoto action_29
action_109 (26) = happyGoto action_30
action_109 (27) = happyGoto action_31
action_109 (32) = happyGoto action_45
action_109 (33) = happyGoto action_46
action_109 (34) = happyGoto action_47
action_109 (35) = happyGoto action_48
action_109 (36) = happyGoto action_49
action_109 (37) = happyGoto action_50
action_109 (38) = happyGoto action_51
action_109 (39) = happyGoto action_52
action_109 (40) = happyGoto action_53
action_109 (41) = happyGoto action_54
action_109 (42) = happyGoto action_110
action_109 (43) = happyGoto action_56
action_109 (44) = happyGoto action_57
action_109 _ = happyFail (happyExpListPerState 109)

action_110 _ = happyReduce_84

action_111 _ = happyReduce_83

action_112 _ = happyReduce_80

action_113 _ = happyReduce_76

action_114 (82) = happyShift action_139
action_114 _ = happyFail (happyExpListPerState 114)

action_115 _ = happyReduce_68

action_116 _ = happyReduce_50

action_117 _ = happyReduce_55

action_118 _ = happyReduce_53

action_119 _ = happyReduce_56

action_120 _ = happyReduce_54

action_121 _ = happyReduce_52

action_122 _ = happyReduce_57

action_123 _ = happyReduce_59

action_124 _ = happyReduce_61

action_125 (48) = happyShift action_58
action_125 (51) = happyShift action_43
action_125 (67) = happyShift action_59
action_125 (68) = happyShift action_33
action_125 (72) = happyShift action_34
action_125 (73) = happyShift action_60
action_125 (75) = happyShift action_61
action_125 (78) = happyShift action_35
action_125 (79) = happyShift action_36
action_125 (80) = happyShift action_37
action_125 (83) = happyShift action_21
action_125 (84) = happyShift action_38
action_125 (85) = happyShift action_39
action_125 (86) = happyShift action_40
action_125 (87) = happyShift action_41
action_125 (23) = happyGoto action_44
action_125 (24) = happyGoto action_28
action_125 (25) = happyGoto action_29
action_125 (26) = happyGoto action_30
action_125 (27) = happyGoto action_31
action_125 (32) = happyGoto action_45
action_125 (33) = happyGoto action_46
action_125 (34) = happyGoto action_47
action_125 (35) = happyGoto action_48
action_125 (36) = happyGoto action_49
action_125 (37) = happyGoto action_50
action_125 (38) = happyGoto action_51
action_125 (39) = happyGoto action_52
action_125 (40) = happyGoto action_53
action_125 (41) = happyGoto action_54
action_125 (42) = happyGoto action_138
action_125 (43) = happyGoto action_56
action_125 (44) = happyGoto action_57
action_125 _ = happyFail (happyExpListPerState 125)

action_126 (48) = happyShift action_58
action_126 (51) = happyShift action_43
action_126 (67) = happyShift action_59
action_126 (68) = happyShift action_33
action_126 (72) = happyShift action_34
action_126 (73) = happyShift action_60
action_126 (75) = happyShift action_61
action_126 (78) = happyShift action_35
action_126 (79) = happyShift action_36
action_126 (80) = happyShift action_37
action_126 (83) = happyShift action_21
action_126 (84) = happyShift action_38
action_126 (85) = happyShift action_39
action_126 (86) = happyShift action_40
action_126 (87) = happyShift action_41
action_126 (23) = happyGoto action_44
action_126 (24) = happyGoto action_28
action_126 (25) = happyGoto action_29
action_126 (26) = happyGoto action_30
action_126 (27) = happyGoto action_31
action_126 (32) = happyGoto action_45
action_126 (33) = happyGoto action_46
action_126 (34) = happyGoto action_47
action_126 (35) = happyGoto action_48
action_126 (36) = happyGoto action_49
action_126 (37) = happyGoto action_50
action_126 (38) = happyGoto action_51
action_126 (39) = happyGoto action_52
action_126 (40) = happyGoto action_53
action_126 (41) = happyGoto action_54
action_126 (42) = happyGoto action_137
action_126 (43) = happyGoto action_56
action_126 (44) = happyGoto action_57
action_126 _ = happyFail (happyExpListPerState 126)

action_127 _ = happyReduce_63

action_128 (50) = happyShift action_85
action_128 (53) = happyShift action_86
action_128 (58) = happyShift action_87
action_128 _ = happyReduce_48

action_129 (50) = happyShift action_85
action_129 (53) = happyShift action_86
action_129 (58) = happyShift action_87
action_129 _ = happyReduce_47

action_130 _ = happyReduce_44

action_131 _ = happyReduce_43

action_132 _ = happyReduce_45

action_133 _ = happyReduce_34

action_134 (48) = happyShift action_58
action_134 (51) = happyShift action_43
action_134 (67) = happyShift action_59
action_134 (68) = happyShift action_33
action_134 (72) = happyShift action_34
action_134 (73) = happyShift action_60
action_134 (75) = happyShift action_61
action_134 (78) = happyShift action_35
action_134 (79) = happyShift action_36
action_134 (80) = happyShift action_37
action_134 (83) = happyShift action_21
action_134 (84) = happyShift action_38
action_134 (85) = happyShift action_39
action_134 (86) = happyShift action_40
action_134 (87) = happyShift action_41
action_134 (23) = happyGoto action_44
action_134 (24) = happyGoto action_28
action_134 (25) = happyGoto action_29
action_134 (26) = happyGoto action_30
action_134 (27) = happyGoto action_31
action_134 (32) = happyGoto action_45
action_134 (33) = happyGoto action_46
action_134 (34) = happyGoto action_47
action_134 (35) = happyGoto action_48
action_134 (36) = happyGoto action_49
action_134 (37) = happyGoto action_50
action_134 (38) = happyGoto action_51
action_134 (39) = happyGoto action_52
action_134 (40) = happyGoto action_53
action_134 (41) = happyGoto action_54
action_134 (42) = happyGoto action_136
action_134 (43) = happyGoto action_56
action_134 (44) = happyGoto action_57
action_134 _ = happyFail (happyExpListPerState 134)

action_135 _ = happyReduce_30

action_136 _ = happyReduce_31

action_137 _ = happyReduce_66

action_138 (71) = happyShift action_140
action_138 _ = happyFail (happyExpListPerState 138)

action_139 _ = happyReduce_77

action_140 (48) = happyShift action_58
action_140 (51) = happyShift action_43
action_140 (67) = happyShift action_59
action_140 (68) = happyShift action_33
action_140 (72) = happyShift action_34
action_140 (73) = happyShift action_60
action_140 (75) = happyShift action_61
action_140 (78) = happyShift action_35
action_140 (79) = happyShift action_36
action_140 (80) = happyShift action_37
action_140 (83) = happyShift action_21
action_140 (84) = happyShift action_38
action_140 (85) = happyShift action_39
action_140 (86) = happyShift action_40
action_140 (87) = happyShift action_41
action_140 (23) = happyGoto action_44
action_140 (24) = happyGoto action_28
action_140 (25) = happyGoto action_29
action_140 (26) = happyGoto action_30
action_140 (27) = happyGoto action_31
action_140 (32) = happyGoto action_45
action_140 (33) = happyGoto action_46
action_140 (34) = happyGoto action_47
action_140 (35) = happyGoto action_48
action_140 (36) = happyGoto action_49
action_140 (37) = happyGoto action_50
action_140 (38) = happyGoto action_51
action_140 (39) = happyGoto action_52
action_140 (40) = happyGoto action_53
action_140 (41) = happyGoto action_54
action_140 (42) = happyGoto action_141
action_140 (43) = happyGoto action_56
action_140 (44) = happyGoto action_57
action_140 _ = happyFail (happyExpListPerState 140)

action_141 _ = happyReduce_65

happyReduce_20 = happySpecReduce_1  23 happyReduction_20
happyReduction_20 (HappyTerminal (PT _ (TV happy_var_1)))
	 =  HappyAbsSyn23
		 (AbsSperg.Ident happy_var_1
	)
happyReduction_20 _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_1  24 happyReduction_21
happyReduction_21 (HappyTerminal (PT _ (TI happy_var_1)))
	 =  HappyAbsSyn24
		 ((read (happy_var_1)) :: Integer
	)
happyReduction_21 _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_1  25 happyReduction_22
happyReduction_22 (HappyTerminal (PT _ (TD happy_var_1)))
	 =  HappyAbsSyn25
		 ((read (happy_var_1)) :: Double
	)
happyReduction_22 _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_1  26 happyReduction_23
happyReduction_23 (HappyTerminal (PT _ (TC happy_var_1)))
	 =  HappyAbsSyn26
		 ((read (happy_var_1)) :: Char
	)
happyReduction_23 _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_1  27 happyReduction_24
happyReduction_24 (HappyTerminal (PT _ (TL happy_var_1)))
	 =  HappyAbsSyn27
		 (happy_var_1
	)
happyReduction_24 _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_1  28 happyReduction_25
happyReduction_25 (HappyAbsSyn29  happy_var_1)
	 =  HappyAbsSyn28
		 (AbsSperg.Program happy_var_1
	)
happyReduction_25 _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_0  29 happyReduction_26
happyReduction_26  =  HappyAbsSyn29
		 ([]
	)

happyReduce_27 = happySpecReduce_2  29 happyReduction_27
happyReduction_27 (HappyAbsSyn29  happy_var_2)
	(HappyAbsSyn30  happy_var_1)
	 =  HappyAbsSyn29
		 ((:) happy_var_1 happy_var_2
	)
happyReduction_27 _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_0  29 happyReduction_28
happyReduction_28  =  HappyAbsSyn29
		 ([]
	)

happyReduce_29 = happySpecReduce_1  29 happyReduction_29
happyReduction_29 (HappyAbsSyn30  happy_var_1)
	 =  HappyAbsSyn29
		 ((:[]) happy_var_1
	)
happyReduction_29 _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_3  29 happyReduction_30
happyReduction_30 (HappyAbsSyn29  happy_var_3)
	_
	(HappyAbsSyn30  happy_var_1)
	 =  HappyAbsSyn29
		 ((:) happy_var_1 happy_var_3
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happyReduce 4 30 happyReduction_31
happyReduction_31 ((HappyAbsSyn32  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn23  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn30
		 (AbsSperg.SBind happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_32 = happySpecReduce_0  31 happyReduction_32
happyReduction_32  =  HappyAbsSyn31
		 ([]
	)

happyReduce_33 = happySpecReduce_1  31 happyReduction_33
happyReduction_33 (HappyAbsSyn32  happy_var_1)
	 =  HappyAbsSyn31
		 ((:[]) happy_var_1
	)
happyReduction_33 _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_3  31 happyReduction_34
happyReduction_34 (HappyAbsSyn31  happy_var_3)
	_
	(HappyAbsSyn32  happy_var_1)
	 =  HappyAbsSyn31
		 ((:) happy_var_1 happy_var_3
	)
happyReduction_34 _ _ _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_1  32 happyReduction_35
happyReduction_35 (HappyAbsSyn23  happy_var_1)
	 =  HappyAbsSyn32
		 (AbsSperg.EIdent happy_var_1
	)
happyReduction_35 _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_1  32 happyReduction_36
happyReduction_36 (HappyAbsSyn44  happy_var_1)
	 =  HappyAbsSyn32
		 (AbsSperg.ELit happy_var_1
	)
happyReduction_36 _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_1  32 happyReduction_37
happyReduction_37 _
	 =  HappyAbsSyn32
		 (AbsSperg.EPlace
	)

happyReduce_38 = happySpecReduce_1  32 happyReduction_38
happyReduction_38 (HappyAbsSyn32  happy_var_1)
	 =  HappyAbsSyn32
		 (happy_var_1
	)
happyReduction_38 _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_2  33 happyReduction_39
happyReduction_39 (HappyAbsSyn32  happy_var_2)
	(HappyAbsSyn32  happy_var_1)
	 =  HappyAbsSyn32
		 (AbsSperg.EApply happy_var_1 happy_var_2
	)
happyReduction_39 _ _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_1  33 happyReduction_40
happyReduction_40 (HappyAbsSyn32  happy_var_1)
	 =  HappyAbsSyn32
		 (happy_var_1
	)
happyReduction_40 _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_2  34 happyReduction_41
happyReduction_41 (HappyAbsSyn32  happy_var_2)
	_
	 =  HappyAbsSyn32
		 (AbsSperg.EForce happy_var_2
	)
happyReduction_41 _ _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_1  34 happyReduction_42
happyReduction_42 (HappyAbsSyn32  happy_var_1)
	 =  HappyAbsSyn32
		 (happy_var_1
	)
happyReduction_42 _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_3  35 happyReduction_43
happyReduction_43 (HappyAbsSyn32  happy_var_3)
	_
	(HappyAbsSyn32  happy_var_1)
	 =  HappyAbsSyn32
		 (AbsSperg.EMul happy_var_1 happy_var_3
	)
happyReduction_43 _ _ _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_3  35 happyReduction_44
happyReduction_44 (HappyAbsSyn32  happy_var_3)
	_
	(HappyAbsSyn32  happy_var_1)
	 =  HappyAbsSyn32
		 (AbsSperg.EDiv happy_var_1 happy_var_3
	)
happyReduction_44 _ _ _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_3  35 happyReduction_45
happyReduction_45 (HappyAbsSyn32  happy_var_3)
	_
	(HappyAbsSyn32  happy_var_1)
	 =  HappyAbsSyn32
		 (AbsSperg.EMod happy_var_1 happy_var_3
	)
happyReduction_45 _ _ _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_1  35 happyReduction_46
happyReduction_46 (HappyAbsSyn32  happy_var_1)
	 =  HappyAbsSyn32
		 (happy_var_1
	)
happyReduction_46 _  = notHappyAtAll 

happyReduce_47 = happySpecReduce_3  36 happyReduction_47
happyReduction_47 (HappyAbsSyn32  happy_var_3)
	_
	(HappyAbsSyn32  happy_var_1)
	 =  HappyAbsSyn32
		 (AbsSperg.EAdd happy_var_1 happy_var_3
	)
happyReduction_47 _ _ _  = notHappyAtAll 

happyReduce_48 = happySpecReduce_3  36 happyReduction_48
happyReduction_48 (HappyAbsSyn32  happy_var_3)
	_
	(HappyAbsSyn32  happy_var_1)
	 =  HappyAbsSyn32
		 (AbsSperg.ESub happy_var_1 happy_var_3
	)
happyReduction_48 _ _ _  = notHappyAtAll 

happyReduce_49 = happySpecReduce_1  36 happyReduction_49
happyReduction_49 (HappyAbsSyn32  happy_var_1)
	 =  HappyAbsSyn32
		 (happy_var_1
	)
happyReduction_49 _  = notHappyAtAll 

happyReduce_50 = happySpecReduce_3  37 happyReduction_50
happyReduction_50 (HappyAbsSyn32  happy_var_3)
	_
	(HappyAbsSyn32  happy_var_1)
	 =  HappyAbsSyn32
		 (AbsSperg.ECons happy_var_1 happy_var_3
	)
happyReduction_50 _ _ _  = notHappyAtAll 

happyReduce_51 = happySpecReduce_1  37 happyReduction_51
happyReduction_51 (HappyAbsSyn32  happy_var_1)
	 =  HappyAbsSyn32
		 (happy_var_1
	)
happyReduction_51 _  = notHappyAtAll 

happyReduce_52 = happySpecReduce_3  38 happyReduction_52
happyReduction_52 (HappyAbsSyn32  happy_var_3)
	_
	(HappyAbsSyn32  happy_var_1)
	 =  HappyAbsSyn32
		 (AbsSperg.ELess happy_var_1 happy_var_3
	)
happyReduction_52 _ _ _  = notHappyAtAll 

happyReduce_53 = happySpecReduce_3  38 happyReduction_53
happyReduction_53 (HappyAbsSyn32  happy_var_3)
	_
	(HappyAbsSyn32  happy_var_1)
	 =  HappyAbsSyn32
		 (AbsSperg.EMore happy_var_1 happy_var_3
	)
happyReduction_53 _ _ _  = notHappyAtAll 

happyReduce_54 = happySpecReduce_3  38 happyReduction_54
happyReduction_54 (HappyAbsSyn32  happy_var_3)
	_
	(HappyAbsSyn32  happy_var_1)
	 =  HappyAbsSyn32
		 (AbsSperg.ELessEq happy_var_1 happy_var_3
	)
happyReduction_54 _ _ _  = notHappyAtAll 

happyReduce_55 = happySpecReduce_3  38 happyReduction_55
happyReduction_55 (HappyAbsSyn32  happy_var_3)
	_
	(HappyAbsSyn32  happy_var_1)
	 =  HappyAbsSyn32
		 (AbsSperg.EMoreEq happy_var_1 happy_var_3
	)
happyReduction_55 _ _ _  = notHappyAtAll 

happyReduce_56 = happySpecReduce_3  38 happyReduction_56
happyReduction_56 (HappyAbsSyn32  happy_var_3)
	_
	(HappyAbsSyn32  happy_var_1)
	 =  HappyAbsSyn32
		 (AbsSperg.EEqual happy_var_1 happy_var_3
	)
happyReduction_56 _ _ _  = notHappyAtAll 

happyReduce_57 = happySpecReduce_3  38 happyReduction_57
happyReduction_57 (HappyAbsSyn32  happy_var_3)
	_
	(HappyAbsSyn32  happy_var_1)
	 =  HappyAbsSyn32
		 (AbsSperg.ENEqual happy_var_1 happy_var_3
	)
happyReduction_57 _ _ _  = notHappyAtAll 

happyReduce_58 = happySpecReduce_1  38 happyReduction_58
happyReduction_58 (HappyAbsSyn32  happy_var_1)
	 =  HappyAbsSyn32
		 (happy_var_1
	)
happyReduction_58 _  = notHappyAtAll 

happyReduce_59 = happySpecReduce_3  39 happyReduction_59
happyReduction_59 (HappyAbsSyn32  happy_var_3)
	_
	(HappyAbsSyn32  happy_var_1)
	 =  HappyAbsSyn32
		 (AbsSperg.EAnd happy_var_1 happy_var_3
	)
happyReduction_59 _ _ _  = notHappyAtAll 

happyReduce_60 = happySpecReduce_1  39 happyReduction_60
happyReduction_60 (HappyAbsSyn32  happy_var_1)
	 =  HappyAbsSyn32
		 (happy_var_1
	)
happyReduction_60 _  = notHappyAtAll 

happyReduce_61 = happySpecReduce_3  40 happyReduction_61
happyReduction_61 (HappyAbsSyn32  happy_var_3)
	_
	(HappyAbsSyn32  happy_var_1)
	 =  HappyAbsSyn32
		 (AbsSperg.EOr happy_var_1 happy_var_3
	)
happyReduction_61 _ _ _  = notHappyAtAll 

happyReduce_62 = happySpecReduce_1  40 happyReduction_62
happyReduction_62 (HappyAbsSyn32  happy_var_1)
	 =  HappyAbsSyn32
		 (happy_var_1
	)
happyReduction_62 _  = notHappyAtAll 

happyReduce_63 = happySpecReduce_3  41 happyReduction_63
happyReduction_63 (HappyAbsSyn32  happy_var_3)
	_
	(HappyAbsSyn32  happy_var_1)
	 =  HappyAbsSyn32
		 (AbsSperg.EShove happy_var_1 happy_var_3
	)
happyReduction_63 _ _ _  = notHappyAtAll 

happyReduce_64 = happySpecReduce_1  41 happyReduction_64
happyReduction_64 (HappyAbsSyn32  happy_var_1)
	 =  HappyAbsSyn32
		 (happy_var_1
	)
happyReduction_64 _  = notHappyAtAll 

happyReduce_65 = happyReduce 6 42 happyReduction_65
happyReduction_65 ((HappyAbsSyn32  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn32  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn32  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn32
		 (AbsSperg.EIfThen happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_66 = happyReduce 4 42 happyReduction_66
happyReduction_66 ((HappyAbsSyn32  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn46  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn32
		 (AbsSperg.ELetIn happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_67 = happySpecReduce_1  42 happyReduction_67
happyReduction_67 (HappyAbsSyn32  happy_var_1)
	 =  HappyAbsSyn32
		 (happy_var_1
	)
happyReduction_67 _  = notHappyAtAll 

happyReduce_68 = happySpecReduce_3  43 happyReduction_68
happyReduction_68 _
	(HappyAbsSyn32  happy_var_2)
	_
	 =  HappyAbsSyn32
		 (happy_var_2
	)
happyReduction_68 _ _ _  = notHappyAtAll 

happyReduce_69 = happySpecReduce_1  44 happyReduction_69
happyReduction_69 (HappyAbsSyn24  happy_var_1)
	 =  HappyAbsSyn44
		 (AbsSperg.LInt happy_var_1
	)
happyReduction_69 _  = notHappyAtAll 

happyReduce_70 = happySpecReduce_1  44 happyReduction_70
happyReduction_70 (HappyAbsSyn25  happy_var_1)
	 =  HappyAbsSyn44
		 (AbsSperg.LDouble happy_var_1
	)
happyReduction_70 _  = notHappyAtAll 

happyReduce_71 = happySpecReduce_1  44 happyReduction_71
happyReduction_71 (HappyAbsSyn26  happy_var_1)
	 =  HappyAbsSyn44
		 (AbsSperg.LChar happy_var_1
	)
happyReduction_71 _  = notHappyAtAll 

happyReduce_72 = happySpecReduce_1  44 happyReduction_72
happyReduction_72 (HappyAbsSyn27  happy_var_1)
	 =  HappyAbsSyn44
		 (AbsSperg.LString happy_var_1
	)
happyReduction_72 _  = notHappyAtAll 

happyReduce_73 = happySpecReduce_1  44 happyReduction_73
happyReduction_73 _
	 =  HappyAbsSyn44
		 (AbsSperg.LTrue
	)

happyReduce_74 = happySpecReduce_1  44 happyReduction_74
happyReduction_74 _
	 =  HappyAbsSyn44
		 (AbsSperg.LFalse
	)

happyReduce_75 = happySpecReduce_1  44 happyReduction_75
happyReduction_75 _
	 =  HappyAbsSyn44
		 (AbsSperg.LVoid
	)

happyReduce_76 = happySpecReduce_3  44 happyReduction_76
happyReduction_76 _
	(HappyAbsSyn31  happy_var_2)
	_
	 =  HappyAbsSyn44
		 (AbsSperg.LList happy_var_2
	)
happyReduction_76 _ _ _  = notHappyAtAll 

happyReduce_77 = happyReduce 4 44 happyReduction_77
happyReduction_77 (_ `HappyStk`
	(HappyAbsSyn32  happy_var_3) `HappyStk`
	(HappyAbsSyn45  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn44
		 (AbsSperg.LLambda happy_var_2 happy_var_3
	) `HappyStk` happyRest

happyReduce_78 = happySpecReduce_0  45 happyReduction_78
happyReduction_78  =  HappyAbsSyn45
		 ([]
	)

happyReduce_79 = happySpecReduce_2  45 happyReduction_79
happyReduction_79 _
	(HappyAbsSyn23  happy_var_1)
	 =  HappyAbsSyn45
		 ((:[]) happy_var_1
	)
happyReduction_79 _ _  = notHappyAtAll 

happyReduce_80 = happySpecReduce_3  45 happyReduction_80
happyReduction_80 (HappyAbsSyn45  happy_var_3)
	_
	(HappyAbsSyn23  happy_var_1)
	 =  HappyAbsSyn45
		 ((:) happy_var_1 happy_var_3
	)
happyReduction_80 _ _ _  = notHappyAtAll 

happyReduce_81 = happySpecReduce_0  46 happyReduction_81
happyReduction_81  =  HappyAbsSyn46
		 ([]
	)

happyReduce_82 = happySpecReduce_1  46 happyReduction_82
happyReduction_82 (HappyAbsSyn47  happy_var_1)
	 =  HappyAbsSyn46
		 ((:[]) happy_var_1
	)
happyReduction_82 _  = notHappyAtAll 

happyReduce_83 = happySpecReduce_3  46 happyReduction_83
happyReduction_83 (HappyAbsSyn46  happy_var_3)
	_
	(HappyAbsSyn47  happy_var_1)
	 =  HappyAbsSyn46
		 ((:) happy_var_1 happy_var_3
	)
happyReduction_83 _ _ _  = notHappyAtAll 

happyReduce_84 = happySpecReduce_3  47 happyReduction_84
happyReduction_84 (HappyAbsSyn32  happy_var_3)
	_
	(HappyAbsSyn23  happy_var_1)
	 =  HappyAbsSyn47
		 (AbsSperg.Bind happy_var_1 happy_var_3
	)
happyReduction_84 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 88 88 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	PT _ (TS _ 1) -> cont 48;
	PT _ (TS _ 2) -> cont 49;
	PT _ (TS _ 3) -> cont 50;
	PT _ (TS _ 4) -> cont 51;
	PT _ (TS _ 5) -> cont 52;
	PT _ (TS _ 6) -> cont 53;
	PT _ (TS _ 7) -> cont 54;
	PT _ (TS _ 8) -> cont 55;
	PT _ (TS _ 9) -> cont 56;
	PT _ (TS _ 10) -> cont 57;
	PT _ (TS _ 11) -> cont 58;
	PT _ (TS _ 12) -> cont 59;
	PT _ (TS _ 13) -> cont 60;
	PT _ (TS _ 14) -> cont 61;
	PT _ (TS _ 15) -> cont 62;
	PT _ (TS _ 16) -> cont 63;
	PT _ (TS _ 17) -> cont 64;
	PT _ (TS _ 18) -> cont 65;
	PT _ (TS _ 19) -> cont 66;
	PT _ (TS _ 20) -> cont 67;
	PT _ (TS _ 21) -> cont 68;
	PT _ (TS _ 22) -> cont 69;
	PT _ (TS _ 23) -> cont 70;
	PT _ (TS _ 24) -> cont 71;
	PT _ (TS _ 25) -> cont 72;
	PT _ (TS _ 26) -> cont 73;
	PT _ (TS _ 27) -> cont 74;
	PT _ (TS _ 28) -> cont 75;
	PT _ (TS _ 29) -> cont 76;
	PT _ (TS _ 30) -> cont 77;
	PT _ (TS _ 31) -> cont 78;
	PT _ (TS _ 32) -> cont 79;
	PT _ (TS _ 33) -> cont 80;
	PT _ (TS _ 34) -> cont 81;
	PT _ (TS _ 35) -> cont 82;
	PT _ (TV happy_dollar_dollar) -> cont 83;
	PT _ (TI happy_dollar_dollar) -> cont 84;
	PT _ (TD happy_dollar_dollar) -> cont 85;
	PT _ (TC happy_dollar_dollar) -> cont 86;
	PT _ (TL happy_dollar_dollar) -> cont 87;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 88 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

happyThen :: () => Either String a -> (a -> Either String b) -> Either String b
happyThen = ((>>=))
happyReturn :: () => a -> Either String a
happyReturn = (return)
happyThen1 m k tks = ((>>=)) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> Either String a
happyReturn1 = \a tks -> (return) a
happyError' :: () => ([(Token)], [String]) -> Either String a
happyError' = (\(tokens, _) -> happyError tokens)
pProg tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn28 z -> happyReturn z; _other -> notHappyAtAll })

pListStmt tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_1 tks) (\x -> case x of {HappyAbsSyn29 z -> happyReturn z; _other -> notHappyAtAll })

pStmt tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_2 tks) (\x -> case x of {HappyAbsSyn30 z -> happyReturn z; _other -> notHappyAtAll })

pListExpr tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_3 tks) (\x -> case x of {HappyAbsSyn31 z -> happyReturn z; _other -> notHappyAtAll })

pExpr10 tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_4 tks) (\x -> case x of {HappyAbsSyn32 z -> happyReturn z; _other -> notHappyAtAll })

pExpr9 tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_5 tks) (\x -> case x of {HappyAbsSyn32 z -> happyReturn z; _other -> notHappyAtAll })

pExpr8 tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_6 tks) (\x -> case x of {HappyAbsSyn32 z -> happyReturn z; _other -> notHappyAtAll })

pExpr7 tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_7 tks) (\x -> case x of {HappyAbsSyn32 z -> happyReturn z; _other -> notHappyAtAll })

pExpr6 tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_8 tks) (\x -> case x of {HappyAbsSyn32 z -> happyReturn z; _other -> notHappyAtAll })

pExpr5 tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_9 tks) (\x -> case x of {HappyAbsSyn32 z -> happyReturn z; _other -> notHappyAtAll })

pExpr4 tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_10 tks) (\x -> case x of {HappyAbsSyn32 z -> happyReturn z; _other -> notHappyAtAll })

pExpr3 tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_11 tks) (\x -> case x of {HappyAbsSyn32 z -> happyReturn z; _other -> notHappyAtAll })

pExpr2 tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_12 tks) (\x -> case x of {HappyAbsSyn32 z -> happyReturn z; _other -> notHappyAtAll })

pExpr1 tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_13 tks) (\x -> case x of {HappyAbsSyn32 z -> happyReturn z; _other -> notHappyAtAll })

pExpr tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_14 tks) (\x -> case x of {HappyAbsSyn32 z -> happyReturn z; _other -> notHappyAtAll })

pExpr11 tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_15 tks) (\x -> case x of {HappyAbsSyn32 z -> happyReturn z; _other -> notHappyAtAll })

pLit tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_16 tks) (\x -> case x of {HappyAbsSyn44 z -> happyReturn z; _other -> notHappyAtAll })

pListIdent tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_17 tks) (\x -> case x of {HappyAbsSyn45 z -> happyReturn z; _other -> notHappyAtAll })

pListBind tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_18 tks) (\x -> case x of {HappyAbsSyn46 z -> happyReturn z; _other -> notHappyAtAll })

pBind tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_19 tks) (\x -> case x of {HappyAbsSyn47 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


happyError :: [Token] -> Either String a
happyError ts = Left $
  "syntax error at " ++ tokenPos ts ++
  case ts of
    []      -> []
    [Err _] -> " due to lexer error"
    t:_     -> " before `" ++ (prToken t) ++ "'"

myLexer = tokens
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- $Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp $










































data Happy_IntList = HappyCons Int Happy_IntList








































infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is ERROR_TOK, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action









































indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x < y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `div` 16)) (bit `mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction









happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery (ERROR_TOK is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  ERROR_TOK tk old_st CONS(HAPPYSTATE(action),sts) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        DO_ACTION(action,ERROR_TOK,tk,sts,(saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ((HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.









{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
