{-|
[@ISO639-1@]        hy

[@ISO639-2B@]       arm

[@ISO639-2T@]       hye

[@ISO639-3@]        hye

[@Native name@]     հայերեն

[@English name@]    Armenian
-}
module Text.Numeral.Language.HYE.TestData (cardinals) where


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
  http://www.languagesandnumbers.com/how-to-count-in-armenian/en/hye/
-}

cardinals :: (Num i) => TestData i
cardinals =
  [ ( "default"
    , defaultInflection
    , [ (0, "զրո")
      , (1, "մեկ")
      , (2, "երկու")
      , (3, "երեք")
      , (4, "չորս")
      , (5, "հինգ")
      , (6, "վեց")
      , (7, "յոթ")
      , (8, "ութ")
      , (9, "ինը")
      , (10, "տաս")
      , (11, "տասնմեկ")
      , (12, "տասներկու")
      , (13, "տասներեք")
      , (14, "տասնչորս")
      , (15, "տասնհինգ")
      , (16, "տասնվեց")
      , (17, "տասնյոթ")
      , (18, "տասնութ")
      , (19, "տասնինը")
      , (20, "քսան")
      , (21, "քսան մեկ")
      , (22, "քսան երկու")
      , (23, "քսան երեք")
      , (24, "քսան չորս")
      , (25, "քսան հինգ")
      , (26, "քսան վեց")
      , (27, "քսան յոթ")
      , (28, "քսան ութ")
      , (29, "քսան ինը")
      , (30, "երեսուն")
      , (31, "երեսուն մեկ")
      , (32, "երեսուն երկու")
      , (33, "երեսուն երեք")
      , (34, "երեսուն չորս")
      , (35, "երեսուն հինգ")
      , (36, "երեսուն վեց")
      , (37, "երեսուն յոթ")
      , (38, "երեսուն ութ")
      , (39, "երեսուն ինը")
      , (40, "քառասուն")
      , (41, "քառասուն մեկ")
      , (42, "քառասուն երկու")
      , (43, "քառասուն երեք")
      , (44, "քառասուն չորս")
      , (45, "քառասուն հինգ")
      , (46, "քառասուն վեց")
      , (47, "քառասուն յոթ")
      , (48, "քառասուն ութ")
      , (49, "քառասուն ինը")
      , (50, "հիսուն")
      , (51, "հիսուն մեկ")
      , (52, "հիսուն երկու")
      , (53, "հիսուն երեք")
      , (54, "հիսուն չորս")
      , (55, "հիսուն հինգ")
      , (56, "հիսուն վեց")
      , (57, "հիսուն յոթ")
      , (58, "հիսուն ութ")
      , (59, "հիսուն ինը")
      , (60, "վաթսուն")
      , (61, "վաթսուն մեկ")
      , (62, "վաթսուն երկու")
      , (63, "վաթսուն երեք")
      , (64, "վաթսուն չորս")
      , (65, "վաթսուն հինգ")
      , (66, "վաթսուն վեց")
      , (67, "վաթսուն յոթ")
      , (68, "վաթսուն ութ")
      , (69, "վաթսուն ինը")
      , (70, "յոթանասուն")
      , (71, "յոթանասուն մեկ")
      , (72, "յոթանասուն երկու")
      , (73, "յոթանասուն երեք")
      , (74, "յոթանասուն չորս")
      , (75, "յոթանասուն հինգ")
      , (76, "յոթանասուն վեց")
      , (77, "յոթանասուն յոթ")
      , (78, "յոթանասուն ութ")
      , (79, "յոթանասուն ինը")
      , (80, "ութսուն")
      , (81, "ութսուն մեկ")
      , (82, "ութսուն երկու")
      , (83, "ութսուն երեք")
      , (84, "ութսուն չորս")
      , (85, "ութսուն հինգ")
      , (86, "ութսուն վեց")
      , (87, "ութսուն յոթ")
      , (88, "ութսուն ութ")
      , (89, "ութսուն ինը")
      , (90, "իննսուն")
      , (91, "իննսուն մեկ")
      , (92, "իննսուն երկու")
      , (93, "իննսուն երեք")
      , (94, "իննսուն չորս")
      , (95, "իննսուն հինգ")
      , (96, "իննսուն վեց")
      , (97, "իննսուն յոթ")
      , (98, "իննսուն ութ")
      , (99, "իննսուն ինը")
      , (100, "հարյուր")
      , (101, "հարյուր մեկ")
      , (102, "հարյուր երկու")
      , (103, "հարյուր երեք")
      , (104, "հարյուր չորս")
      , (105, "հարյուր հինգ")
      , (106, "հարյուր վեց")
      , (107, "հարյուր յոթ")
      , (108, "հարյուր ութ")
      , (109, "հարյուր ինը")
      , (110, "հարյուր տաս")
      , (123, "հարյուր քսան երեք")
      , (200, "երկու հարյուր")
      , (300, "երեք հարյուր")
      , (321, "երեք հարյուր քսան մեկ")
      , (400, "չորս հարյուր")
      , (500, "հինգ հարյուր")
      , (600, "վեց հարյուր")
      , (700, "յոթ հարյուր")
      , (800, "ութ հարյուր")
      , (900, "ինը հարյուր")
      , (909, "ինը հարյուր ինը")
      , (990, "ինը հարյուր իննսուն")
      , (999, "ինը հարյուր իննսուն ինը")
      , (1000, "հազար")
      , (1001, "հազար մեկ")
      , (1008, "հազար ութ")
      , (1234, "հազար երկու հարյուր երեսուն չորս")
      , (2000, "երկու հազար")
      , (3000, "երեք հազար")
      , (4000, "չորս հազար")
      , (4321, "չորս հազար երեք հարյուր քսան մեկ")
      , (5000, "հինգ հազար")
      , (6000, "վեց հազար")
      , (7000, "յոթ հազար")
      , (8000, "ութ հազար")
      , (9000, "ինը հազար")
      , (10000, "տաս հազար")
      , (12345, "տասներկու հազար երեք հարյուր քառասուն հինգ")
      , (20000, "քսան հազար")
      , (30000, "երեսուն հազար")
      , (40000, "քառասուն հազար")
      , (50000, "հիսուն հազար")
      , (54321, "հիսուն չորս հազար երեք հարյուր քսան մեկ")
      , (60000, "վաթսուն հազար")
      , (70000, "յոթանասուն հազար")
      , (80000, "ութսուն հազար")
      , (90000, "իննսուն հազար")
      , (100000, "հարյուր հազար")
      , (123456, "հարյուր քսան երեք հազար չորս հարյուր հիսուն վեց")
      , (200000, "երկու հարյուր հազար")
      , (300000, "երեք հարյուր հազար")
      , (400000, "չորս հարյուր հազար")
      , (500000, "հինգ հարյուր հազար")
      , (600000, "վեց հարյուր հազար")
      , (654321, "վեց հարյուր հիսուն չորս հազար երեք հարյուր քսան մեկ")
      , (700000, "յոթ հարյուր հազար")
      , (800000, "ութ հարյուր հազար")
      , (900000, "ինը հարյուր հազար")
      , (1000000, "միլիոն")
      , (1000000000, "միլիարդ")
      , (1000000000000, "տրիլիոն")
      ]
    )
  ]