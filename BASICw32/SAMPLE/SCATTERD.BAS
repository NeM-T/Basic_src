REM ライブラリプログラムSTAT2.LIBの使用例
REM CSV形式データファイル（data4.txt）を読み込んで散布図と回帰直線を描く
DIM a(10000,2)          ! 大きめに宣言しておく
DECLARE NUMERIC i
DECLARE EXTERNAL SUB chart
DECLARE EXTERNAL FUNCTION mean, sd, correlation
OPEN #1:NAME "data4.txt" 
LET i=1
DO
   INPUT #1,IF MISSING THEN EXIT DO:a(i,1),a(i,2)
   LET i=i+1
LOOP
CLOSE #1
MAT redim a(i-1,2)    ! 読み込んだデータ件数に合わせてサイズを修正
PRINT "身長の平均",mean(a,1)
PRINT "体重の平均",mean(a,2)
PRINT "身長の標準偏差",sd(a,1)
PRINT "体重の標準偏差",sd(a,2)
PRINT "身長と体重の相関係数",correlation(a,1,2)
! 散布図と回帰直線を描く
SET WINDOW -5,215,-5,215
DRAW grid(10,10)
CALL chart(a,1,2)   
END 
! 
MERGE "STAT2.LIB"
