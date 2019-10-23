! Mを配列とするとき、UBOUND(M,n)は，Mの次元nの添字の上限を表す。
! Mが1次元配列であるとき、UBOUD(M,1)をUBOUND(M)と書いてよい。
DIM A(4,5),B(10)
DIM C$(2,3,4)
PRINT UBOUND(A,1),UBOUND(A,2)
PRINT UBOUND(B)
PRINT UBOUND(C$,1),UBOUND(C$,2),UBOUND(C$,3)
! 参考　添字の下限はlbound関数を用いて求める
END

