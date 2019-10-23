! WHEN行とUSE行にはさまれた行で実行時エラー（例外という）が発生すると，
! USE行とEND WHEN行にはさまれた部分に制御が移る。
! エラーにならなければ、USE行とEND WHEN行の間の部分は実行されない。
SET WINDOW -4,4,-4,4
DRAW AXES
FOR x=-4 TO 4 step 0.01
   WHEN EXCEPTION IN
      PLOT LINES: x,1/x;
   USE
      PLOT LINES
   END WHEN
NEXT x
END


