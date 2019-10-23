100 ! 相手からの返信を待って1行ずつ送信する例です。
110 ! 実験するときは，2台のPCをケーブルでつなぎ，
120 ! 相手のPCでhost.basを実行してから実行してください。
130 ! 空文字列を入力すると終了します(180行)
140 OPEN #1: NAME "COM1"
150 SET #1: ENDOFLINE CHR$(13)   
160 DO 
170    LINE INPUT s$
180    IF s$="" THEN EXIT DO
190    PRINT #1:s$
200    LINE INPUT #1: s$
210    PRINT s$ 
220 LOOP
230 END
