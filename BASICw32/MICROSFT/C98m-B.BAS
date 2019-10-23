1   REM センター試験1998追試数学B
2   REM Microsoft BASIC互換モードで実行してください 
110 INPUT "n=";N
120 FOR A=1 TO N-1
130   FOR B=1 TO N-1
140     C=A*B
150     D=C-INT(C/N)*N
160     PRINT D;
170   NEXT B
180   PRINT
190 NEXT A
200 END

