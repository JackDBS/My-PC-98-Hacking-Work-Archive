(mes
 (meta (engine 'AI1) (charset "pc98"))
 (set-arr~ @ 9 6664)
 (set-var I 0)
 (while
  (!= I 8)
  (<>
   (set-arr~ @ (+ (* I 2) 10) 39)
   (set-arr~ @ (+ (* I 2) 11) (+ 28 (* I 10)))
   (set-var I (+ I 1))))
 (define-proc 10
   (<>
    (if (== (: 1) 0)
      (<>
       (text-color 5)
       (if-else (== (? 10) 9)
         (<>
          (screen 20 (<> (clear 6) (wait 1) (clear 0) (wait 1)))
          (text "最高の攻撃！！")
          (wait 50)
          (set-var J (* (+ (- (~ M 1) (~ E 2)) (? 10) 1) 5)))
         (<>
          (screen 5 (<> (clear 6) (wait 1) (clear 0) (wait 1)))
          (call F)
          (text "の攻撃！！\n")
          (wait 50)
          (if-else (&&
                    (> (~ E 3) (~ M 3))
                    (> (- (~ E 3) (~ M 3)) (/ (~ M 3) (+ (? 3) 2))))
            (<> (text "おもいっきり、よけられた。") (set-var J 0))
            (<>
             (if-else (> (~ E 2) (* (~ M 1) (? 3)))
               (<>
                (call G)
                (text "は、微笑んでいる！\n")
                (text "まるで歯がたたない・・・・")
                (set-var J 0))
               (<>
                (call F)
                (text "は、")
                (set-var J (? 3))
                (if (== J 0) (<> (call G) (text "の胸をもんだ！")))
                (if (== J 1) (<> (text "エッチな言葉をささやいた！")))
                (if (== J 2) (<> (call G) (text "にキスをした！")))
                (set-var J (+ (- (~ M 1) (~ E 2)) (? 10) 1))))))))
       (wait 50)
       (if (!= J 0)
         (<>
          (text "\n")
          (call G)
          (text "に")
          (set-arr~ @ 7 31)
          (text (number J) "のダメージをあたえた！")
          (if-else (> J (~ E 0))
            (<>
             (set-arr~ E 0 0)
             (wait 150)
             (recover)
             (image C)
             (clear)
             (call G)
             (text "をたおした！")
             (wait)
             (set-reg: 2 1)
             (break))
            (<> (set-arr~ E 0 (- (~ E 0) J))))
          (wait 150)))))))
 (define-proc 11
   (<>
    (if (== (: 2) 0)
      (<>
       (text-color 6)
       (if-else (== (? 10) 9)
         (<>
          (screen 20 (<> (clear 2) (wait 1) (clear 0) (wait 1)))
          (text "しまった！油断した！")
          (call G)
          (text "の攻撃！")
          (wait 50)
          (set-var J (+ (* (- (~ E 1) (~ M 2)) 2) 1)))
         (<>
          (screen 5 (<> (clear 2) (wait 1) (clear 0) (wait 1)))
          (call G)
          (text "の攻撃！！\n")
          (wait 50)
          (if-else (&&
                    (> (~ M 3) (~ E 3))
                    (> (- (~ M 3) (~ E 3)) (/ (~ E 3) (+ (? 3) 2))))
            (<> (call F) (text "は、素早く身をかわした。") (set-var J 0))
            (<>
             (if-else (> (~ M 2) (* (~ E 1) (? 3)))
               (<>
                (call F)
                (text "は")
                (call G)
                (text "の攻撃にたえた！")
                (set-var J 0))
               (<>
                (set-var J (+ (- (~ E 1) (~ M 2)) (? 10) 1))
                (call G)
                (text "は、")
                (if (== T 1)
                  (<>
                   (set-var I (? 2))
                   (cond
                    ((== I 0) (<> (call F) (text "にウインクした！")))
                    ((== I 1)
                     (<>
                      (text "にっこりほほえんだ。")
                      (recover)
                      (image B)
                      (set-var J (* J 2)))))))
                (if (== T 2)
                  (<>
                   (set-var I (? 1))
                   (cond
                    ((== I 0)
                     (<>
                      (call F)
                      (text "にささやいた！")
                      (recover)
                      (image B)
                      (set-var J (* J 2))
                      (text "・・・　結婚してね。")))
                    ((== I 1) (<> (text "ろっぽおぜんしょでおそいかかってきた。"))))))
                (if (== T 3)
                  (<>
                   (set-var I (? 2))
                   (cond
                    ((== I 0) (<> (text "カンフーを使った！")))
                    ((== I 1)
                     (<>
                      (text "必殺技を使った！秘技百烈拳！")
                      (recover)
                      (image B)
                      (set-var J (* J 2)))))))
                (if (== T 4)
                  (<>
                   (set-var I (? 2))
                   (cond
                    ((== I 0) (<> (call F) (text "の後ろに回り込んだ。")))
                    ((== I 1)
                     (<>
                      (call F)
                      (text "のものをくわえた！")
                      (recover)
                      (image B)
                      (set-var J (* J 2))
                      (text "きっきもちいい！"))))))
                (if (== T 5)
                  (<>
                   (set-var I (? 2))
                   (cond
                    ((== I 0) (<> (text "英語で話しかけてきた！")))
                    ((== I 1)
                     (<>
                      (call F)
                      (text "のものをなめた！ううっ！")
                      (recover)
                      (image B)
                      (set-var J (* J 2)))))))
                (if (== T 6)
                  (<>
                   (set-var I (? 2))
                   (cond
                    ((== I 0) (<> (text "おそいかかってきた！")))
                    ((== I 1)
                     (<>
                      (text "突然、ムチを持ち出した！")
                      (recover)
                      (image B)
                      (set-var J (* J 2)))))))))))))
       (wait 50)
       (if (!= J 0)
         (<>
          (text "\n")
          (call F)
          (text "は、")
          (set-arr~ @ 7 31)
          (text (number J) "のダメージをうけた！")
          (if-else (> J (~ M 0))
            (<>
             (set-arr~ M 0 0)
             (wait 150)
             (clear)
             (call F)
             (text "は、死んでしまった")
             (wait)
             (set-reg: 1 1)
             (break))
            (<> (set-arr~ M 0 (- (~ M 0) J))))
          (execute 7168 (~ M 0))
          (wait 150)))))))
 (define-proc 12
   (<>
    (if (== (: 1) 0)
      (<>
       (text-color 7)
       (menu
        (<.>
         (if (!= (: 10) 0) (text "管理棟のカギ"))
         (if (!= (: 15) 0) (<*> (text "精力剤　" (number (: 15)) "個")))
         (if (== (: 21) 1) (text "穴のあいたバケツ"))
         (if (== (: 22) 1) (text "魔法のバケツ"))
         (if (== (: 23) 1) (text "高もんの時計"))
         (if (!= (: 16) 0) (text "奥義書１　桃色拳"))
         (if (!= (: 17) 0) (text "奥義書２　白濁拳"))
         (if (!= (: 18) 0) (text "奥義書３　強姦拳"))))
       (cond
        ((== S 2)
         (<>
          (clear)
          (text #:color 7 "ングング！体力が回復した。")
          (set-arr~ M 0 (~ L 1))
          (set-reg: 15 (- (: 15) 1))
          (execute 7168 (~ M 0))))
        ((> S 5)
         (<>
          (clear)
          (text-color 7)
          (set-var J (~ L 0))
          (if (&& (== (: 16) 1) (== (: 17) 1) (== (: 18) 1))
            (<> (set-var J (* J 30))))
          (wait 50)
          (if (!= J 0)
            (<>
             (text "南都性拳の奥義を使った。\n")
             (call G)
             (text "に")
             (set-arr~ @ 7 31)
             (text (number J) "のダメージをあたえた！")
             (if-else (> J (~ E 0))
               (<>
                (set-arr~ E 0 0)
                (wait 150)
                (recover)
                (image C)
                (clear)
                (call G)
                (text "をたおした！")
                (wait)
                (set-reg: 2 1)
                (break))
               (<> (set-arr~ E 0 (- (~ E 0) J))))
             (wait 150)))))
        (else (<> (clear) (text #:color 7 "何も起こらなかった。"))))
       (wait 150)))))
 (set-arr~ @ 2 8192)
 (set-reg: 0 0)
 (set-reg: 1 0)
 (set-reg: 2 0)
 (slot 0)
 (load "BOSS.MU" (~ @ 1))
 (slot 1)
 (window 11 155 68 187)
 (text-color 7)
 (clear)
 (call G)
 (text "があらわれた！")
 (wait 50)
 (animate 1 22 6 137 61)
 (recover)
 (image "B_WAKU.PIC")
 (recover)
 (image A)
 (animate 0 22 6 137 61)
 (clear)
 (call G)
 (text "：")
 (cond
  ((== T 1) (<> (text "へー、あなたが新聞部の部長に頼まれた人なの。でも、２階にはいかせてあげないから。")))
  ((== T 2)
   (<> (text "ふーん、あなたが生徒会にはむかってる") (call F) (text "ね。３階にいきたかったらわたしと勝負しなさい！")))
  ((== T 3) (<> (text "わたしは、北斗性拳の使い手") (call G) (text "よ！あなたにわたしが倒せるかしら？")))
  ((== T 4) (<> (text "あなたに体操で鍛えたこのわたしを倒せるかしらね。")))
  ((== T 5)
   (<>
    (text
     "ワタシハ、アナタトタタカウタメニハルバルアメリカカラキタマリアンネ。アナタニウラミハナイケドコノガクエンカラテヲヒイテモラウワヨ。")))
  ((== T 6) (<> (text "あなたが、") (call F) (text "ね。ここに入ってきたのが運の尽き。死んでもらうわよ。"))))
 (wait)
 (clear)
 (while
  (&& (!= (~ M 0) 0) (!= (~ E 0) 0) (== (: 0) 0))
  (<>
   (while
    (== 1 1)
    (<>
     (execute 7168 (~ M 0))
     (set-var V 0)
     (set-var N 0)
     (window 38 24 65 111)
     (text-color 7)
     (clear)
     (menu (<.> (text "たたかう") (text "にげる") (text "どうぐ")))
     (set-var V S)
     (if (== V 0) (<> (continue)))
     (if (== V 1) (<> (break)))
     (if (== V 2) (<> (break)))
     (if (== V 3)
       (<>
        (if-else (&&
                  (== (: 10) 0)
                  (== (: 15) 0)
                  (== (: 21) 0)
                  (== (: 22) 0)
                  (== (: 23) 0)
                  (== (: 16) 0)
                  (== (: 17) 0)
                  (== (: 18) 0))
          (<> (clear) (text "何も持ってません。") (wait))
          (<> (break)))))))
   (window 11 155 68 187)
   (clear 0)
   (if (== V 1)
     (<>
      (if-else (> (+ (~ M 3) (? 10)) (+ (~ E 3) (? 1)))
        (<> (com 10) (com 11))
        (<> (com 11) (com 10)))))
   (if (== V 2) (<> (text "けげっ！逃げられない！") (wait 100) (clear) (com 11)))
   (if (== V 3)
     (<>
      (if-else (> (+ (~ M 3) (? 10)) (+ (~ E 3) (? 1)))
        (<> (com 12) (com 11))
        (<> (com 11) (com 12)))))))
 (execute 7168 (~ M 0))
 (if (== (~ M 0) 0)
   (<>
    (slot 0)
    (load "G-OVER.MU" (~ @ 1))
    (slot 1)
    (clear)
    (text "かみさまのこえ：死んでしまうとはなさけない！\n")
    (text "　　　　　　　　もう一度やりなおせぃ！")
    (wait)
    (clear)
    (text "ＬＯＡＤＩＮＧ　ＳＴＡＲＴ\n")
    (text "　　　　　　　　　　　　　　　　　ＨＩＴ　ＫＥＹ")
    (wait)
    (clear)
    ((cmd 181) 0)))
 (set-arr~ M 4 (+ (~ M 4) 1 (? 2)))
 (if (> (~ M 4) (* (~ L 0) 4))
   (<>
    (set-arr~ L 0 (+ (~ L 0) 1))
    (set-arr~ M 4 0)
    (set-arr~ L 1 (+ (~ L 1) (* (~ L 0) (+ (? 3) 1))))
    (set-arr~ M 1 (+ (~ M 1) (* (~ L 0) (? 3)) 1))
    (set-arr~ M 2 (+ (~ M 2) (* (~ L 0) (? 2)) 1))
    (clear)
    (text #:color 7 "ＬＥＶＥＬ" (number (~ L 0)) "になりました。\n")
    (text "ＭＡＸ　ＨＰは、" (number (~ L 1)) "になりました。\n")
    (text "強さが" (number (~ M 1)) "に、防御が" (number (~ M 2)) "になりました。")
    (wait)
    (clear)))
 (slot 0)
 (load Z (~ @ 1))
 (slot 1)
 (set-arr~ @ 9 4611)
 (set-var I 0)
 (while
  (!= I 3)
  (<>
   (set-arr~ @ (+ (* I 2) 10) (+ 12 (* I 19)))
   (set-arr~ @ (+ (* I 2) 11) 175)
   (set-var I (+ I 1)))))