(mes
 (meta (engine 'AI5) (charset "english") (dictbase 128))
 (dict)
 (set-arr~ @ 7 3)
 (set-arr~ @ 1 0)
 (set-arr~ @ 6 3)
 (image "font.gp4")
 (set-arr~ @ 7 0)
 (set-arr~ @ 6 0)
 (cond
  ((== (: 2015) 0)
   (<>
    (set-arr~ @ 7 0)
    (set-var A (~ @ 0))
    (set-var I (~ A 497))
    (set-arr~ @ 7 3)
    (set-var B 0)
    (set-arr~ B 0 (: 2024))
    (set-arr~ B 1 I)
    (flag 2 6)
    (set-arr~ @ 7 3)
    (set-var B 0)
    (set-reg: 2024 (~ B 0))
    (set-var I (~ B 1))
    (set-arr~ @ 7 0)
    (set-var A (~ @ 0))
    (set-arr~ A 497 I)
    (set-reg: 2010 0)))
  ((== (: 2015) 1)
   (<>
    (set-reg: 2026 1)
    (if (== (: 188) 1) (<> (set-reg: 1984 1)))
    (if (== (: 406) 1) (<> (set-reg: 1983 1)))
    (if (== (: 540) 1) (<> (set-reg: 1982 1)))
    (if (&& (== (: 210) 1) (== (: 763) 0)) (<> (set-reg: 1981 1)))
    (if (== (: 781) 1) (<> (set-reg: 1980 1)))
    (if (== (: 779) 1) (<> (set-reg: 1979 1)))
    (if (== (: 780) 1) (<> (set-reg: 1978 1)))
    (flag 1 6)
    (set-arr~ @ 7 0)
    (set-var A (~ @ 0))
    (util 2 2 2 (~ A 497)))))
 (set-arr~ @ 7 0)
 (set-var J (+ (~ @ 0) 1000))
 (set-var I 0)
 (set-var A 0)
 (while (< I 18) (<> (set-var A (+ A (~ J I))) (set-var I (+ I 1))))
 (set-reg: 2015 1)
 (if (&& (== (: 2026) 0) (== A 0)) (<> (mes-jump "open.mes")))
 (set-arr~ @ 9 (// (~ @ 9) 128))
 (set-reg: 0 1)
 (set-reg: 1 (: 2026))
 (set-reg: 2 1)
 (set-reg: 3 0)
 (set-var I 0)
 (while
  (< I 15)
  (<> (set-reg: 3 (+ (: 3) (:: (- 1999 I)))) (set-var I (+ I 1))))
 (define-proc 0
   (<>
    (define-proc 33 (<>))
    (define-proc 34 (<>))
    (define-proc 35 (<>))
    (define-proc 36 (<>))
    (define-proc 37 (<>))
    (define-proc 38
      (<>
       (color 7)
       (set-arr~ @ 6 0)
       (box 0 0 79 399)
       (set-arr~ @ 9 (&& (~ @ 9) 65534))
       (set-arr~ @ 1 0)
       (set-arr~ @ 7 3)
       (set-arr~ @ 6 2)
       (image "open.gp4")
       (set-arr~ @ 6 0)
       (set-arr~ @ 7 0)
       (set-arr~ @ 23 0)
       (set-arr~ @ 24 0)
       (set-arr~ @ 25 5)
       (menu-init 1)
       (menu-init 0)
       (set-var X 20)
       (cond
        ((== (~ @ 26) 5) (<> (set-var Y 24)))
        ((== (~ @ 26) 4) (<> (set-var Y 76)))
        ((== (~ @ 26) 3) (<> (set-var Y 76)))
        ((== (~ @ 26) 2) (<> (set-var Y 84)))
        ((== (~ @ 26) 1) (<> (set-var Y 84)))
        (else (<> (break))))
       (mouse 1)
       (proc 31)
       (palette 3)
       (mouse 0)
       (set-var S 5)
       (set-var I 65535)))
    (define-proc 31
      (<>
       (blit 0 240 37 311 2 X Y 0)
       (blit 0 336 37 343 2 X (+ Y 72) 0)
       (set-var I 0)
       (while
        (< I (- (~ @ 26) 1))
        (<>
         (blit 0 264 37 311 2 X (+ Y 80 (* I 56)) 0)
         (blit 0 336 37 343 2 X (+ Y 128 (* I 56)) 0)
         (set-var I (+ I 1))))
       (blit 0 312 37 335 2 X (+ Y 72 (* I 56)) 0)
       (set-arr~ @ 7 0)
       (set-var I 0)
       (while
        (!= I (~ @ 26))
        (<>
         (set-var K (~ @ 22))
         (set-var J (- (~ K (+ (* I 2) 1)) 1))
         (blit 32 (* J 48) 63 (+ (* J 48) 47) 2 (+ X 3) (+ Y 24 (* I 56)))
         (set-var I (+ I 1))))))
    (define-proc 39
      (<>
       (mouse 2)
       (set-var S 65535)
       (if (&& (> (~ @ 10) (+ (* X 8) 24)) (< (~ @ 10) (+ (* X 8) 280)))
         (<>
          (cond
           ((&& (> (~ @ 11) (+ Y 23)) (< (~ @ 11) (+ Y 72)))
            (<> (set-var S 0)))
           ((&& (> (~ @ 11) (+ Y 80)) (< (~ @ 11) (+ Y 128)))
            (<> (set-var S 1)))
           ((&& (> (~ @ 11) (+ Y 136)) (< (~ @ 11) (+ Y 184)))
            (<> (set-var S 2)))
           ((&& (> (~ @ 11) (+ Y 192)) (< (~ @ 11) (+ Y 240)))
            (<> (set-var S 3)))
           ((&& (> (~ @ 11) (+ Y 248)) (< (~ @ 11) (+ Y 296)))
            (<> (set-var S 4))))))
       (if (!= S I) (<> (proc 30)))))
    (define-proc 30
      (<>
       (mouse 1)
       (if (< I (~ @ 26))
         (<>
          (set-var K (~ @ 22))
          (set-var J (- (~ K (+ (* I 2) 1)) 1))
          (blit 32 (* J 48) 63 (+ (* J 48) 47) 2 (+ X 3) (+ Y 24 (* I 56)))))
       (set-var I S)
       (if (< I (~ @ 26))
         (<>
          (set-var K (~ @ 22))
          (set-var J (- (~ K (+ (* I 2) 1)) 1))
          (blit 0 (* J 48) 31 (+ (* J 48) 47) 2 (+ X 3) (+ Y 24 (* I 56)))
          (set-var J (~ @ 23))))
       (mouse 0)))
    (define-proc 32
      (<>
       (if (< S (~ @ 26))
         (<>
          (set-var K (~ @ 22))
          (set-var S (~ K (+ (* S 2) 1)))
          (set-arr~ @ 27 0)
          (mouse 1)))))))
 (while
  (== 1 1)
  (<>
   (proc 0)
   (menu-show
    (<.>
     (if (!= (: 0) 0) (text "あ"))
     (if (!= (: 1) 0) (text "い"))
     (if (!= (: 2) 0) (text "う"))
     (if (!= (: 3) 0) (text "え"))
     (if (!= (: 3) 0) (text "お"))))
   (palette 3 0)
   (set-arr~ @ 6 0)
   (box 0 0 79 399)
   (if (== S 1) (<> (mes-jump "open.mes")))
   (if (== S 2) (<> (mes-jump "open1.mes")))
   (if (== S 4) (<> (mes-call "girl.mes")))
   (if (== S 5) (<> (mes-call "music.mes")))
   (if (== S 3)
     (<>
      (define-proc 55
        (<>
         (define-proc 38
           (<>
            (set-arr~ @ 6 1)
            (if (== (: 2014) 0)
              (<> (set-var I (~ @ 9)) (set-arr~ @ 9 (// (~ @ 9) 1))))
            (set-arr~ @ 7 3)
            (image "file.gp4")
            (set-arr~ @ 7 0)
            (if (== (: 2014) 0) (<> (set-arr~ @ 9 I)))
            (mouse 1)
            (blit X Y (+ X 37) (+ Y 80) 0 0 200 (~ @ 6))
            (set-var J (+ (~ @ 0) 1000))
            (set-var I 0)
            (while
             (< I 6)
             (<>
              (if-else (== (: 2010) 1)
                (<> (set-var A (:: (+ 2001 I))) (set-reg:: (+ 2016 I) A))
                (<>
                 (if-else (== (~ J (* I 3)) 0)
                   (<> (set-reg:: (+ 2016 I) 0))
                   (<> (set-reg:: (+ 2016 I) 1)))))
              (set-var I (+ I 1))))
            (set-var A (* X 8))
            (set-var I 1)
            (while
             (< I 6)
             (<>
              (if-else (== (:: (+ 2016 I)) 1)
                (<> (blit 7 81 12 120 (~ @ 6) (+ 1 (* (- I 1) 6)) 8 (~ @ 6)))
                (<> (blit 1 81 6 120 (~ @ 6) (+ 1 (* (- I 1) 6)) 8 (~ @ 6))))
              (set-var I (+ I 1))))
            (if-else (== (: 2016) 1)
              (<> (blit 25 81 30 120 (~ @ 6) 31 8 (~ @ 6)))
              (<> (blit 19 81 24 120 (~ @ 6) 31 8 (~ @ 6))))
            (blit 0 0 37 80 (~ @ 6) X Y 0)
            (mouse 0)
            (set-var S 65534)
            (set-var I 65534)
            (if (== (: 2014) 1) (<> (palette 3) (set-reg: 2014 0)))))
         (define-proc 30
           (<>
            (set-arr~ @ 7 0)
            (set-var J (+ (~ @ 0) 1000))
            (if-else (== I 0)
              (<> (blit 31 81 36 120 (~ @ 6) (+ X 31) (+ Y 8) 0))
              (<> (blit 13 81 18 120 (~ @ 6) (+ X 1 (* (- I 1) 6)) (+ Y 8) 0)))
            (if-else (// (== (: 2010) 0) (!= (~ J (* I 3)) 0))
              (<>
               (set-var D (/ (~ J (* I 3)) 100))
               (if (> D 12) (<> (set-var D (- D 12))))
               (if-else (> D 9)
                 (<>
                  (blit (/ D 10) 122 (/ D 10) 136 (~ @ 6) 0 137 (~ @ 6))
                  (set-var D (% D 10)))
                 (<> (blit 18 137 18 151 (~ @ 6) 0 137 (~ @ 6))))
               (blit D 122 D 136 (~ @ 6) 1 137 (~ @ 6))
               (set-var D (% (~ J (* I 3)) 100))
               (if-else (> D 9)
                 (<>
                  (blit (/ D 10) 122 (/ D 10) 136 (~ @ 6) 3 137 (~ @ 6))
                  (set-var D (% D 10))
                  (blit D 122 D 136 (~ @ 6) 4 137 (~ @ 6)))
                 (<>
                  (blit D 122 D 136 (~ @ 6) 3 137 (~ @ 6))
                  (blit 18 137 18 151 (~ @ 6) 4 137 (~ @ 6))))
               (set-var D (~ J (+ (* I 3) 2)))
               (blit
                (+ 16 (* D 3))
                122
                (+ 18 (* D 3))
                136
                (~ @ 6)
                6
                137
                (~ @ 6))
               (set-var D (/ (~ J (+ (* I 3) 1)) 100))
               (if-else (> D 11)
                 (<>
                  (blit 14 122 15 136 (~ @ 6) 10 137 (~ @ 6))
                  (set-var D (- D 12))
                  (if (== D 0) (<> (set-var D 12))))
                 (<> (blit 12 122 13 136 (~ @ 6) 10 137 (~ @ 6))))
               (if-else (> D 9)
                 (<>
                  (blit (/ D 10) 122 (/ D 10) 136 (~ @ 6) 13 137 (~ @ 6))
                  (set-var D (% D 10)))
                 (<> (blit 18 137 18 151 (~ @ 6) 13 137 (~ @ 6))))
               (blit D 122 D 136 (~ @ 6) 14 137 (~ @ 6))
               (set-var D (% (~ J (+ (* I 3) 1)) 100))
               (blit (/ D 10) 122 (/ D 10) 136 (~ @ 6) 16 137 (~ @ 6))
               (set-var D (% D 10))
               (blit D 122 D 136 (~ @ 6) 17 137 (~ @ 6))
               (blit 0 137 17 151 (~ @ 6) (+ X 3) (+ Y 56) 0))
              (<> (blit 0 152 17 166 (~ @ 6) (+ X 3) (+ Y 56) 0)))))
         (define-proc 32
           (<>
            (set-arr~ @ 7 0)
            (cond
             ((== S 65535) (<> (set-arr~ @ 27 0)))
             ((< S 6) (<> (if (== (:: (+ 2016 S)) 1) (<> (set-arr~ @ 27 0))))))
            (if (== (~ @ 27) 0)
              (<>
               (mouse 1)
               (blit 0 200 37 280 (~ @ 6) X Y)
               (set-arr~ @ 6 0)))))
         (define-proc 39
           (<>
            (set-var S 65534)
            (mouse 2)
            (cond
             ((&&
               (> (~ @ 10) (+ A 208))
               (< (~ @ 10) (+ A 279))
               (> (~ @ 11) (+ Y 54))
               (< (~ @ 11) (+ Y 73)))
              (<> (set-var S 65535)))
             ((&& (> (~ @ 11) (+ Y 8)) (< (~ @ 11) (+ Y 48)))
              (<>
               (cond
                ((&& (> (~ @ 10) (+ A 8)) (< (~ @ 10) (+ A 248)))
                 (<> (set-var S (+ (/ (- (~ @ 10) A 8) 48) 1))))
                ((&& (> (~ @ 10) (+ A 248)) (< (~ @ 10) (+ A 296)))
                 (<> (set-var S 0)))))))
            (if (!= I S)
              (<>
               (mouse 1)
               (cond
                ((&& (< I 6) (== (:: (+ 2016 I)) 1))
                 (<>
                  (cond
                   ((== I 0)
                    (<> (blit 25 81 30 120 (~ @ 6) (+ X 31) (+ Y 8) 0)))
                   ((< I 6)
                    (<>
                     (blit
                      7
                      81
                      12
                      120
                      (~ @ 6)
                      (+ X 1 (* (- I 1) 6))
                      (+ Y 8)
                      0))))
                  (blit 18 137 35 151 (~ @ 6) (+ X 3) (+ Y 56) 0)))
                ((== I 65535)
                 (<> (blit 0 168 10 199 (~ @ 6) (+ X 25) (+ Y 48) 0))))
               (set-var I S)
               (cond
                ((&& (< I 6) (== (:: (+ 2016 I)) 1)) (<> (proc 30)))
                ((== I 65535)
                 (<> (blit 11 168 21 199 (~ @ 6) (+ X 25) (+ Y 48) 0))))
               (mouse 0)))))
         (define-proc 31 (<>))
         (define-proc 33 (<>))
         (define-proc 34 (<>))
         (define-proc 35 (<>))
         (define-proc 36 (<>))
         (define-proc 37 (<>))))
      (set-arr~ @ 20 (+ (&& (~ @ 20) 65280) 0))
      (set-arr~ @ 21 272)
      (set-arr~ @ 21 531)
      (set-arr~ @ 20 (// (&& (~ @ 20) 65399) 128))
      (set-arr~ @ 20 (&& (~ @ 20) 4095))
      (color 7)
      (set-arr~ @ 6 0)
      (set-arr~ @ 13 0 0 79 399 15)
      (clear)
      (set-arr~ @ 17 25 236)
      (text "　　Please select a diary.")
      (set-reg: 2014 1)
      (proc 55)
      (set-var X 21)
      (set-var Y 100)
      (menu-show (<> (text "あ")))
      (palette 3 0)
      (set-arr~ @ 6 0)
      (clear)
      (if (!= S 65535)
        (<>
         (set-var A 0)
         (set-var B 0)
         (set-var I (+ (~ @ 0) 1000))
         (while
          (< A 6)
          (<>
           (set-arr~ @ 7 0)
           (set-arr~ @ 49 (~ I (* A 3)))
           (set-arr~ @ 50 (~ I (+ (* A 3) 1)))
           (set-arr~ @ 51 (~ I (+ (* A 3) 2)))
           (set-arr~ @ 7 3)
           (set-arr~ B (* A 3) (~ @ 49))
           (set-arr~ B (+ (* A 3) 1) (~ @ 50))
           (set-arr~ B (+ (* A 3) 2) (~ @ 51))
           (set-var A (+ A 1))))
         (set-arr~ @ 7 3)
         (set-var I 0)
         (while
          (< I 29)
          (<> (set-arr~ B (+ 100 I) (:: (+ 1978 I))) (set-var I (+ I 1))))
         (flag 0 S))))))))