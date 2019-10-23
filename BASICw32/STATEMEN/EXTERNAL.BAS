DECLARE EXTERNAL FUNCTION C    ! 主プログラムで外部関数Cを用いることの宣言
INPUT n,r
PRINT C(n,r)
END
EXTERNAL FUNCTION C(n,r)       ! 外部関数定義
IF r=0 OR r=n THEN  LET C=1 ELSE LET C=C(n-1,r-1)+C(n-1,r)
END FUNCTION
 


