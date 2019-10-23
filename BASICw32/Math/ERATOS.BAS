100 ! エラトステネスのふるい　
110 ! 1000以下の素数をすべて求める
120 DIM s(1000)
130 MAT s=ZER
140 FOR i=2 TO 1000
150    IF s(i)=0 THEN
160       PRINT i
170       FOR  j=i^2 TO 1000 STEP i
180          LET s(j)=1
190       NEXT j 
200    END IF
210 NEXT i
220 END
