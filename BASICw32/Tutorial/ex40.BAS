100 DIM C(1 TO 10, 0 TO 10)
110 MAT C=ZER
120 FOR n=1 TO 10
130    FOR r=0 TO n
140       IF r=0 OR r=n THEN
150          LET C(n,r)=1
160       ELSE
170          LET C(n,r)=C(n-1,r-1)+C(n-1,r)
180       END IF
190    NEXT r
200 NEXT n
210 MAT PRINT C;
220 END


