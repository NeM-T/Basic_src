! randomize文は乱数の系列の初期値を実行のたびごとに異なったものとする。
! このプログラムは、実行のたびごとに異なった乱数が得られる。
RANDOMIZE
FOR i=1 TO 10
   PRINT INT(RND*6+1);
NEXT i
PRINT
END

