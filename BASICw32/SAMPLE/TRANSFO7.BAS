REM íºê¸y=axÇ…ä÷Ç∑ÇÈëŒèÃà⁄ìÆ
PICTURE House   
   SET AREA COLOR 15                           
   PLOT AREA:  0,1; 0,0; 2,0; 2,1                        ! ï«     
   SET AREA COLOR 2                   
   PLOT AREA: -0.6,1; 2.6,1; 2,2; 0,2                    ! âÆç™             
   SET AREA COLOR 10
   PLOT AREA: 0.1,0; 0.1,0.8; 0.5,0.8; 0.5,0             ! ÉhÉA              
   SET AREA COLOR 5
   PLOT AREA: 1.4,0.4; 1.9,0.4; 1.9,0.8; 1.4,0.8         ! ëã 
   SET AREA COLOR 12
   PLOT AREA: 1.7,2; 1.7,2.3; 1.5,2.3; 1.5,2             ! âåìÀ
END PICTURE                                                
INPUT PROMPT "a=":a
LET theta=ATN(a)
SET WINDOW -4,4,-4,4                                       
DRAW grid  
DRAW House
PLOT LINES:-4,a*(-4); 4,a*4   ! íºê¸y=ax
DRAW House WITH ROTATE(-theta)*SCALE(1,-1)*ROTATE(theta)
END                                                        
