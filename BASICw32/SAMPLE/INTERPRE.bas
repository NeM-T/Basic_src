1000 REM Full BASICのモジュールの使い方を示すサンプル
1010 REM
1020 REM 数値式の評価を行う
1030 REM 組込み関数は，SIN，COS，TAN, LOG, EXP, SQR, INT，ABSとPIのみ
1040 REM 大文字と小文字の区別はしない
1050 REM 数値式の文法はほぼFull BASICに準ずるが，関数名に続く括弧は空白を入れずに書く。
1060 REM 数値は，数字で始まり，コンマを1個以下含む数字の列としてのみ書ける。
1070 REM 零除算エラーなどは考慮していない。
1080 DECLARE EXTERNAL FUNCTION interpreter.expression  ! 数値式を評価する関数 
1090 DECLARE EXTERNAL STRING interpreter.s$            ! 入力行
1100 DECLARE EXTERNAL NUMERIC interpreter.i            ! 入力行の文字位置
1110 DECLARE EXTERNAL SUB interpreter.skip             ! 空白文字を読み飛ばす副プログラム 
1120 LINE INPUT s$
1130 LET s$=UCASE$(s$)
1140 LET i=1
1150 CALL skip
1160 PRINT expression 
1170 IF i<LEN(s$) THEN PRINT "Syntax error"
1180 END
1190 !
1200 MODULE interpreter 
1210 PUBLIC STRING s$
1220 PUBLIC NUMERIC i
1230 PUBLIC FUNCTION expression
1240 PUBLIC SUB skip
1250 SHARE FUNCTION term,factor,primary,numeric
1260 !
1270 EXTERNAL SUB skip
1280    DO WHILE s$(i:i)=" "
1290       LET i=i+1
1300    LOOP
1310 END SUB
1320 !
1330 EXTERNAL FUNCTION expression 
1340    DECLARE NUMERIC n
1350    DECLARE STRING op$
1360    SELECT CASE s$(i:i)
1370    CASE "-"
1380       LET i=i+1
1390       CALL skip
1400       LET n=-term
1410    CASE "+"
1420       LET i=i+1
1430       CALL skip
1440       LET n=term
1450    CASE ELSE 
1460       LET n=term
1470    END SELECT
1480    DO WHILE s$(i:i)="+" OR s$(i:i)="-"
1490       LET op$=s$(i:i)
1500       LET i=i+1
1510       CALL skip
1520       IF op$="+" THEN LET n=n+term ELSE LET n=n-term
1530    LOOP
1540    LET expression =n
1550    CALL skip
1560 END FUNCTION
1570 !
1580 EXTERNAL FUNCTION term
1590    DECLARE NUMERIC n
1600    DECLARE STRING op$
1610    LET n=factor
1620    DO WHILE s$(i:i)="*" OR s$(i:i)="/"
1630       LET op$=s$(i:i)
1640       LET i=i+1
1650       CALL skip
1660       IF op$="*" THEN LET n=n*factor ELSE LET n=n/factor
1670    LOOP
1680    LET term=n
1690 END FUNCTION
1700 !
1710 EXTERNAL FUNCTION factor
1720    DECLARE NUMERIC n
1730    LET n=primary
1740    DO WHILE s$(i:i)="^" 
1750       LET i=i+1
1760       CALL skip
1770       LET n=n^primary 
1780    LOOP
1790    LET factor=n
1800 END FUNCTION
1810 !
1820 EXTERNAL FUNCTION primary
1830    IF s$(i:i)>="0" AND s$(i:i)<="9" THEN
1840       LET  primary=NUMERIC
1850    ELSEIF s$(i:i+1)="PI" THEN
1860       LET i=i+2
1870       CALL SKIP
1880       LET primary=PI
1890    ELSE
1900       IF s$(i:i)="(" THEN
1910          LET i=i+1
1920          CALL SKIP
1930          LET  primary=expression
1940       ELSEIF s$(i:i+3)="SIN(" THEN
1950          LET i=i+4
1960          CALL SKIP
1970          LET Primary=SIN(expression)
1980       ELSEIF s$(i:i+3)="COS(" THEN
1990          LET i=i+4
2000          CALL SKIP
2010          LET Primary=COS(expression)
2020       ELSEIF s$(i:i+3)="TAN(" THEN
2030          LET i=i+4
2040          CALL SKIP
2050          LET Primary=TAN(expression)
2060       ELSEIF s$(i:i+3)="LOG(" THEN
2070          LET i=i+4
2080          CALL SKIP
2090          LET Primary=LOG(expression)
2100       ELSEIF s$(i:i+3)="EXP(" THEN
2110          LET i=i+4
2120          CALL SKIP
2130          LET Primary=EXP(expression)
2140       ELSEIF s$(i:i+3)="SQR(" THEN
2150          LET i=i+4
2160          CALL SKIP
2170          LET Primary=SQR(expression)
2180       ELSEIF s$(i:i+3)="INT(" THEN
2190          LET i=i+4
2200          CALL SKIP
2210          LET Primary=INT(expression)
2220       ELSEIF s$(i:i+3)="ABS(" THEN
2230          LET i=i+4
2240          CALL SKIP
2250          LET Primary=ABS(expression)
2260       ELSE 
2270          PRINT "Syntax error"
2280          STOP
2290       END IF
2300       IF s$(i:i)=")" THEN
2310          LET i=i+1
2320          CALL skip
2330       ELSE
2340          PRINT "Syntax error"
2350          STOP
2360       END IF
2370    END IF 
2380 END FUNCTION
2390 !
2400 EXTERNAL FUNCTION numeric
2410    DECLARE NUMERIC i0
2420    CALL skip
2430    LET i0=i
2440    DO WHILE s$(i:i)>="0" AND s$(i:i)<="9" 
2450       LET i=i+1
2460    LOOP
2470    IF s$(i:i)="." THEN LET i=i+1
2480    DO WHILE s$(i:i)>="0" AND s$(i:i)<="9" 
2490       LET i=i+1
2500    LOOP
2510    LET numeric=VAL(s$(i0:i-1))
2520    CALL skip
2530 END FUNCTION
2540 !
2550 END MODULE
