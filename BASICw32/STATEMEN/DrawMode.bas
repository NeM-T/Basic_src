! SET DRAW MODE HIDDEN , SET DRAW MODE EXPLICIT��JIS�K�i�O�̓Ǝ�����
! SET DRAW MODE HIDDEN�����s����ƁC�Ȍ�̕`��͉�ʂɔ��f����Ȃ�
! SET DRAW MODE EXPLICIT�����s����ƁC�`�挋�ʂ���ʂɔ��f�����C�܂��C�Ȍ�C�`��Ɠ����ɉ�ʂɔ��f������

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
SET WINDOW -4,6,-4,6                                       
DECLARE EXTERNAL PICTURE axes                              
FOR t=0 TO 1 STEP 0.002
   SET DRAW mode hidden                                                
   clear
   DRAW axes                                                  
   DRAW House WITH SHEAR(PI/4 *t )*ROTATE(PI/3 *t )*SHIFT(4*t,t)                    
   SET DRAW mode explicit
NEXT t
END                                                        


