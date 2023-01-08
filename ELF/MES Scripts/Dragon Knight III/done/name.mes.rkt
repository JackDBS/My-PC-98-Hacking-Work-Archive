(mes
 (meta (engine 'AI5) (charset "english") (dictbase 128))
 (dict #\u3000)
 (set-arr~ @ 7 0)
 (set-arr~ @ 6 0)
 (palette 3 0)
 (set-arr~ @ 13 0 0 79 399)
 (color 7)
 (clear)
 (set-arr~ @ 1 32768)
 (set-arr~ @ 9 (&& (~ @ 9) 65534))
 (image "name.pd8")
 (set-var A 32768)
 (set-var B 33024)
 (set-var C 3)
 (set-var P 3)
 (set-var X 1)
 (set-var Y 8)
 (set-var M 8)
 (set-var N 3)
 (set-arr~ A 0 24195 20611 35715 0)
 (set-arr~ B 0
   41090
   41602
   42114
   42626
   43138
   16513
   43394
   43906
   44418
   44930
   45442
   16513
   45954
   46466
   46978
   47490
   48002
   16513
   48514
   49026
   49794
   50306
   50818
   16513
   51330
   51586
   51842
   52098
   52354
   52610
   53378
   54146
   54914
   55682
   16513
   56450
   56706
   56962
   57218
   57474
   16513
   57986
   16513
   58498
   16513
   59010
   16513
   59266
   59522
   59778
   60034
   60290
   16513
   60802
   61826
   16513
   16513
   16513
   43650
   44162
   44674
   45186
   45698
   16513
   46210
   46722
   47234
   47746
   48258
   16513
   48770
   49282
   50050
   50562
   51074
   16513
   52866
   53634
   54402
   55170
   55938
   16513
   53122
   53890
   54658
   55426
   56194
   40834
   41346
   41858
   42370
   42882
   16513
   49538
   57730
   58242
   58754
   16513
   16513
   16513
   16513
   16513
   16513
   16513
   16513
   16513
   16513
   16513
   16513
   16513
   16513
   16513
   16513
   16513
   16513
   16513
   16771
   17283
   17795
   18307
   18819
   16513
   19075
   19587
   20099
   20611
   21123
   16513
   21635
   22147
   22659
   23171
   23683
   16513
   24195
   24707
   25475
   25987
   26499
   16513
   27011
   27267
   27523
   27779
   28035
   28291
   29059
   29827
   30595
   31363
   16513
   32131
   32387
   32899
   33155
   33411
   16513
   33923
   16513
   34435
   16513
   34947
   16513
   35203
   35459
   35715
   35971
   36227
   16513
   36739
   37763
   16513
   16513
   16513
   19331
   19843
   20355
   20867
   21379
   16513
   21891
   22403
   22915
   23427
   23939
   16513
   24451
   24963
   25731
   26243
   26755
   16513
   28547
   29315
   30083
   30851
   31619
   16513
   28803
   29571
   30339
   31107
   31875
   16515
   17027
   17539
   18051
   18563
   16513
   25219
   33667
   34179
   34691
   16513
   16513
   16513
   16513
   16513
   16513
   16513
   16513
   16513
   16513
   16513
   16513
   16513
   16513
   16513
   16513
   16513
   16513
   16513)
 (set-arr~ @ 7 0)
 (set-arr~ @ 20 (+ (&& (~ @ 20) 65280) 0))
 (set-arr~ @ 21 272)
 (set-arr~ @ 20 (// (&& (~ @ 20) 65399) 128))
 (color 23)
 (set-arr~ @ 17 (+ M 16) (* (+ N 1) 16))
 (text "Please enter the name of the main character.")
 (set-arr~ @ 17 (+ M 2) (* (+ N 3) 16))
 (text "ABCDEFGHIJKLMNOPQRSTUVWXYZ")
 (set-arr~ @ 17 (+ M 2) (* (+ N 4) 16))
 (text "abcdefghijklmnopqrstuvwxyz")
 (set-arr~ @ 17 (+ M 2) (* (+ N 5) 16))
 (text "1234567890")
 (set-arr~ @ 17 (+ M 2) (* (+ N 6) 16))
 (text "Dragon Knight III")
 (set-arr~ @ 17 (+ M 2) (* (+ N 7) 16))
 (text "English Translation Patch 2023")
 (set-arr~ @ 17 (+ M 2) (* (+ N 8) 16))
 (text "Translation by CrookerWine")
 (set-arr~ @ 17 (+ M 2) (* (+ N 9) 16))
 (text "Editing and Hacking By JackDBS")
 (set-arr~ @ 17 (+ M 2) (* (+ N 10) 16))
 (text "Special Thanks to BabaJeanmel")
 (set-arr~ @ 17 (+ M 10) (* (+ N 12) 16))
 (text "Name：［")
 (set-var I 0)
 (while (!= I C) (<> (text "　") (set-var I (+ I 1))))
 (text "］")
 (set-arr~ @ 17 (+ M 18) (* (+ N 12) 16))
 (set-arr~ @ 9 (// (~ @ 9) 8))
 (call A)
 (set-arr~ @ 9 (&& (~ @ 9) 65527))
 (set-arr~ @ 17 (+ M 38) (* (+ N 12) 16))
 (text "　Back　")
 (set-arr~ @ 17 (+ M 50) (* (+ N 12) 16))
 (text "　End　")
 (palette 3)
 (define-proc 30
   (<>
    (color 112)
    (if-else (== P C)
      (<>
       (box-inv
        (+ M 18 (* (- P 1) 2))
        (+ (* (+ N 12) 16) 14)
        (+ M 19 (* (- P 1) 2))
        (+ (* (+ N 12) 16) 15)))
      (<>
       (box-inv
        (+ M 18 (* P 2))
        (+ (* (+ N 12) 16) 14)
        (+ M 19 (* P 2))
        (+ (* (+ N 12) 16) 15))))
    (if-else (!= Y 8)
      (<>
       (box-inv
        (+ M 2 (* X 2))
        (* (+ N 3 Y) 16)
        (+ M 3 (* X 2))
        (+ (* (+ N 3 Y) 16) 15)))
      (<>
       (box-inv
        (+ M 38 (* X 12))
        (* (+ N 12) 16)
        (+ M 38 (* X 12) 9)
        (+ (* (+ N 12) 16) 15))))
    (color 23)))
 (define-proc 31
   (<>
    (set-arr~ @ 17 (+ M 10) (* (+ N 12) 16))
    (text "Name：［")
    (set-var I 0)
    (while (!= I C) (<> (text "　") (set-var I (+ I 1))))
    (text "］")
    (set-arr~ @ 17 (+ M 18) (* (+ N 12) 16))
    (set-arr~ @ 9 (// (~ @ 9) 8))
    (call A)
    (set-arr~ @ 9 (&& (~ @ 9) 65527))))
 (define-proc 32
   (<>
    (cond
     ((&& (== X 0) (== Y 8))
      (<>
       (if (!= P 0)
         (<>
          (set-var P (- P 1))
          (set-arr~ A P 0)
          (proc 30)
          (proc 31)
          (proc 30)))))
     ((&& (== X 1) (== Y 8)) (<> (set-arr~ @ 27 0)))
     (else
      (<>
       (set-var I (+ X (* Y 29)))
       (if-else (!= P C)
         (<> (set-arr~ A P (~ B I)) (set-var P (+ P 1)))
         (<> (set-arr~ A (- P 1) (~ B I))))
       (set-arr~ A P 0)
       (proc 30)
       (proc 31)
       (proc 30))))))
 (define-proc 33 (<> (set-arr~ @ 27 0)))
 (define-proc 34
   (<>
    (cond
     ((== Y 8)
      (<>
       (proc 30)
       (set-var Y 7)
       (if-else (== X 0) (<> (set-var X 18)) (<> (set-var X 24)))
       (proc 30)))
     ((!= Y 0) (<> (proc 30) (set-var Y (- Y 1)) (proc 30))))))
 (define-proc 35
   (<>
    (cond
     ((== Y 7)
      (<>
       (proc 30)
       (set-var Y 8)
       (if-else (< X 24) (<> (set-var X 0)) (<> (set-var X 1)))
       (proc 30)))
     ((!= Y 8) (<> (proc 30) (set-var Y (+ Y 1)) (proc 30))))))
 (define-proc 36
   (<> (if (!= X 0) (<> (proc 30) (set-var X (- X 1)) (proc 30)))))
 (define-proc 37
   (<>
    (if-else (!= Y 8)
      (<> (if (!= X 28) (<> (proc 30) (set-var X (+ X 1)) (proc 30))))
      (<> (if (!= X 1) (<> (proc 30) (set-var X (+ X 1)) (proc 30)))))))
 (define-proc 38 (<> (proc 30)))
 (define-proc 39 (<>))
 (menu-show (<>))
 (set-arr~ @ 7 0)
 (set-var B (~ @ 0))
 (set-var I 0)
 (while (!= I 4) (<> (set-arr~ B (+ 86 I) (~ A I)) (set-var I (+ I 1))))
 (set-var A (~ @ 0))
 (if (== (~ A 86) 0) (<> (set-arr~ A 86 24195 20611 35715 0))))