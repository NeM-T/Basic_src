OPTION ARITHMETIC COMPLEX
! SQR(z)はzの平方根(2つある)のうち，
! 偏角が-90°より大で90°以下であるもの。
! zの平方根は，SQR(z)と-SQR(z)の2つである。
LET i=SQR(-1)
LET z=3+4*i
PRINT SQR(z)
PRINT SQR(z)^2
PRINT SQR(z^2)
END

