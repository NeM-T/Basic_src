! MAT PLOT CELLS�́C�����`�̑Ίp�ʒu�ɂ��钸�_���w�肵�āC
! �����`��2�����z��Ŏw�肳�ꂽ�F�ɓh��B
! MAT PLOT CELLS���G��`���ɏ����ƁCDRAW���ŕό`���邱�Ƃ��ł���B

DECLARE EXTERNAL PICTURE p
OPTION BASE 0
DIM a(3,3)
FOR i=0 TO 3
   FOR j=0 TO 3
      LET  a(i,j)=1+i+j*4
   NEXT j
NEXT i 
SET WINDOW -2,2,-2,2
DRAW grid
DRAW p 
WAIT DELAY 1.5   !�@1.5�b�C�x�~
CLEAR
DRAW grid
DRAW p WITH SHEAR(pi/6)*ROTATE(pi/10)
PICTURE p
   MAT PLOT CELLS,IN 0,1;1,0 :a  
END PICTURE
END

