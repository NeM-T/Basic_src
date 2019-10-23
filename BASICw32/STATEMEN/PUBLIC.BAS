DECLARE EXTERNAL NUMERIC m1.a             !モジュールm1で宣言されたpublic変数aを主プログラムから参照する宣言。
DECLARE EXTERNAL NUMERIC m1.b(), m1.c(,)  !配列を参照する場合には，空の括弧と，次元を示すためのコンマを書く。
DECLARE EXTERNAL SUB m1.initialize        !モジュールm1に含まれる外部副プログラムinitialzeを利用することの宣言 
CALL initialize
PRINT a
MAT PRINT b
MAT PRINT c
END

MODULE m1
PUBLIC NUMERIC a, b(4), c(2,2)            ! public変数の宣言
EXTERNAL SUB initialize
   DATA 1,2,3,4
   MAT READ b
   DATA 6,7,8,9
   MAT READ c
   LET a=PI/4
END SUB
END MODULE

