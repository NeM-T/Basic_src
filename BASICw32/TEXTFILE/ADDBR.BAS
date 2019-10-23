REM TEXTファイルを<BR>つきのHTML文書に変換
FILE GETNAME f$, "TXT"
print f$
FILE SPLITNAME (f$) path$, name$, ext$

OPEN #1: NAME f$
OPEN #2: NAME path$ & name$ & ".HTM"
ERASE #2         ! 上書き確認をしないので注意
PRINT #2: "<HTML> <BODY>"
DO          
   LINE INPUT #1, IF MISSING THEN EXIT DO: s$
   PRINT #2: s$ & "<BR>"
LOOP
CLOSE #1
PRINT "</BODY> </HTML>"
CLOSE #2
PRINT "終了"
END


