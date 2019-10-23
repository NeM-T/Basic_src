100 rem restore文は，read文が指定された行番号のdata文から読むようにする。
110 DIM A(4),B(4)
120 DATA 1,2,3,4,5,6
130 DATA 9,8,7,6,5,4
140 MAT READ A
150 RESTORE 130
160 MAT READ B
170 MAT PRINT A,B
180 END
    
