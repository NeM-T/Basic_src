! モジュールによる変数の共有の例
DECLARE EXTERNAL FUNCTION abc.f1, abc.f2  
PRINT f1;f2;f2;f2;f1
END
MODULE abc            ! モジュール
PUBLIC FUNCTION f1,f2 ! f1とf2をモジュール外部から呼べるように宣言する
SHARE NUMERIC x       ! モジュール内の共有変数
LET x=50
EXTERNAL FUNCTION f1
   LET f1=x
   LET x=x-1
END FUNCTION
EXTERNAL FUNCTION f2
   LET f2=x
   LET x=x+1
END FUNCTION
END MODULE   
 
 
