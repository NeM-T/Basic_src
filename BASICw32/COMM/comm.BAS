! COMポートによる送受信のテストプログラムです。
! あらかじめCOMポートの通信条件をWindowsのコントロールパネルで設定してください。
! 相手方に同じプログラムを使うとき，改行には，Ctrl-Enterを打ってください。
SET ECHO "OFF"         
OPEN #1 :NAME "COM1"    ! "COM1"の部分は実際に使用するポートに合わせてください
DO
   ASK #1: CHARACTER PENDING N           ! COMポートの受信バッファにある文字数をNに代入
   IF N>0 THEN               
      CHARACTER INPUT #1: S$       
      PRINT S$;
   END IF
   ASK CHARACTER PENDING N               ! キー入力バッファにある文字数をNに代入       
   IF N>0 THEN
      CHARACTER INPUT S$
      PRINT #1:S$;
   END IF
   WAIT DELAY 0.01                       ! 0.01秒休む
LOOP 
CLOSE #1  
END

