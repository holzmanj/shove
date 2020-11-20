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
	| HappyAbsSyn21 (AbsSperg.Ident)
	| HappyAbsSyn22 (Integer)
	| HappyAbsSyn23 (Double)
	| HappyAbsSyn24 (Char)
	| HappyAbsSyn25 (String)
	| HappyAbsSyn26 ([AbsSperg.Stmt])
	| HappyAbsSyn27 (AbsSperg.Stmt)
	| HappyAbsSyn28 (AbsSperg.Expr)
	| HappyAbsSyn39 (AbsSperg.Lit)
	| HappyAbsSyn40 ([AbsSperg.Elem])
	| HappyAbsSyn41 (AbsSperg.Elem)
	| HappyAbsSyn42 ([AbsSperg.Param])
	| HappyAbsSyn43 (AbsSperg.Param)

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
 action_126 :: () => Int -> ({-HappyReduction (Either String) = -}
	   Int 
	-> (Token)
	-> HappyState (Token) (HappyStk HappyAbsSyn -> [(Token)] -> (Either String) HappyAbsSyn)
	-> [HappyState (Token) (HappyStk HappyAbsSyn -> [(Token)] -> (Either String) HappyAbsSyn)] 
	-> HappyStk HappyAbsSyn 
	-> [(Token)] -> (Either String) HappyAbsSyn)

happyReduce_18,
 happyReduce_19,
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
 happyReduce_76 :: () => ({-HappyReduction (Either String) = -}
	   Int 
	-> (Token)
	-> HappyState (Token) (HappyStk HappyAbsSyn -> [(Token)] -> (Either String) HappyAbsSyn)
	-> [HappyState (Token) (HappyStk HappyAbsSyn -> [(Token)] -> (Either String) HappyAbsSyn)] 
	-> HappyStk HappyAbsSyn 
	-> [(Token)] -> (Either String) HappyAbsSyn)

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,460) ([0,0,18432,0,24,0,0,8192,1,96,0,0,0,0,14404,31,0,0,16,0,0,0,0,72,0,0,0,0,288,0,0,0,0,1152,0,0,0,0,4608,0,0,0,0,18432,0,0,0,0,8192,1,0,0,0,32768,4,0,0,0,0,18,0,0,0,0,72,2048,0,0,0,0,4352,1934,0,0,1152,32768,0,0,0,4608,0,2,0,0,0,0,4096,0,0,0,0,16384,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,16384,62340,1,0,0,0,0,0,0,0,530,0,0,0,0,4736,0,0,0,0,16,59,0,0,0,0,1024,0,0,0,0,0,2,0,0,0,0,0,0,0,0,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,0,0,0,72,2048,0,0,0,288,8192,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,288,8192,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16384,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2560,0,0,0,0,33920,0,0,0,0,0,0,0,0,0,0,4096,31969,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,64,0,0,0,0,0,0,0,4608,32,6,0,0,0,0,0,0,0,8192,1,96,0,0,0,16384,0,0,0,0,0,0,0,0,0,72,0,0,0,0,288,0,0,0,0,1152,0,0,0,0,4608,0,0,0,0,18432,0,0,0,0,8192,1,0,0,0,0,0,16384,0,0,0,0,32,0,0,0,72,2048,0,0,0,0,0,1,0,0,2048,0,0,0,0,0,4096,31969,0,0,18432,0,0,0,0,8192,1,0,0,0,32768,4,0,0,0,0,18,0,0,0,0,72,0,0,0,0,288,0,0,0,0,1152,0,0,0,0,4608,0,0,0,0,18432,0,0,0,0,0,0,16384,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,288,8192,0,0,0,0,0,0,0,0,0,0,0,0,0,18432,0,24,0,0,0,0,0,0,0,0,530,0,0,0,0,2120,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4608,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32768,0,0,0,0,128,0,0,0,72,2048,0,0,0,0,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_pListStmt","%start_pStmt","%start_pExpr10","%start_pExpr9","%start_pExpr8","%start_pExpr7","%start_pExpr6","%start_pExpr5","%start_pExpr4","%start_pExpr3","%start_pExpr2","%start_pExpr1","%start_pExpr","%start_pLit","%start_pListElem","%start_pElem","%start_pListParam","%start_pParam","Ident","Integer","Double","Char","String","ListStmt","Stmt","Expr10","Expr9","Expr8","Expr7","Expr6","Expr5","Expr4","Expr3","Expr2","Expr1","Expr","Lit","ListElem","Elem","ListParam","Param","'!'","'!='","'%'","'('","')'","'*'","'+'","','","'-'","'->'","'/'","'::'","';'","'<'","'<='","'='","'=='","'>'","'>='","'['","']'","'and'","'else'","'false'","'if'","'let'","'or'","'then'","'true'","'void'","'{'","'|'","'}'","L_Ident","L_integ","L_doubl","L_charac","L_quoted","%eof"]
        bit_start = st * 82
        bit_end = (st + 1) * 82
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..81]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (44) = happyShift action_35
action_0 (47) = happyShift action_36
action_0 (68) = happyShift action_37
action_0 (69) = happyShift action_69
action_0 (82) = happyReduce_25
action_0 (26) = happyGoto action_70
action_0 (27) = happyGoto action_71
action_0 (29) = happyGoto action_24
action_0 (30) = happyGoto action_25
action_0 (31) = happyGoto action_26
action_0 (32) = happyGoto action_27
action_0 (33) = happyGoto action_28
action_0 (34) = happyGoto action_29
action_0 (35) = happyGoto action_30
action_0 (36) = happyGoto action_31
action_0 (37) = happyGoto action_32
action_0 (38) = happyGoto action_68
action_0 _ = happyReduce_25

action_1 (44) = happyShift action_35
action_1 (47) = happyShift action_36
action_1 (68) = happyShift action_37
action_1 (69) = happyShift action_69
action_1 (27) = happyGoto action_67
action_1 (29) = happyGoto action_24
action_1 (30) = happyGoto action_25
action_1 (31) = happyGoto action_26
action_1 (32) = happyGoto action_27
action_1 (33) = happyGoto action_28
action_1 (34) = happyGoto action_29
action_1 (35) = happyGoto action_30
action_1 (36) = happyGoto action_31
action_1 (37) = happyGoto action_32
action_1 (38) = happyGoto action_68
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (63) = happyShift action_45
action_2 (67) = happyShift action_46
action_2 (72) = happyShift action_47
action_2 (73) = happyShift action_48
action_2 (74) = happyShift action_49
action_2 (77) = happyShift action_19
action_2 (78) = happyShift action_50
action_2 (79) = happyShift action_51
action_2 (80) = happyShift action_52
action_2 (81) = happyShift action_53
action_2 (21) = happyGoto action_64
action_2 (22) = happyGoto action_40
action_2 (23) = happyGoto action_41
action_2 (24) = happyGoto action_42
action_2 (25) = happyGoto action_43
action_2 (28) = happyGoto action_65
action_2 (39) = happyGoto action_66
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (47) = happyShift action_36
action_3 (29) = happyGoto action_63
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (44) = happyShift action_35
action_4 (47) = happyShift action_36
action_4 (29) = happyGoto action_24
action_4 (30) = happyGoto action_62
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (44) = happyShift action_35
action_5 (47) = happyShift action_36
action_5 (29) = happyGoto action_24
action_5 (30) = happyGoto action_25
action_5 (31) = happyGoto action_61
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (44) = happyShift action_35
action_6 (47) = happyShift action_36
action_6 (29) = happyGoto action_24
action_6 (30) = happyGoto action_25
action_6 (31) = happyGoto action_26
action_6 (32) = happyGoto action_60
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (44) = happyShift action_35
action_7 (47) = happyShift action_36
action_7 (29) = happyGoto action_24
action_7 (30) = happyGoto action_25
action_7 (31) = happyGoto action_26
action_7 (32) = happyGoto action_27
action_7 (33) = happyGoto action_59
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (44) = happyShift action_35
action_8 (47) = happyShift action_36
action_8 (29) = happyGoto action_24
action_8 (30) = happyGoto action_25
action_8 (31) = happyGoto action_26
action_8 (32) = happyGoto action_27
action_8 (33) = happyGoto action_28
action_8 (34) = happyGoto action_58
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (44) = happyShift action_35
action_9 (47) = happyShift action_36
action_9 (29) = happyGoto action_24
action_9 (30) = happyGoto action_25
action_9 (31) = happyGoto action_26
action_9 (32) = happyGoto action_27
action_9 (33) = happyGoto action_28
action_9 (34) = happyGoto action_29
action_9 (35) = happyGoto action_57
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (44) = happyShift action_35
action_10 (47) = happyShift action_36
action_10 (29) = happyGoto action_24
action_10 (30) = happyGoto action_25
action_10 (31) = happyGoto action_26
action_10 (32) = happyGoto action_27
action_10 (33) = happyGoto action_28
action_10 (34) = happyGoto action_29
action_10 (35) = happyGoto action_30
action_10 (36) = happyGoto action_56
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (44) = happyShift action_35
action_11 (47) = happyShift action_36
action_11 (29) = happyGoto action_24
action_11 (30) = happyGoto action_25
action_11 (31) = happyGoto action_26
action_11 (32) = happyGoto action_27
action_11 (33) = happyGoto action_28
action_11 (34) = happyGoto action_29
action_11 (35) = happyGoto action_30
action_11 (36) = happyGoto action_31
action_11 (37) = happyGoto action_55
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (44) = happyShift action_35
action_12 (47) = happyShift action_36
action_12 (68) = happyShift action_37
action_12 (29) = happyGoto action_24
action_12 (30) = happyGoto action_25
action_12 (31) = happyGoto action_26
action_12 (32) = happyGoto action_27
action_12 (33) = happyGoto action_28
action_12 (34) = happyGoto action_29
action_12 (35) = happyGoto action_30
action_12 (36) = happyGoto action_31
action_12 (37) = happyGoto action_32
action_12 (38) = happyGoto action_54
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (63) = happyShift action_45
action_13 (67) = happyShift action_46
action_13 (72) = happyShift action_47
action_13 (73) = happyShift action_48
action_13 (74) = happyShift action_49
action_13 (78) = happyShift action_50
action_13 (79) = happyShift action_51
action_13 (80) = happyShift action_52
action_13 (81) = happyShift action_53
action_13 (22) = happyGoto action_40
action_13 (23) = happyGoto action_41
action_13 (24) = happyGoto action_42
action_13 (25) = happyGoto action_43
action_13 (39) = happyGoto action_44
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (44) = happyShift action_35
action_14 (47) = happyShift action_36
action_14 (68) = happyShift action_37
action_14 (29) = happyGoto action_24
action_14 (30) = happyGoto action_25
action_14 (31) = happyGoto action_26
action_14 (32) = happyGoto action_27
action_14 (33) = happyGoto action_28
action_14 (34) = happyGoto action_29
action_14 (35) = happyGoto action_30
action_14 (36) = happyGoto action_31
action_14 (37) = happyGoto action_32
action_14 (38) = happyGoto action_33
action_14 (40) = happyGoto action_38
action_14 (41) = happyGoto action_39
action_14 _ = happyReduce_69

action_15 (44) = happyShift action_35
action_15 (47) = happyShift action_36
action_15 (68) = happyShift action_37
action_15 (29) = happyGoto action_24
action_15 (30) = happyGoto action_25
action_15 (31) = happyGoto action_26
action_15 (32) = happyGoto action_27
action_15 (33) = happyGoto action_28
action_15 (34) = happyGoto action_29
action_15 (35) = happyGoto action_30
action_15 (36) = happyGoto action_31
action_15 (37) = happyGoto action_32
action_15 (38) = happyGoto action_33
action_15 (41) = happyGoto action_34
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (77) = happyShift action_19
action_16 (21) = happyGoto action_20
action_16 (42) = happyGoto action_22
action_16 (43) = happyGoto action_23
action_16 _ = happyReduce_73

action_17 (77) = happyShift action_19
action_17 (21) = happyGoto action_20
action_17 (43) = happyGoto action_21
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (77) = happyShift action_19
action_18 _ = happyFail (happyExpListPerState 18)

action_19 _ = happyReduce_18

action_20 _ = happyReduce_76

action_21 (82) = happyAccept
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (82) = happyAccept
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (51) = happyShift action_97
action_23 _ = happyReduce_74

action_24 (63) = happyShift action_45
action_24 (67) = happyShift action_46
action_24 (72) = happyShift action_47
action_24 (73) = happyShift action_48
action_24 (74) = happyShift action_49
action_24 (77) = happyShift action_19
action_24 (78) = happyShift action_50
action_24 (79) = happyShift action_51
action_24 (80) = happyShift action_52
action_24 (81) = happyShift action_53
action_24 (21) = happyGoto action_64
action_24 (22) = happyGoto action_40
action_24 (23) = happyGoto action_41
action_24 (24) = happyGoto action_42
action_24 (25) = happyGoto action_43
action_24 (28) = happyGoto action_75
action_24 (39) = happyGoto action_66
action_24 _ = happyReduce_35

action_25 _ = happyReduce_39

action_26 (46) = happyShift action_76
action_26 (49) = happyShift action_77
action_26 (54) = happyShift action_78
action_26 _ = happyReduce_42

action_27 (50) = happyShift action_79
action_27 (52) = happyShift action_80
action_27 (55) = happyShift action_96
action_27 _ = happyReduce_44

action_28 (45) = happyShift action_90
action_28 (57) = happyShift action_91
action_28 (58) = happyShift action_92
action_28 (60) = happyShift action_93
action_28 (61) = happyShift action_94
action_28 (62) = happyShift action_95
action_28 _ = happyReduce_51

action_29 (65) = happyShift action_89
action_29 _ = happyReduce_53

action_30 (70) = happyShift action_88
action_30 _ = happyReduce_55

action_31 _ = happyReduce_57

action_32 (53) = happyShift action_81
action_32 _ = happyReduce_59

action_33 _ = happyReduce_72

action_34 (82) = happyAccept
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (47) = happyShift action_36
action_35 (29) = happyGoto action_87
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (44) = happyShift action_35
action_36 (47) = happyShift action_36
action_36 (68) = happyShift action_37
action_36 (29) = happyGoto action_24
action_36 (30) = happyGoto action_25
action_36 (31) = happyGoto action_26
action_36 (32) = happyGoto action_27
action_36 (33) = happyGoto action_28
action_36 (34) = happyGoto action_29
action_36 (35) = happyGoto action_30
action_36 (36) = happyGoto action_31
action_36 (37) = happyGoto action_32
action_36 (38) = happyGoto action_86
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (44) = happyShift action_35
action_37 (47) = happyShift action_36
action_37 (68) = happyShift action_37
action_37 (29) = happyGoto action_24
action_37 (30) = happyGoto action_25
action_37 (31) = happyGoto action_26
action_37 (32) = happyGoto action_27
action_37 (33) = happyGoto action_28
action_37 (34) = happyGoto action_29
action_37 (35) = happyGoto action_30
action_37 (36) = happyGoto action_31
action_37 (37) = happyGoto action_32
action_37 (38) = happyGoto action_85
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (82) = happyAccept
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (51) = happyShift action_84
action_39 _ = happyReduce_70

action_40 _ = happyReduce_60

action_41 _ = happyReduce_61

action_42 _ = happyReduce_62

action_43 _ = happyReduce_63

action_44 (82) = happyAccept
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (44) = happyShift action_35
action_45 (47) = happyShift action_36
action_45 (68) = happyShift action_37
action_45 (29) = happyGoto action_24
action_45 (30) = happyGoto action_25
action_45 (31) = happyGoto action_26
action_45 (32) = happyGoto action_27
action_45 (33) = happyGoto action_28
action_45 (34) = happyGoto action_29
action_45 (35) = happyGoto action_30
action_45 (36) = happyGoto action_31
action_45 (37) = happyGoto action_32
action_45 (38) = happyGoto action_33
action_45 (40) = happyGoto action_83
action_45 (41) = happyGoto action_39
action_45 _ = happyReduce_69

action_46 _ = happyReduce_65

action_47 _ = happyReduce_64

action_48 _ = happyReduce_66

action_49 (77) = happyShift action_19
action_49 (21) = happyGoto action_20
action_49 (42) = happyGoto action_82
action_49 (43) = happyGoto action_23
action_49 _ = happyReduce_73

action_50 _ = happyReduce_19

action_51 _ = happyReduce_20

action_52 _ = happyReduce_21

action_53 _ = happyReduce_22

action_54 (82) = happyAccept
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (53) = happyShift action_81
action_55 (82) = happyAccept
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (82) = happyAccept
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (82) = happyAccept
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (82) = happyAccept
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (82) = happyAccept
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (50) = happyShift action_79
action_60 (52) = happyShift action_80
action_60 (82) = happyAccept
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (46) = happyShift action_76
action_61 (49) = happyShift action_77
action_61 (54) = happyShift action_78
action_61 (82) = happyAccept
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (82) = happyAccept
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (63) = happyShift action_45
action_63 (67) = happyShift action_46
action_63 (72) = happyShift action_47
action_63 (73) = happyShift action_48
action_63 (74) = happyShift action_49
action_63 (77) = happyShift action_19
action_63 (78) = happyShift action_50
action_63 (79) = happyShift action_51
action_63 (80) = happyShift action_52
action_63 (81) = happyShift action_53
action_63 (82) = happyAccept
action_63 (21) = happyGoto action_64
action_63 (22) = happyGoto action_40
action_63 (23) = happyGoto action_41
action_63 (24) = happyGoto action_42
action_63 (25) = happyGoto action_43
action_63 (28) = happyGoto action_75
action_63 (39) = happyGoto action_66
action_63 _ = happyFail (happyExpListPerState 63)

action_64 _ = happyReduce_30

action_65 (82) = happyAccept
action_65 _ = happyFail (happyExpListPerState 65)

action_66 _ = happyReduce_31

action_67 (82) = happyAccept
action_67 _ = happyFail (happyExpListPerState 67)

action_68 _ = happyReduce_29

action_69 (77) = happyShift action_19
action_69 (21) = happyGoto action_74
action_69 _ = happyFail (happyExpListPerState 69)

action_70 (82) = happyAccept
action_70 _ = happyFail (happyExpListPerState 70)

action_71 (44) = happyShift action_35
action_71 (47) = happyShift action_36
action_71 (56) = happyShift action_73
action_71 (68) = happyShift action_37
action_71 (69) = happyShift action_69
action_71 (76) = happyReduce_26
action_71 (82) = happyReduce_26
action_71 (26) = happyGoto action_72
action_71 (27) = happyGoto action_71
action_71 (29) = happyGoto action_24
action_71 (30) = happyGoto action_25
action_71 (31) = happyGoto action_26
action_71 (32) = happyGoto action_27
action_71 (33) = happyGoto action_28
action_71 (34) = happyGoto action_29
action_71 (35) = happyGoto action_30
action_71 (36) = happyGoto action_31
action_71 (37) = happyGoto action_32
action_71 (38) = happyGoto action_68
action_71 _ = happyReduce_26

action_72 _ = happyReduce_24

action_73 (44) = happyShift action_35
action_73 (47) = happyShift action_36
action_73 (68) = happyShift action_37
action_73 (69) = happyShift action_69
action_73 (76) = happyReduce_25
action_73 (82) = happyReduce_25
action_73 (26) = happyGoto action_120
action_73 (27) = happyGoto action_71
action_73 (29) = happyGoto action_24
action_73 (30) = happyGoto action_25
action_73 (31) = happyGoto action_26
action_73 (32) = happyGoto action_27
action_73 (33) = happyGoto action_28
action_73 (34) = happyGoto action_29
action_73 (35) = happyGoto action_30
action_73 (36) = happyGoto action_31
action_73 (37) = happyGoto action_32
action_73 (38) = happyGoto action_68
action_73 _ = happyReduce_25

action_74 (59) = happyShift action_119
action_74 _ = happyFail (happyExpListPerState 74)

action_75 _ = happyReduce_32

action_76 (44) = happyShift action_35
action_76 (47) = happyShift action_36
action_76 (29) = happyGoto action_24
action_76 (30) = happyGoto action_118
action_76 _ = happyFail (happyExpListPerState 76)

action_77 (44) = happyShift action_35
action_77 (47) = happyShift action_36
action_77 (29) = happyGoto action_24
action_77 (30) = happyGoto action_117
action_77 _ = happyFail (happyExpListPerState 77)

action_78 (44) = happyShift action_35
action_78 (47) = happyShift action_36
action_78 (29) = happyGoto action_24
action_78 (30) = happyGoto action_116
action_78 _ = happyFail (happyExpListPerState 78)

action_79 (44) = happyShift action_35
action_79 (47) = happyShift action_36
action_79 (29) = happyGoto action_24
action_79 (30) = happyGoto action_25
action_79 (31) = happyGoto action_115
action_79 _ = happyFail (happyExpListPerState 79)

action_80 (44) = happyShift action_35
action_80 (47) = happyShift action_36
action_80 (29) = happyGoto action_24
action_80 (30) = happyGoto action_25
action_80 (31) = happyGoto action_114
action_80 _ = happyFail (happyExpListPerState 80)

action_81 (44) = happyShift action_35
action_81 (47) = happyShift action_36
action_81 (29) = happyGoto action_24
action_81 (30) = happyGoto action_25
action_81 (31) = happyGoto action_26
action_81 (32) = happyGoto action_27
action_81 (33) = happyGoto action_28
action_81 (34) = happyGoto action_29
action_81 (35) = happyGoto action_30
action_81 (36) = happyGoto action_113
action_81 _ = happyFail (happyExpListPerState 81)

action_82 (75) = happyShift action_112
action_82 _ = happyFail (happyExpListPerState 82)

action_83 (64) = happyShift action_111
action_83 _ = happyFail (happyExpListPerState 83)

action_84 (44) = happyShift action_35
action_84 (47) = happyShift action_36
action_84 (68) = happyShift action_37
action_84 (29) = happyGoto action_24
action_84 (30) = happyGoto action_25
action_84 (31) = happyGoto action_26
action_84 (32) = happyGoto action_27
action_84 (33) = happyGoto action_28
action_84 (34) = happyGoto action_29
action_84 (35) = happyGoto action_30
action_84 (36) = happyGoto action_31
action_84 (37) = happyGoto action_32
action_84 (38) = happyGoto action_33
action_84 (40) = happyGoto action_110
action_84 (41) = happyGoto action_39
action_84 _ = happyReduce_69

action_85 (71) = happyShift action_109
action_85 _ = happyFail (happyExpListPerState 85)

action_86 (48) = happyShift action_108
action_86 _ = happyFail (happyExpListPerState 86)

action_87 (63) = happyShift action_45
action_87 (67) = happyShift action_46
action_87 (72) = happyShift action_47
action_87 (73) = happyShift action_48
action_87 (74) = happyShift action_49
action_87 (77) = happyShift action_19
action_87 (78) = happyShift action_50
action_87 (79) = happyShift action_51
action_87 (80) = happyShift action_52
action_87 (81) = happyShift action_53
action_87 (21) = happyGoto action_64
action_87 (22) = happyGoto action_40
action_87 (23) = happyGoto action_41
action_87 (24) = happyGoto action_42
action_87 (25) = happyGoto action_43
action_87 (28) = happyGoto action_75
action_87 (39) = happyGoto action_66
action_87 _ = happyReduce_34

action_88 (44) = happyShift action_35
action_88 (47) = happyShift action_36
action_88 (29) = happyGoto action_24
action_88 (30) = happyGoto action_25
action_88 (31) = happyGoto action_26
action_88 (32) = happyGoto action_27
action_88 (33) = happyGoto action_28
action_88 (34) = happyGoto action_29
action_88 (35) = happyGoto action_30
action_88 (36) = happyGoto action_107
action_88 _ = happyFail (happyExpListPerState 88)

action_89 (44) = happyShift action_35
action_89 (47) = happyShift action_36
action_89 (29) = happyGoto action_24
action_89 (30) = happyGoto action_25
action_89 (31) = happyGoto action_26
action_89 (32) = happyGoto action_27
action_89 (33) = happyGoto action_28
action_89 (34) = happyGoto action_29
action_89 (35) = happyGoto action_106
action_89 _ = happyFail (happyExpListPerState 89)

action_90 (44) = happyShift action_35
action_90 (47) = happyShift action_36
action_90 (29) = happyGoto action_24
action_90 (30) = happyGoto action_25
action_90 (31) = happyGoto action_26
action_90 (32) = happyGoto action_27
action_90 (33) = happyGoto action_105
action_90 _ = happyFail (happyExpListPerState 90)

action_91 (44) = happyShift action_35
action_91 (47) = happyShift action_36
action_91 (29) = happyGoto action_24
action_91 (30) = happyGoto action_25
action_91 (31) = happyGoto action_26
action_91 (32) = happyGoto action_27
action_91 (33) = happyGoto action_104
action_91 _ = happyFail (happyExpListPerState 91)

action_92 (44) = happyShift action_35
action_92 (47) = happyShift action_36
action_92 (29) = happyGoto action_24
action_92 (30) = happyGoto action_25
action_92 (31) = happyGoto action_26
action_92 (32) = happyGoto action_27
action_92 (33) = happyGoto action_103
action_92 _ = happyFail (happyExpListPerState 92)

action_93 (44) = happyShift action_35
action_93 (47) = happyShift action_36
action_93 (29) = happyGoto action_24
action_93 (30) = happyGoto action_25
action_93 (31) = happyGoto action_26
action_93 (32) = happyGoto action_27
action_93 (33) = happyGoto action_102
action_93 _ = happyFail (happyExpListPerState 93)

action_94 (44) = happyShift action_35
action_94 (47) = happyShift action_36
action_94 (29) = happyGoto action_24
action_94 (30) = happyGoto action_25
action_94 (31) = happyGoto action_26
action_94 (32) = happyGoto action_27
action_94 (33) = happyGoto action_101
action_94 _ = happyFail (happyExpListPerState 94)

action_95 (44) = happyShift action_35
action_95 (47) = happyShift action_36
action_95 (29) = happyGoto action_24
action_95 (30) = happyGoto action_25
action_95 (31) = happyGoto action_26
action_95 (32) = happyGoto action_27
action_95 (33) = happyGoto action_100
action_95 _ = happyFail (happyExpListPerState 95)

action_96 (44) = happyShift action_35
action_96 (47) = happyShift action_36
action_96 (29) = happyGoto action_24
action_96 (30) = happyGoto action_25
action_96 (31) = happyGoto action_26
action_96 (32) = happyGoto action_27
action_96 (33) = happyGoto action_99
action_96 _ = happyFail (happyExpListPerState 96)

action_97 (77) = happyShift action_19
action_97 (21) = happyGoto action_20
action_97 (42) = happyGoto action_98
action_97 (43) = happyGoto action_23
action_97 _ = happyReduce_73

action_98 _ = happyReduce_75

action_99 _ = happyReduce_43

action_100 _ = happyReduce_48

action_101 _ = happyReduce_46

action_102 _ = happyReduce_49

action_103 _ = happyReduce_47

action_104 _ = happyReduce_45

action_105 _ = happyReduce_50

action_106 _ = happyReduce_52

action_107 _ = happyReduce_54

action_108 _ = happyReduce_33

action_109 (44) = happyShift action_35
action_109 (47) = happyShift action_36
action_109 (68) = happyShift action_37
action_109 (29) = happyGoto action_24
action_109 (30) = happyGoto action_25
action_109 (31) = happyGoto action_26
action_109 (32) = happyGoto action_27
action_109 (33) = happyGoto action_28
action_109 (34) = happyGoto action_29
action_109 (35) = happyGoto action_30
action_109 (36) = happyGoto action_31
action_109 (37) = happyGoto action_32
action_109 (38) = happyGoto action_123
action_109 _ = happyFail (happyExpListPerState 109)

action_110 _ = happyReduce_71

action_111 _ = happyReduce_67

action_112 (44) = happyShift action_35
action_112 (47) = happyShift action_36
action_112 (68) = happyShift action_37
action_112 (69) = happyShift action_69
action_112 (76) = happyReduce_25
action_112 (26) = happyGoto action_122
action_112 (27) = happyGoto action_71
action_112 (29) = happyGoto action_24
action_112 (30) = happyGoto action_25
action_112 (31) = happyGoto action_26
action_112 (32) = happyGoto action_27
action_112 (33) = happyGoto action_28
action_112 (34) = happyGoto action_29
action_112 (35) = happyGoto action_30
action_112 (36) = happyGoto action_31
action_112 (37) = happyGoto action_32
action_112 (38) = happyGoto action_68
action_112 _ = happyReduce_25

action_113 _ = happyReduce_56

action_114 (46) = happyShift action_76
action_114 (49) = happyShift action_77
action_114 (54) = happyShift action_78
action_114 _ = happyReduce_41

action_115 (46) = happyShift action_76
action_115 (49) = happyShift action_77
action_115 (54) = happyShift action_78
action_115 _ = happyReduce_40

action_116 _ = happyReduce_37

action_117 _ = happyReduce_36

action_118 _ = happyReduce_38

action_119 (44) = happyShift action_35
action_119 (47) = happyShift action_36
action_119 (68) = happyShift action_37
action_119 (29) = happyGoto action_24
action_119 (30) = happyGoto action_25
action_119 (31) = happyGoto action_26
action_119 (32) = happyGoto action_27
action_119 (33) = happyGoto action_28
action_119 (34) = happyGoto action_29
action_119 (35) = happyGoto action_30
action_119 (36) = happyGoto action_31
action_119 (37) = happyGoto action_32
action_119 (38) = happyGoto action_121
action_119 _ = happyFail (happyExpListPerState 119)

action_120 _ = happyReduce_27

action_121 _ = happyReduce_28

action_122 (76) = happyShift action_125
action_122 _ = happyFail (happyExpListPerState 122)

action_123 (66) = happyShift action_124
action_123 _ = happyFail (happyExpListPerState 123)

action_124 (44) = happyShift action_35
action_124 (47) = happyShift action_36
action_124 (68) = happyShift action_37
action_124 (29) = happyGoto action_24
action_124 (30) = happyGoto action_25
action_124 (31) = happyGoto action_26
action_124 (32) = happyGoto action_27
action_124 (33) = happyGoto action_28
action_124 (34) = happyGoto action_29
action_124 (35) = happyGoto action_30
action_124 (36) = happyGoto action_31
action_124 (37) = happyGoto action_32
action_124 (38) = happyGoto action_126
action_124 _ = happyFail (happyExpListPerState 124)

action_125 _ = happyReduce_68

action_126 _ = happyReduce_58

happyReduce_18 = happySpecReduce_1  21 happyReduction_18
happyReduction_18 (HappyTerminal (PT _ (TV happy_var_1)))
	 =  HappyAbsSyn21
		 (AbsSperg.Ident happy_var_1
	)
happyReduction_18 _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_1  22 happyReduction_19
happyReduction_19 (HappyTerminal (PT _ (TI happy_var_1)))
	 =  HappyAbsSyn22
		 ((read (happy_var_1)) :: Integer
	)
happyReduction_19 _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_1  23 happyReduction_20
happyReduction_20 (HappyTerminal (PT _ (TD happy_var_1)))
	 =  HappyAbsSyn23
		 ((read (happy_var_1)) :: Double
	)
happyReduction_20 _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_1  24 happyReduction_21
happyReduction_21 (HappyTerminal (PT _ (TC happy_var_1)))
	 =  HappyAbsSyn24
		 ((read (happy_var_1)) :: Char
	)
happyReduction_21 _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_1  25 happyReduction_22
happyReduction_22 (HappyTerminal (PT _ (TL happy_var_1)))
	 =  HappyAbsSyn25
		 (happy_var_1
	)
happyReduction_22 _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_0  26 happyReduction_23
happyReduction_23  =  HappyAbsSyn26
		 ([]
	)

happyReduce_24 = happySpecReduce_2  26 happyReduction_24
happyReduction_24 (HappyAbsSyn26  happy_var_2)
	(HappyAbsSyn27  happy_var_1)
	 =  HappyAbsSyn26
		 ((:) happy_var_1 happy_var_2
	)
happyReduction_24 _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_0  26 happyReduction_25
happyReduction_25  =  HappyAbsSyn26
		 ([]
	)

happyReduce_26 = happySpecReduce_1  26 happyReduction_26
happyReduction_26 (HappyAbsSyn27  happy_var_1)
	 =  HappyAbsSyn26
		 ((:[]) happy_var_1
	)
happyReduction_26 _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  26 happyReduction_27
happyReduction_27 (HappyAbsSyn26  happy_var_3)
	_
	(HappyAbsSyn27  happy_var_1)
	 =  HappyAbsSyn26
		 ((:) happy_var_1 happy_var_3
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happyReduce 4 27 happyReduction_28
happyReduction_28 ((HappyAbsSyn28  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn21  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn27
		 (AbsSperg.SBind happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_29 = happySpecReduce_1  27 happyReduction_29
happyReduction_29 (HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn27
		 (AbsSperg.SEval happy_var_1
	)
happyReduction_29 _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_1  28 happyReduction_30
happyReduction_30 (HappyAbsSyn21  happy_var_1)
	 =  HappyAbsSyn28
		 (AbsSperg.EIdent happy_var_1
	)
happyReduction_30 _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_1  28 happyReduction_31
happyReduction_31 (HappyAbsSyn39  happy_var_1)
	 =  HappyAbsSyn28
		 (AbsSperg.ELit happy_var_1
	)
happyReduction_31 _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_2  29 happyReduction_32
happyReduction_32 (HappyAbsSyn28  happy_var_2)
	(HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn28
		 (AbsSperg.EApply happy_var_1 happy_var_2
	)
happyReduction_32 _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_3  29 happyReduction_33
happyReduction_33 _
	(HappyAbsSyn28  happy_var_2)
	_
	 =  HappyAbsSyn28
		 (happy_var_2
	)
happyReduction_33 _ _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_2  30 happyReduction_34
happyReduction_34 (HappyAbsSyn28  happy_var_2)
	_
	 =  HappyAbsSyn28
		 (AbsSperg.ETrigger happy_var_2
	)
happyReduction_34 _ _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_1  30 happyReduction_35
happyReduction_35 (HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn28
		 (happy_var_1
	)
happyReduction_35 _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_3  31 happyReduction_36
happyReduction_36 (HappyAbsSyn28  happy_var_3)
	_
	(HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn28
		 (AbsSperg.EMul happy_var_1 happy_var_3
	)
happyReduction_36 _ _ _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_3  31 happyReduction_37
happyReduction_37 (HappyAbsSyn28  happy_var_3)
	_
	(HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn28
		 (AbsSperg.EDiv happy_var_1 happy_var_3
	)
happyReduction_37 _ _ _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_3  31 happyReduction_38
happyReduction_38 (HappyAbsSyn28  happy_var_3)
	_
	(HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn28
		 (AbsSperg.EMod happy_var_1 happy_var_3
	)
happyReduction_38 _ _ _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_1  31 happyReduction_39
happyReduction_39 (HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn28
		 (happy_var_1
	)
happyReduction_39 _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_3  32 happyReduction_40
happyReduction_40 (HappyAbsSyn28  happy_var_3)
	_
	(HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn28
		 (AbsSperg.EAdd happy_var_1 happy_var_3
	)
happyReduction_40 _ _ _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_3  32 happyReduction_41
happyReduction_41 (HappyAbsSyn28  happy_var_3)
	_
	(HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn28
		 (AbsSperg.ESub happy_var_1 happy_var_3
	)
happyReduction_41 _ _ _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_1  32 happyReduction_42
happyReduction_42 (HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn28
		 (happy_var_1
	)
happyReduction_42 _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_3  33 happyReduction_43
happyReduction_43 (HappyAbsSyn28  happy_var_3)
	_
	(HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn28
		 (AbsSperg.ECons happy_var_1 happy_var_3
	)
happyReduction_43 _ _ _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_1  33 happyReduction_44
happyReduction_44 (HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn28
		 (happy_var_1
	)
happyReduction_44 _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_3  34 happyReduction_45
happyReduction_45 (HappyAbsSyn28  happy_var_3)
	_
	(HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn28
		 (AbsSperg.ELess happy_var_1 happy_var_3
	)
happyReduction_45 _ _ _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_3  34 happyReduction_46
happyReduction_46 (HappyAbsSyn28  happy_var_3)
	_
	(HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn28
		 (AbsSperg.EMore happy_var_1 happy_var_3
	)
happyReduction_46 _ _ _  = notHappyAtAll 

happyReduce_47 = happySpecReduce_3  34 happyReduction_47
happyReduction_47 (HappyAbsSyn28  happy_var_3)
	_
	(HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn28
		 (AbsSperg.ELessEq happy_var_1 happy_var_3
	)
happyReduction_47 _ _ _  = notHappyAtAll 

happyReduce_48 = happySpecReduce_3  34 happyReduction_48
happyReduction_48 (HappyAbsSyn28  happy_var_3)
	_
	(HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn28
		 (AbsSperg.EMoreEq happy_var_1 happy_var_3
	)
happyReduction_48 _ _ _  = notHappyAtAll 

happyReduce_49 = happySpecReduce_3  34 happyReduction_49
happyReduction_49 (HappyAbsSyn28  happy_var_3)
	_
	(HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn28
		 (AbsSperg.EEqual happy_var_1 happy_var_3
	)
happyReduction_49 _ _ _  = notHappyAtAll 

happyReduce_50 = happySpecReduce_3  34 happyReduction_50
happyReduction_50 (HappyAbsSyn28  happy_var_3)
	_
	(HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn28
		 (AbsSperg.ENEqual happy_var_1 happy_var_3
	)
happyReduction_50 _ _ _  = notHappyAtAll 

happyReduce_51 = happySpecReduce_1  34 happyReduction_51
happyReduction_51 (HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn28
		 (happy_var_1
	)
happyReduction_51 _  = notHappyAtAll 

happyReduce_52 = happySpecReduce_3  35 happyReduction_52
happyReduction_52 (HappyAbsSyn28  happy_var_3)
	_
	(HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn28
		 (AbsSperg.EAnd happy_var_1 happy_var_3
	)
happyReduction_52 _ _ _  = notHappyAtAll 

happyReduce_53 = happySpecReduce_1  35 happyReduction_53
happyReduction_53 (HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn28
		 (happy_var_1
	)
happyReduction_53 _  = notHappyAtAll 

happyReduce_54 = happySpecReduce_3  36 happyReduction_54
happyReduction_54 (HappyAbsSyn28  happy_var_3)
	_
	(HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn28
		 (AbsSperg.EOr happy_var_1 happy_var_3
	)
happyReduction_54 _ _ _  = notHappyAtAll 

happyReduce_55 = happySpecReduce_1  36 happyReduction_55
happyReduction_55 (HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn28
		 (happy_var_1
	)
happyReduction_55 _  = notHappyAtAll 

happyReduce_56 = happySpecReduce_3  37 happyReduction_56
happyReduction_56 (HappyAbsSyn28  happy_var_3)
	_
	(HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn28
		 (AbsSperg.ESend happy_var_1 happy_var_3
	)
happyReduction_56 _ _ _  = notHappyAtAll 

happyReduce_57 = happySpecReduce_1  37 happyReduction_57
happyReduction_57 (HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn28
		 (happy_var_1
	)
happyReduction_57 _  = notHappyAtAll 

happyReduce_58 = happyReduce 6 38 happyReduction_58
happyReduction_58 ((HappyAbsSyn28  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn28  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn28  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn28
		 (AbsSperg.EIfThen happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_59 = happySpecReduce_1  38 happyReduction_59
happyReduction_59 (HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn28
		 (happy_var_1
	)
happyReduction_59 _  = notHappyAtAll 

happyReduce_60 = happySpecReduce_1  39 happyReduction_60
happyReduction_60 (HappyAbsSyn22  happy_var_1)
	 =  HappyAbsSyn39
		 (AbsSperg.LInt happy_var_1
	)
happyReduction_60 _  = notHappyAtAll 

happyReduce_61 = happySpecReduce_1  39 happyReduction_61
happyReduction_61 (HappyAbsSyn23  happy_var_1)
	 =  HappyAbsSyn39
		 (AbsSperg.LDouble happy_var_1
	)
happyReduction_61 _  = notHappyAtAll 

happyReduce_62 = happySpecReduce_1  39 happyReduction_62
happyReduction_62 (HappyAbsSyn24  happy_var_1)
	 =  HappyAbsSyn39
		 (AbsSperg.LChar happy_var_1
	)
happyReduction_62 _  = notHappyAtAll 

happyReduce_63 = happySpecReduce_1  39 happyReduction_63
happyReduction_63 (HappyAbsSyn25  happy_var_1)
	 =  HappyAbsSyn39
		 (AbsSperg.LString happy_var_1
	)
happyReduction_63 _  = notHappyAtAll 

happyReduce_64 = happySpecReduce_1  39 happyReduction_64
happyReduction_64 _
	 =  HappyAbsSyn39
		 (AbsSperg.LTrue
	)

happyReduce_65 = happySpecReduce_1  39 happyReduction_65
happyReduction_65 _
	 =  HappyAbsSyn39
		 (AbsSperg.LFalse
	)

happyReduce_66 = happySpecReduce_1  39 happyReduction_66
happyReduction_66 _
	 =  HappyAbsSyn39
		 (AbsSperg.LVoid
	)

happyReduce_67 = happySpecReduce_3  39 happyReduction_67
happyReduction_67 _
	(HappyAbsSyn40  happy_var_2)
	_
	 =  HappyAbsSyn39
		 (AbsSperg.LList happy_var_2
	)
happyReduction_67 _ _ _  = notHappyAtAll 

happyReduce_68 = happyReduce 5 39 happyReduction_68
happyReduction_68 (_ `HappyStk`
	(HappyAbsSyn26  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn42  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn39
		 (AbsSperg.LLambda happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_69 = happySpecReduce_0  40 happyReduction_69
happyReduction_69  =  HappyAbsSyn40
		 ([]
	)

happyReduce_70 = happySpecReduce_1  40 happyReduction_70
happyReduction_70 (HappyAbsSyn41  happy_var_1)
	 =  HappyAbsSyn40
		 ((:[]) happy_var_1
	)
happyReduction_70 _  = notHappyAtAll 

happyReduce_71 = happySpecReduce_3  40 happyReduction_71
happyReduction_71 (HappyAbsSyn40  happy_var_3)
	_
	(HappyAbsSyn41  happy_var_1)
	 =  HappyAbsSyn40
		 ((:) happy_var_1 happy_var_3
	)
happyReduction_71 _ _ _  = notHappyAtAll 

happyReduce_72 = happySpecReduce_1  41 happyReduction_72
happyReduction_72 (HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn41
		 (AbsSperg.Elem happy_var_1
	)
happyReduction_72 _  = notHappyAtAll 

happyReduce_73 = happySpecReduce_0  42 happyReduction_73
happyReduction_73  =  HappyAbsSyn42
		 ([]
	)

happyReduce_74 = happySpecReduce_1  42 happyReduction_74
happyReduction_74 (HappyAbsSyn43  happy_var_1)
	 =  HappyAbsSyn42
		 ((:[]) happy_var_1
	)
happyReduction_74 _  = notHappyAtAll 

happyReduce_75 = happySpecReduce_3  42 happyReduction_75
happyReduction_75 (HappyAbsSyn42  happy_var_3)
	_
	(HappyAbsSyn43  happy_var_1)
	 =  HappyAbsSyn42
		 ((:) happy_var_1 happy_var_3
	)
happyReduction_75 _ _ _  = notHappyAtAll 

happyReduce_76 = happySpecReduce_1  43 happyReduction_76
happyReduction_76 (HappyAbsSyn21  happy_var_1)
	 =  HappyAbsSyn43
		 (AbsSperg.Param happy_var_1
	)
happyReduction_76 _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 82 82 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	PT _ (TS _ 1) -> cont 44;
	PT _ (TS _ 2) -> cont 45;
	PT _ (TS _ 3) -> cont 46;
	PT _ (TS _ 4) -> cont 47;
	PT _ (TS _ 5) -> cont 48;
	PT _ (TS _ 6) -> cont 49;
	PT _ (TS _ 7) -> cont 50;
	PT _ (TS _ 8) -> cont 51;
	PT _ (TS _ 9) -> cont 52;
	PT _ (TS _ 10) -> cont 53;
	PT _ (TS _ 11) -> cont 54;
	PT _ (TS _ 12) -> cont 55;
	PT _ (TS _ 13) -> cont 56;
	PT _ (TS _ 14) -> cont 57;
	PT _ (TS _ 15) -> cont 58;
	PT _ (TS _ 16) -> cont 59;
	PT _ (TS _ 17) -> cont 60;
	PT _ (TS _ 18) -> cont 61;
	PT _ (TS _ 19) -> cont 62;
	PT _ (TS _ 20) -> cont 63;
	PT _ (TS _ 21) -> cont 64;
	PT _ (TS _ 22) -> cont 65;
	PT _ (TS _ 23) -> cont 66;
	PT _ (TS _ 24) -> cont 67;
	PT _ (TS _ 25) -> cont 68;
	PT _ (TS _ 26) -> cont 69;
	PT _ (TS _ 27) -> cont 70;
	PT _ (TS _ 28) -> cont 71;
	PT _ (TS _ 29) -> cont 72;
	PT _ (TS _ 30) -> cont 73;
	PT _ (TS _ 31) -> cont 74;
	PT _ (TS _ 32) -> cont 75;
	PT _ (TS _ 33) -> cont 76;
	PT _ (TV happy_dollar_dollar) -> cont 77;
	PT _ (TI happy_dollar_dollar) -> cont 78;
	PT _ (TD happy_dollar_dollar) -> cont 79;
	PT _ (TC happy_dollar_dollar) -> cont 80;
	PT _ (TL happy_dollar_dollar) -> cont 81;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 82 tk tks = happyError' (tks, explist)
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
pListStmt tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn26 z -> happyReturn z; _other -> notHappyAtAll })

pStmt tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_1 tks) (\x -> case x of {HappyAbsSyn27 z -> happyReturn z; _other -> notHappyAtAll })

pExpr10 tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_2 tks) (\x -> case x of {HappyAbsSyn28 z -> happyReturn z; _other -> notHappyAtAll })

pExpr9 tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_3 tks) (\x -> case x of {HappyAbsSyn28 z -> happyReturn z; _other -> notHappyAtAll })

pExpr8 tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_4 tks) (\x -> case x of {HappyAbsSyn28 z -> happyReturn z; _other -> notHappyAtAll })

pExpr7 tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_5 tks) (\x -> case x of {HappyAbsSyn28 z -> happyReturn z; _other -> notHappyAtAll })

pExpr6 tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_6 tks) (\x -> case x of {HappyAbsSyn28 z -> happyReturn z; _other -> notHappyAtAll })

pExpr5 tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_7 tks) (\x -> case x of {HappyAbsSyn28 z -> happyReturn z; _other -> notHappyAtAll })

pExpr4 tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_8 tks) (\x -> case x of {HappyAbsSyn28 z -> happyReturn z; _other -> notHappyAtAll })

pExpr3 tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_9 tks) (\x -> case x of {HappyAbsSyn28 z -> happyReturn z; _other -> notHappyAtAll })

pExpr2 tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_10 tks) (\x -> case x of {HappyAbsSyn28 z -> happyReturn z; _other -> notHappyAtAll })

pExpr1 tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_11 tks) (\x -> case x of {HappyAbsSyn28 z -> happyReturn z; _other -> notHappyAtAll })

pExpr tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_12 tks) (\x -> case x of {HappyAbsSyn28 z -> happyReturn z; _other -> notHappyAtAll })

pLit tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_13 tks) (\x -> case x of {HappyAbsSyn39 z -> happyReturn z; _other -> notHappyAtAll })

pListElem tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_14 tks) (\x -> case x of {HappyAbsSyn40 z -> happyReturn z; _other -> notHappyAtAll })

pElem tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_15 tks) (\x -> case x of {HappyAbsSyn41 z -> happyReturn z; _other -> notHappyAtAll })

pListParam tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_16 tks) (\x -> case x of {HappyAbsSyn42 z -> happyReturn z; _other -> notHappyAtAll })

pParam tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_17 tks) (\x -> case x of {HappyAbsSyn43 z -> happyReturn z; _other -> notHappyAtAll })

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
