1  REM �Z���^�[����1997���wA
2  REM Microsoft BASIC�݊����[�h�Ŏ��s���Ă������� 
10 INPUT "N= ";N
20 FOR I=1 TO N
30   J=I*I
40   K=N-J
50   PRINT "K= ";K
60   IF K<=0 THEN GOTO 80
70 NEXT I
80 IF K<0 THEN GOTO 110
90 PRINT "YES";N;" = ";I;" * ";I
100 GOTO 120
110 PRINT "NO"
120 END  
