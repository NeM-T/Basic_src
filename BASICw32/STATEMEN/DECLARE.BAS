! DECLARE EXTERNAL FUNCTION  外部関数名の宣言
! DECLARE EXTERNAL SUB       外部副プログラム名の宣言
! DECLARE EXTERNAL PICTURE   外部絵定義名の宣言
! 宣言文はプログラム単位ごとに書く必要がある。
! このＢＡＳＩＣはDECLARE文の省略を許しているので、たいていの場合、省いてよい。
!
! DECLARE EXTERNAL FUNCTION で関数名を宣言すると、
! 組込み関数と同じ名前の関数でも定義できる。
! この場合には、DECLARE文は省略できない。
DECLARE EXTERNAL FUNCTION ABS
DIM x(2)
LET x(1)=4
LET x(2)=3
PRINT ABS(x)
END
EXTERNAL FUNCTION ABS(x())
LET ABS=SQR(x(1)^2+x(2)^2)
END FUNCTION

