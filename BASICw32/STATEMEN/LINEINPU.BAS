! LINE INPUT文を用いると，文字列変数に入力行の内容がそのまま代入される。
! 空文字列や，コンマを含む文字列も代入できる。
LINE INPUT A$
PRINT A$,LEN(A$)
END

