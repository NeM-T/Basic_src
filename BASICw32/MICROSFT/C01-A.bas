10  REM 2001�N�Z���^�[���� ���wA
20  REM �I�v�V�������j���[���當�@
30  REM Microsoft BASIC�݊���I�����Ă������� 
100 INPUT "X=";X
110 INPUT "n=";N
120 Y=1
130 X=X*X
140 IF N-2*INT(N/2)=0 THEN GOTO 160
150 Y=Y*X
160 N=INT(N/2)
170 IF N=0 THEN GOTO 190
180 GOTO 140
190 PRINT "Y=";Y
200 END
    
