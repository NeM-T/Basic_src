! Nicomedes' conchoid
! 極方程式に定義できない点を含み、その近くで値が無限大になるとき、
! plot lines文で線分をつないで曲線を描く方法では、
! 注意深くﾌﾟﾛｸﾞﾗﾑしないと余分な線が描かれてしまうことがある。
! しかし、度数法(60分法)と例外処理を利用すると、簡単に解決できることがある。
! angle選択子が degrees になっていると、
! sec(x)は正確にx=90,270,…で例外を引き起こす。
OPTION ANGLE DEGREES
DEF p(t)=sec(t)+2
SET WINDOW -4,4,-4,4
DRAW grid
FOR t=0 TO 360
   WHEN EXCEPTION IN
      LET r=p(t)
      PLOT LINES: r*cos(t),r*sin(t);
   USE
      PLOT LINES
   END WHEN
NEXT t
END

