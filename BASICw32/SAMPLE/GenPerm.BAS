REM n個の文字からr取り出して並べる順列をすべて生成する
INPUT n,r
LET s$="abcdefghijklmnopqrstuvwxyz"
LET s$=s$(1:n)
PRINT s$ ; " から" ; r ; "文字を取って並べる順列"
DECLARE EXTERNAL SUB perm
CALL perm(#0, "", s$, r)
! 出力先をファイルに変えることができます
! OPEN #1: "A:permutations.txt"  ! ファイル名は適宜修正する
! ERASE #1
! CALL perm(#1, "", s$,r)
! CLOSE #1
END
EXTERNAL SUB perm(#1, p$, s$, r)
DECLARE STRING t$
DECLARE NUMERIC i,s
IF r=0 THEN
   PRINT #1: p$
ELSE
   LET s=LEN(s$)
   FOR i=1 TO s
      LET t$=s$(1:i-1)&s$(i+1:s)
      CALL perm(#1, p$ & s$(i:i), t$, r-1)
   NEXT i
END IF
END SUB