1 ' N88-BASIC�̕`�施��
2 ' �I�v�V�������j���[���� ���@
3 ' Microsoft BASIC�݊� ��I�����Ă�������
100 SCREEN 3 : CLS 3
110 WINDOW(-1,-1)-(1,1/4)
120 LINE (-1,0)-(1,0) : LINE (0,-1)-(0,1/4)
130 COLOR ,,, 2
140 PSET (-1,-1)
150 FOR X=-1 TO 1 STEP 0.01
160  Y=X^2
170  LINE -(X,-Y)
180 NEXT X
190 END
