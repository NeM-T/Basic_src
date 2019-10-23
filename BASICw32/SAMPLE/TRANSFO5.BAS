PICTURE House   
   SET AREA COLOR 15                           
   PLOT AREA:  0,1; 0,0; 2,0; 2,1                        ! 壁     
   SET AREA COLOR 2                   
   PLOT AREA: -0.6,1; 2.6,1; 2,2; 0,2                    ! 屋根             
   SET AREA COLOR 10
   PLOT AREA: 0.1,0; 0.1,0.8; 0.5,0.8; 0.5,0             ! ドア              
   SET AREA COLOR 5
   PLOT AREA: 1.4,0.4; 1.9,0.4; 1.9,0.8; 1.4,0.8         ! 窓 
   SET AREA COLOR 12
   PLOT AREA: 1.7,2; 1.7,2.3; 1.5,2.3; 1.5,2             ! 煙突
END PICTURE                                                
! 複素数α=a+biを用いて,変換 z→αz を実行する。
INPUT PROMPT "a,b=":a,b
LET theta=angle(a,b)
LET r=SQR(A^2+B^2)
SET WINDOW -10,10,-10,10                                       
DECLARE EXTERNAL PICTURE axes                              
DRAW grid  
DRAW House WITH SCALE(r)*ROTATE(theta)
END                                                        
