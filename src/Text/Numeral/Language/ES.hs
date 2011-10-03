{-# LANGUAGE FlexibleContexts
           , NoImplicitPrelude
           , OverloadedStrings
           , PackageImports
           , UnicodeSyntax
  #-}

{-|
[@ISO639-1@]        es

[@ISO639-2B@]       spa

[@ISO639-3@]        spa

[@Native name@]     Español

[@English name@]    Spanish
-}

module Text.Numeral.Language.ES
    ( -- * Conversions
      cardinal
      -- * Structure
    , struct
      -- * Bounds
    , bounds
    ) where

-------------------------------------------------------------------------------
-- Imports
-------------------------------------------------------------------------------

import "base" Data.Bool     ( otherwise )
import "base" Data.Function ( ($), const, fix, id, flip )
import "base" Data.Maybe    ( Maybe(Just) )
import "base" Data.Monoid   ( Monoid )
import "base" Data.Ord      ( (<) )
import "base" Data.String   ( IsString )
import "base" Prelude       ( (-), negate, div, divMod
                            , Integral, fromIntegral
                            )
import "base-unicode-symbols" Data.Eq.Unicode       ( (≡) )
import "base-unicode-symbols" Data.Function.Unicode ( (∘) )
import "base-unicode-symbols" Prelude.Unicode       ( ℤ )
import qualified "containers" Data.Map as M ( fromList, lookup )
import           "numerals-base" Text.Numeral
import           "numerals-base" Text.Numeral.Misc ( dec, intLog )
import qualified "numerals-base" Text.Numeral.BigNum  as BN
import qualified "numerals-base" Text.Numeral.Exp     as E
import qualified "numerals-base" Text.Numeral.Grammar as G


-------------------------------------------------------------------------------
-- ES
-------------------------------------------------------------------------------

-- Sources:
--   http://www.sf.airnet.ne.jp/~ts/language/number/spanish.html
--   http://spanish.about.com/cs/forbeginners/a/cardinalnum_beg.htm
--   http://www.learn-spanish-help.com/count-in-spanish.html
--   http://www.donquijote.org/spanishlanguage/numbers/numbers1.asp
--   http://en.wiktionary.org/wiki/Appendix:Spanish_numerals

cardinal ∷ ( G.Feminine i, G.Masculine i
           , Integral α, E.Scale α
           , Monoid s, IsString s
           )
         ⇒ i → α → Maybe s
cardinal inf = cardinalRepr inf ∘ struct

struct ∷ ( Integral α, E.Scale α
         , E.Unknown β, E.Lit β, E.Neg β, E.Add β, E.Mul β, E.Scale β
         , E.Inflection β, G.Masculine (E.Inf β)
         )
       ⇒ α → β
struct = pos $ fix $ rule `combine` mulScale1_es 6 0 R L BN.rule
    where
      rule = findRule (   0, lit       )
                    [ (  11, add 10 L  )
                    , (  16, add 10 R  )
                    , (  20, lit       )
                    , (  21, add 20 R  )
                    , (  30, mul 10 R L)
                    , ( 100, step  100   10 R L)
                    , (1000, step 1000 1000 R L)
                    ]
                    (dec 6 - 1)

mulScale1_es ∷ ( Integral α, E.Scale α
               , E.Unknown β, E.Add β, E.Mul β, E.Scale β
               , E.Inflection β, G.Masculine (E.Inf β)
               )
             ⇒ α        -- ^ Base.
             → α        -- ^ Offset.
             → Side     -- ^ Add side.
             → Side     -- ^ Mul side.
             → Rule α β -- ^ Big num rule.
             → Rule α β
mulScale1_es base offset aSide mSide bigNumRule =
    \f n → let rank    = (intLog n - offset) `div` base
               base'   = fromIntegral base
               offset' = fromIntegral offset
               rank'   = fromIntegral rank
               rankExp = (fix bigNumRule) rank
               (m, a)  = n `divMod` E.scale base' offset' rank'
               scale'  = E.scale base' offset' rankExp
               mval    = (flipIfR mSide (\x y → E.inflection (G.masculine) $ E.mul x y))
                         (f m)
                         scale'
           in if E.isUnknown rankExp
              then E.unknown
              else if a ≡ 0
                   then mval
                   else (flipIfR aSide E.add) (f a) mval

flipIfR ∷ Side → (α → α → α) → (α → α → α)
flipIfR L = id
flipIfR R = flip

bounds ∷ (Integral α) ⇒ (α, α)
bounds = let x = dec 60000 - 1 in (negate x, x)

cardinalRepr ∷ ( G.Feminine i, G.Masculine i, Monoid s, IsString s)
             ⇒ i → Exp i → Maybe s
cardinalRepr = render defaultRepr
               { reprValue = \inf n → M.lookup n (syms inf)
               , reprScale = longScaleRepr
               , reprAdd   = Just (⊞)
               , reprMul   = Just (⊡)
               , reprNeg   = Just $ \_ _ → "menos "
               }
    where
      (_                    ⊞ Lit 10) _ = ""
      (Lit 10               ⊞ _     ) _ = ""
      (Lit 20               ⊞ _     ) _ = ""
      ((Lit _ `Mul` Lit 10) ⊞ _     ) _ = " y "
      (_                    ⊞ _     ) _ = " "

      (_ ⊡ Lit n) _ | n < 1000 = ""
      (_ ⊡ _    ) _            = " "

      syms inf =
          M.fromList
          [ (0, const "cero")
          , (1, \c → case c of
                       CtxAdd _ (Lit 10)  _    → "on"
                       CtxAdd _ (Lit 20)  _
                           | G.isMasculine inf → "ún"
                       _   | G.isFeminine  inf → "una"
                           | G.isMasculine inf → "un"
                           | otherwise         → "uno"
            )
          , (2, \c → case c of
                       CtxAdd _ (Lit 10)  _ → "do"
                       CtxAdd _ (Lit 20)  _ → "dós"
                       _                    → "dos"
            )
          , (3, \c → case c of
                       CtxAdd _ (Lit 10)  _ → "tre"
                       CtxAdd _ (Lit 20)  _ → "trés"
                       CtxMul _ (Lit 10)  _ → "trein"
                       _                    → "tres"
            )
          , (4, \c → case c of
                       CtxAdd _ (Lit 10)  _ → "cator"
                       CtxMul _ (Lit 10)  _ → "cuaren"
                       _                    → "cuatro"
            )
          , (5, \c → case c of
                       CtxAdd _ (Lit 10)  _ → "quin"
                       CtxMul _ (Lit 10)  _ → "cincuen"
                       CtxMul _ (Lit 100) _ → "quin"
                       _                    → "cinco"
            )
          , (6, \c → case c of
                       CtxAdd _ (Lit 10)  _ → "séis"
                       CtxAdd _ (Lit 20)  _ → "séis"
                       CtxMul _ (Lit 10)  _ → "sesen"
                       _                    → "seis"
            )
          , (7, \c → case c of
                       CtxMul _ (Lit 10)  _ → "seten"
                       CtxMul _ (Lit 100) _ → "sete"
                       _                    → "siete"
            )
          , (8, \c → case c of
                       CtxMul _ (Lit 10)  _ → "ochen"
                       _                    → "ocho"
            )
          , (9, \c → case c of
                       CtxMul _ (Lit 10)  _ → "noven"
                       CtxMul _ (Lit 100) _ → "nove"
                       _                    → "nueve"
            )
          , (10, \c → case c of
                        CtxAdd R (Lit _)  _ → "ce"
                        CtxAdd L (Lit _)  _ → "dieci"
                        CtxMul R _        _ → "ta"
                        _                   → "diez"
            )
          , (20, \c → case c of
                        CtxAdd _ (Lit _)  _ → "veinti"
                        _                   → "veinte"
            )
          , (100, \c → case c of
                         CtxEmpty             → "cien"
                         CtxAdd {}            → "ciento"
                         CtxMul _ (Lit 5) _
                           | G.isFeminine inf → "ientas"
                           | otherwise        → "ientos"
                         CtxMul L _       _   → "cien"
                         _ | G.isFeminine inf → "cientas"
                           | otherwise        → "cientos"
            )
          , (1000, const "mil")
          ]

longScaleRepr ∷ (IsString s, Monoid s)
              ⇒ i → ℤ → ℤ → (Exp i) → Ctx (Exp i) → Maybe s
longScaleRepr =
    BN.scaleRepr (BN.quantityName "illón" "illones")
                 [ (4, BN.forms "cuatr" "cuator" "cuator" "cuatra" "cuatri")
                 , (9, BN.forms "non"   "noven"  "noven"  "nona"   "non")
                 ]
