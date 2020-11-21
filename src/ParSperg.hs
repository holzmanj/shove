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
	| HappyAbsSyn31 (AbsSperg.Expr)
	| HappyAbsSyn43 (AbsSperg.Lit)
	| HappyAbsSyn44 ([AbsSperg.Elem])
	| HappyAbsSyn45 (AbsSperg.Elem)
	| HappyAbsSyn46 ([AbsSperg.Param])
	| HappyAbsSyn47 (AbsSperg.Param)

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
 action_133 :: () => Int -> ({-HappyReduction (Either String) = -}
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
 happyReduce_80 :: () => ({-HappyReduction (Either String) = -}
	   Int 
	-> (Token)
	-> HappyState (Token) (HappyStk HappyAbsSyn -> [(Token)] -> (Either String) HappyAbsSyn)
	-> [HappyState (Token) (HappyStk HappyAbsSyn -> [(Token)] -> (Either String) HappyAbsSyn)] 
	-> HappyStk HappyAbsSyn 
	-> [(Token)] -> (Either String) HappyAbsSyn)

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,874) ([0,0,0,0,256,0,0,0,0,16384,0,0,0,0,0,16,0,0,0,16,57616,124,0,0,1024,17408,7992,0,0,8192,1,52753,7,0,0,72,33856,499,0,0,4608,4096,31969,0,0,32768,4,14404,31,0,0,288,4352,1998,0,0,18432,16384,62340,1,0,0,18,57616,124,0,0,1152,17408,7992,0,0,8192,1,52785,7,0,0,64,0,0,0,0,0,4096,30945,0,0,32768,4,14532,31,0,0,288,12544,1998,0,0,0,0,4096,0,0,0,0,0,4,0,0,0,0,256,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4096,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,33,0,0,0,0,4736,0,0,0,0,256,944,0,0,0,0,0,4,0,0,0,0,8192,0,0,0,0,0,0,0,0,0,256,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,52753,7,0,0,72,35904,499,0,0,4608,4096,31971,0,0,0,0,0,0,0,0,288,12544,1998,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,256,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4096,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,640,0,0,0,0,4608,2,0,0,0,0,0,0,0,0,0,64,33856,499,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,64,0,0,0,0,0,0,0,0,8192,1024,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,16384,0,0,0,0,0,0,0,0,0,18432,16384,62340,1,0,0,18,57616,124,0,0,1152,17408,7992,0,0,8192,1,52753,7,0,0,72,33856,499,0,0,4608,4096,31969,0,0,32768,4,14532,31,0,0,0,0,16,0,0,0,0,64,0,0,0,0,32,0,0,0,2048,0,0,0,0,0,0,0,0,0,0,72,33856,499,0,0,4608,4096,31969,0,0,32768,4,14404,31,0,0,288,4352,1998,0,0,18432,16384,62340,1,0,0,18,57616,124,0,0,1152,17408,7992,0,0,8192,1,52753,7,0,0,72,33856,499,0,0,0,0,1024,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1152,50176,7992,0,0,0,0,64,0,0,0,0,0,0,0,0,0,0,0,0,0,0,530,0,0,0,0,33920,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,1,52785,7,0,0,0,0,0,0,0,0,0,0,0,0,32768,4,14532,31,0,0,0,2048,0,0,0,18432,16384,62348,1,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_pProg","%start_pListStmt","%start_pStmt","%start_pExpr10","%start_pExpr9","%start_pExpr8","%start_pExpr7","%start_pExpr6","%start_pExpr5","%start_pExpr4","%start_pExpr3","%start_pExpr2","%start_pExpr1","%start_pExpr","%start_pExpr11","%start_pLit","%start_pListElem","%start_pElem","%start_pListParam","%start_pParam","Ident","Integer","Double","Char","String","Prog","ListStmt","Stmt","Expr10","Expr9","Expr8","Expr7","Expr6","Expr5","Expr4","Expr3","Expr2","Expr1","Expr","Expr11","Lit","ListElem","Elem","ListParam","Param","'!'","'!='","'%'","'('","')'","'*'","'+'","','","'-'","'->'","'/'","'::'","';'","'<'","'<='","'='","'=='","'>'","'>='","'['","']'","'and'","'else'","'false'","'if'","'let'","'or'","'then'","'true'","'void'","'{'","'|'","'}'","L_Ident","L_integ","L_doubl","L_charac","L_quoted","%eof"]
        bit_start = st * 86
        bit_end = (st + 1) * 86
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..85]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (73) = happyShift action_73
action_0 (86) = happyReduce_28
action_0 (28) = happyGoto action_76
action_0 (29) = happyGoto action_77
action_0 (30) = happyGoto action_75
action_0 _ = happyReduce_28

action_1 (73) = happyShift action_73
action_1 (86) = happyReduce_28
action_1 (29) = happyGoto action_74
action_1 (30) = happyGoto action_75
action_1 _ = happyReduce_28

action_2 (73) = happyShift action_73
action_2 (30) = happyGoto action_72
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (51) = happyShift action_46
action_3 (67) = happyShift action_47
action_3 (71) = happyShift action_48
action_3 (76) = happyShift action_50
action_3 (77) = happyShift action_51
action_3 (78) = happyShift action_52
action_3 (81) = happyShift action_21
action_3 (82) = happyShift action_53
action_3 (83) = happyShift action_54
action_3 (84) = happyShift action_55
action_3 (85) = happyShift action_56
action_3 (23) = happyGoto action_26
action_3 (24) = happyGoto action_27
action_3 (25) = happyGoto action_28
action_3 (26) = happyGoto action_29
action_3 (27) = happyGoto action_30
action_3 (31) = happyGoto action_71
action_3 (42) = happyGoto action_42
action_3 (43) = happyGoto action_43
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (51) = happyShift action_46
action_4 (67) = happyShift action_47
action_4 (71) = happyShift action_48
action_4 (76) = happyShift action_50
action_4 (77) = happyShift action_51
action_4 (78) = happyShift action_52
action_4 (81) = happyShift action_21
action_4 (82) = happyShift action_53
action_4 (83) = happyShift action_54
action_4 (84) = happyShift action_55
action_4 (85) = happyShift action_56
action_4 (23) = happyGoto action_26
action_4 (24) = happyGoto action_27
action_4 (25) = happyGoto action_28
action_4 (26) = happyGoto action_29
action_4 (27) = happyGoto action_30
action_4 (31) = happyGoto action_31
action_4 (32) = happyGoto action_70
action_4 (42) = happyGoto action_42
action_4 (43) = happyGoto action_43
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (48) = happyShift action_45
action_5 (51) = happyShift action_46
action_5 (67) = happyShift action_47
action_5 (71) = happyShift action_48
action_5 (76) = happyShift action_50
action_5 (77) = happyShift action_51
action_5 (78) = happyShift action_52
action_5 (81) = happyShift action_21
action_5 (82) = happyShift action_53
action_5 (83) = happyShift action_54
action_5 (84) = happyShift action_55
action_5 (85) = happyShift action_56
action_5 (23) = happyGoto action_26
action_5 (24) = happyGoto action_27
action_5 (25) = happyGoto action_28
action_5 (26) = happyGoto action_29
action_5 (27) = happyGoto action_30
action_5 (31) = happyGoto action_31
action_5 (32) = happyGoto action_32
action_5 (33) = happyGoto action_69
action_5 (42) = happyGoto action_42
action_5 (43) = happyGoto action_43
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (48) = happyShift action_45
action_6 (51) = happyShift action_46
action_6 (67) = happyShift action_47
action_6 (71) = happyShift action_48
action_6 (76) = happyShift action_50
action_6 (77) = happyShift action_51
action_6 (78) = happyShift action_52
action_6 (81) = happyShift action_21
action_6 (82) = happyShift action_53
action_6 (83) = happyShift action_54
action_6 (84) = happyShift action_55
action_6 (85) = happyShift action_56
action_6 (23) = happyGoto action_26
action_6 (24) = happyGoto action_27
action_6 (25) = happyGoto action_28
action_6 (26) = happyGoto action_29
action_6 (27) = happyGoto action_30
action_6 (31) = happyGoto action_31
action_6 (32) = happyGoto action_32
action_6 (33) = happyGoto action_33
action_6 (34) = happyGoto action_68
action_6 (42) = happyGoto action_42
action_6 (43) = happyGoto action_43
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (48) = happyShift action_45
action_7 (51) = happyShift action_46
action_7 (67) = happyShift action_47
action_7 (71) = happyShift action_48
action_7 (76) = happyShift action_50
action_7 (77) = happyShift action_51
action_7 (78) = happyShift action_52
action_7 (81) = happyShift action_21
action_7 (82) = happyShift action_53
action_7 (83) = happyShift action_54
action_7 (84) = happyShift action_55
action_7 (85) = happyShift action_56
action_7 (23) = happyGoto action_26
action_7 (24) = happyGoto action_27
action_7 (25) = happyGoto action_28
action_7 (26) = happyGoto action_29
action_7 (27) = happyGoto action_30
action_7 (31) = happyGoto action_31
action_7 (32) = happyGoto action_32
action_7 (33) = happyGoto action_33
action_7 (34) = happyGoto action_34
action_7 (35) = happyGoto action_67
action_7 (42) = happyGoto action_42
action_7 (43) = happyGoto action_43
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (48) = happyShift action_45
action_8 (51) = happyShift action_46
action_8 (67) = happyShift action_47
action_8 (71) = happyShift action_48
action_8 (76) = happyShift action_50
action_8 (77) = happyShift action_51
action_8 (78) = happyShift action_52
action_8 (81) = happyShift action_21
action_8 (82) = happyShift action_53
action_8 (83) = happyShift action_54
action_8 (84) = happyShift action_55
action_8 (85) = happyShift action_56
action_8 (23) = happyGoto action_26
action_8 (24) = happyGoto action_27
action_8 (25) = happyGoto action_28
action_8 (26) = happyGoto action_29
action_8 (27) = happyGoto action_30
action_8 (31) = happyGoto action_31
action_8 (32) = happyGoto action_32
action_8 (33) = happyGoto action_33
action_8 (34) = happyGoto action_34
action_8 (35) = happyGoto action_35
action_8 (36) = happyGoto action_66
action_8 (42) = happyGoto action_42
action_8 (43) = happyGoto action_43
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (48) = happyShift action_45
action_9 (51) = happyShift action_46
action_9 (67) = happyShift action_47
action_9 (71) = happyShift action_48
action_9 (76) = happyShift action_50
action_9 (77) = happyShift action_51
action_9 (78) = happyShift action_52
action_9 (81) = happyShift action_21
action_9 (82) = happyShift action_53
action_9 (83) = happyShift action_54
action_9 (84) = happyShift action_55
action_9 (85) = happyShift action_56
action_9 (23) = happyGoto action_26
action_9 (24) = happyGoto action_27
action_9 (25) = happyGoto action_28
action_9 (26) = happyGoto action_29
action_9 (27) = happyGoto action_30
action_9 (31) = happyGoto action_31
action_9 (32) = happyGoto action_32
action_9 (33) = happyGoto action_33
action_9 (34) = happyGoto action_34
action_9 (35) = happyGoto action_35
action_9 (36) = happyGoto action_36
action_9 (37) = happyGoto action_65
action_9 (42) = happyGoto action_42
action_9 (43) = happyGoto action_43
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (48) = happyShift action_45
action_10 (51) = happyShift action_46
action_10 (67) = happyShift action_47
action_10 (71) = happyShift action_48
action_10 (76) = happyShift action_50
action_10 (77) = happyShift action_51
action_10 (78) = happyShift action_52
action_10 (81) = happyShift action_21
action_10 (82) = happyShift action_53
action_10 (83) = happyShift action_54
action_10 (84) = happyShift action_55
action_10 (85) = happyShift action_56
action_10 (23) = happyGoto action_26
action_10 (24) = happyGoto action_27
action_10 (25) = happyGoto action_28
action_10 (26) = happyGoto action_29
action_10 (27) = happyGoto action_30
action_10 (31) = happyGoto action_31
action_10 (32) = happyGoto action_32
action_10 (33) = happyGoto action_33
action_10 (34) = happyGoto action_34
action_10 (35) = happyGoto action_35
action_10 (36) = happyGoto action_36
action_10 (37) = happyGoto action_37
action_10 (38) = happyGoto action_64
action_10 (42) = happyGoto action_42
action_10 (43) = happyGoto action_43
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (48) = happyShift action_45
action_11 (51) = happyShift action_46
action_11 (67) = happyShift action_47
action_11 (71) = happyShift action_48
action_11 (76) = happyShift action_50
action_11 (77) = happyShift action_51
action_11 (78) = happyShift action_52
action_11 (81) = happyShift action_21
action_11 (82) = happyShift action_53
action_11 (83) = happyShift action_54
action_11 (84) = happyShift action_55
action_11 (85) = happyShift action_56
action_11 (23) = happyGoto action_26
action_11 (24) = happyGoto action_27
action_11 (25) = happyGoto action_28
action_11 (26) = happyGoto action_29
action_11 (27) = happyGoto action_30
action_11 (31) = happyGoto action_31
action_11 (32) = happyGoto action_32
action_11 (33) = happyGoto action_33
action_11 (34) = happyGoto action_34
action_11 (35) = happyGoto action_35
action_11 (36) = happyGoto action_36
action_11 (37) = happyGoto action_37
action_11 (38) = happyGoto action_38
action_11 (39) = happyGoto action_63
action_11 (42) = happyGoto action_42
action_11 (43) = happyGoto action_43
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (48) = happyShift action_45
action_12 (51) = happyShift action_46
action_12 (67) = happyShift action_47
action_12 (71) = happyShift action_48
action_12 (76) = happyShift action_50
action_12 (77) = happyShift action_51
action_12 (78) = happyShift action_52
action_12 (81) = happyShift action_21
action_12 (82) = happyShift action_53
action_12 (83) = happyShift action_54
action_12 (84) = happyShift action_55
action_12 (85) = happyShift action_56
action_12 (23) = happyGoto action_26
action_12 (24) = happyGoto action_27
action_12 (25) = happyGoto action_28
action_12 (26) = happyGoto action_29
action_12 (27) = happyGoto action_30
action_12 (31) = happyGoto action_31
action_12 (32) = happyGoto action_32
action_12 (33) = happyGoto action_33
action_12 (34) = happyGoto action_34
action_12 (35) = happyGoto action_35
action_12 (36) = happyGoto action_36
action_12 (37) = happyGoto action_37
action_12 (38) = happyGoto action_38
action_12 (39) = happyGoto action_39
action_12 (40) = happyGoto action_62
action_12 (42) = happyGoto action_42
action_12 (43) = happyGoto action_43
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (48) = happyShift action_45
action_13 (51) = happyShift action_46
action_13 (67) = happyShift action_47
action_13 (71) = happyShift action_48
action_13 (72) = happyShift action_49
action_13 (76) = happyShift action_50
action_13 (77) = happyShift action_51
action_13 (78) = happyShift action_52
action_13 (81) = happyShift action_21
action_13 (82) = happyShift action_53
action_13 (83) = happyShift action_54
action_13 (84) = happyShift action_55
action_13 (85) = happyShift action_56
action_13 (23) = happyGoto action_26
action_13 (24) = happyGoto action_27
action_13 (25) = happyGoto action_28
action_13 (26) = happyGoto action_29
action_13 (27) = happyGoto action_30
action_13 (31) = happyGoto action_31
action_13 (32) = happyGoto action_32
action_13 (33) = happyGoto action_33
action_13 (34) = happyGoto action_34
action_13 (35) = happyGoto action_35
action_13 (36) = happyGoto action_36
action_13 (37) = happyGoto action_37
action_13 (38) = happyGoto action_38
action_13 (39) = happyGoto action_39
action_13 (40) = happyGoto action_40
action_13 (41) = happyGoto action_61
action_13 (42) = happyGoto action_42
action_13 (43) = happyGoto action_43
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (51) = happyShift action_46
action_14 (42) = happyGoto action_60
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (67) = happyShift action_47
action_15 (71) = happyShift action_48
action_15 (76) = happyShift action_50
action_15 (77) = happyShift action_51
action_15 (78) = happyShift action_52
action_15 (82) = happyShift action_53
action_15 (83) = happyShift action_54
action_15 (84) = happyShift action_55
action_15 (85) = happyShift action_56
action_15 (24) = happyGoto action_27
action_15 (25) = happyGoto action_28
action_15 (26) = happyGoto action_29
action_15 (27) = happyGoto action_30
action_15 (43) = happyGoto action_59
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (48) = happyShift action_45
action_16 (51) = happyShift action_46
action_16 (67) = happyShift action_47
action_16 (71) = happyShift action_48
action_16 (72) = happyShift action_49
action_16 (76) = happyShift action_50
action_16 (77) = happyShift action_51
action_16 (78) = happyShift action_52
action_16 (81) = happyShift action_21
action_16 (82) = happyShift action_53
action_16 (83) = happyShift action_54
action_16 (84) = happyShift action_55
action_16 (85) = happyShift action_56
action_16 (23) = happyGoto action_26
action_16 (24) = happyGoto action_27
action_16 (25) = happyGoto action_28
action_16 (26) = happyGoto action_29
action_16 (27) = happyGoto action_30
action_16 (31) = happyGoto action_31
action_16 (32) = happyGoto action_32
action_16 (33) = happyGoto action_33
action_16 (34) = happyGoto action_34
action_16 (35) = happyGoto action_35
action_16 (36) = happyGoto action_36
action_16 (37) = happyGoto action_37
action_16 (38) = happyGoto action_38
action_16 (39) = happyGoto action_39
action_16 (40) = happyGoto action_40
action_16 (41) = happyGoto action_41
action_16 (42) = happyGoto action_42
action_16 (43) = happyGoto action_43
action_16 (44) = happyGoto action_57
action_16 (45) = happyGoto action_58
action_16 _ = happyReduce_73

action_17 (48) = happyShift action_45
action_17 (51) = happyShift action_46
action_17 (67) = happyShift action_47
action_17 (71) = happyShift action_48
action_17 (72) = happyShift action_49
action_17 (76) = happyShift action_50
action_17 (77) = happyShift action_51
action_17 (78) = happyShift action_52
action_17 (81) = happyShift action_21
action_17 (82) = happyShift action_53
action_17 (83) = happyShift action_54
action_17 (84) = happyShift action_55
action_17 (85) = happyShift action_56
action_17 (23) = happyGoto action_26
action_17 (24) = happyGoto action_27
action_17 (25) = happyGoto action_28
action_17 (26) = happyGoto action_29
action_17 (27) = happyGoto action_30
action_17 (31) = happyGoto action_31
action_17 (32) = happyGoto action_32
action_17 (33) = happyGoto action_33
action_17 (34) = happyGoto action_34
action_17 (35) = happyGoto action_35
action_17 (36) = happyGoto action_36
action_17 (37) = happyGoto action_37
action_17 (38) = happyGoto action_38
action_17 (39) = happyGoto action_39
action_17 (40) = happyGoto action_40
action_17 (41) = happyGoto action_41
action_17 (42) = happyGoto action_42
action_17 (43) = happyGoto action_43
action_17 (45) = happyGoto action_44
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (81) = happyShift action_21
action_18 (23) = happyGoto action_22
action_18 (46) = happyGoto action_24
action_18 (47) = happyGoto action_25
action_18 _ = happyReduce_77

action_19 (81) = happyShift action_21
action_19 (23) = happyGoto action_22
action_19 (47) = happyGoto action_23
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (81) = happyShift action_21
action_20 _ = happyFail (happyExpListPerState 20)

action_21 _ = happyReduce_20

action_22 _ = happyReduce_80

action_23 (86) = happyAccept
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (86) = happyAccept
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (55) = happyShift action_103
action_25 _ = happyReduce_78

action_26 _ = happyReduce_32

action_27 _ = happyReduce_64

action_28 _ = happyReduce_65

action_29 _ = happyReduce_66

action_30 _ = happyReduce_67

action_31 _ = happyReduce_36

action_32 (51) = happyShift action_46
action_32 (67) = happyShift action_47
action_32 (71) = happyShift action_48
action_32 (76) = happyShift action_50
action_32 (77) = happyShift action_51
action_32 (78) = happyShift action_52
action_32 (81) = happyShift action_21
action_32 (82) = happyShift action_53
action_32 (83) = happyShift action_54
action_32 (84) = happyShift action_55
action_32 (85) = happyShift action_56
action_32 (23) = happyGoto action_26
action_32 (24) = happyGoto action_27
action_32 (25) = happyGoto action_28
action_32 (26) = happyGoto action_29
action_32 (27) = happyGoto action_30
action_32 (31) = happyGoto action_81
action_32 (42) = happyGoto action_42
action_32 (43) = happyGoto action_43
action_32 _ = happyReduce_38

action_33 _ = happyReduce_42

action_34 (50) = happyShift action_82
action_34 (53) = happyShift action_83
action_34 (58) = happyShift action_84
action_34 _ = happyReduce_45

action_35 (54) = happyShift action_85
action_35 (56) = happyShift action_86
action_35 (59) = happyShift action_102
action_35 _ = happyReduce_47

action_36 (49) = happyShift action_96
action_36 (61) = happyShift action_97
action_36 (62) = happyShift action_98
action_36 (64) = happyShift action_99
action_36 (65) = happyShift action_100
action_36 (66) = happyShift action_101
action_36 _ = happyReduce_54

action_37 (69) = happyShift action_95
action_37 _ = happyReduce_56

action_38 (74) = happyShift action_94
action_38 _ = happyReduce_58

action_39 _ = happyReduce_60

action_40 (57) = happyShift action_87
action_40 _ = happyReduce_62

action_41 _ = happyReduce_76

action_42 _ = happyReduce_34

action_43 _ = happyReduce_33

action_44 (86) = happyAccept
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (51) = happyShift action_46
action_45 (67) = happyShift action_47
action_45 (71) = happyShift action_48
action_45 (76) = happyShift action_50
action_45 (77) = happyShift action_51
action_45 (78) = happyShift action_52
action_45 (81) = happyShift action_21
action_45 (82) = happyShift action_53
action_45 (83) = happyShift action_54
action_45 (84) = happyShift action_55
action_45 (85) = happyShift action_56
action_45 (23) = happyGoto action_26
action_45 (24) = happyGoto action_27
action_45 (25) = happyGoto action_28
action_45 (26) = happyGoto action_29
action_45 (27) = happyGoto action_30
action_45 (31) = happyGoto action_31
action_45 (32) = happyGoto action_93
action_45 (42) = happyGoto action_42
action_45 (43) = happyGoto action_43
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (48) = happyShift action_45
action_46 (51) = happyShift action_46
action_46 (67) = happyShift action_47
action_46 (71) = happyShift action_48
action_46 (72) = happyShift action_49
action_46 (76) = happyShift action_50
action_46 (77) = happyShift action_51
action_46 (78) = happyShift action_52
action_46 (81) = happyShift action_21
action_46 (82) = happyShift action_53
action_46 (83) = happyShift action_54
action_46 (84) = happyShift action_55
action_46 (85) = happyShift action_56
action_46 (23) = happyGoto action_26
action_46 (24) = happyGoto action_27
action_46 (25) = happyGoto action_28
action_46 (26) = happyGoto action_29
action_46 (27) = happyGoto action_30
action_46 (31) = happyGoto action_31
action_46 (32) = happyGoto action_32
action_46 (33) = happyGoto action_33
action_46 (34) = happyGoto action_34
action_46 (35) = happyGoto action_35
action_46 (36) = happyGoto action_36
action_46 (37) = happyGoto action_37
action_46 (38) = happyGoto action_38
action_46 (39) = happyGoto action_39
action_46 (40) = happyGoto action_40
action_46 (41) = happyGoto action_92
action_46 (42) = happyGoto action_42
action_46 (43) = happyGoto action_43
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (48) = happyShift action_45
action_47 (51) = happyShift action_46
action_47 (67) = happyShift action_47
action_47 (71) = happyShift action_48
action_47 (72) = happyShift action_49
action_47 (76) = happyShift action_50
action_47 (77) = happyShift action_51
action_47 (78) = happyShift action_52
action_47 (81) = happyShift action_21
action_47 (82) = happyShift action_53
action_47 (83) = happyShift action_54
action_47 (84) = happyShift action_55
action_47 (85) = happyShift action_56
action_47 (23) = happyGoto action_26
action_47 (24) = happyGoto action_27
action_47 (25) = happyGoto action_28
action_47 (26) = happyGoto action_29
action_47 (27) = happyGoto action_30
action_47 (31) = happyGoto action_31
action_47 (32) = happyGoto action_32
action_47 (33) = happyGoto action_33
action_47 (34) = happyGoto action_34
action_47 (35) = happyGoto action_35
action_47 (36) = happyGoto action_36
action_47 (37) = happyGoto action_37
action_47 (38) = happyGoto action_38
action_47 (39) = happyGoto action_39
action_47 (40) = happyGoto action_40
action_47 (41) = happyGoto action_41
action_47 (42) = happyGoto action_42
action_47 (43) = happyGoto action_43
action_47 (44) = happyGoto action_91
action_47 (45) = happyGoto action_58
action_47 _ = happyReduce_73

action_48 _ = happyReduce_69

action_49 (48) = happyShift action_45
action_49 (51) = happyShift action_46
action_49 (67) = happyShift action_47
action_49 (71) = happyShift action_48
action_49 (72) = happyShift action_49
action_49 (76) = happyShift action_50
action_49 (77) = happyShift action_51
action_49 (78) = happyShift action_52
action_49 (81) = happyShift action_21
action_49 (82) = happyShift action_53
action_49 (83) = happyShift action_54
action_49 (84) = happyShift action_55
action_49 (85) = happyShift action_56
action_49 (23) = happyGoto action_26
action_49 (24) = happyGoto action_27
action_49 (25) = happyGoto action_28
action_49 (26) = happyGoto action_29
action_49 (27) = happyGoto action_30
action_49 (31) = happyGoto action_31
action_49 (32) = happyGoto action_32
action_49 (33) = happyGoto action_33
action_49 (34) = happyGoto action_34
action_49 (35) = happyGoto action_35
action_49 (36) = happyGoto action_36
action_49 (37) = happyGoto action_37
action_49 (38) = happyGoto action_38
action_49 (39) = happyGoto action_39
action_49 (40) = happyGoto action_40
action_49 (41) = happyGoto action_90
action_49 (42) = happyGoto action_42
action_49 (43) = happyGoto action_43
action_49 _ = happyFail (happyExpListPerState 49)

action_50 _ = happyReduce_68

action_51 _ = happyReduce_70

action_52 (81) = happyShift action_21
action_52 (23) = happyGoto action_22
action_52 (46) = happyGoto action_89
action_52 (47) = happyGoto action_25
action_52 _ = happyReduce_77

action_53 _ = happyReduce_21

action_54 _ = happyReduce_22

action_55 _ = happyReduce_23

action_56 _ = happyReduce_24

action_57 (86) = happyAccept
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (55) = happyShift action_88
action_58 _ = happyReduce_74

action_59 (86) = happyAccept
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (86) = happyAccept
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (86) = happyAccept
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (57) = happyShift action_87
action_62 (86) = happyAccept
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (86) = happyAccept
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (86) = happyAccept
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (86) = happyAccept
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (86) = happyAccept
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (54) = happyShift action_85
action_67 (56) = happyShift action_86
action_67 (86) = happyAccept
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (50) = happyShift action_82
action_68 (53) = happyShift action_83
action_68 (58) = happyShift action_84
action_68 (86) = happyAccept
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (86) = happyAccept
action_69 _ = happyFail (happyExpListPerState 69)

action_70 (51) = happyShift action_46
action_70 (67) = happyShift action_47
action_70 (71) = happyShift action_48
action_70 (76) = happyShift action_50
action_70 (77) = happyShift action_51
action_70 (78) = happyShift action_52
action_70 (81) = happyShift action_21
action_70 (82) = happyShift action_53
action_70 (83) = happyShift action_54
action_70 (84) = happyShift action_55
action_70 (85) = happyShift action_56
action_70 (86) = happyAccept
action_70 (23) = happyGoto action_26
action_70 (24) = happyGoto action_27
action_70 (25) = happyGoto action_28
action_70 (26) = happyGoto action_29
action_70 (27) = happyGoto action_30
action_70 (31) = happyGoto action_81
action_70 (42) = happyGoto action_42
action_70 (43) = happyGoto action_43
action_70 _ = happyFail (happyExpListPerState 70)

action_71 (86) = happyAccept
action_71 _ = happyFail (happyExpListPerState 71)

action_72 (86) = happyAccept
action_72 _ = happyFail (happyExpListPerState 72)

action_73 (81) = happyShift action_21
action_73 (23) = happyGoto action_80
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (86) = happyAccept
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (48) = happyReduce_29
action_75 (51) = happyReduce_29
action_75 (60) = happyShift action_79
action_75 (67) = happyReduce_29
action_75 (71) = happyReduce_29
action_75 (72) = happyReduce_29
action_75 (73) = happyShift action_73
action_75 (76) = happyReduce_29
action_75 (77) = happyReduce_29
action_75 (78) = happyReduce_29
action_75 (81) = happyReduce_29
action_75 (82) = happyReduce_29
action_75 (83) = happyReduce_29
action_75 (84) = happyReduce_29
action_75 (85) = happyReduce_29
action_75 (86) = happyReduce_29
action_75 (29) = happyGoto action_78
action_75 (30) = happyGoto action_75
action_75 _ = happyReduce_29

action_76 (86) = happyAccept
action_76 _ = happyFail (happyExpListPerState 76)

action_77 _ = happyReduce_25

action_78 _ = happyReduce_27

action_79 (48) = happyReduce_28
action_79 (51) = happyReduce_28
action_79 (67) = happyReduce_28
action_79 (71) = happyReduce_28
action_79 (72) = happyReduce_28
action_79 (73) = happyShift action_73
action_79 (76) = happyReduce_28
action_79 (77) = happyReduce_28
action_79 (78) = happyReduce_28
action_79 (81) = happyReduce_28
action_79 (82) = happyReduce_28
action_79 (83) = happyReduce_28
action_79 (84) = happyReduce_28
action_79 (85) = happyReduce_28
action_79 (86) = happyReduce_28
action_79 (29) = happyGoto action_126
action_79 (30) = happyGoto action_75
action_79 _ = happyReduce_28

action_80 (63) = happyShift action_125
action_80 _ = happyFail (happyExpListPerState 80)

action_81 _ = happyReduce_35

action_82 (48) = happyShift action_45
action_82 (51) = happyShift action_46
action_82 (67) = happyShift action_47
action_82 (71) = happyShift action_48
action_82 (76) = happyShift action_50
action_82 (77) = happyShift action_51
action_82 (78) = happyShift action_52
action_82 (81) = happyShift action_21
action_82 (82) = happyShift action_53
action_82 (83) = happyShift action_54
action_82 (84) = happyShift action_55
action_82 (85) = happyShift action_56
action_82 (23) = happyGoto action_26
action_82 (24) = happyGoto action_27
action_82 (25) = happyGoto action_28
action_82 (26) = happyGoto action_29
action_82 (27) = happyGoto action_30
action_82 (31) = happyGoto action_31
action_82 (32) = happyGoto action_32
action_82 (33) = happyGoto action_124
action_82 (42) = happyGoto action_42
action_82 (43) = happyGoto action_43
action_82 _ = happyFail (happyExpListPerState 82)

action_83 (48) = happyShift action_45
action_83 (51) = happyShift action_46
action_83 (67) = happyShift action_47
action_83 (71) = happyShift action_48
action_83 (76) = happyShift action_50
action_83 (77) = happyShift action_51
action_83 (78) = happyShift action_52
action_83 (81) = happyShift action_21
action_83 (82) = happyShift action_53
action_83 (83) = happyShift action_54
action_83 (84) = happyShift action_55
action_83 (85) = happyShift action_56
action_83 (23) = happyGoto action_26
action_83 (24) = happyGoto action_27
action_83 (25) = happyGoto action_28
action_83 (26) = happyGoto action_29
action_83 (27) = happyGoto action_30
action_83 (31) = happyGoto action_31
action_83 (32) = happyGoto action_32
action_83 (33) = happyGoto action_123
action_83 (42) = happyGoto action_42
action_83 (43) = happyGoto action_43
action_83 _ = happyFail (happyExpListPerState 83)

action_84 (48) = happyShift action_45
action_84 (51) = happyShift action_46
action_84 (67) = happyShift action_47
action_84 (71) = happyShift action_48
action_84 (76) = happyShift action_50
action_84 (77) = happyShift action_51
action_84 (78) = happyShift action_52
action_84 (81) = happyShift action_21
action_84 (82) = happyShift action_53
action_84 (83) = happyShift action_54
action_84 (84) = happyShift action_55
action_84 (85) = happyShift action_56
action_84 (23) = happyGoto action_26
action_84 (24) = happyGoto action_27
action_84 (25) = happyGoto action_28
action_84 (26) = happyGoto action_29
action_84 (27) = happyGoto action_30
action_84 (31) = happyGoto action_31
action_84 (32) = happyGoto action_32
action_84 (33) = happyGoto action_122
action_84 (42) = happyGoto action_42
action_84 (43) = happyGoto action_43
action_84 _ = happyFail (happyExpListPerState 84)

action_85 (48) = happyShift action_45
action_85 (51) = happyShift action_46
action_85 (67) = happyShift action_47
action_85 (71) = happyShift action_48
action_85 (76) = happyShift action_50
action_85 (77) = happyShift action_51
action_85 (78) = happyShift action_52
action_85 (81) = happyShift action_21
action_85 (82) = happyShift action_53
action_85 (83) = happyShift action_54
action_85 (84) = happyShift action_55
action_85 (85) = happyShift action_56
action_85 (23) = happyGoto action_26
action_85 (24) = happyGoto action_27
action_85 (25) = happyGoto action_28
action_85 (26) = happyGoto action_29
action_85 (27) = happyGoto action_30
action_85 (31) = happyGoto action_31
action_85 (32) = happyGoto action_32
action_85 (33) = happyGoto action_33
action_85 (34) = happyGoto action_121
action_85 (42) = happyGoto action_42
action_85 (43) = happyGoto action_43
action_85 _ = happyFail (happyExpListPerState 85)

action_86 (48) = happyShift action_45
action_86 (51) = happyShift action_46
action_86 (67) = happyShift action_47
action_86 (71) = happyShift action_48
action_86 (76) = happyShift action_50
action_86 (77) = happyShift action_51
action_86 (78) = happyShift action_52
action_86 (81) = happyShift action_21
action_86 (82) = happyShift action_53
action_86 (83) = happyShift action_54
action_86 (84) = happyShift action_55
action_86 (85) = happyShift action_56
action_86 (23) = happyGoto action_26
action_86 (24) = happyGoto action_27
action_86 (25) = happyGoto action_28
action_86 (26) = happyGoto action_29
action_86 (27) = happyGoto action_30
action_86 (31) = happyGoto action_31
action_86 (32) = happyGoto action_32
action_86 (33) = happyGoto action_33
action_86 (34) = happyGoto action_120
action_86 (42) = happyGoto action_42
action_86 (43) = happyGoto action_43
action_86 _ = happyFail (happyExpListPerState 86)

action_87 (48) = happyShift action_45
action_87 (51) = happyShift action_46
action_87 (67) = happyShift action_47
action_87 (71) = happyShift action_48
action_87 (76) = happyShift action_50
action_87 (77) = happyShift action_51
action_87 (78) = happyShift action_52
action_87 (81) = happyShift action_21
action_87 (82) = happyShift action_53
action_87 (83) = happyShift action_54
action_87 (84) = happyShift action_55
action_87 (85) = happyShift action_56
action_87 (23) = happyGoto action_26
action_87 (24) = happyGoto action_27
action_87 (25) = happyGoto action_28
action_87 (26) = happyGoto action_29
action_87 (27) = happyGoto action_30
action_87 (31) = happyGoto action_31
action_87 (32) = happyGoto action_32
action_87 (33) = happyGoto action_33
action_87 (34) = happyGoto action_34
action_87 (35) = happyGoto action_35
action_87 (36) = happyGoto action_36
action_87 (37) = happyGoto action_37
action_87 (38) = happyGoto action_38
action_87 (39) = happyGoto action_119
action_87 (42) = happyGoto action_42
action_87 (43) = happyGoto action_43
action_87 _ = happyFail (happyExpListPerState 87)

action_88 (48) = happyShift action_45
action_88 (51) = happyShift action_46
action_88 (67) = happyShift action_47
action_88 (71) = happyShift action_48
action_88 (72) = happyShift action_49
action_88 (76) = happyShift action_50
action_88 (77) = happyShift action_51
action_88 (78) = happyShift action_52
action_88 (81) = happyShift action_21
action_88 (82) = happyShift action_53
action_88 (83) = happyShift action_54
action_88 (84) = happyShift action_55
action_88 (85) = happyShift action_56
action_88 (23) = happyGoto action_26
action_88 (24) = happyGoto action_27
action_88 (25) = happyGoto action_28
action_88 (26) = happyGoto action_29
action_88 (27) = happyGoto action_30
action_88 (31) = happyGoto action_31
action_88 (32) = happyGoto action_32
action_88 (33) = happyGoto action_33
action_88 (34) = happyGoto action_34
action_88 (35) = happyGoto action_35
action_88 (36) = happyGoto action_36
action_88 (37) = happyGoto action_37
action_88 (38) = happyGoto action_38
action_88 (39) = happyGoto action_39
action_88 (40) = happyGoto action_40
action_88 (41) = happyGoto action_41
action_88 (42) = happyGoto action_42
action_88 (43) = happyGoto action_43
action_88 (44) = happyGoto action_118
action_88 (45) = happyGoto action_58
action_88 _ = happyReduce_73

action_89 (79) = happyShift action_117
action_89 _ = happyFail (happyExpListPerState 89)

action_90 (75) = happyShift action_116
action_90 _ = happyFail (happyExpListPerState 90)

action_91 (68) = happyShift action_115
action_91 _ = happyFail (happyExpListPerState 91)

action_92 (52) = happyShift action_114
action_92 _ = happyFail (happyExpListPerState 92)

action_93 (51) = happyShift action_46
action_93 (67) = happyShift action_47
action_93 (71) = happyShift action_48
action_93 (76) = happyShift action_50
action_93 (77) = happyShift action_51
action_93 (78) = happyShift action_52
action_93 (81) = happyShift action_21
action_93 (82) = happyShift action_53
action_93 (83) = happyShift action_54
action_93 (84) = happyShift action_55
action_93 (85) = happyShift action_56
action_93 (23) = happyGoto action_26
action_93 (24) = happyGoto action_27
action_93 (25) = happyGoto action_28
action_93 (26) = happyGoto action_29
action_93 (27) = happyGoto action_30
action_93 (31) = happyGoto action_81
action_93 (42) = happyGoto action_42
action_93 (43) = happyGoto action_43
action_93 _ = happyReduce_37

action_94 (48) = happyShift action_45
action_94 (51) = happyShift action_46
action_94 (67) = happyShift action_47
action_94 (71) = happyShift action_48
action_94 (76) = happyShift action_50
action_94 (77) = happyShift action_51
action_94 (78) = happyShift action_52
action_94 (81) = happyShift action_21
action_94 (82) = happyShift action_53
action_94 (83) = happyShift action_54
action_94 (84) = happyShift action_55
action_94 (85) = happyShift action_56
action_94 (23) = happyGoto action_26
action_94 (24) = happyGoto action_27
action_94 (25) = happyGoto action_28
action_94 (26) = happyGoto action_29
action_94 (27) = happyGoto action_30
action_94 (31) = happyGoto action_31
action_94 (32) = happyGoto action_32
action_94 (33) = happyGoto action_33
action_94 (34) = happyGoto action_34
action_94 (35) = happyGoto action_35
action_94 (36) = happyGoto action_36
action_94 (37) = happyGoto action_37
action_94 (38) = happyGoto action_38
action_94 (39) = happyGoto action_113
action_94 (42) = happyGoto action_42
action_94 (43) = happyGoto action_43
action_94 _ = happyFail (happyExpListPerState 94)

action_95 (48) = happyShift action_45
action_95 (51) = happyShift action_46
action_95 (67) = happyShift action_47
action_95 (71) = happyShift action_48
action_95 (76) = happyShift action_50
action_95 (77) = happyShift action_51
action_95 (78) = happyShift action_52
action_95 (81) = happyShift action_21
action_95 (82) = happyShift action_53
action_95 (83) = happyShift action_54
action_95 (84) = happyShift action_55
action_95 (85) = happyShift action_56
action_95 (23) = happyGoto action_26
action_95 (24) = happyGoto action_27
action_95 (25) = happyGoto action_28
action_95 (26) = happyGoto action_29
action_95 (27) = happyGoto action_30
action_95 (31) = happyGoto action_31
action_95 (32) = happyGoto action_32
action_95 (33) = happyGoto action_33
action_95 (34) = happyGoto action_34
action_95 (35) = happyGoto action_35
action_95 (36) = happyGoto action_36
action_95 (37) = happyGoto action_37
action_95 (38) = happyGoto action_112
action_95 (42) = happyGoto action_42
action_95 (43) = happyGoto action_43
action_95 _ = happyFail (happyExpListPerState 95)

action_96 (48) = happyShift action_45
action_96 (51) = happyShift action_46
action_96 (67) = happyShift action_47
action_96 (71) = happyShift action_48
action_96 (76) = happyShift action_50
action_96 (77) = happyShift action_51
action_96 (78) = happyShift action_52
action_96 (81) = happyShift action_21
action_96 (82) = happyShift action_53
action_96 (83) = happyShift action_54
action_96 (84) = happyShift action_55
action_96 (85) = happyShift action_56
action_96 (23) = happyGoto action_26
action_96 (24) = happyGoto action_27
action_96 (25) = happyGoto action_28
action_96 (26) = happyGoto action_29
action_96 (27) = happyGoto action_30
action_96 (31) = happyGoto action_31
action_96 (32) = happyGoto action_32
action_96 (33) = happyGoto action_33
action_96 (34) = happyGoto action_34
action_96 (35) = happyGoto action_35
action_96 (36) = happyGoto action_111
action_96 (42) = happyGoto action_42
action_96 (43) = happyGoto action_43
action_96 _ = happyFail (happyExpListPerState 96)

action_97 (48) = happyShift action_45
action_97 (51) = happyShift action_46
action_97 (67) = happyShift action_47
action_97 (71) = happyShift action_48
action_97 (76) = happyShift action_50
action_97 (77) = happyShift action_51
action_97 (78) = happyShift action_52
action_97 (81) = happyShift action_21
action_97 (82) = happyShift action_53
action_97 (83) = happyShift action_54
action_97 (84) = happyShift action_55
action_97 (85) = happyShift action_56
action_97 (23) = happyGoto action_26
action_97 (24) = happyGoto action_27
action_97 (25) = happyGoto action_28
action_97 (26) = happyGoto action_29
action_97 (27) = happyGoto action_30
action_97 (31) = happyGoto action_31
action_97 (32) = happyGoto action_32
action_97 (33) = happyGoto action_33
action_97 (34) = happyGoto action_34
action_97 (35) = happyGoto action_35
action_97 (36) = happyGoto action_110
action_97 (42) = happyGoto action_42
action_97 (43) = happyGoto action_43
action_97 _ = happyFail (happyExpListPerState 97)

action_98 (48) = happyShift action_45
action_98 (51) = happyShift action_46
action_98 (67) = happyShift action_47
action_98 (71) = happyShift action_48
action_98 (76) = happyShift action_50
action_98 (77) = happyShift action_51
action_98 (78) = happyShift action_52
action_98 (81) = happyShift action_21
action_98 (82) = happyShift action_53
action_98 (83) = happyShift action_54
action_98 (84) = happyShift action_55
action_98 (85) = happyShift action_56
action_98 (23) = happyGoto action_26
action_98 (24) = happyGoto action_27
action_98 (25) = happyGoto action_28
action_98 (26) = happyGoto action_29
action_98 (27) = happyGoto action_30
action_98 (31) = happyGoto action_31
action_98 (32) = happyGoto action_32
action_98 (33) = happyGoto action_33
action_98 (34) = happyGoto action_34
action_98 (35) = happyGoto action_35
action_98 (36) = happyGoto action_109
action_98 (42) = happyGoto action_42
action_98 (43) = happyGoto action_43
action_98 _ = happyFail (happyExpListPerState 98)

action_99 (48) = happyShift action_45
action_99 (51) = happyShift action_46
action_99 (67) = happyShift action_47
action_99 (71) = happyShift action_48
action_99 (76) = happyShift action_50
action_99 (77) = happyShift action_51
action_99 (78) = happyShift action_52
action_99 (81) = happyShift action_21
action_99 (82) = happyShift action_53
action_99 (83) = happyShift action_54
action_99 (84) = happyShift action_55
action_99 (85) = happyShift action_56
action_99 (23) = happyGoto action_26
action_99 (24) = happyGoto action_27
action_99 (25) = happyGoto action_28
action_99 (26) = happyGoto action_29
action_99 (27) = happyGoto action_30
action_99 (31) = happyGoto action_31
action_99 (32) = happyGoto action_32
action_99 (33) = happyGoto action_33
action_99 (34) = happyGoto action_34
action_99 (35) = happyGoto action_35
action_99 (36) = happyGoto action_108
action_99 (42) = happyGoto action_42
action_99 (43) = happyGoto action_43
action_99 _ = happyFail (happyExpListPerState 99)

action_100 (48) = happyShift action_45
action_100 (51) = happyShift action_46
action_100 (67) = happyShift action_47
action_100 (71) = happyShift action_48
action_100 (76) = happyShift action_50
action_100 (77) = happyShift action_51
action_100 (78) = happyShift action_52
action_100 (81) = happyShift action_21
action_100 (82) = happyShift action_53
action_100 (83) = happyShift action_54
action_100 (84) = happyShift action_55
action_100 (85) = happyShift action_56
action_100 (23) = happyGoto action_26
action_100 (24) = happyGoto action_27
action_100 (25) = happyGoto action_28
action_100 (26) = happyGoto action_29
action_100 (27) = happyGoto action_30
action_100 (31) = happyGoto action_31
action_100 (32) = happyGoto action_32
action_100 (33) = happyGoto action_33
action_100 (34) = happyGoto action_34
action_100 (35) = happyGoto action_35
action_100 (36) = happyGoto action_107
action_100 (42) = happyGoto action_42
action_100 (43) = happyGoto action_43
action_100 _ = happyFail (happyExpListPerState 100)

action_101 (48) = happyShift action_45
action_101 (51) = happyShift action_46
action_101 (67) = happyShift action_47
action_101 (71) = happyShift action_48
action_101 (76) = happyShift action_50
action_101 (77) = happyShift action_51
action_101 (78) = happyShift action_52
action_101 (81) = happyShift action_21
action_101 (82) = happyShift action_53
action_101 (83) = happyShift action_54
action_101 (84) = happyShift action_55
action_101 (85) = happyShift action_56
action_101 (23) = happyGoto action_26
action_101 (24) = happyGoto action_27
action_101 (25) = happyGoto action_28
action_101 (26) = happyGoto action_29
action_101 (27) = happyGoto action_30
action_101 (31) = happyGoto action_31
action_101 (32) = happyGoto action_32
action_101 (33) = happyGoto action_33
action_101 (34) = happyGoto action_34
action_101 (35) = happyGoto action_35
action_101 (36) = happyGoto action_106
action_101 (42) = happyGoto action_42
action_101 (43) = happyGoto action_43
action_101 _ = happyFail (happyExpListPerState 101)

action_102 (48) = happyShift action_45
action_102 (51) = happyShift action_46
action_102 (67) = happyShift action_47
action_102 (71) = happyShift action_48
action_102 (76) = happyShift action_50
action_102 (77) = happyShift action_51
action_102 (78) = happyShift action_52
action_102 (81) = happyShift action_21
action_102 (82) = happyShift action_53
action_102 (83) = happyShift action_54
action_102 (84) = happyShift action_55
action_102 (85) = happyShift action_56
action_102 (23) = happyGoto action_26
action_102 (24) = happyGoto action_27
action_102 (25) = happyGoto action_28
action_102 (26) = happyGoto action_29
action_102 (27) = happyGoto action_30
action_102 (31) = happyGoto action_31
action_102 (32) = happyGoto action_32
action_102 (33) = happyGoto action_33
action_102 (34) = happyGoto action_34
action_102 (35) = happyGoto action_35
action_102 (36) = happyGoto action_105
action_102 (42) = happyGoto action_42
action_102 (43) = happyGoto action_43
action_102 _ = happyFail (happyExpListPerState 102)

action_103 (81) = happyShift action_21
action_103 (23) = happyGoto action_22
action_103 (46) = happyGoto action_104
action_103 (47) = happyGoto action_25
action_103 _ = happyReduce_77

action_104 _ = happyReduce_79

action_105 _ = happyReduce_46

action_106 _ = happyReduce_51

action_107 _ = happyReduce_49

action_108 _ = happyReduce_52

action_109 _ = happyReduce_50

action_110 _ = happyReduce_48

action_111 _ = happyReduce_53

action_112 _ = happyReduce_55

action_113 _ = happyReduce_57

action_114 _ = happyReduce_63

action_115 _ = happyReduce_71

action_116 (48) = happyShift action_45
action_116 (51) = happyShift action_46
action_116 (67) = happyShift action_47
action_116 (71) = happyShift action_48
action_116 (72) = happyShift action_49
action_116 (76) = happyShift action_50
action_116 (77) = happyShift action_51
action_116 (78) = happyShift action_52
action_116 (81) = happyShift action_21
action_116 (82) = happyShift action_53
action_116 (83) = happyShift action_54
action_116 (84) = happyShift action_55
action_116 (85) = happyShift action_56
action_116 (23) = happyGoto action_26
action_116 (24) = happyGoto action_27
action_116 (25) = happyGoto action_28
action_116 (26) = happyGoto action_29
action_116 (27) = happyGoto action_30
action_116 (31) = happyGoto action_31
action_116 (32) = happyGoto action_32
action_116 (33) = happyGoto action_33
action_116 (34) = happyGoto action_34
action_116 (35) = happyGoto action_35
action_116 (36) = happyGoto action_36
action_116 (37) = happyGoto action_37
action_116 (38) = happyGoto action_38
action_116 (39) = happyGoto action_39
action_116 (40) = happyGoto action_40
action_116 (41) = happyGoto action_129
action_116 (42) = happyGoto action_42
action_116 (43) = happyGoto action_43
action_116 _ = happyFail (happyExpListPerState 116)

action_117 (48) = happyReduce_28
action_117 (51) = happyReduce_28
action_117 (67) = happyReduce_28
action_117 (71) = happyReduce_28
action_117 (72) = happyReduce_28
action_117 (73) = happyShift action_73
action_117 (76) = happyReduce_28
action_117 (77) = happyReduce_28
action_117 (78) = happyReduce_28
action_117 (81) = happyReduce_28
action_117 (82) = happyReduce_28
action_117 (83) = happyReduce_28
action_117 (84) = happyReduce_28
action_117 (85) = happyReduce_28
action_117 (29) = happyGoto action_128
action_117 (30) = happyGoto action_75
action_117 _ = happyReduce_28

action_118 _ = happyReduce_75

action_119 _ = happyReduce_59

action_120 (50) = happyShift action_82
action_120 (53) = happyShift action_83
action_120 (58) = happyShift action_84
action_120 _ = happyReduce_44

action_121 (50) = happyShift action_82
action_121 (53) = happyShift action_83
action_121 (58) = happyShift action_84
action_121 _ = happyReduce_43

action_122 _ = happyReduce_40

action_123 _ = happyReduce_39

action_124 _ = happyReduce_41

action_125 (48) = happyShift action_45
action_125 (51) = happyShift action_46
action_125 (67) = happyShift action_47
action_125 (71) = happyShift action_48
action_125 (72) = happyShift action_49
action_125 (76) = happyShift action_50
action_125 (77) = happyShift action_51
action_125 (78) = happyShift action_52
action_125 (81) = happyShift action_21
action_125 (82) = happyShift action_53
action_125 (83) = happyShift action_54
action_125 (84) = happyShift action_55
action_125 (85) = happyShift action_56
action_125 (23) = happyGoto action_26
action_125 (24) = happyGoto action_27
action_125 (25) = happyGoto action_28
action_125 (26) = happyGoto action_29
action_125 (27) = happyGoto action_30
action_125 (31) = happyGoto action_31
action_125 (32) = happyGoto action_32
action_125 (33) = happyGoto action_33
action_125 (34) = happyGoto action_34
action_125 (35) = happyGoto action_35
action_125 (36) = happyGoto action_36
action_125 (37) = happyGoto action_37
action_125 (38) = happyGoto action_38
action_125 (39) = happyGoto action_39
action_125 (40) = happyGoto action_40
action_125 (41) = happyGoto action_127
action_125 (42) = happyGoto action_42
action_125 (43) = happyGoto action_43
action_125 _ = happyFail (happyExpListPerState 125)

action_126 _ = happyReduce_30

action_127 _ = happyReduce_31

action_128 (48) = happyShift action_45
action_128 (51) = happyShift action_46
action_128 (67) = happyShift action_47
action_128 (71) = happyShift action_48
action_128 (72) = happyShift action_49
action_128 (76) = happyShift action_50
action_128 (77) = happyShift action_51
action_128 (78) = happyShift action_52
action_128 (81) = happyShift action_21
action_128 (82) = happyShift action_53
action_128 (83) = happyShift action_54
action_128 (84) = happyShift action_55
action_128 (85) = happyShift action_56
action_128 (23) = happyGoto action_26
action_128 (24) = happyGoto action_27
action_128 (25) = happyGoto action_28
action_128 (26) = happyGoto action_29
action_128 (27) = happyGoto action_30
action_128 (31) = happyGoto action_31
action_128 (32) = happyGoto action_32
action_128 (33) = happyGoto action_33
action_128 (34) = happyGoto action_34
action_128 (35) = happyGoto action_35
action_128 (36) = happyGoto action_36
action_128 (37) = happyGoto action_37
action_128 (38) = happyGoto action_38
action_128 (39) = happyGoto action_39
action_128 (40) = happyGoto action_40
action_128 (41) = happyGoto action_131
action_128 (42) = happyGoto action_42
action_128 (43) = happyGoto action_43
action_128 _ = happyFail (happyExpListPerState 128)

action_129 (70) = happyShift action_130
action_129 _ = happyFail (happyExpListPerState 129)

action_130 (48) = happyShift action_45
action_130 (51) = happyShift action_46
action_130 (67) = happyShift action_47
action_130 (71) = happyShift action_48
action_130 (72) = happyShift action_49
action_130 (76) = happyShift action_50
action_130 (77) = happyShift action_51
action_130 (78) = happyShift action_52
action_130 (81) = happyShift action_21
action_130 (82) = happyShift action_53
action_130 (83) = happyShift action_54
action_130 (84) = happyShift action_55
action_130 (85) = happyShift action_56
action_130 (23) = happyGoto action_26
action_130 (24) = happyGoto action_27
action_130 (25) = happyGoto action_28
action_130 (26) = happyGoto action_29
action_130 (27) = happyGoto action_30
action_130 (31) = happyGoto action_31
action_130 (32) = happyGoto action_32
action_130 (33) = happyGoto action_33
action_130 (34) = happyGoto action_34
action_130 (35) = happyGoto action_35
action_130 (36) = happyGoto action_36
action_130 (37) = happyGoto action_37
action_130 (38) = happyGoto action_38
action_130 (39) = happyGoto action_39
action_130 (40) = happyGoto action_40
action_130 (41) = happyGoto action_133
action_130 (42) = happyGoto action_42
action_130 (43) = happyGoto action_43
action_130 _ = happyFail (happyExpListPerState 130)

action_131 (80) = happyShift action_132
action_131 _ = happyFail (happyExpListPerState 131)

action_132 _ = happyReduce_72

action_133 _ = happyReduce_61

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
happyReduction_31 ((HappyAbsSyn31  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn23  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn30
		 (AbsSperg.SBind happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_32 = happySpecReduce_1  31 happyReduction_32
happyReduction_32 (HappyAbsSyn23  happy_var_1)
	 =  HappyAbsSyn31
		 (AbsSperg.EIdent happy_var_1
	)
happyReduction_32 _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_1  31 happyReduction_33
happyReduction_33 (HappyAbsSyn43  happy_var_1)
	 =  HappyAbsSyn31
		 (AbsSperg.ELit happy_var_1
	)
happyReduction_33 _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_1  31 happyReduction_34
happyReduction_34 (HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn31
		 (happy_var_1
	)
happyReduction_34 _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_2  32 happyReduction_35
happyReduction_35 (HappyAbsSyn31  happy_var_2)
	(HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn31
		 (AbsSperg.EApply happy_var_1 happy_var_2
	)
happyReduction_35 _ _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_1  32 happyReduction_36
happyReduction_36 (HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn31
		 (happy_var_1
	)
happyReduction_36 _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_2  33 happyReduction_37
happyReduction_37 (HappyAbsSyn31  happy_var_2)
	_
	 =  HappyAbsSyn31
		 (AbsSperg.ETrigger happy_var_2
	)
happyReduction_37 _ _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_1  33 happyReduction_38
happyReduction_38 (HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn31
		 (happy_var_1
	)
happyReduction_38 _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_3  34 happyReduction_39
happyReduction_39 (HappyAbsSyn31  happy_var_3)
	_
	(HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn31
		 (AbsSperg.EMul happy_var_1 happy_var_3
	)
happyReduction_39 _ _ _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_3  34 happyReduction_40
happyReduction_40 (HappyAbsSyn31  happy_var_3)
	_
	(HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn31
		 (AbsSperg.EDiv happy_var_1 happy_var_3
	)
happyReduction_40 _ _ _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_3  34 happyReduction_41
happyReduction_41 (HappyAbsSyn31  happy_var_3)
	_
	(HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn31
		 (AbsSperg.EMod happy_var_1 happy_var_3
	)
happyReduction_41 _ _ _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_1  34 happyReduction_42
happyReduction_42 (HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn31
		 (happy_var_1
	)
happyReduction_42 _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_3  35 happyReduction_43
happyReduction_43 (HappyAbsSyn31  happy_var_3)
	_
	(HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn31
		 (AbsSperg.EAdd happy_var_1 happy_var_3
	)
happyReduction_43 _ _ _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_3  35 happyReduction_44
happyReduction_44 (HappyAbsSyn31  happy_var_3)
	_
	(HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn31
		 (AbsSperg.ESub happy_var_1 happy_var_3
	)
happyReduction_44 _ _ _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_1  35 happyReduction_45
happyReduction_45 (HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn31
		 (happy_var_1
	)
happyReduction_45 _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_3  36 happyReduction_46
happyReduction_46 (HappyAbsSyn31  happy_var_3)
	_
	(HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn31
		 (AbsSperg.ECons happy_var_1 happy_var_3
	)
happyReduction_46 _ _ _  = notHappyAtAll 

happyReduce_47 = happySpecReduce_1  36 happyReduction_47
happyReduction_47 (HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn31
		 (happy_var_1
	)
happyReduction_47 _  = notHappyAtAll 

happyReduce_48 = happySpecReduce_3  37 happyReduction_48
happyReduction_48 (HappyAbsSyn31  happy_var_3)
	_
	(HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn31
		 (AbsSperg.ELess happy_var_1 happy_var_3
	)
happyReduction_48 _ _ _  = notHappyAtAll 

happyReduce_49 = happySpecReduce_3  37 happyReduction_49
happyReduction_49 (HappyAbsSyn31  happy_var_3)
	_
	(HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn31
		 (AbsSperg.EMore happy_var_1 happy_var_3
	)
happyReduction_49 _ _ _  = notHappyAtAll 

happyReduce_50 = happySpecReduce_3  37 happyReduction_50
happyReduction_50 (HappyAbsSyn31  happy_var_3)
	_
	(HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn31
		 (AbsSperg.ELessEq happy_var_1 happy_var_3
	)
happyReduction_50 _ _ _  = notHappyAtAll 

happyReduce_51 = happySpecReduce_3  37 happyReduction_51
happyReduction_51 (HappyAbsSyn31  happy_var_3)
	_
	(HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn31
		 (AbsSperg.EMoreEq happy_var_1 happy_var_3
	)
happyReduction_51 _ _ _  = notHappyAtAll 

happyReduce_52 = happySpecReduce_3  37 happyReduction_52
happyReduction_52 (HappyAbsSyn31  happy_var_3)
	_
	(HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn31
		 (AbsSperg.EEqual happy_var_1 happy_var_3
	)
happyReduction_52 _ _ _  = notHappyAtAll 

happyReduce_53 = happySpecReduce_3  37 happyReduction_53
happyReduction_53 (HappyAbsSyn31  happy_var_3)
	_
	(HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn31
		 (AbsSperg.ENEqual happy_var_1 happy_var_3
	)
happyReduction_53 _ _ _  = notHappyAtAll 

happyReduce_54 = happySpecReduce_1  37 happyReduction_54
happyReduction_54 (HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn31
		 (happy_var_1
	)
happyReduction_54 _  = notHappyAtAll 

happyReduce_55 = happySpecReduce_3  38 happyReduction_55
happyReduction_55 (HappyAbsSyn31  happy_var_3)
	_
	(HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn31
		 (AbsSperg.EAnd happy_var_1 happy_var_3
	)
happyReduction_55 _ _ _  = notHappyAtAll 

happyReduce_56 = happySpecReduce_1  38 happyReduction_56
happyReduction_56 (HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn31
		 (happy_var_1
	)
happyReduction_56 _  = notHappyAtAll 

happyReduce_57 = happySpecReduce_3  39 happyReduction_57
happyReduction_57 (HappyAbsSyn31  happy_var_3)
	_
	(HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn31
		 (AbsSperg.EOr happy_var_1 happy_var_3
	)
happyReduction_57 _ _ _  = notHappyAtAll 

happyReduce_58 = happySpecReduce_1  39 happyReduction_58
happyReduction_58 (HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn31
		 (happy_var_1
	)
happyReduction_58 _  = notHappyAtAll 

happyReduce_59 = happySpecReduce_3  40 happyReduction_59
happyReduction_59 (HappyAbsSyn31  happy_var_3)
	_
	(HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn31
		 (AbsSperg.ESend happy_var_1 happy_var_3
	)
happyReduction_59 _ _ _  = notHappyAtAll 

happyReduce_60 = happySpecReduce_1  40 happyReduction_60
happyReduction_60 (HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn31
		 (happy_var_1
	)
happyReduction_60 _  = notHappyAtAll 

happyReduce_61 = happyReduce 6 41 happyReduction_61
happyReduction_61 ((HappyAbsSyn31  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn31  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn31  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn31
		 (AbsSperg.EIfThen happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_62 = happySpecReduce_1  41 happyReduction_62
happyReduction_62 (HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn31
		 (happy_var_1
	)
happyReduction_62 _  = notHappyAtAll 

happyReduce_63 = happySpecReduce_3  42 happyReduction_63
happyReduction_63 _
	(HappyAbsSyn31  happy_var_2)
	_
	 =  HappyAbsSyn31
		 (happy_var_2
	)
happyReduction_63 _ _ _  = notHappyAtAll 

happyReduce_64 = happySpecReduce_1  43 happyReduction_64
happyReduction_64 (HappyAbsSyn24  happy_var_1)
	 =  HappyAbsSyn43
		 (AbsSperg.LInt happy_var_1
	)
happyReduction_64 _  = notHappyAtAll 

happyReduce_65 = happySpecReduce_1  43 happyReduction_65
happyReduction_65 (HappyAbsSyn25  happy_var_1)
	 =  HappyAbsSyn43
		 (AbsSperg.LDouble happy_var_1
	)
happyReduction_65 _  = notHappyAtAll 

happyReduce_66 = happySpecReduce_1  43 happyReduction_66
happyReduction_66 (HappyAbsSyn26  happy_var_1)
	 =  HappyAbsSyn43
		 (AbsSperg.LChar happy_var_1
	)
happyReduction_66 _  = notHappyAtAll 

happyReduce_67 = happySpecReduce_1  43 happyReduction_67
happyReduction_67 (HappyAbsSyn27  happy_var_1)
	 =  HappyAbsSyn43
		 (AbsSperg.LString happy_var_1
	)
happyReduction_67 _  = notHappyAtAll 

happyReduce_68 = happySpecReduce_1  43 happyReduction_68
happyReduction_68 _
	 =  HappyAbsSyn43
		 (AbsSperg.LTrue
	)

happyReduce_69 = happySpecReduce_1  43 happyReduction_69
happyReduction_69 _
	 =  HappyAbsSyn43
		 (AbsSperg.LFalse
	)

happyReduce_70 = happySpecReduce_1  43 happyReduction_70
happyReduction_70 _
	 =  HappyAbsSyn43
		 (AbsSperg.LVoid
	)

happyReduce_71 = happySpecReduce_3  43 happyReduction_71
happyReduction_71 _
	(HappyAbsSyn44  happy_var_2)
	_
	 =  HappyAbsSyn43
		 (AbsSperg.LList happy_var_2
	)
happyReduction_71 _ _ _  = notHappyAtAll 

happyReduce_72 = happyReduce 6 43 happyReduction_72
happyReduction_72 (_ `HappyStk`
	(HappyAbsSyn31  happy_var_5) `HappyStk`
	(HappyAbsSyn29  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn46  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn43
		 (AbsSperg.LLambda happy_var_2 happy_var_4 happy_var_5
	) `HappyStk` happyRest

happyReduce_73 = happySpecReduce_0  44 happyReduction_73
happyReduction_73  =  HappyAbsSyn44
		 ([]
	)

happyReduce_74 = happySpecReduce_1  44 happyReduction_74
happyReduction_74 (HappyAbsSyn45  happy_var_1)
	 =  HappyAbsSyn44
		 ((:[]) happy_var_1
	)
happyReduction_74 _  = notHappyAtAll 

happyReduce_75 = happySpecReduce_3  44 happyReduction_75
happyReduction_75 (HappyAbsSyn44  happy_var_3)
	_
	(HappyAbsSyn45  happy_var_1)
	 =  HappyAbsSyn44
		 ((:) happy_var_1 happy_var_3
	)
happyReduction_75 _ _ _  = notHappyAtAll 

happyReduce_76 = happySpecReduce_1  45 happyReduction_76
happyReduction_76 (HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn45
		 (AbsSperg.Elem happy_var_1
	)
happyReduction_76 _  = notHappyAtAll 

happyReduce_77 = happySpecReduce_0  46 happyReduction_77
happyReduction_77  =  HappyAbsSyn46
		 ([]
	)

happyReduce_78 = happySpecReduce_1  46 happyReduction_78
happyReduction_78 (HappyAbsSyn47  happy_var_1)
	 =  HappyAbsSyn46
		 ((:[]) happy_var_1
	)
happyReduction_78 _  = notHappyAtAll 

happyReduce_79 = happySpecReduce_3  46 happyReduction_79
happyReduction_79 (HappyAbsSyn46  happy_var_3)
	_
	(HappyAbsSyn47  happy_var_1)
	 =  HappyAbsSyn46
		 ((:) happy_var_1 happy_var_3
	)
happyReduction_79 _ _ _  = notHappyAtAll 

happyReduce_80 = happySpecReduce_1  47 happyReduction_80
happyReduction_80 (HappyAbsSyn23  happy_var_1)
	 =  HappyAbsSyn47
		 (AbsSperg.Param happy_var_1
	)
happyReduction_80 _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 86 86 notHappyAtAll (HappyState action) sts stk []

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
	PT _ (TV happy_dollar_dollar) -> cont 81;
	PT _ (TI happy_dollar_dollar) -> cont 82;
	PT _ (TD happy_dollar_dollar) -> cont 83;
	PT _ (TC happy_dollar_dollar) -> cont 84;
	PT _ (TL happy_dollar_dollar) -> cont 85;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 86 tk tks = happyError' (tks, explist)
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

pExpr10 tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_3 tks) (\x -> case x of {HappyAbsSyn31 z -> happyReturn z; _other -> notHappyAtAll })

pExpr9 tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_4 tks) (\x -> case x of {HappyAbsSyn31 z -> happyReturn z; _other -> notHappyAtAll })

pExpr8 tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_5 tks) (\x -> case x of {HappyAbsSyn31 z -> happyReturn z; _other -> notHappyAtAll })

pExpr7 tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_6 tks) (\x -> case x of {HappyAbsSyn31 z -> happyReturn z; _other -> notHappyAtAll })

pExpr6 tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_7 tks) (\x -> case x of {HappyAbsSyn31 z -> happyReturn z; _other -> notHappyAtAll })

pExpr5 tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_8 tks) (\x -> case x of {HappyAbsSyn31 z -> happyReturn z; _other -> notHappyAtAll })

pExpr4 tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_9 tks) (\x -> case x of {HappyAbsSyn31 z -> happyReturn z; _other -> notHappyAtAll })

pExpr3 tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_10 tks) (\x -> case x of {HappyAbsSyn31 z -> happyReturn z; _other -> notHappyAtAll })

pExpr2 tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_11 tks) (\x -> case x of {HappyAbsSyn31 z -> happyReturn z; _other -> notHappyAtAll })

pExpr1 tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_12 tks) (\x -> case x of {HappyAbsSyn31 z -> happyReturn z; _other -> notHappyAtAll })

pExpr tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_13 tks) (\x -> case x of {HappyAbsSyn31 z -> happyReturn z; _other -> notHappyAtAll })

pExpr11 tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_14 tks) (\x -> case x of {HappyAbsSyn31 z -> happyReturn z; _other -> notHappyAtAll })

pLit tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_15 tks) (\x -> case x of {HappyAbsSyn43 z -> happyReturn z; _other -> notHappyAtAll })

pListElem tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_16 tks) (\x -> case x of {HappyAbsSyn44 z -> happyReturn z; _other -> notHappyAtAll })

pElem tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_17 tks) (\x -> case x of {HappyAbsSyn45 z -> happyReturn z; _other -> notHappyAtAll })

pListParam tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_18 tks) (\x -> case x of {HappyAbsSyn46 z -> happyReturn z; _other -> notHappyAtAll })

pParam tks = happySomeParser where
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
