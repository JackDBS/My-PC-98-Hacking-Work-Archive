(mes
 (meta (engine 'AI5) (charset "english") (dictbase 128))
 (dict #\u3000)
 (set-arr~ @ 9 (// (~ @ 9) 128))
 (set-arr~ @ 7 1)
 (set-var A 32768)
 (set-arr~ A 0
   0
   2138
   1990
   3578
   2904
   3469
   4073
   4095
   2335
   2513
   1911
   1622
   2972
   2232
   2793
   3323)
 (set-var A 33024)
 (set-arr~ A 0
   0
   1610
   1462
   3066
   2321
   2827
   3798
   4095
   2335
   2513
   1911
   1622
   2972
   2232
   2793
   3323)
 (set-var A 33280)
 (set-arr~ A 0
   0
   262
   852
   1670
   1301
   1609
   2180
   3822
   2335
   2513
   1911
   1622
   2972
   2232
   2793
   3323)
 (set-var A 33536)
 (set-arr~ A 0
   0
   871
   723
   2295
   1584
   2391
   3059
   4094
   2335
   2513
   1911
   1622
   2972
   2232
   2793
   3323)
 (set-var A 33792)
 (set-arr~ A 0
   0
   1597
   229
   2555
   2390
   2991
   3062
   4095
   2472
   3017
   3805
   1622
   2972
   2232
   2793
   3323)
 (set-var A 34048)
 (set-arr~ A 0
   0
   1597
   229
   2555
   2390
   2991
   3062
   4095
   1941
   2486
   3288
   1622
   2972
   2232
   2793
   3323)
 (set-var A 34304)
 (set-arr~ A 0
   0
   1597
   229
   2555
   2390
   2991
   3062
   4095
   819
   1335
   1851
   1622
   2972
   2232
   2793
   3323)
 (set-var A 34560)
 (set-arr~ A 0
   0
   1597
   229
   2555
   2390
   2991
   3062
   4095
   1184
   1973
   3318
   1622
   2972
   2232
   2793
   3323)
 (load "mouse.dat" 36864)
 (mouse 4 36864)
 (set-var W 10)
 (set-arr~ @ 7 0)
 (set-arr~ @ 6 0)
 (define-proc 30
   (<>
    (mouse 1)
    (color 112)
    (set-var I (~ @ 23))
    (box-inv (~ @ 13) (+ (~ @ 14) (* I 18)) (~ @ 15) (+ (~ @ 14) (* I 18) 15))
    (mouse 0)))
 (define-proc 31
   (<>
    (color 112)
    (menu-init 1)
    (menu-init 0)
    (set-var L (- (~ @ 26) (~ @ 24)))
    (if (> L 10) (<> (set-var L 10)))
    (set-arr~ @ 6 0)
    (color 7)
    (set-var I 0)
    (while
     (!= I L)
     (<>
      (set-var J (~ @ 22))
      (set-arr~ @ 17 (~ @ 13) (+ (~ @ 14) (* I 18)))
      (call (~ J (* I 2)))
      (set-var I (+ I 1))))
    (set-arr~ @ 6 0)
    (color 112)
    (set-arr~ @ 23 0)))
 (define-proc 32 (<> (mouse 1) (set-arr~ @ 27 0) (set-var S (+ (~ @ 23) 1))))
 (define-proc 33 (<>))
 (define-proc 34
   (<>
    (proc 30)
    (if-else (== (~ @ 23) 1) (<> (set-arr~ @ 23 0)) (<> (set-arr~ @ 23 1)))
    (proc 30)))
 (define-proc 35 (<> (proc 34)))
 (define-proc 36 (<>))
 (define-proc 37 (<>))
 (define-proc 38
   (<>
    (mouse 1)
    (set-arr~ @ 20 (+ (&& (~ @ 20) 65280) 0))
    (set-arr~ @ 21 272)
    (set-arr~ @ 20 (// (&& (~ @ 20) 65399) 128))
    (set-arr~ @ 25 2)
    (set-arr~ @ 24 0)
    (set-arr~ @ 23 0)
    (proc 31)
    (mouse 0)
    (proc 30)))
 (define-proc 39
   (<>
    (mouse 2)
    (set-var X (/ (~ @ 10) 8))
    (set-var Y (~ @ 11))
    (if (&&
         (> X (- (~ @ 13) 1))
         (> Y (- (~ @ 14) 1))
         (< X (+ (~ @ 15) 1))
         (< Y (+ (~ @ 16) 1)))
      (<>
       (set-var K (/ (- Y (~ @ 14)) 18))
       (if (&& (> (~ @ 25) K) (!= (~ @ 23) K))
         (<> (proc 30) (set-arr~ @ 23 K) (proc 30)))))))
 (if (== 1 1)
   (<>
    (palette 2 0)
    (set-arr~ @ 13 0 0 79 399)
    (color 7)
    (set-arr~ @ 6 1)
    (clear)
    (set-arr~ @ 6 0)
    (clear)
    (set-arr~ @ 13 24 240 55 399)
    (set-arr~ @ 31 0)
    (set-arr~ @ 38 4095)
    (set-arr~ @ 39 0)
    (set-arr~ @ 46 4095)
    (palette 2)
    (set-arr~ @ 7 0)
    (menu-show (<.> (text "　Play in Color　") (text "　　Play in Monochrome　　　")))
    (cond
     ((== S 1) (<> (set-arr~ @ 9 (&& (~ @ 9) 65503)) (set-reg: 2024 0)))
     ((== S 2) (<> (set-arr~ @ 9 (// (~ @ 9) 32)) (set-reg: 2024 1))))
    (palette 3 0)
    (set-arr~ @ 13 0 0 79 399)
    (color 7)
    (set-arr~ @ 6 1)
    (clear)
    (set-arr~ @ 6 0)
    (clear)
    (set-arr~ @ 7 3)
    (set-arr~ @ 1 0)
    (set-arr~ @ 2 53248)
    (set-arr~ @ 6 0)
    (image "elf.gp4")
    (load "elf.ani" 0)
    (util 0)
    (set-arr~ @ 7 0)
    (animate 0 0 0)
    (animate 0 1 1)
    (palette 3)
    (delay 100)
    (set-arr~ @ 7 3)
    (load "elf.m" 0)
    (set-arr~ @ 3 0)
    (set-arr~ @ 7 0)
    (animate 4 0)
    (set-arr~ @ 7 1)
    (sound 0)
    (set-arr~ @ 7 0)
    (animate 4 1)
    (delay 400)
    (sound 1)))
 (palette 3 0)
 (set-arr~ @ 13 0 0 79 399)
 (color 7)
 (set-arr~ @ 6 1)
 (clear)
 (set-arr~ @ 6 0)
 (clear)
 (util 2 2 0)
 (set-arr~ @ 7 0)
 (set-arr~ @ 6 0)
 (set-arr~ @ 94 8 0 (- 72 8) 100)
 (set-var I 0)
 (while
  (!= I (/ (~ @ 97) 2))
  (<>
   (blit
    (~ @ 94)
    (+ (~ @ 95) (* I 2))
    (- (+ (~ @ 94) (~ @ 96)) 1)
    (+ (~ @ 95) (* I 2))
    1
    (~ @ 94)
    (+ (~ @ 95) (* I 2))
    0)
   (blit
    (~ @ 94)
    (- (+ (~ @ 95) (* (/ (~ @ 97) 2) 2)) 1 (* I 2))
    (- (+ (~ @ 94) (~ @ 96)) 1)
    (- (+ (~ @ 95) (* (/ (~ @ 97) 2) 2)) 1 (* I 2))
    1
    (~ @ 94)
    (- (+ (~ @ 95) (* (/ (~ @ 97) 2) 2)) 1 (* I 2))
    0)
   (set-var I (+ I 1))))
 (if (== (&& (~ @ 97) 1) 1)
   (<>
    (blit
     (~ @ 94)
     (- (+ (~ @ 95) (~ @ 97)) 1)
     (- (+ (~ @ 94) (~ @ 96)) 1)
     (- (+ (~ @ 95) (~ @ 97)) 1)
     1
     (~ @ 94)
     (- (+ (~ @ 95) (~ @ 97)) 1)
     0)))
 (set-arr~ @ 6 0)
 (util 2 2 1)
 (set-arr~ @ 7 0)
 (set-var A (~ @ 0))
 (set-arr~ A 497 S)
 (mes-jump "start1.mes"))