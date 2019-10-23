REM ���l���̕]�����s���葱����`�̃T���v��
REM JIS�K�i�O�̖��� LOCAL ��p���Ă���B
REM LOCAL�͓����葱���̋Ǐ��ϐ���錾����B
REM
REM x�̐����������ƁC-8��x��8�͈̔͂ŃO���t��`��
REM �g���݊֐��́CSIN�CCOS�CTAN, LOG, EXP, SQR, INT�CABS��PI�̂�
REM �啶���Ə������̋�ʂ͂��Ȃ�
REM ���@�͂ق�Full BASIC�ɏ����邪�C�֐����ɑ������ʂ͋󔒂���ꂸ�ɏ����B
REM ��O�������s���Ă���̂�1/x��x^x�̃O���t�Ȃǂ�������B
OPTION ARITHMETIC NATIVE                     ! 2�i���Z��I��
DECLARE EXTERNAL FUNCTION eval
DECLARE NUMERIC x, a, b, left, right, bottom, top
DECLARE STRING s$
LINE INPUT s$
LET left=-8
LET right=8
LET bottom=-8
LET top=8
SET POINT STYLE 1
SET WINDOW left,right,bottom,top
ASK PIXEL SIZE (left, bottom; right, top) a,b
DRAW grid
FOR x=left TO right STEP (right-left)/(a-1)/50   ! ������50�̐��l���傫���قǐ��m�ȃO���t�������邪�x���Ȃ�
   WHEN EXCEPTION IN 
      PLOT POINTS:x,eval(s$,x)
   USE
   END WHEN
NEXT x
END

EXTERNAL FUNCTION eval(s$,x)
OPTION ARITHMETIC NATIVE         ! 2�i���Z��I��
DECLARE FUNCTION expression      ! ���l����]������֐� 
DECLARE FUNCTION numeric, term, factor, primary 
DECLARE SUB SKIP                 ! �󔒕�����ǂݔ�΂����v���O���� 
DECLARE NUMERIC i                ! �����ʒu
LET s$=UCASE$(s$)                ! ���ׂđ啶���ɕϊ�
LET i=1
CALL skip
LET eval=expression 
IF i<LEN(s$) THEN PRINT "Syntax error"

SUB skip
   DO WHILE s$(i:i)=" "
      LET i=i+1
   LOOP
END SUB

FUNCTION expression 
   LOCAL n 
   LOCAL op$
   SELECT CASE s$(i:i)
   CASE "-"
      LET i=i+1
      CALL skip
      LET n=-term
   CASE "+"
      LET i=i+1
      CALL skip
      LET n=term
   CASE ELSE 
      LET n=term
   END SELECT
   DO WHILE s$(i:i)="+" OR s$(i:i)="-"
      LET op$=s$(i:i)
      LET i=i+1
      CALL skip
      IF op$="+" THEN LET n=n+term ELSE LET n=n-term
   LOOP
   LET expression =n
   CALL skip
END FUNCTION

FUNCTION term
   LOCAL n
   LOCAL op$
   LET n=factor
   DO WHILE s$(i:i)="*" OR s$(i:i)="/"
      LET op$=s$(i:i)
      LET i=i+1
      CALL skip
      IF op$="*" THEN LET n=n*factor ELSE LET n=n/factor
   LOOP
   LET term=n
END FUNCTION

FUNCTION factor
   LOCAL n
   LET n=primary
   DO WHILE s$(i:i)="^" 
      LET i=i+1
      CALL skip
      LET n=n^primary 
   LOOP
   LET factor=n
END FUNCTION

FUNCTION primary
   IF s$(i:i)>="0" AND s$(i:i)<="9" THEN
      LET  primary=NUMERIC
   ELSEIF s$(i:i+1)="PI" THEN
      LET i=i+2
      CALL SKIP
      LET primary=PI
   ELSEIF s$(i:i)="X" THEN
      LET i=i+1
      CALL SKIP
      LET primary=x
   ELSE
      IF s$(i:i)="(" THEN
         LET i=i+1
         CALL SKIP
         LET  primary=expression
      ELSEIF s$(i:i+3)="SIN(" THEN
         LET i=i+4
         CALL SKIP
         LET Primary=SIN(expression)
      ELSEIF s$(i:i+3)="COS(" THEN
         LET i=i+4
         CALL SKIP
         LET Primary=COS(expression)
      ELSEIF s$(i:i+3)="TAN(" THEN
         LET i=i+4
         CALL SKIP
         LET Primary=TAN(expression)
      ELSEIF s$(i:i+3)="LOG(" THEN
         LET i=i+4
         CALL SKIP
         LET Primary=LOG(expression)
      ELSEIF s$(i:i+3)="EXP(" THEN
         LET i=i+4
         CALL SKIP
         LET Primary=EXP(expression)
      ELSEIF s$(i:i+3)="SQR(" THEN
         LET i=i+4
         CALL SKIP
         LET Primary=SQR(expression)
      ELSEIF s$(i:i+3)="INT(" THEN
         LET i=i+4
         CALL SKIP
         LET Primary=INT(expression)
      ELSEIF s$(i:i+3)="ABS(" THEN
         LET i=i+4
         CALL SKIP
         LET Primary=ABS(expression)
      ELSE 
         PRINT "Syntax error"
         STOP
      END IF
      IF s$(i:i)=")" THEN
         LET i=i+1
         CALL skip
      ELSE
         PRINT "Syntax error"
         STOP
      END IF
   END IF 
END FUNCTION
 
FUNCTION numeric
   LOCAL i0
   CALL skip
   LET i0=i
   DO WHILE s$(i:i)>="0" AND s$(i:i)<="9" 
      LET i=i+1
   LOOP
   IF s$(i:i)="." THEN LET i=i+1
   DO WHILE s$(i:i)>="0" AND s$(i:i)<="9" 
      LET i=i+1
   LOOP
   LET numeric=VAL(s$(i0:i-1))
   CALL skip
END FUNCTION

END FUNCTION

