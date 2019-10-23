OPTION ARITHMETIC COMPLEX
OPTION ANGLE DEGREES 
! arg(z)はzの偏角(argument)
! arg関数はANGLE選択子の影響を受けます。
! 結果は，-180°より大きく，180°以下です。
LET i=SQR(-1)
PRINT ARG(1);ARG(i);ARG(-1);ARG(-i)
END

