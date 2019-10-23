DECLARE EXTERNAL SUB sort
DIM a(10)
DATA 4,1,7,5,10,5,3,5,2,6
MAT READ a
CALL sort(a)
MAT PRINT a;
END

! MERGE文は，翻訳時に，プログラムの末尾に指定されたファイルに含まれるテキストを追加する。
! プログラムの実行が終わると，追加されたテキストは削除される。
! MERGE文は，プログラム単位，あるいはモジュールの外に書く。
! MERGE文には，追加して翻訳したいテキストを収めたファイルの名前を引用符で囲んで指定する。
! MERGE文は，カレントディレクトリ，BASICが起動したディレクトリのUserLibサブディレクトリ，
! Libraryサブディレクトリの順に指定されたファイルを検索する。 
! 複数のファイルを指定したいときは，一つのファイルごとに一行のMERGE文を書く。
! mergeされるテキストがMERGE文を含んでもよい。
! MERGE文はJIS規格外の独自拡張なので取り扱いに注意。
MERGE "SORT1.LIB"      ! SORT1.LIBに SUB sort の定義部が収納されている。

