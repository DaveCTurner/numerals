{-# LANGUAGE NoImplicitPrelude, OverloadedStrings, UnicodeSyntax #-}

{-|
[@ISO639-1@]        -

[@ISO639-2@]        sco

[@ISO639-3@]        sco

[@Native name@]     Scots

[@English name@]    Scots
-}

module Text.Numeral.Language.SCO
    ( cardinal
    , struct
    ) where


-------------------------------------------------------------------------------
-- Imports
-------------------------------------------------------------------------------

-- from base:
import Control.Monad ( (>=>) )
import Data.Function ( ($), const, fix )
import Data.Maybe    ( Maybe(Just) )
import Data.Monoid   ( Monoid )
import Data.String   ( IsString )
import Prelude       ( Integral )

-- from containers:
import qualified Data.Map as M ( fromList, lookup )

-- from numerals:
import Text.Numeral
import qualified Text.Numeral.Exp.Classes as C


-------------------------------------------------------------------------------
-- SCO
-------------------------------------------------------------------------------

{-
Sources:
  http://www.sf.airnet.ne.jp/~ts/language/number/scots.html
-}

cardinal ∷ (Monoid s, IsString s, Integral α) ⇒ α → Maybe s
cardinal = struct >=> cardinalRepr

struct ∷ (Integral α, C.Lit β, C.Add β, C.Mul β) ⇒ α → Maybe β
struct = checkPos
       $ fix
       $ findRule (  1, lit       )
                [ ( 13, add 10 L  )
                , ( 20, mul 10 R L)
                , (100, lit       )
                ]
                   100

cardinalRepr ∷ (Monoid s, IsString s) ⇒ Exp → Maybe s
cardinalRepr = textify defaultRepr
               { reprValue = \n → M.lookup n syms
               , reprAdd   = (⊞)
               , reprMul   = \_ _ → Just ""
               }
    where
      (_ `Mul` _) ⊞ _ = Just " "
      _           ⊞ _ = Just ""

      syms =
          M.fromList
          [ (1, const    "ane"                     )
          , (2, tenForms "twa"    "twa"    "twin"  )
          , (3, tenForms "three"  "ther"   "ther"  )
          , (4, const    "fower"                   )
          , (5, tenForms "five"   "feif"   "fuf"   )
          , (6, const    "sax"                     )
          , (7, tenForms "seeven" "seiven" "seeven")
          , (8, tenForms "echt"   "ech"    "ech"   )
          , (9, tenForms "nine"   "nin"    "nin"   )
          , (10, \c → case c of
                        CtxAdd {} → "teen"
                        CtxMul {} → "tie"
                        _         → "ten"
            )
          , (11, const "aleeven")
          , (12, const "twal")
          , (100, const "hunner")
          , (1000, const "thousant")
          ]

      tenForms o a m = \c → case c of
                              CtxAdd L _ _ → a
                              CtxMul {}    → m
                              _            → o