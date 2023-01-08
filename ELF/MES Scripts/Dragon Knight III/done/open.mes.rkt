(mes
 (meta (engine 'AI5) (charset "english") (dictbase 128))
 (dict
  #\u3000
  #\newline
  #\ー
  #\の
  #\ク
  #\デ
  #\ス
  #\ィ
  #\ト
  #\ン
  #\ド
  #\。
  #\に
  #\＞
  #\を
  #\ル
  #\い
  #\イ
  #\し
  #\す
  #\フ
  #\ブ
  #\ま
  #\ラ
  #\て
  #\Ａ
  #\ハ
  #\＜
  #\は
  #\、
  #\３
  #\る
  #\と
  #\エ
  #\１
  #\で
  #\さ
  #\会
  #\Ｄ
  #\た
  #\２
  #\・
  #\ゲ
  #\ム
  #\ら
  #\め
  #\く
  #\Ｌ
  #\Ｒ
  #\Ｓ
  #\レ
  #\セ
  #\ァ
  #\が
  #\だ
  #\．
  #\リ
  #\０
  #\か
  #\こ
  #\お
  #\タ
  #\下
  #\上
  #\も
  #\Ｅ
  #\Ｉ
  #\）)
 (set-arr~ @ 9 (// (~ @ 9) 4))
 (slot 3
   (<>
    (set-arr~ @ 1 32768)
    (set-arr~ @ 7 0)
    (set-arr~ @ 9 (// (~ @ 9) 1))
    (set-arr~ @ 6 0)
    (image "m_waku1.pd8")
    (image "face10.pd8")
    (set-arr~ @ 9 (&& (~ @ 9) 65534))
    (set-arr~ @ 7 1)
    (set-arr~ @ 20 (+ (&& (~ @ 20) 65280) 0))
    (set-arr~ @ 21 272)
    (set-arr~ @ 20 (// (&& (~ @ 20) 65399) 128))
    (set-arr~ @ 13 27 75 68 170)
    (color 8)
    (text-color 7)
    (clear)
    (set-arr~ @ 1 4096)))
 (define-proc 0
   (<>
    (set-arr~ @ 7 0)
    (define-proc 30
      (<>
       (box-inv
        24
        (+ (- 328 36) (* (~ @ 23) 18))
        53
        (+ (- 328 36) (* (~ @ 23) 18) 15))))
    (define-proc 31 (<> (proc 30)))
    (define-proc 32
      (<>
       (set-var J (~ @ 22))
       (set-var S (~ J (+ (* (~ @ 23) 2) 1)))
       (set-arr~ @ 27 0)))
    (define-proc 33
      (<> (if (!= (: 0) 0) (<> (set-var S 0) (set-arr~ @ 27 0)))))
    (define-proc 34
      (<>
       (if-else (!= (~ @ 23) 0)
         (<> (proc 31) (set-arr~ @ 23 (- (~ @ 23) 1)) (proc 30))
         (<>
          (if (!= (~ @ 24) 0)
            (<>
             (set-arr~ @ 24 (- (~ @ 24) 1))
             (menu-init 0)
             (color 71)
             (set-var I 0)
             (while
              (!= I (~ @ 25))
              (<>
               (box 24 (+ (- 328 36) (* I 18)) 53 (+ (- 328 36) (* I 18) 15))
               (set-var J (~ @ 22))
               (if (!= (~ J (+ (* I 2) 1)) 0)
                 (<>
                  (set-arr~ @ 17 24 (+ (- 328 36) (* I 18)))
                  (call (~ J (* I 2)))))
               (set-var I (+ I 1))))
             (color 112)
             (proc 30)))))))
    (define-proc 35
      (<>
       (set-var J (~ @ 22))
       (if-else (&&
                 (!= (~ J (+ (* (+ (~ @ 23) 1) 2) 1)) 0)
                 (!= (~ @ 23) (- (~ @ 25) 1)))
         (<> (proc 31) (set-arr~ @ 23 (+ (~ @ 23) 1)) (proc 30))
         (<>
          (if (> (~ @ 26) (+ (~ @ 25) (~ @ 24)))
            (<>
             (set-arr~ @ 24 (+ (~ @ 24) 1))
             (menu-init 0)
             (color 71)
             (set-var I 0)
             (while
              (!= I (~ @ 25))
              (<>
               (box 24 (+ (- 328 36) (* I 18)) 53 (+ (- 328 36) (* I 18) 15))
               (set-var J (~ @ 22))
               (if (!= (~ J (+ (* I 2) 1)) 0)
                 (<>
                  (set-arr~ @ 17 24 (+ (- 328 36) (* I 18)))
                  (call (~ J (* I 2)))))
               (set-var I (+ I 1))))
             (color 112)
             (proc 30)))))))
    (define-proc 36 (<>))
    (define-proc 37 (<>))
    (define-proc 38
      (<>
       (set-arr~ @ 25 5)
       (set-arr~ @ 24 0)
       (set-arr~ @ 23 0)
       (menu-init 1)
       (menu-init 0)
       (set-arr~ @ 20 (+ (&& (~ @ 20) 65280) 0))
       (set-arr~ @ 21 272)
       (set-arr~ @ 20 (// (&& (~ @ 20) 65399) 128))
       (set-arr~ @ 13 0 0 79 399)
       (color 71)
       (set-var I 0)
       (while
        (!= I (~ @ 25))
        (<>
         (box 24 (+ (- 328 36) (* I 18)) 53 (+ (- 328 36) (* I 18) 15))
         (set-var J (~ @ 22))
         (if (!= (~ J (+ (* I 2) 1)) 0)
           (<>
            (set-arr~ @ 17 24 (+ (- 328 36) (* I 18)))
            (call (~ J (* I 2)))))
         (set-var I (+ I 1))))
       (color 112)
       (proc 30)
       (if (== (: 0) 0) (<> (palette 3)))))
    (define-proc 39 (<>))))
 (set-arr~ @ 7 1)
 (set-arr~ @ 1 4096)
 (set-arr~ @ 9 (// (~ @ 9) 1))
 (set-arr~ @ 6 1)
 (image "sento.pd8")
 (set-arr~ @ 6 2)
 (image "chara1.pd8")
 (set-arr~ @ 7 0)
 (set-var Z 0)
 (set-arr~ @ 5 Z)
 (set-arr~ @ 1 4096)
 (set-var W 2)
 (set-arr~ @ 7 1)
 (set-arr~ Z 0 16384)
 (set-arr~ Z 1 0)
 (set-arr~ Z 2 0)
 (set-arr~ Z 3 100)
 (set-arr~ Z 4 100)
 (set-arr~ Z 5 2)
 (set-arr~ Z 6 40)
 (set-arr~ Z 7 36)
 (set-arr~ Z 8 15)
 (set-arr~ Z 9 4)
 (set-arr~ Z 10 4)
 (set-arr~ Z 11 4)
 (set-arr~ Z 12 4)
 (set-arr~ Z 13 0)
 (set-arr~ Z 14 0)
 (set-arr~ Z 15 100)
 (set-arr~ Z 16 100)
 (while
  (== 1 1)
  (<>
   (set-arr~ @ 7 0)
   (set-arr~ @ 6 0)
   (palette 3 0)
   (set-arr~ @ 13 0 0 79 399)
   (color 7)
   (clear)
   (set-arr~ @ 1 32768)
   (set-arr~ @ 9 (&& (~ @ 9) 65534))
   (image "rogo.pd8")
   (blit 0 36 79 399 0 0 0 0)
   (sound 1)
   (set-arr~ @ 7 0)
   (set-arr~ @ 3 49152)
   (load "OSOWALER.M" (~ @ 3))
   (sound 0)
   (set-reg: 0 0)
   (proc 0)
   (menu-show
    (<.>
     (text "Start from the beginning　　　")
     (text "Load a save and resume play　")
     (text "View the Extra Content　　　　")
     (text "Hard Drive Installation　")
     (text "Join the ELF Fan Club!　　")))
   (sound 4 10)
   (cond
    ((== S 0) (<> (palette 3 0)))
    ((== S 1) (<> (mes-call "name.mes") (mes-jump "init.mes")))
    ((== S 2)
     (<>
      (set-reg: 0 1)
      (proc 0)
      (menu-show
       (<.>
        (text "Load Save File 1　　　　")
        (text "Load Save File 2　　　　")
        (text "Load Save File 3　　　　")
        (text "Load Save File 4　　　　")
        (text "Load Save File 5　　　　")))
      (if (!= S 0)
        (<>
         (palette 3 0)
         (color 7)
         (box 0 0 79 399)
         (set-arr~ @ 1 32768)
         (set-arr~ @ 7 0)
         (set-arr~ @ 9 (&& (~ @ 9) 65534))
         (set-arr~ @ 6 0)
         (image "m_waku1.pd8")
         (image "face10.pd8")
         (set-arr~ @ 9 (&& (~ @ 9) 65534))
         (set-arr~ @ 7 1)
         (set-arr~ @ 20 (+ (&& (~ @ 20) 65280) 0))
         (set-arr~ @ 21 272)
         (set-arr~ @ 20 (// (&& (~ @ 20) 65399) 128))
         (set-arr~ @ 13 27 75 68 170)
         (color 8)
         (text-color 7)
         (clear)
         (palette 3)
         (set-arr~ @ 20 (&& (~ @ 20) 4095))
         (set-arr~ @ 20 (+ (&& (~ @ 20) 61695) 256))
         (text "Loading your Save File!")
         (delay)
         (set-arr~ @ 1 4096)
         (if (== S 1) (<> (flag 0 0)))
         (if (== S 2) (<> (flag 0 1)))
         (if (== S 3) (<> (flag 0 2)))
         (if (== S 4) (<> (flag 0 3)))
         (if (== S 5) (<> (flag 0 4)))))))
    ((== S 3) (<> (slot 0 0) (mes-jump "omake.mes")))
    ((== S 4)
     (<>
      (palette 3 0)
      (color 7)
      (set-arr~ @ 13 0 0 79 399)
      (clear)
      (set-arr~ @ 31 371)
      (set-arr~ @ 39 2556)
      (palette 3 0)
      (color 8)
      (text "\n\n\n")
      (text "Dragon Knight III Hard Drive Installation\n\n")
      (text " This is for players who would like to play Dragon Knight III with their HDD.\n")
      (text "You may install your game to a hard disk. Please read the following\n")
      (text "instructions carefully before installing the game.\n\n")
      (text "READ THIS!!\n")
      (text "The ability to install games to your hard drive is optional and just a bonus.\n")
      (text "Therefore, ELF Corp. is not liable for any damage to your software or hardware\n")
      (text "that could result from this game because we don't fucking exist anymore.\n\n\n")
      (text "NOTES\n")
      (text "　　-For Security, put a write-protection sticker on Disk A\n")
      (text "　　-You will need 8-14 MB of Hard Drive Space.\n")
      (text "　　-While installing, device drivers like RAM Disks and cache disks should\n")
      (text "　　　be removed from CONFIG.SYS.\n")
      (text "　　　As this could cause some malfunctions to occur.\n")
      (text "　　-Some hard drive may not work due to their product specifications.\n")
      (text "　　　If this is to occur, give up.")
      (palette 3)
      (delay)
      (palette 3 0)
      (clear)
      (text "\n\n")
      (text "How to Install\n\n")
      (text "This install is done when MS-DOS is started up from the hard drive.\n")
      (text "Drive A: Hard Drive")
      (text "Drive B: Floppy Disk Drive 1\n\n\n")
      (text "1. Create a directory for the game on your hard drive and\n")
      (text "　　 go into that directory.\n")
	  A> COPY B:INSTALL.EXE
      (text "　　　　　A> MKDIR A:¥DR3\n")
      (text "　　　　　A> CD ¥DR3\n\n")
      (text "2. Copy INSTALL.EXE from Disk B.\n")
      (text "　　　　　A> COPY B:INSTALL.EXE\n\n")
      (text "3. Run the INSTALL utility.\n")
      (text "　　　　　A> INSTALL\n\n")
      (text "4. Launch Dragon Knight III.\n")
      (text "　　　　　A> DR3\n")
      (palette 3)
      (delay)
      (palette 3 0)
      (clear)
      (text "\n\n\n\n\n\n\n\n\n\n")
      (text "When you start up the game again, make sure the current directory\n")
      (text "is the directory of the game itself before beginning.\n")
      (text "　　　　　A> CD ¥DR3\n")
      (text "　　　　　A> DR3")
      (palette 3)
      (delay)))
    ((== S 5)
     (<>
      (palette 3 0)
      (color 7)
      (set-arr~ @ 13 0 0 79 399)
      (clear)
      (set-arr~ @ 31 311)
      (set-arr~ @ 39 2511)
      (palette 3 0)
      (color 8)
      (text "\n\n\n")
      (text "Elf Fan Club Membership Wanted!\n\n")
      (text "Thanks to our wonderful fans, the ELF Fan Club is celebrating its 1st birthday!\n")
      (text "Currently, we are rapidly accepting applications to our membership!\n\n")
      (text "1. You get an original ELF Fan Club membership card.\n")
      (text "2. You get a newsletter full of info on new ELF works every 3 months.\n")
      (text "3. You can participate in raffles from time to time!\n\n")
      (text "Admission Fee: 2000 Yen \n\n\n")
      (text "How to Apply\n")
      (text "Enclose 2000 Yen in the mail with your name, address, age, occupation, and sex.\n")
      (text "Write down the model of your computer and send it to the address below:\n\n")
      (text "Postal Code 169, Pairs Building 1F, 2-21-27, Hyakunicho, Shinjuku, Tokyo, Japan\n")
      (text "Elf Corporation Elf Fan Club Section\n")
      (palette 3)
      (delay)))))))