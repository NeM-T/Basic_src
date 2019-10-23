LET e=exp(1)
PRINT "part1"
FOR i=1 TO 16
   LET n=10^i
   LET x=(1+1/n)^n
   PRINT n,x,x-e
NEXT i
PRINT "part2"
FOR i=1 TO 53
   LET n=2^i
   LET x=(1+1/n)^n
   PRINT n,x,x-e
NEXT i 
END
! Q. part1 ではnが大きくなるにつれてきれいにeに近づいていくのに，
!    part2 ではnが大きくなると逆にeから離れていってしまいます。
! A. 数値を十進小数で近似するために，
!    part2では，1+1/n が正確に表現できないのが原因です。
!    べき乗の演算では，xに誤差aを含むとき、
!　　(x+a)^n=x^n + n*x^(n-1)*a + …
!    となりますから，
!    nが大きな数のとき,誤差aの影響が無視できなくなります。
!    このプログラムを十進モードと2進モードのそれぞれで実行してみると，
!    その違いがわかると思います。
