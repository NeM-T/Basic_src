OPTION ARITHMETIC COMPLEX
PICTURE House   
   SET AREA COLOR 15                           
   PLOT AREA:  0,1; 0,0; 2,0; 2,1                          ! ��     
   SET AREA COLOR 2                   
   PLOT AREA: -0.6,1; 2.6,1; 2,2; 0,2                    ! ����             
   SET AREA COLOR 10
   PLOT AREA: 0.1,0; 0.1,0.8; 0.5,0.8; 0.5,0              ! �h�A              
   SET AREA COLOR 5
   PLOT AREA: 1.4,0.4; 1.9,0.4; 1.9,0.8; 1.4,0.8         ! �� 
   SET AREA COLOR 12
   PLOT AREA: 1.7,2; 1.7,2.3; 1.5,2.3; 1.5,2              ! ����
END PICTURE                                                
SET WINDOW -5,5,-5,5                                       
DECLARE EXTERNAL PICTURE axes                              
DRAW axes                                                  
DRAW House       
LET i=SQR(-1)                                          
DRAW House WITH SHIFT(1-2*i)                    
END                                                        