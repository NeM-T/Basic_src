! Mを配列とするとき、LBOUND(M,n)は，Mの次元nの添字の下限を表す。
! Mが1次元配列であるとき、LBOUND(M,1)をLBOUND(M)と書いてよい。
DECLARE EXTERNAL SUB TEST
DIM A(10),B(2 TO 10)
CALL TEST(A,B)
END
! ここから外部副プログラムで、主プログラムと異なるプログラム単位になる。
EXTERNAL SUB TEST(A(),B())
OPTION BASE 0             ! OPTION文の有効範囲はプログラム単位
DIM C(10)
! LBOUND関数は，配列引数の添字の下限を知る目的で用いられることが多い。
PRINT LBOUND(A),LBOUND(B),LBOUND(C)
END SUB

