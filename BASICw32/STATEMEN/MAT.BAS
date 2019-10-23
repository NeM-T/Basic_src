! mat文で行列の和、差、積、逆行列などの演算ができる。
! 次に示すのは、行列の積。 
DIM A(2,2),B(2,2)
DATA 1,2
DATA 3,4
MAT READ A
DATA 0,1
DATA -1,0
MAT READ B
MAT A=A*B
MAT PRINT A
END


