(mes
 (meta (engine 'AI5) (charset "english") (dictbase 128))
 (dict
  #\u3000
  #\ー
  #\の
  #\マ
  #\曲
  #\テ
  #\名
  #\：
  #\ｅ
  #\ン
  #\美
  #\ｏ
  #\ｎ
  #\ク
  #\い
  #\子
  #\ッ
  #\る
  #\Ｍ
  #\ｔ
  #\ｉ
  #\。
  #\す
  #\エ
  #\リ
  #\し
  #\き
  #\（
  #\）
  #\Ｂ
  #\Ｇ
  #\ｈ
  #\で
  #\さ
  #\ス
  #\ル
  #\シ
  #\移
  #\動
  #\ｍ
  #\を
  #\て
  #\く
  #\は
  #\あ
  #\キ
  #\？
  #\newline
  #\佐
  #\こ
  #\ず
  #\み
  #\、
  #\チ
  #\ｓ
  #\Ｈ
  #\ｐ
  #\イ
  #\・
  #\×
  #\聴
  #\た
  #\選
  #\択
  #\下
  #\ャ
  #\セ
  #\右
  #\人
  #\ド
  #\ひ
  #\ろ
  #\行
  #\自
  #\室
  #\１
  #\２
  #\３
  #\夢
  #\Ｓ
  #\ｗ
  #\ｒ
  #\ａ
  #\ｙ
  #\ｇ
  #\Ｔ
  #\ｌ)
 (define-proc 11
   (<>
    (color 192)
    (box 68 358 78 388)
    (if-else (== M 0)
      (<> (blit 0 152 1 183 3 77 357 0) (blit 20 152 20 183 3 76 357 0))
      (<>
       (set-var I M)
       (set-var J 0)
       (while
        (!= J 6)
        (<>
         (if-else (== I 0)
           (<> (blit 20 152 20 183 3 (+ (- 77 (* J 2)) 1) 357 0) (break))
           (<>
            (blit
             (* (% I 10) 2)
             152
             (+ (* (% I 10) 2) 1)
             183
             3
             (- 77 (* J 2))
             357
             0)
            (set-var I (/ I 10))))
         (set-var J (+ J 1))))))
    (set-var I (/ H 100))
    (if (> I 12) (<> (set-var I (- I 12))))
    (blit (* (/ I 10) 2) 184 (+ (* (/ I 10) 2) 1) 199 3 18 295 0)
    (blit (* (% I 10) 2) 184 (+ (* (% I 10) 2) 1) 199 3 20 295 0)
    (blit 20 184 21 199 3 22 295 0)
    (blit
     (* (/ (% H 100) 10) 2)
     184
     (+ (* (/ (% H 100) 10) 2) 1)
     199
     3
     24
     295
     0)
    (blit
     (* (% (% H 100) 10) 2)
     184
     (+ (* (% (% H 100) 10) 2) 1)
     199
     3
     26
     295
     0)
    (blit 22 184 23 199 3 28 295 0)
    (blit 0 (* E 16) 12 (+ (* E 16) 15) 3 49 295 0)
    (set-var I (% (/ T 100) 12))
    (if (&& (== (/ T 100 12) 1) (== I 0)) (<> (set-var I 12)))
    (if-else (== (/ I 10) 0)
      (<> (color 192) (box 71 319 71 348))
      (<> (blit 3 153 3 182 3 71 319 0)))
    (blit (* (% I 10) 2) 152 (+ (* (% I 10) 2) 1) 183 3 72 318 0)
    (blit 21 (+ 152 1) 21 (- 183 1) 3 74 319 0)
    (set-var I (% T 100))
    (blit (* (/ I 10) 2) 152 (+ (* (/ I 10) 2) 1) 183 3 75 318 0)
    (blit (* (% I 10) 2) 152 (+ (* (% I 10) 2) 1) 183 3 77 318 0)
    (set-var I (/ T 100 12))
    (blit (+ 22 (* I 2)) 152 (+ 23 (* I 2)) 183 3 68 318 0)
    (color 7)))
 (define-proc 13
   (<>
    (set-var I (+ (% T 100) A))
    (set-var T (/ T 100))
    (set-var T (+ T (/ I 60)))
    (set-var I (% I 60))
    (set-var T (+ (* T 100) I))
    (if (> (/ T 100) 23)
      (<>
       (if-else (== (/ H 100) 11) (<> (set-var J 31)) (<> (set-var J 32)))
       (set-var E (+ E (/ T 100 24)))
       (if (> E 6) (<> (set-var E (% E 7))))
       (set-var I (+ (% H 100) (/ T 100 24)))
       (set-var H (/ H 100))
       (set-var H (+ (* (+ H (/ I J)) 100) (% I J)))
       (set-var T (+ (% T 100) (* (% (/ T 100) 24) 100)))
       (if (== H 1300) (<> (set-var H 1301)))
       (proc 3)))))
 (define-proc 3
   (<>
    (if (== (: 628) 1) (<> (set-reg: 628 0)))
    (if (== (: 651) 1) (<> (set-reg: 651 0)))
    (if (== (: 652) 1) (<> (set-reg: 652 0)))
    (if (== (: 707) 1) (<> (set-reg: 707 0)))
    (if (== (: 718) 1) (<> (set-reg: 718 0)))
    (if (== (: 813) 1) (<> (set-reg: 813 0)))
    (if (== (: 815) 1) (<> (set-reg: 815 0)))
    (cond
     ((== (: 810) 1) (<> (set-reg: 810 0)))
     ((== (: 810) 0) (<> (set-reg: 810 1))))
    (if (== H 1231) (<> (set-reg: 810 2)))
    (if (== (: 914) 1) (<> (set-reg: 914 0)))
    (cond
     ((== (: 910) 1) (<> (set-reg: 910 0)))
     ((== (: 910) 0) (<> (set-reg: 910 1))))
    (if (&& (> H 1227) (!= (: 910) 3)) (<> (set-reg: 910 2)))
    (if (== (: 1068) 1) (<> (set-reg: 1068 0)))
    (if (== (: 1069) 1) (<> (set-reg: 1069 0)))
    (cond
     ((== (: 1173) 1) (<> (set-reg: 1173 0)))
     ((== (: 1173) 0) (<> (set-reg: 1173 1))))
    (if (== (: 1179) 1) (<> (set-reg: 1179 0)))
    (if (== (: 1180) 1) (<> (set-reg: 1180 0)))
    (if-else (// (== H 1224) (== H 1301))
      (<> (set-reg: 1375 1))
      (<> (set-reg: 1375 0)))
    (if-else (== H 1301) (<> (set-reg: 1419 1)) (<> (set-reg: 1419 0)))
    (if (== (: 1440) 1) (<> (set-reg: 1440 0)))
    (if (== (: 1471) 1) (<> (set-reg: 1471 0)))
    (if (&& (== (: 1470) 1) (== (: 1472) 0)) (<> (set-reg: 1375 1)))
    (if (&& (== (: 1077) 1) (== (: 1082) 0) (== (: 1416) 0))
      (<> (set-reg: 1375 1)))
    (if (== (: 1082) 1) (<> (set-reg: 1375 1)))
    (if (== (: 1481) 1) (<> (set-reg: 1375 1)))
    (if (== (: 1439) 1) (<> (set-reg: 1419 1)))
    (if (== (: 1541) 1) (<> (set-reg: 1541 0)))
    (if (== (: 1600) 1) (<> (set-reg: 1600 0)))
    (if (== H 1224) (<> (set-reg: 1598 1)))
    (if (== H 1301) (<> (set-reg: 1598 1)))
    (if (== (: 1810) 1) (<> (set-reg: 1810 0)))))
 (define-proc 14
   (<>
    (set-var I (% T 100))
    (set-var T (+ (/ T 100) A))
    (set-var T (+ T (/ I 60)))
    (set-var I (% I 60))
    (set-var T (+ (* T 100) I))
    (if (> (/ T 100) 23)
      (<>
       (if-else (== (/ H 100) 11) (<> (set-var J 31)) (<> (set-var J 32)))
       (set-var E (+ E (/ T 100 24)))
       (if (> E 6) (<> (set-var E (% E 7))))
       (set-var I (+ (% H 100) (/ T 100 24)))
       (set-var H (/ H 100))
       (set-var H (+ (* (+ H (/ I J)) 100) (% I J)))
       (set-var T (+ (% T 100) (* (% (/ T 100) 24) 100)))))))
 (define-proc 15
   (<>
    (if (== (: 2024) 0)
      (<>
       (set-var I T)
       (cond
        ((< I 530) (<> (set-var J 34304)))
        ((< I 630) (<> (set-var J 33792)))
        ((< I 1600) (<> (set-reg: 191 1)))
        ((< I 1730) (<> (set-var J 34560)))
        (else (<> (set-var J 34304))))
       (if (== (: 191) 0)
         (<>
          (set-var I 8)
          (while
           (!= I 11)
           (<> (set-arr~ @ (+ 31 I) (~ J I)) (set-var I (+ I 1))))))))
    (set-reg: 191 0)))
 (define-proc 16
   (<>
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
    (set-arr~ @ 6 0)))
 (define-proc 17
   (<>
    (set-var I 0)
    (while
     (!= I (/ (~ @ 97) 2))
     (<>
      (blit-mask
       (~ @ 94)
       (+ (~ @ 95) (* I 2))
       (- (+ (~ @ 94) (~ @ 96)) 1)
       (+ (~ @ 95) (* I 2))
       1
       (~ @ 94)
       (+ (~ @ 95) (* I 2))
       0)
      (blit-mask
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
       (blit-mask
        (~ @ 94)
        (- (+ (~ @ 95) (~ @ 97)) 1)
        (- (+ (~ @ 94) (~ @ 96)) 1)
        (- (+ (~ @ 95) (~ @ 97)) 1)
        1
        (~ @ 94)
        (- (+ (~ @ 95) (~ @ 97)) 1)
        0)))
    (set-arr~ @ 6 0)))
 (define-proc 19
   (<>
    (blit-mask
     (~ @ 94)
     (~ @ 95)
     (- (+ (~ @ 94) (~ @ 96)) 1)
     (- (+ (~ @ 95) (~ @ 97)) 1)
     2
     (~ @ 94)
     (~ @ 95)
     1)))
 (define-proc 20
   (<>
    (define-proc 30
      (<>
       (if (!= (~ @ 23) 65535)
         (<>
          (set-arr~ @ 6 0)
          (color 112)
          (box-inv
           (+ X 1)
           (+ Y 10 (* (~ @ 23) 18))
           (+ X 20)
           (+ Y 10 (* (~ @ 23) 18) 15))
          (set-var N (~ @ 23))
          (color 7)))))
    (define-proc 31
      (<>
       (menu-init 0)
       (if-else (> (~ @ 24) 0)
         (<> (blit 13 36 34 45 3 X Y 0))
         (<> (blit 13 0 34 9 3 X Y 0)))
       (set-var L (- (~ @ 26) (~ @ 24)))
       (if (> L 10) (<> (set-var L 10)))
       (set-var I 0)
       (while
        (< I L)
        (<> (blit 13 10 34 27 3 X (+ Y 10 (* I 18)) 0) (set-var I (+ I 1))))
       (if-else (> (- (~ @ 26) (~ @ 24)) 10)
         (<> (blit 13 46 34 53 3 X (+ Y 10 (* L 18)) 0))
         (<> (blit 13 28 34 35 3 X (+ Y 10 (* L 18)) 0)))
       (set-var J (~ @ 22))
       (color 7)
       (set-arr~ @ 6 0)
       (set-var I 0)
       (while
        (< I L)
        (<>
         (set-arr~ @ 17 (+ X 1) (+ Y 10 (* I 18)))
         (call (~ J (* I 2)))
         (set-var I (+ I 1))))))
    (define-proc 32
      (<>
       (mouse 2)
       (if (&& (> (~ @ 10) (+ (* X 8) 7)) (< (~ @ 10) (+ (* X 8) 168)))
         (<>
          (cond
           ((&& (> (~ @ 11) (+ Y 10)) (< (~ @ 11) (+ Y (* L 18) 1)))
            (<>
             (set-var J (~ @ 22))
             (set-var N (~ J (+ (* (~ @ 23) 2) 1)))
             (mouse 1)
             (set-arr~ @ 27 0)
             (blit 0 200 21 399 3 X Y 0)
             (set-arr~ @ 7 (~ @ 49))
             (if-else (== (: 2027) 0) (<> (proc 23)) (<> (set-reg: 2027 0)))
             (set-arr~ @ 9 (&& (~ @ 9) 65533))
             (set-reg: 2023 0)))
           ((&&
             (// (== (~ @ 11) Y) (> (~ @ 11) Y))
             (< (~ @ 11) (+ Y 10))
             (> (~ @ 24) 0))
            (<>
             (mouse 1)
             (blit 0 200 21 399 3 X Y 0)
             (set-arr~ @ 24 (- (~ @ 24) 10))
             (proc 31)
             (set-arr~ @ 23 65535)
             (proc 30)
             (mouse 0)))
           ((&&
             (> (~ @ 11) (+ (+ Y (* L 18)) 10))
             (< (~ @ 11) (+ Y (* L 18) 24))
             (> (~ @ 26) (+ (~ @ 24) 10)))
            (<>
             (mouse 1)
             (blit 0 200 21 399 3 X Y 0)
             (set-arr~ @ 24 (+ (~ @ 24) 10))
             (proc 31)
             (set-arr~ @ 23 65535)
             (proc 30)
             (mouse 0))))))))
    (define-proc 33
      (<>
       (if (== (: 2023) 0)
         (<>
          (set-var N 0)
          (mouse 1)
          (set-arr~ @ 27 0)
          (blit 0 200 21 399 3 X Y 0)
          (set-arr~ @ 7 (~ @ 49))
          (if-else (== (: 2027) 0) (<> (proc 23)) (<> (set-reg: 2027 0)))
          (set-arr~ @ 9 (&& (~ @ 9) 65533))))))
    (define-proc 34
      (<>
       (cond
        ((== (~ @ 23) 65535)
         (<>
          (mouse 1)
          (set-arr~ @ 23 N)
          (proc 30)
          (mouse 3 (+ (* X 8) 160) (+ Y 14 (* (~ @ 23) 18)))
          (mouse 0)))
        ((!= (~ @ 23) 0)
         (<>
          (mouse 1)
          (proc 30)
          (set-arr~ @ 23 (- (~ @ 23) 1))
          (proc 30)
          (mouse 3 (+ (* X 8) 160) (+ Y 14 (* (~ @ 23) 18)))
          (mouse 0)))
        (else
         (<>
          (if (!= (~ @ 24) 0)
            (<>
             (mouse 1)
             (blit 0 200 21 399 3 X Y 0)
             (set-arr~ @ 24 (- (~ @ 24) 10))
             (set-arr~ @ 23 9)
             (proc 31)
             (proc 30)
             (mouse 3 (+ (* X 8) 160) (+ Y 14 (* (~ @ 23) 18)))
             (mouse 0))))))))
    (define-proc 35
      (<>
       (cond
        ((== (~ @ 23) 65535)
         (<>
          (mouse 1)
          (set-arr~ @ 23 N)
          (proc 30)
          (mouse 3 (+ (* X 8) 160) (+ Y 14 (* (~ @ 23) 18)))
          (mouse 0)))
        ((< (~ @ 23) (- L 1))
         (<>
          (mouse 1)
          (proc 30)
          (set-arr~ @ 23 (+ (~ @ 23) 1))
          (proc 30)
          (mouse 3 (+ (* X 8) 160) (+ Y 14 (* (~ @ 23) 18)))
          (mouse 0)))
        (else
         (<>
          (if (> (~ @ 26) (+ (~ @ 24) 10))
            (<>
             (mouse 1)
             (blit 0 200 21 399 3 X Y 0)
             (set-arr~ @ 24 (+ (~ @ 24) 10))
             (set-arr~ @ 23 0)
             (proc 31)
             (proc 30)
             (mouse 3 (+ (* X 8) 160) (+ Y 14 (* (~ @ 23) 18)))
             (mouse 0))))))))
    (define-proc 36 (<>))
    (define-proc 37 (<>))
    (define-proc 38
      (<>
       (set-arr~ @ 9 (// (~ @ 9) 2))
       (set-var X (+ (* (: 1001) 38) 10))
       (set-var Y 0)
       (set-arr~ @ 49 (~ @ 7))
       (set-arr~ @ 7 0)
       (blit X Y (+ X 22) (+ Y 199) 0 0 200 3)
       (set-arr~ @ 23 0)
       (set-arr~ @ 24 0)
       (set-arr~ @ 25 10)
       (mouse 1)
       (set-arr~ @ 20 (+ (&& (~ @ 20) 65280) 0))
       (set-arr~ @ 21 272)
       (set-arr~ @ 20 (// (&& (~ @ 20) 65399) 128))
       (set-arr~ @ 13 0 0 79 399)
       (menu-init 1)
       (proc 31)
       (proc 30)
       (set-arr~ @ 48 (~ @ 7))
       (set-arr~ @ 7 1)
       (mouse 4 36864)
       (set-arr~ @ 7 (~ @ 48))
       (mouse 3 (+ (* X 8) 160) (+ Y 14 (* (~ @ 23) 18)))
       (mouse 0)))
    (define-proc 39
      (<>
       (mouse 2)
       (if-else (&&
                 (> (~ @ 10) (+ (* X 8) 7))
                 (< (~ @ 10) (+ (* X 8) 168))
                 (> (~ @ 11) (+ Y 10))
                 (< (~ @ 11) (+ Y (* L 18) 1)))
         (<>
          (set-var I (/ (- (~ @ 11) Y 8) 18))
          (if (!= (~ @ 23) I)
            (<> (mouse 1) (proc 30) (set-arr~ @ 23 I) (proc 30) (mouse 0))))
         (<>
          (if (!= (~ @ 23) 65535)
            (<> (mouse 1) (proc 30) (set-arr~ @ 23 65535) (mouse 0)))))))))
 (define-proc 21
   (<>
    (set-arr~ @ 7 0)
    (define-proc 30 (<>))
    (define-proc 31 (<>))
    (define-proc 32
      (<>
       (mouse 2)
       (set-var X (+ (~ @ 10) 8))
       (set-var Y (+ (~ @ 11) 8))
       (mouse 1)
       (if (!= (~ @ 23) 65535)
         (<>
          (set-arr~ @ 27 0)
          (set-var N (&& (~ @ 23) 255))
          (set-var V (+ (/ (~ @ 23) 256) 1))))
       (set-arr~ @ 23 65280)
       (if (== (: 2000) 0)
         (<>
          (set-arr~ @ 13 33 295 46 311)
          (color 7)
          (clear)
          (set-arr~ @ 20 (+ (&& (~ @ 20) 65280) 0))
          (set-arr~ @ 21 272)
          (set-arr~ @ 20 (// (&& (~ @ 20) 65399) 128))
          (set-arr~ @ 20 (&& (~ @ 20) 4095))
          (color 7)
          (set-arr~ @ 6 0)
          (set-arr~ @ 13 15 328 64 387)
          (clear)
          (color 7)))
       (if-else (== (~ @ 27) 0)
         (<>
          (set-arr~ @ 48 (~ @ 7))
          (set-arr~ @ 7 1)
          (mouse 4 36864)
          (set-arr~ @ 7 (~ @ 48))
          (set-reg: 2000 0))
         (<> (mouse 0)))))
    (define-proc 33
      (<>
       (if (== (: 2000) 0)
         (<>
          (mouse 1)
          (set-arr~ @ 27 0)
          (set-arr~ @ 23 0)
          (set-var V 0)
          (set-var N 0)
          (set-arr~ @ 23 65280)
          (set-arr~ @ 13 33 295 46 311)
          (color 7)
          (clear)
          (set-arr~ @ 20 (+ (&& (~ @ 20) 65280) 0))
          (set-arr~ @ 21 272)
          (set-arr~ @ 20 (// (&& (~ @ 20) 65399) 128))
          (set-arr~ @ 20 (&& (~ @ 20) 4095))
          (color 7)
          (set-arr~ @ 6 0)
          (set-arr~ @ 13 15 328 64 387)
          (clear)
          (color 7)
          (set-arr~ @ 48 (~ @ 7))
          (set-arr~ @ 7 1)
          (mouse 4 36864)
          (set-arr~ @ 7 (~ @ 48))))))
    (define-proc 34 (<>))
    (define-proc 35 (<>))
    (define-proc 36 (<>))
    (define-proc 37 (<>))
    (define-proc 38
      (<>
       (mouse 1)
       (if (== (: 2000) 0)
         (<>
          (set-arr~ @ 20 (+ (&& (~ @ 20) 65280) 0))
          (set-arr~ @ 21 272)
          (set-arr~ @ 20 (// (&& (~ @ 20) 65399) 128))
          (set-arr~ @ 20 (&& (~ @ 20) 4095))
          (color 7)
          (set-arr~ @ 6 0)
          (set-arr~ @ 13 15 328 64 387)
          (clear)
          (color 7)
          (text "アイコンで画面をクリックしてください。")
          (set-arr~ @ 13 33 295 46 311)
          (color 7)
          (clear)))
       (set-arr~ @ 23 65280)
       (set-arr~ @ 48 (~ @ 7))
       (set-arr~ @ 7 1)
       (mouse 4 36864)
       (set-arr~ @ 7 (~ @ 48))
       (mouse 0)))
    (define-proc 39
      (<>
       (mouse 2)
       (set-var X (+ (~ @ 10) 8))
       (set-var Y (+ (~ @ 11) 8))
       (set-arr~ @ 48 (~ @ 7))
       (set-arr~ @ 7 1)
       (click 34816 X Y)
       (set-var J S)
       (set-arr~ @ 7 (~ @ 48))
       (if (!= (~ @ 23) J)
         (<>
          (set-arr~ @ 23 J)
          (mouse 1)
          (set-arr~ @ 17 33 295)
          (color 7)
          (set-var I (+ (/ (~ @ 23) 256) 1))
          (set-arr~ @ 48 (~ @ 7))
          (set-arr~ @ 7 1)
          (if-else (> I 13)
            (<> (mouse 4 36864))
            (<> (mouse 4 (+ 36864 (* 512 I)))))
          (set-arr~ @ 7 (~ @ 48))
          (if (== (: 2000) 0)
            (<>
             (cond
              ((== I 1)
               (<>
                (set-arr~ @ 21 (+ 256 16))
                (str " ")
                (set-arr~ @ 20 (+ (&& (~ @ 20) 65280) 0))
                (set-arr~ @ 21 272)
                (set-arr~ @ 20 (// (&& (~ @ 20) 65399) 128))
                (text "見る・調べる")
                (set-arr~ @ 21 (+ 256 16))
                (str " ")))
              ((== I 2) (<> (text "　　はなす　　")))
              ((== I 3) (<> (text "　殴る・叩く　")))
              ((== I 4) (<> (text "　押す・引く　")))
              ((== I 5) (<> (text "　　あける　　")))
              ((== I 6)
               (<>
                (text "　　")
                (set-arr~ @ 21 (+ 256 16))
                (str " ")
                (set-arr~ @ 20 (+ (&& (~ @ 20) 65280) 0))
                (set-arr~ @ 21 272)
                (set-arr~ @ 20 (// (&& (~ @ 20) 65399) 128))
                (text "取る　　")
                (set-arr~ @ 21 (+ 256 16))
                (str " ")))
              ((== I 7)
               (<>
                (text "　")
                (set-arr~ @ 21 (+ 256 16))
                (str " ")
                (set-arr~ @ 20 (+ (&& (~ @ 20) 65280) 0))
                (set-arr~ @ 21 272)
                (set-arr~ @ 20 (// (&& (~ @ 20) 65399) 128))
                (text "キスする　")
                (set-arr~ @ 21 (+ 256 16))
                (str " ")))
              ((== I 8) (<> (text "　　さわる　　")))
              ((== I 9)
               (<>
                (text "　　")
                (set-arr~ @ 21 (+ 256 16))
                (str " ")
                (set-arr~ @ 20 (+ (&& (~ @ 20) 65280) 0))
                (set-arr~ @ 21 272)
                (set-arr~ @ 20 (// (&& (~ @ 20) 65399) 128))
                (text "もむ　　")
                (set-arr~ @ 21 (+ 256 16))
                (str " ")))
              ((== I 10) (<> (text "　　なめる　　")))
              ((== I 11)
               (<>
                (text "　　")
                (set-arr~ @ 21 (+ 256 16))
                (str " ")
                (set-arr~ @ 20 (+ (&& (~ @ 20) 65280) 0))
                (set-arr~ @ 21 272)
                (set-arr~ @ 20 (// (&& (~ @ 20) 65399) 128))
                (text "かむ　　")
                (set-arr~ @ 21 (+ 256 16))
                (str " ")))
              ((== I 12) (<> (text "　×××する　")))
              ((== I 13) (<> (text "　　？？？　　")))
              (else (<> (text "　　　　　　　"))))
             (set-arr~ @ 20 (+ (&& (~ @ 20) 65280) 0))
             (set-arr~ @ 21 272)
             (set-arr~ @ 20 (// (&& (~ @ 20) 65399) 128))))
          (mouse 0)))))))
 (define-proc 23
   (<>
    (set-arr~ @ 20 (+ (&& (~ @ 20) 65280) 0))
    (set-arr~ @ 21 272)
    (set-arr~ @ 21 531)
    (set-arr~ @ 20 (// (&& (~ @ 20) 65399) 128))
    (set-arr~ @ 20 (&& (~ @ 20) 4095))
    (color 7)
    (set-arr~ @ 6 0)
    (set-arr~ @ 13 15 328 64 387)
    (clear)))
 (define-proc 10
   (<>
    (if (== (: 2022) 1)
      (<>
       (blit 0 316 65 399 1 7 300 0)
       (if (== (: 2025) 1) (<> (set-arr~ @ 9 (&& (~ @ 9) 65533))))
       (set-reg: 2022 0)))))
 (define-proc 56
   (<>
    (if (== (: 2022) 0)
      (<>
       (set-reg: 2022 1)
       (if (== (: 2025) 1) (<> (set-arr~ @ 9 (// (~ @ 9) 2))))
       (blit 7 300 72 383 0 0 316 1)
       (blit 26 116 26 199 3 0 316 3)
       (blit 27 116 28 199 3 1 316 3)
       (blit 27 116 28 199 3 3 316 3)
       (blit 1 316 4 399 3 5 316 3)
       (blit 1 316 8 399 3 9 316 3)
       (blit 1 316 16 399 3 17 316 3)
       (blit 1 316 32 399 3 33 316 3)
       (blit 29 116 29 199 3 65 316 3)
       (blit 0 316 65 399 3 7 300 0)
       (set-arr~ @ 13 9 312 70 368)
       (set-arr~ @ 20 (+ (&& (~ @ 20) 65280) 0))
       (set-arr~ @ 21 272)
       (set-arr~ @ 20 (// (&& (~ @ 20) 65399) 128))
       (set-arr~ @ 21 531)
       (color 7)
       (set-arr~ @ 6 0)
       (clear)))))
 (define-proc 57
   (<>
    (define-proc 30 (<>))
    (define-proc 31 (<>))
    (define-proc 32
      (<> (if-else (== I 0) (<> (set-arr~ @ 27 0)) (<> (proc 33)))))
    (define-proc 33
      (<>
       (if-else (== I 0)
         (<>
          (blit 7 300 72 383 0 0 316 3)
          (blit 0 316 65 399 1 7 300 0)
          (set-var I 1))
         (<> (blit 0 316 65 399 3 7 300 0) (set-var I 0)))))
    (define-proc 34 (<>))
    (define-proc 35 (<>))
    (define-proc 36 (<>))
    (define-proc 37 (<>))
    (define-proc 38 (<>))
    (define-proc 39 (<>))
    (set-var I 0)
    (set-arr~ @ 51 (~ @ 7))
    (set-arr~ @ 7 0)
    (menu-show (<> (text "あ")))
    (set-arr~ @ 7 (~ @ 51))
    (clear)))
 (define-proc 58
   (<>
    (set-arr~ @ 49 X)
    (set-arr~ @ 50 Y)
    (set-arr~ @ 51 (~ @ 7))
    (set-arr~ @ 7 0)
    (set-var X (~ @ 0))))
 (define-proc 59
   (<> (set-var X (~ @ 49)) (set-var Y (~ @ 50)) (set-arr~ @ 7 (~ @ 51))))
 (define-proc 22
   (<>
    (util 2 0 0)
    (set-var I 0)
    (while
     (!= I 144)
     (<>
      (blit 8 (* I 2) 71 (* I 2) 1 8 (* I 2) 0)
      (blit 8 (- 287 (* I 2)) 71 (- 287 (* I 2)) 1 8 (- 287 (* I 2)) 0)
      (set-var I (+ I 1))))
    (util 2 1 0)
    (while (!= S 0) (<> (util 2 1 0)))))
 (define-proc 5
   (<>
    (util 2 0 0)
    (proc 16)
    (util 2 1 0)
    (while (!= S 0) (<> (util 2 1 0)))
    (set-arr~ @ 6 0)
    (set-arr~ @ 7 1)))
 (define-proc 44
   (<>
    (animate 7)
    (color 7)
    (set-arr~ @ 6 1)
    (box 8 0 71 287)
    (set-arr~ @ 6 0)
    (set-var I 0)
    (while
     (!= I 144)
     (<>
      (blit 8 (* I 2) 71 (* I 2) 1 8 (* I 2) 0)
      (blit 8 (- 287 (* I 2)) 71 (- 287 (* I 2)) 1 8 (- 287 (* I 2)) 0)
      (set-var I (+ I 1))))
    (set-arr~ @ 31 0 0 0 0 0 0 0 4095 0 0 0 1622 2972 0 0 0)))
 (define-proc 54
   (<>
    (proc 58)
    (set-var Y 499)
    (set-arr~ @ 48 (~ X Y))
    (proc 59)
    (if (!= I (~ @ 48))
      (<>
       (proc 58)
       (set-var Y 499)
       (set-arr~ X Y I)
       (proc 59)
       (sound 1)
       (set-arr~ @ 48 (~ @ 7))
       (set-arr~ @ 7 3)
       (cond
        ((== I 0) (<> (load "KOZUE.M" (~ @ 3))))
        ((== I 1) (<> (load "_GENKI1.M" (~ @ 3))))
        ((== I 2) (<> (load "_GIBO.M" (~ @ 3))))
        ((== I 3) (<> (load "_AKOGARE.M" (~ @ 3))))
        ((== I 4) (<> (load "_SETUNAI.M" (~ @ 3))))
        ((== I 5) (<> (load "_TANOSII.M" (~ @ 3))))
        ((== I 6) (<> (load "_KANASII.M" (~ @ 3))))
        ((== I 7) (<> (load "IZUMI.M" (~ @ 3))))
        ((== I 8) (<> (load "ORG.M" (~ @ 3))))
        ((== I 9) (<> (load "AZUMI.M" (~ @ 3))))
        ((== I 10) (<> (load "_SKLAK.M" (~ @ 3))))
        ((== I 11) (<> (load "YUI.M" (~ @ 3))))
        ((== I 12) (<> (load "MISAKO.M" (~ @ 3))))
        ((== I 13) (<> (load "YOKO.M" (~ @ 3))))
        ((== I 14) (<> (load "DREAM.M" (~ @ 3))))
        ((== I 15) (<> (load "KAREN.M" (~ @ 3))))
        ((== I 16) (<> (load "SAKULAKO.M" (~ @ 3))))
        ((== I 17) (<> (load "MIREI.M" (~ @ 3))))
        ((== I 18) (<> (load "SWEET.M" (~ @ 3))))
        ((== I 19) (<> (load "KUMIKO.M" (~ @ 3))))
        ((== I 20) (<> (load "MISATO.M" (~ @ 3))))
        ((== I 21) (<> (load "_DOLAMA1.M" (~ @ 3))))
        ((== I 22) (<> (load "SACHIKO.M" (~ @ 3))))
        ((== I 23) (<> (load "IDO_1.M" (~ @ 3))))
        ((== I 24) (<> (load "_SCHIK2.M" (~ @ 3))))
        ((== I 25) (<> (load "MINOLI.M" (~ @ 3))))
        ((== I 26) (<> (load "XMAS.M" (~ @ 3))))
        ((== I 27) (<> (load "MISA.M" (~ @ 3))))
        ((== I 28) (<> (load "TOMOMI.M" (~ @ 3))))
        ((== I 29) (<> (load "DREAM_2.M" (~ @ 3))))
        ((== I 30) (<> (load "WAVE.M" (~ @ 3))))
        ((== I 31) (<> (load "XMAS_4.M" (~ @ 3))))
        ((== I 32) (<> (load "COMBINI.M" (~ @ 3))))
        ((== I 33) (<> (load "SINKAN.M" (~ @ 3))))
        ((== I 34) (<> (load "SAIONJI.M" (~ @ 3))))
        ((== I 35) (<> (load "KOTO_3.M" (~ @ 3))))
        ((== I 36) (<> (load "BUKIMI.M" (~ @ 3))))
        ((== I 37) (<> (load "TRAIN_1.M" (~ @ 3))))
        ((== I 38) (<> (load "AKILA.M" (~ @ 3))))
        ((== I 39) (<> (load "SAD.M" (~ @ 3))))
        ((== I 40) (<> (load "HAPPY3.M" (~ @ 3))))
        ((== I 41) (<> (load "SWEET_EN.M" (~ @ 3))))
        ((== I 42) (<> (load "CHIME.M" (~ @ 3))))
        ((== I 43) (<> (load "QUIZ.M" (~ @ 3))))
        ((== I 44) (<> (load "STAFF.M" (~ @ 3))))
        ((== I 45) (<> (load "URANAI.M" (~ @ 3)))))
       (if (< I 46) (<> (sound 0)))
       (set-arr~ @ 7 (~ @ 48))))))
 (define-proc 9
   (<>
    (set-arr~ @ 7 (~ @ 48))
    (proc 58)
    (set-var Y 499)
    (set-arr~ X Y 65535)
    (proc 59)
    (sound 0)))
 (define-proc 45
   (<>
    (if (< I 9)
      (<>
       (if-else (> I 4)
         (<> (set-arr~ @ 49 160) (set-var I (- I 5)))
         (<> (set-arr~ @ 49 97)))
       (set-arr~ @ 48 (+ 40 (* I 8)))
       (blit (~ @ 48) (~ @ 49) (+ (~ @ 48) 7) (+ (~ @ 49) 62) 3 3 323 0)))))
 (define-proc 8
   (<>
    (if (!= (: 2013) 15) (<> (animate 3 (: 2013))))
    (set-reg: 2013 I)
    (animate 0 I I)
    (animate 1 I)))
 (define-proc 7
   (<>
    (if (!= (: 2013) 15) (<> (animate 3 (: 2013))))
    (set-reg: 2013 I)
    (animate 0 I I)
    (animate 4 I)))
 (if (== (: 2012) 1)
   (<> (set-reg: 2012 0) (set-arr~ @ 6 0) (color 7) (box 33 292 46 312)))
 (set-arr~ @ 9 (// (~ @ 9) 128))
 (set-arr~ @ 1 0)
 (set-arr~ @ 3 0)
 (set-arr~ @ 2 53248)
 (set-arr~ @ 9 (// (~ @ 9) 128))
 (set-var W 10)
 (set-reg: 2025 0)
 (set-reg: 2022 0)
 (set-reg: 2028 0)
 (define-proc 0
   (<>
    (set-arr~ @ 9 (// (~ @ 9) 8))
    (call (+ (~ @ 0) 1100))
    (set-arr~ @ 9 (&& (~ @ 9) 65527))))
 (proc 23)
 (set-arr~ @ 9 (&& (~ @ 9) 65534))
 (set-arr~ @ 7 3)
 (set-arr~ @ 6 1)
 (image "waku.gp4")
 (proc 15)
 (proc 5)
 (palette 3)
 (while
  (== 1 1)
  (<>
   (set-reg: 2023 1)
   (clear)
   (text "聴きたい曲を選択して下さい。\n")
   (text "キャンセルは右クリックです。")
   (proc 20)
   (menu-show (<.> (text "登場人物のテーマ曲") (text "イベントシーンの曲") (text "音楽モードの終了")))
   (if (== N 1)
     (<>
      (text "聴きたい曲を選択して下さい。\n")
      (text "キャンセルは右クリックです。")
      (while
       (== 1 1)
       (<>
        (set-reg: 2023 0)
        (proc 20)
        (menu-show
         (<.>
          (text "美佐子のテーマ")
          (text "唯　　のテーマ")
          (if (== (: 1984) 1) (text "桜子　のテーマ"))
          (text "友美　のテーマ")
          (text "可憐　のテーマ")
          (text "美鈴　のテーマ")
          (if (== (: 1983) 1) (text "愛美　のテーマ"))
          (text "こずえのテーマ")
          (text "いずみのテーマ")
          (if (== (: 1982) 1) (text "美沙　のテーマ"))
          (text "みのりのテーマ")
          (if (== (: 1981) 1) (text "ひろこのテーマ"))
          (if (== (: 1980) 1) (text "美里　のテーマ"))
          (if (== (: 1979) 1) (text "佐知子のテーマ"))
          (text "洋子　のテーマ")
          (if (== (: 1978) 1) (text "久美子のテーマ"))
          (text "あきらのテーマ")
          (text "芳樹　のテーマ")
          (text "西御寺のテーマ")
          (text "天道　のテーマ")))
        (cond
         ((== N 0) (<> (break)))
         ((== N 1) (<> (clear) (text "曲名：美佐子のテーマ") (set-var I 12) (proc 54)))
         ((== N 2) (<> (clear) (text "曲名：唯のテーマ") (set-var I 11) (proc 54)))
         ((== N 3) (<> (clear) (text "曲名：桜子のテーマ") (set-var I 16) (proc 54)))
         ((== N 4) (<> (clear) (text "曲名：友美のテーマ") (set-var I 28) (proc 54)))
         ((== N 5) (<> (clear) (text "曲名：可憐のテーマ") (set-var I 15) (proc 54)))
         ((== N 6) (<> (clear) (text "曲名：美鈴のテーマ") (set-var I 17) (proc 54)))
         ((== N 7) (<> (clear) (text "曲名：愛美のテーマ") (set-var I 9) (proc 54)))
         ((== N 8) (<> (clear) (text "曲名：こずえのテーマ") (set-var I 0) (proc 54)))
         ((== N 9) (<> (clear) (text "曲名：いずみのテーマ") (set-var I 7) (proc 54)))
         ((== N 10) (<> (clear) (text "曲名：美沙のテーマ") (set-var I 27) (proc 54)))
         ((== N 11) (<> (clear) (text "曲名：みのりのテーマ") (set-var I 25) (proc 54)))
         ((== N 12) (<> (clear) (text "曲名：ひろ子のテーマ") (set-var I 3) (proc 54)))
         ((== N 13) (<> (clear) (text "曲名：美里のテーマ") (set-var I 20) (proc 54)))
         ((== N 14) (<> (clear) (text "曲名：佐知子のテーマ") (set-var I 22) (proc 54)))
         ((== N 15) (<> (clear) (text "曲名：洋子のテーマ") (set-var I 13) (proc 54)))
         ((== N 16) (<> (clear) (text "曲名：久美子のテーマ") (set-var I 19) (proc 54)))
         ((== N 17) (<> (clear) (text "曲名：あきらのテーマ") (set-var I 38) (proc 54)))
         ((== N 18) (<> (clear) (text "曲名：芳樹のテーマ") (set-var I 36) (proc 54)))
         ((== N 19) (<> (clear) (text "曲名：西御寺のテーマ") (set-var I 34) (proc 54)))
         ((== N 20) (<> (clear) (text "曲名：天道のテーマ") (set-var I 33) (proc 54)))
         (else (<>)))))))
   (if (== N 2)
     (<>
      (text "聴きたい曲を選択して下さい。\n")
      (text "キャンセルは右クリックです。")
      (while
       (== 1 1)
       (<>
        (set-reg: 2023 0)
        (proc 20)
        (menu-show
         (<.>
          (text "オープニングテーマ")
          (text "エンディングテーマ")
          (text "移動（街の中）")
          (text "移動（学校）")
          (text "移動（クリスマス）")
          (text "移動（元日）")
          (text "移動（温泉旅行）")
          (text "自室、ＢＧＭ　１")
          (text "自室、ＢＧＭ　２")
          (text "自室、ＢＧＭ　３")
          (text "エッチシーン　１")
          (text "エッチシーン　２")
          (text "エッチシーン　３")
          (text "エッチシーン　４")
          (text "ひろしにプレゼント")
          (text "深夜の森で")
          (text "オルゴール")
          (text "クイズ王のテーマ")
          (text "夢仙人のテーマ")
          (text "ハッピーエンド")
          (text "アンハッピーエンド")))
        (cond
         ((== N 0) (<> (clear) (break)))
         ((== N 1)
          (<> (clear) (text "曲名：Ｓｗｅｅｔ　ｏｎ　Ｙｏｕ") (set-var I 18) (proc 54)))
         ((== N 2)
          (<>
           (clear)
           (text "曲名：Ｗｉｓｈ　ｆｏｒ　Ｈａｐｐｉｎｅｓｓ\n")
           (text "　　　　　（Ｓｗｅｅｔ　ｏｎ　Ｙｏｕ）")
           (set-var I 41)
           (proc 54)))
         ((== N 3) (<> (clear) (text "曲名：街の空") (set-var I 32) (proc 54)))
         ((== N 4) (<> (clear) (text "曲名：大きく行こう") (set-var I 1) (proc 54)))
         ((== N 5)
          (<> (clear) (text "曲名：Ｈｏｎｅｙ　Ｎｉｇｈｔ") (set-var I 26) (proc 54)))
         ((== N 6) (<> (clear) (text "曲名：お正月") (set-var I 35) (proc 54)))
         ((== N 7) (<> (clear) (text "曲名：楽しい旅行") (set-var I 5) (proc 54)))
         ((== N 8) (<> (clear) (text "曲名：ＢＧＭ　１") (set-var I 2) (proc 54)))
         ((== N 9) (<> (clear) (text "曲名：ＢＧＭ　２") (set-var I 23) (proc 54)))
         ((== N 10) (<> (clear) (text "曲名：ＢＧＭ　３") (set-var I 24) (proc 54)))
         ((== N 11)
          (<> (clear) (text "曲名：Ａｒｄｅｎｔ　Ｌｏｖｅ") (set-var I 21) (proc 54)))
         ((== N 12)
          (<> (clear) (text "曲名：Ｏｎｅ　Ｍｏｍｅｎｔ") (set-var I 6) (proc 54)))
         ((== N 13)
          (<> (clear) (text "曲名：Ｓｗｅｅｔ　Ｌｅｍｍｏｎ") (set-var I 4) (proc 54)))
         ((== N 14)
          (<> (clear) (text "曲名：Ｉｎ　ｔｈｅ　Ｍｏｏｄ") (set-var I 10) (proc 54)))
         ((== N 15) (<> (clear) (text "曲名：クリスマス") (set-var I 31) (proc 54)))
         ((== N 16) (<> (clear) (text "曲名：月の夢") (set-var I 14) (proc 54)))
         ((== N 17) (<> (clear) (text "曲名：Ｍｅｍｏｒｉｅｓ") (set-var I 8) (proc 54)))
         ((== N 18)
          (<> (clear) (text "曲名：Ｔｈｉｎｋｉｎｇ　Ｔｉｍｅ") (set-var I 43) (proc 54)))
         ((== N 19)
          (<> (clear) (text "曲名：占い師、夢仙人のテーマ") (set-var I 45) (proc 54)))
         ((== N 20)
          (<> (clear) (text "曲名：Ｈａｐｐｙ　Ｔａｌｋｉｎｇ") (set-var I 40) (proc 54)))
         ((== N 21)
          (<> (clear) (text "曲名：Ｗｈｙ　ｔｈｅ　Ｈｅｌｌ？") (set-var I 39) (proc 54)))
         (else (<>)))))))
   (if (== N 3) (<> (break)))))
 (proc 58)
 (set-var Y 499)
 (set-arr~ X Y 65535)
 (proc 59)
 (sound 1)
 (palette 3 0))