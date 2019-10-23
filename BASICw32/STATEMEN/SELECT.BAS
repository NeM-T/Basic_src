INPUT PROMPT "month=":m
SELECT CASE m
CASE 1,3,5,7,8,10,12
   LET n=31
CASE 4,6,9,11
   LET n=30
CASE 2
   LET n=28
END SELECT
PRINT n;"days"
! 1から12までの整数以外を入力すると，「一致するcase区がない」のエラーになります。
END

