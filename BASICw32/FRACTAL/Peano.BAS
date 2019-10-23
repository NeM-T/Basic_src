! ペアノ曲線
!  JISの規定では，絵定義に入るときと絵定義から出るときに，PLOT LINES文に係わる描点(beam)の状態がオフになることになっている。
!  SET BEAM MODE "IMMORTAL" は，JISのこの規定を無効にする。
OPTION ANGLE DEGREES
PICTURE Peano(n)
   IF n=1 THEN
      PLOT LINES:  1.0, 0.3333 ;  
      WAIT DELAY 0.01                 ! 0.01秒だけ休む 
   ELSE
      DRAW Peano(n-1) WITH SCALE(1/2)   
      DRAW Peano(n-1) WITH SCALE(1/2)*ROTATE(90)*SHIFT(1,0)
      DRAW Peano(n-1) WITH SCALE(1/2)*ROTATE(-90)*SHIFT(1,1)
      DRAW Peano(n-1) WITH SCALE(1/2)*SHIFT(1,0)
   END IF   
END PICTURE
SET WINDOW 0,2,0,2
SET BEAM MODE "IMMORTAL"
DRAW Peano(7)
END
