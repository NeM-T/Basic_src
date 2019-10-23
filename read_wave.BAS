INPUT filepath$ !waveファイルの絶対パスをファイル名含めて入力
OPEN #1:NAME filepath$
OPTION CHARACTER BYTE

SUB nam (n,b$) !名称読み込み
   LET b$=""
   FOR x=1 TO n
      CHARACTER INPUT #1:a$
      LET b$=b$&a$
   NEXT x
   PRINT b$
END SUB 

SUB nom(n,a) !数字読み込み
   FOR x=1 TO n
      CHARACTER INPUT #1:a$
      LET a=a+256^(x-1)*ORD(a$)
   NEXT x
   PRINT a
END SUB 


!4 byte	R' 'I' 'F' 'F'	RIFFヘッダ	　
!4 byte	これ以降のファイルサイズ (ファイルサイズ - 8)	　	　
!4 byte	W' 'A' 'V' 'E'	WAVEヘッダ	RIFFの種類がWAVEであることをあらわす
!4 byte	f' 'm' 't' ' ' (←スペースも含む)	fmt チャンク	フォーマットの定義
!4 byte	バイト数	fmt チャンクのバイト数	リニアPCM ならば 16(10 00 00 00)
!2 byte	フォーマットID	参照	リニアPCM ならば 1(01 00)
!2 byte	チャンネル数	　	モノラル ならば 1(01 00)  ステレオ ならば 2(02 00)
!4 byte	サンプリングレート	Hz	44.1kHz ならば 44100(44 AC 00 00)
!4 byte	データ速度 (Byte/SEC)	　	44.1kHz 16bit ステレオ ならば 44100×2×2 = 176400(10 B1 02 00)
!2 byte	ブロックサイズ (Byte/sample×チャンネル数)	　	16bit ステレオ ならば 2×2 = 4(04 00)
!2 byte	サンプルあたりのビット数 (bit/sample)	WAV フォーマットでは 8bit か 16bit	16bit ならば 16(10 00)
!2 byte	拡張部分のサイズ	　	リニアPCMならば存在しない
!n byte	拡張部分	　	リニアPCMならば存在しない
!4 byte	d' 'a' 't' 'a'	data チャンク 参照	　
!4 byte	バイト数n	波形データのバイト数	　
!n byte	波形データ	参照


CALL nam(4,rift$)
CALL nom(4,SIZE)
CALL nam(4,wave$)
CALL nam(4,fmt$)
CALL nom(4,fmt_size)
CALL nom(2,ID)
CALL nom(2,CHANNEL)
CALL nom(4,f)!f=周波数
CALL nom(4,v)!v=速度
CALL nom(2,brock)
CALL nom(2,bit_s)

IF NOT ID=1 THEN !拡張部がある場合。とりあえず無視
!CALL nom(2,nom_kaku)
!CALL 
END IF 

CALL nam(4,data$)
CALL nom(4,byt_nami)

LET dataq = byt_nami/4

DO 
   LET a = 0
   LET b = 0
   LET w=w+1
   FOR x=1 TO 2
      CHARACTER INPUT #1:a$
      LET a=a+256^(x-1)*ORD(a$)
   NEXT x
   IF a=>2^15 THEN LET a=a-2^16
   FOR x=1 TO 2
      CHARACTER INPUT #1:a$
      LET b = b + 256^(x-1)*ORD(a$)
   NEXT x
   IF b=>2^15 THEN LET b=b-2^16
   PRINT w, a, b
LOOP UNTIL w=> dataq

END
