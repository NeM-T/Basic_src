REM 2地点の緯度(latitude)，経度(longitude)から２地点間の地表面に沿った距離を求める.
REM 緯度は北緯を正の数，南緯を負の数，
REM 経度は東経を正の数，西経を負の数で与える。
REM 地球は赤道から北極まで経線に沿う距離が10000kmの真球であると仮定する。
OPTION ANGLE DEGREES
DECLARE NUMERIC lat1,lat2,long1,long2,DOT,a,d
INPUT lat1,long1,lat2,long2
LET a=ACOS(COS(lat1)*COS(lat2)*COS(long1-long2)+SIN(lat1)*SIN(lat2))
PRINT "中心角",a;"°"
LET d=10000*a/90
PRINT "距離",d;"km"
END

