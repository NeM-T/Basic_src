! △ＡＢＣの３辺の長さa,b,cを入力すると、角Ａの大きさを答えるプログラム。
! ACOS(x)は、cosθ=xとなるθを表す.
! OPTION ANGLE DEGREES を書いたとき、0≦θ≦180 である。
OPTION ANGLE DEGREES
INPUT a,b,c
PRINT ACOS((b^2+c^2-a^2)/2/b/c)
END



