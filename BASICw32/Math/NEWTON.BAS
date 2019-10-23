! ニュートン法によって平方根を求める。
DEF f(x)=x^2-a
DEF g(x)=2*x    ! g(x)=f'(x)
INPUT a
LET x=a
LET E=EPS(1)*10
DO 
   LET x1=x-f(x)/g(x)
   PRINT x1
   IF ABS((x1-x)/x)<E THEN EXIT DO
   LET x=x1
LOOP
END
 

