REM �z������̎g�p��
REM ���s�񎮂�p���čs�񎮂��v�Z����B
REM ���̎Z�@�́C�s��̎����������Ȃ�ƌ�������������B
DECLARE EXTERNAL FUNCTION determinant
DECLARE NUMERIC s
DIM A(10,10)      ! �傫�߂̔z���p��
DATA 4                  ! �s��̎���
DATA   3,  9, 12, -6
DATA   1,  3,  4,  5
DATA   5,  6, 11,-37
DATA   1,  5, -4,  2
READ s
MAT READ A(s,s)
PRINT determinant(A)
END
EXTERNAL FUNCTION determinant(A(,))
DECLARE NUMERIC i,j,k,l,n,sum
DIM D(9,9)
LET n=UBOUND(A,1)  
! LBOUND(A,1)=LBOUND(A,2)=1, UBOUND(A,1)=UBOUND(A,2)�Ɖ���
IF n=1 THEN
   LET determinant=a(1,1)
ELSE
   MAT D=ZER(n-1,n-1)
   LET sum=0
   FOR j=1 TO n
   ! (1,j)�������������s��D�����
      FOR k=1 TO n-1   
         FOR l=1 TO n-1
            IF l<j THEN   
               LET  D(k,l)=A(k+1,l)
            ELSE
               LET  D(k,l)=A(k+1,l+1)
            END IF
         NEXT l
      NEXT k
      ! �]�����Ƃ̐ς����Z����
      LET sum=sum+A(1,j)*(-1)^(1+j)*determinant(D)
   NEXT j
   LET determinant=sum
END IF
END FUNCTION
 
