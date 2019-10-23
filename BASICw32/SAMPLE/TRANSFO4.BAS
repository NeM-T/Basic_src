PICTURE House   
   SET AREA COLOR 15                           
   PLOT AREA:  0,1; 0,0; 2,0; 2,1                         ! 壁     
   SET AREA COLOR 2                   
   PLOT AREA: -0.6,1; 2.6,1; 2,2; 0,2                     ! 屋根             
   SET AREA COLOR 10
   PLOT AREA: 0.1,0; 0.1,0.8; 0.5,0.8; 0.5,0              ! ドア              
   SET AREA COLOR 5
   PLOT AREA: 1.4,0.4; 1.9,0.4; 1.9,0.8; 1.4,0.8          ! 窓 
   SET AREA COLOR 12
   PLOT AREA: 1.7,2; 1.7,2.3; 1.5,2.3; 1.5,2              ! 煙突
END PICTURE                                                
OPTION ANGLE DEGREES
! マウスで指示された点を中心として60°回転する.
! 変換の合成を利用する.
SET WINDOW -5,5,-5,5                                       
DRAW grid
DRAW House                                                
GET POINT: a,b
PLOT POINTS: a,b                                                 
DRAW House WITH SHIFT(-a,-b)*ROTATE(60)*SHIFT(a,b)
END                                                        
