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
SET WINDOW -5,5,-5,5                                       
DRAW grid                                                
DRAW House                                                 
DRAW House WITH SHEAR(PI/6)*ROTATE(PI/3)*SHIFT(4,1)                    
END                                                        
