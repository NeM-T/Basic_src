OPTION ARITHMETIC COMPLEX
! LOG(z)はzの自然対数
! LOG(z)の実部はLOG(ABS(z))，虚部はARG(z)となる。
! ただし，偏角ARG(z)の単位はラジアンである。
! また,虚部は，-πより大で，π以下。
LET i=SQR(-1)
LET z=1+i
PRINT LOG(z)
PRINT LOG(ABS(z));ARG(z)
END

