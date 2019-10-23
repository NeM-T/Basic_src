! END行は主プログラムの終わりの行である。
! すべてのプログラムは，END行をちょうど１つ含まなければならない。
DECLARE EXTERNAL FUNCTION C
INPUT n,r
PRINT C(n,r)
END                            ! ここまでが主プログラム
EXTERNAL FUNCTION C(n,r)       ! ここから以降は外部手続き定義
IF r=0 OR r=n THEN  LET C=1 ELSE LET C=C(n-1,r-1)+C(n-1,r)
END FUNCTION
 

