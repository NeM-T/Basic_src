100 ! ‰~Žü—¦ƒÎ‚Ì‹ßŽ—’l‚ð‰ÁŒ¸æœ‚Æ•½•ûª‚Ì‰‰ŽZ‚Ì‚Ý‚Å‹‚ß‚é
110 LET c=0  ! cos(pi/2)
120 LET s=1  ! sin(pi/2)
130 FOR k=2 TO 30
140    LET c=SQR((1+c)/2)
150    LET s=s/2/c
160    LET t=s/c
170    PRINT k,2^k*s*c,2^k*t
180 NEXT k   
190 END
