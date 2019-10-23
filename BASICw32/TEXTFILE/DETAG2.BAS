100 REM Word2000で作成したHTML文書からstyleタグ，spanタグを削除し，
110 REM それ以外のタグからstyle属性,class属性を削除する。
120 REM shift-JISコード(またはASCII)で保存した文書に限り適用できる。
130 FILE GETNAME f$, "HTMLファイル|*.HTM;*.HTML"
140 OPTION ARITHMETIC NATIVE
150 FILE SPLITNAME (f$) path$, name$, ext$
160 OPEN #1: NAME f$
170 OPEN #2: NAME path$ & name$ & ".TMP"
180 ERASE #2
190 REM styleタグを削除
200 REM <STYLE>，</STYLE>はそれぞれ単独に(1行を占有して)書かれていることを前提とする。
210 DO 
220    LINE INPUT #1: s$
230    IF POS(s$,"<STYLE")>0 THEN
240       DO 
250          LINE INPUT #1:s$                 
260       LOOP UNTIL POS(s$,"</STYLE>")>0
270       LINE INPUT #1:s$ 
280    END IF    
290    IF POS(s$, "<BODY")>0 THEN EXIT DO
300    PRINT #2:s$
310 LOOP 
320 DO          
330    LET t1=0
340    DO
350       LET t1=POS(s$,"<",t1+1)              ! タグ以外に < はないものと仮定     
360       IF t1=0 THEN EXIT DO
370       DO 
380          LET t2=POS(s$,">",t1+1)
390          IF t2>0 THEN EXIT DO
400          LINE INPUT #1: t$
410          LET s$=s$ & t$
420       LOOP
430       IF s$(t1 + 1 : t1 + 4)="SPAN" THEN 
440          LET s$(t1:t2)=""
450          LET t1=t1-1
460       ELSEIF s$(t1 + 1 : t1 + 5)="/SPAN" THEN 
470          LET s$(t1:t2)=""
480          LET t1=t1-1
490       ELSE
500          REM class=の直後に余分な空白がなく，かつ，属性が引用符で囲まれていることを前提とする
510          LET s1=POS(s$,"class=",t1+2)
520          IF s1>0 then                
530             LET q$=s$(s1+6:s1+6)          ! 引用符
540             LET s2=POS(s$,q$,s1+7)        ! 引用符閉じ
550             LET s$(s1:s2)=""
560          END IF
570          REM style=の直後に余分な空白がなく，かつ，属性が引用符で囲まれていることを前提とする
580          LET s1=POS(s$,"style=",t1+2)
590          IF s1>0 then                
600             LET q$=s$(s1+6:s1+6)          ! 引用符
610             LET s2=POS(s$,q$,s1+7)        ! 引用符閉じ
620             LET s$(s1:s2)=""
630          END IF
640       END IF     
650    LOOP
660    PRINT #2:s$
670    LINE INPUT #1, IF MISSING THEN EXIT DO: s$
680 LOOP
690 CLOSE #1
700 CLOSE #2
710 FILE RENAME f$, path$ & name$ & ".BAK"
720 FILE RENAME path$ & name$ & ".TMP" ,f$
730 PRINT "終了"
740 END
