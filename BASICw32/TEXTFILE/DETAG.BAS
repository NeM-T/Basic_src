REM Word97(またはWord98)で作成したHTML文書からFONTタグを削除する
REM shift-JISコード(またはASCII)で保存した文書に限り適用できる
REM タグの途中で改行されることはないものと仮定している
FILE GETNAME f$, "HTMLファイル|*.HTM;*.HTML"
FILE SPLITNAME (f$) path$, name$, ext$
OPEN #1: NAME f$
OPEN #2: NAME path$ & name$ & ".TMP"
LET inner=0 
DO          
   LINE INPUT #1, IF MISSING THEN EXIT DO: s$
   LET t1=1
   DO  
      IF inner=0 THEN
         LET t1=POS(s$,"<FONT",t1)
         IF t1=0 THEN EXIT DO  
         LET t2=POS(s$,">",t1)
         IF t2=0 THEN 
            PRINT s$
            PRINT "想定外"
            STOP
         END IF
         LET s$(t1: t2)=""
         LET inner=1
      END IF
      IF inner=1 THEN
         LET t1=POS(s$,"</FONT>",t1)
         IF t1=0 THEN EXIT DO  
         LET s$(t1:t1 + 6)=""
         LET inner=0
      END IF  
   LOOP
   PRINT #2:s$
LOOP
CLOSE #1
CLOSE #2
FILE RENAME f$, path$ & name$ & ".BAK"
FILE RENAME path$ & name$ & ".TMP" ,f$
PRINT "終了"
END

