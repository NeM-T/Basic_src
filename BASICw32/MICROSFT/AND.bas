10 REM Microsoft��AND���Z��JIS��AND�Ƃ̈Ⴂ�������v���O����
15 REM JIS��AND�͐����ړI�Ƃ������̂ł����CMicrosoft��AND�͐����ɑ΂���r�b�g���Z�ł��B
20 REM Microsoft BASIC�ł́C200�s�ŁCj=0�̂Ƃ��ɂ��CA(j)>b���e�X�g����܂��B
30 REM JIS���[�h��Microsoft���[�h�Ƃɐ؂�ւ��Ď��s���Ă݂Ă��������B
100 REM �}���\�[�g
110 DATA 58,19,40,28,79,45,38,16,30,52
120 OPTION BASE 0
130 DIM a(10)
140 FOR k=0 TO 9
150    READ a(k)
160 NEXT k
170 FOR i=1 TO 9 
180    LET b=a(i)
190    LET j=i-1
200    DO WHILE j>=0 AND a(j)>b
210       LET a(j+1)=a(j)
220       LET j=j-1
230    LOOP
240    LET a(j+1)=b
250    FOR k=0 TO 9
260       PRINT a(k);
270    NEXT k
280    PRINT
290 NEXT i
300 END
     
