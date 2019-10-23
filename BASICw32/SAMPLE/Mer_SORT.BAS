100 REM Merge Sort マージソート
110 REM データを2等分し，それぞれを整列した後，小さいものから順に取ると整列が完成する。
120 REM 再帰呼び出しによって，細分を繰り返す。データ個数が1個になったら再帰を止める。
130 DECLARE EXTERNAL SUB MergeSort.sort
140 OPTION ARITHMETIC NATIVE
150 DIM m(100000)               ! 最大件数分の配列を確保
160 LET n=10000                 ! 実際のデータ件数
170 MAT m=ZER(n)                ! 配列の上限を件数に一致させる
180 FOR i=1 TO n                ! テスト用データの作成
190    LET m(i)=INT(RND*10000)
200 NEXT i
210 CALL sort(m,LBOUND(m),UBOUND(m))
220 MAT PRINT m;
230 END
240 
250 MODULE MergeSort
260 MODULE OPTION ARITHMETIC NATIVE
270 SHARE NUMERIC t(100000)       ! 作業用配列（最大件数分を確保）
280 EXTERNAL SUB sort(m(),a,b)
290    IF a<b THEN
300       LET c=INT((a+b)/2)
310       CALL sort(m,a,c)        ! 下半分を整列
320       CALL sort(m,c+1,b)      ! 上半分を整列
330       FOR i=a TO b            ! 作業用配列に移す
340          LET t(i)=m(i)
350       NEXT i
360       LET i=a                 ! 小さいものから順に書き戻す
370       LET j=c+1
380       FOR k=a TO b
390          IF j>b OR i<=c AND t(i)<t(j) THEN
400             LET m(k)=t(i)
410             LET i=i+1
420          ELSE
430             LET m(k)=t(j)
440             LET j=j+1
450          END IF
460       NEXT k
470    END IF 
480 END SUB
490 END MODULE

