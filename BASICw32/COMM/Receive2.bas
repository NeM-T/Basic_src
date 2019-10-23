! CHARACTER INPUT文を利用してCOM1から文字単位で受信するサンプルプログラムです。
! このプログラムを実行後，相手側から送信してください。
OPEN #1: NAME "COM1"    
DO
   CHARACTER INPUT #1: S$
   PRINT S$;
LOOP
CLOSE #1
END

