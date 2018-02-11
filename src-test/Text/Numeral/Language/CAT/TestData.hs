{-|
[@ISO639-1@]        ca

[@ISO639-2@]        cat

[@ISO639-3@]        cat

[@Native name@]     català

[@English name@]    Catalan
-}
module Text.Numeral.Language.CAT.TestData (cardinals) where


--------------------------------------------------------------------------------
-- Imports
--------------------------------------------------------------------------------

import "numerals" Text.Numeral.Grammar ( defaultInflection )
import "this" Text.Numeral.Test ( TestData )


--------------------------------------------------------------------------------
-- Test data
--------------------------------------------------------------------------------

{-
Sources:
  http://www.languagesandnumbers.com/how-to-count-in-catalan/en/cat/
-}

cardinals :: (Num i) => TestData i
cardinals =
  [ ( "default"
    , defaultInflection
    , [ (0, "zero")
      , (1, "un")
      , (2, "dos")
      , (3, "tres")
      , (4, "quatre")
      , (5, "cinc")
      , (6, "sis")
      , (7, "set")
      , (8, "vuit")
      , (9, "nou")
      , (10, "deu")
      , (11, "onze")
      , (12, "dotze")
      , (13, "tretze")
      , (14, "catorze")
      , (15, "quinze")
      , (16, "setze")
      , (17, "disset")
      , (18, "divuit")
      , (19, "dinou")
      , (20, "vint")
      , (21, "vint-i-u")
      , (22, "vint-i-dos")
      , (23, "vint-i-tres")
      , (24, "vint-i-quatre")
      , (25, "vint-i-cinc")
      , (26, "vint-i-sis")
      , (27, "vint-i-set")
      , (28, "vint-i-vuit")
      , (29, "vint-i-nou")
      , (30, "trenta")
      , (31, "trenta-u")
      , (32, "trenta-dos")
      , (33, "trenta-tres")
      , (34, "trenta-quatre")
      , (35, "trenta-cinc")
      , (36, "trenta-sis")
      , (37, "trenta-set")
      , (38, "trenta-vuit")
      , (39, "trenta-nou")
      , (40, "quaranta")
      , (41, "quaranta-u")
      , (42, "quaranta-dos")
      , (43, "quaranta-tres")
      , (44, "quaranta-quatre")
      , (45, "quaranta-cinc")
      , (46, "quaranta-sis")
      , (47, "quaranta-set")
      , (48, "quaranta-vuit")
      , (49, "quaranta-nou")
      , (50, "cinquanta")
      , (51, "cinquanta-u")
      , (52, "cinquanta-dos")
      , (53, "cinquanta-tres")
      , (54, "cinquanta-quatre")
      , (55, "cinquanta-cinc")
      , (56, "cinquanta-sis")
      , (57, "cinquanta-set")
      , (58, "cinquanta-vuit")
      , (59, "cinquanta-nou")
      , (60, "seixanta")
      , (61, "seixanta-u")
      , (62, "seixanta-dos")
      , (63, "seixanta-tres")
      , (64, "seixanta-quatre")
      , (65, "seixanta-cinc")
      , (66, "seixanta-sis")
      , (67, "seixanta-set")
      , (68, "seixanta-vuit")
      , (69, "seixanta-nou")
      , (70, "setanta")
      , (71, "setanta-u")
      , (72, "setanta-dos")
      , (73, "setanta-tres")
      , (74, "setanta-quatre")
      , (75, "setanta-cinc")
      , (76, "setanta-sis")
      , (77, "setanta-set")
      , (78, "setanta-vuit")
      , (79, "setanta-nou")
      , (80, "vuitanta")
      , (81, "vuitanta-u")
      , (82, "vuitanta-dos")
      , (83, "vuitanta-tres")
      , (84, "vuitanta-quatre")
      , (85, "vuitanta-cinc")
      , (86, "vuitanta-sis")
      , (87, "vuitanta-set")
      , (88, "vuitanta-vuit")
      , (89, "vuitanta-nou")
      , (90, "noranta")
      , (91, "noranta-u")
      , (92, "noranta-dos")
      , (93, "noranta-tres")
      , (94, "noranta-quatre")
      , (95, "noranta-cinc")
      , (96, "noranta-sis")
      , (97, "noranta-set")
      , (98, "noranta-vuit")
      , (99, "noranta-nou")
      , (100, "cent")
      , (101, "cent un")
      , (102, "cent dos")
      , (103, "cent tres")
      , (104, "cent quatre")
      , (105, "cent cinc")
      , (106, "cent sis")
      , (107, "cent set")
      , (108, "cent vuit")
      , (109, "cent nou")
      , (110, "cent deu")
      , (123, "cent vint-i-tres")
      , (200, "dos-cents")
      , (300, "tres-cents")
      , (321, "tres-cents vint-i-u")
      , (400, "quatre-cents")
      , (500, "cinc-cents")
      , (600, "sis-cents")
      , (700, "set-cents")
      , (800, "vuit-cents")
      , (900, "nou-cents")
      , (909, "nou-cents nou")
      , (990, "nou-cents noranta")
      , (999, "nou-cents noranta-nou")
      , (1000, "mil")
      , (1001, "mil un")
      , (1008, "mil vuit")
      , (1234, "mil dos-cents trenta-quatre")
      , (2000, "dos mil")
      , (3000, "tres mil")
      , (4000, "quatre mil")
      , (4321, "quatre mil tres-cents vint-i-u")
      , (5000, "cinc mil")
      , (6000, "sis mil")
      , (7000, "set mil")
      , (8000, "vuit mil")
      , (9000, "nou mil")
      , (10000, "deu mil")
      , (12345, "dotze mil tres-cents quaranta-cinc")
      , (20000, "vint mil")
      , (30000, "trenta mil")
      , (40000, "quaranta mil")
      , (50000, "cinquanta mil")
      , (54321, "cinquanta-quatre mil tres-cents vint-i-u")
      , (60000, "seixanta mil")
      , (70000, "setanta mil")
      , (80000, "vuitanta mil")
      , (90000, "noranta mil")
      , (100000, "cent mil")
      , (123456, "cent vint-i-tres mil quatre-cents cinquanta-sis")
      , (200000, "dos-cents mil")
      , (300000, "tres-cents mil")
      , (400000, "quatre-cents mil")
      , (500000, "cinc-cents mil")
      , (600000, "sis-cents mil")
      , (654321, "sis-cents cinquanta-quatre mil tres-cents vint-i-u")
      , (700000, "set-cents mil")
      , (800000, "vuit-cents mil")
      , (900000, "nou-cents mil")
      , (1000000, "un milió")
      , (1234567, "un milió dos-cents trenta-quatre mil cinc-cents seixanta-set")
      , (7654321, "set milions sis-cents cinquanta-quatre mil tres-cents vint-i-u")
      , (1000000000, "mil milions")
      , (1000000000000, "un bilió")
      , (1000000000000000000, "un trilió")
      , (1000000000000000000000, "un triliard")
      , (1000000000000000000000000, "un quadrilió")
      , (1000000000000000000000000000, "un quadriliard")
      , (1000000000000000000000000000000, "un quintilió")
      , (1000000000000000000000000000000000, "un quintiliard")
      , (1000000000000000000000000000000000000, "un sextilió")
      , (1000000000000000000000000000000000000000, "un sextiliard")
      , (1000000000000000000000000000000000000000000, "un septilió")
      ]
    )
  ]