REM STAT1.LIBの使用例
REM ファイル(DATA3.TXT)からデータを読み込んでヒストグラムを描く
DIM a(10000)       ! 大きめに宣言しておく
DECLARE NUMERIC i
DECLARE EXTERNAL FUNCTION mean,sd
DECLARE EXTERNAL SUB histogram
LET i=1
OPEN #1:NAME "DATA3.TXT"
DO 
   INPUT #1, IF MISSING THEN EXIT DO: a(i)
   LET i=i+1
LOOP
CLOSE #1
MAT REDIM a(i-1)    ! 実際のデータ数に合わせる
PLOT TEXT, AT 0, 0.96, USING "########  ##.##": "平均",mean(a)
PLOT TEXT ,AT 0, 0.92, USING "########  ##.##": "標準偏差",sd(a)
CALL histogram(a,0,100,10)
END
!
MERGE "STAT1.LIB"
