{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PackageImports    #-}
{-# LANGUAGE UnicodeSyntax     #-}

{-|
[@ISO639-1@]        ht

[@ISO639-2@]        hat

[@ISO639-3@]        hat

[@Native name@]     -

[@English name@]    Haitian Creole
-}
module Text.Numeral.Language.HT.TestData (cardinals) where


--------------------------------------------------------------------------------
-- Imports
--------------------------------------------------------------------------------

import "base" Prelude ( Num )
import "numerals" Text.Numeral.Grammar.Reified ( defaultInflection )
import "this" Text.Numeral.Test ( TestData )


--------------------------------------------------------------------------------
-- Test data
--------------------------------------------------------------------------------

{-
Sources:
  http://www.languagesandnumbers.com/how-to-count-in-haitian-creole/en/hat/
-}

cardinals ∷ (Num i) ⇒ TestData i
cardinals =
  [ ( "default"
    , defaultInflection
    , [ (0, "zero")
      , (1, "youn")
      , (2, "de")
      , (3, "twa")
      , (4, "kat")
      , (5, "senk")
      , (6, "sis")
      , (7, "sèt")
      , (8, "uit")
      , (9, "nèf")
      , (10, "dis")
      , (11, "onz")
      , (12, "douz")
      , (13, "trèz")
      , (14, "katòz")
      , (15, "kenz")
      , (16, "sèz")
      , (17, "disèt")
      , (18, "dizuit")
      , (19, "diznèf")
      , (20, "ven")
      , (21, "venteyen")
      , (22, "vennde")
      , (23, "venntwa")
      , (24, "vennkat")
      , (25, "vennsenk")
      , (26, "vennsis")
      , (27, "vennsèt")
      , (28, "ventuit")
      , (29, "ventnèf")
      , (30, "trant")
      , (31, "tranteyen")
      , (32, "trannde")
      , (33, "tranntwa")
      , (34, "trannkat")
      , (35, "trannsenk")
      , (36, "trannsis")
      , (37, "trannsèt")
      , (38, "trantuit")
      , (39, "trantnèf")
      , (40, "karant")
      , (41, "karanteyen")
      , (42, "karannde")
      , (43, "karanntwa")
      , (44, "karannkat")
      , (45, "karannsenk")
      , (46, "karannsis")
      , (47, "karannsèt")
      , (48, "karantuit")
      , (49, "karantnèf")
      , (50, "senkant")
      , (51, "senkanteyen")
      , (52, "senkannde")
      , (53, "senkanntwa")
      , (54, "senkannkat")
      , (55, "senkannsenk")
      , (56, "senkannsis")
      , (57, "senkannsèt")
      , (58, "senkantuit")
      , (59, "senkantnèf")
      , (60, "swasann")
      , (61, "swasannyoun")
      , (62, "swasannde")
      , (63, "swasanntwa")
      , (64, "swasannkat")
      , (65, "swasannsenk")
      , (66, "swasannsis")
      , (67, "swasannsèt")
      , (68, "swasannuit")
      , (69, "swasannnèf")
      , (70, "swasanndis")
      , (71, "swasannonz")
      , (72, "swasanndisde")
      , (73, "swasanntrèz")
      , (74, "swasannkatòz")
      , (75, "swasannkenz")
      , (76, "swasannsèz")
      , (77, "swasanndissèt")
      , (78, "swasanndizuit")
      , (79, "swasanndiznèf")
      , (80, "katreven")
      , (81, "katreventeyen")
      , (82, "katrevennde")
      , (83, "katrevenntwa")
      , (84, "katrevennkat")
      , (85, "katrevennsenk")
      , (86, "katrevennsis")
      , (87, "katrevennsèt")
      , (88, "katreventuit")
      , (89, "katreventnèf")
      , (90, "katrevendis")
      , (91, "katrevenonz")
      , (92, "katrevendisde")
      , (93, "katreventrèz")
      , (94, "katrevenkatòz")
      , (95, "katrevenkenz")
      , (96, "katrevensèz")
      , (97, "katrevendissèt")
      , (98, "katrevendizuit")
      , (99, "katrevendiznèf")
      , (100, "san")
      , (101, "san en")
      , (102, "san de")
      , (103, "san twa")
      , (104, "san kat")
      , (105, "san senk")
      , (106, "san sis")
      , (107, "san sèt")
      , (108, "san uit")
      , (109, "san nèf")
      , (110, "san dis")
      , (123, "san venntwa")
      , (200, "de san")
      , (300, "twa san")
      , (321, "twa san venteyen")
      , (400, "kat san")
      , (500, "sen san")
      , (600, "si san")
      , (700, "sèt san")
      , (800, "ui san")
      , (900, "nèf san")
      , (909, "nèf san nèf")
      , (990, "nèf san katrevendis")
      , (999, "nèf san katrevendiznèf")
      , (1000, "mil")
      , (1001, "mil youn")
      , (1008, "mil uit")
      , (1234, "mil de san trannkat")
      , (2000, "de mil")
      , (3000, "twa mil")
      , (4000, "kat mil")
      , (4321, "kat mil twa san venteyen")
      , (5000, "senk mil")
      , (6000, "sis mil")
      , (7000, "sèt mil")
      , (8000, "uit mil")
      , (9000, "nèf mil")
      , (10000, "di mil")
      , (12345, "douz mil twa san karannsenk")
      , (20000, "ven mil")
      , (30000, "trant mil")
      , (40000, "karant mil")
      , (50000, "senkant mil")
      , (54321, "senkannkat mil twa san venteyen")
      , (60000, "swasann mil")
      , (70000, "swasanndi mil")
      , (80000, "katreven mil")
      , (90000, "katrevendi mil")
      , (100000, "san mil")
      , (123456, "san venntwa mil kat san senkannsis")
      , (200000, "de san mil")
      , (300000, "twa san mil")
      , (400000, "kat san mil")
      , (500000, "sen san mil")
      , (600000, "si san mil")
      , (654321, "si san senkannkat mil twa san venteyen")
      , (700000, "sèt san mil")
      , (800000, "ui san mil")
      , (900000, "nèf san mil")
      , (1000000, "yon milyon")
      , (1000001, "yon milyon youn")
      , (1234567, "yon milyon de san trannkat mil sen san swasannsèt")
      , (2000000, "de milyon")
      , (3000000, "twa milyon")
      , (4000000, "kat milyon")
      , (5000000, "senk milyon")
      , (6000000, "sis milyon")
      , (7000000, "sèt milyon")
      , (7654321, "sèt milyon si san senkannkat mil twa san venteyen")
      , (8000000, "uit milyon")
      , (9000000, "nèf milyon")
      , (1000000000, "yon milya")
      , (1000000001, "yon milya youn")
      , (2000000000, "de milya")
      , (3000000000, "twa milya")
      , (4000000000, "kat milya")
      , (5000000000, "senk milya")
      , (6000000000, "sis milya")
      , (7000000000, "sèt milya")
      , (8000000000, "uit milya")
      , (9000000000, "nèf milya")
      ]
    )
  ]
