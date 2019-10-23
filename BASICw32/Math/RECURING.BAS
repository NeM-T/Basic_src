100 REM a/bを循環小数に直す 
110 REM ただし，a<bとする 
120 REM 循環節を{と}で括って表示する                      
130 LET radix=10         ! 基数                
140 DIM q(1 TO 1000)     ! 商の各位の数
150 DIM r(0 TO 1000)     ! 余りの各位の数            
160 INPUT a,b            ! a<b に限る  
170 LET r(0)=a                                
180 LET k=1              ! 小数点以下の桁位置                                   
190 DO                                        
200    LET q(k)=int(r(k-1)*radix/b)           
210    LET r(k)=mod(r(k-1)*radix,b)           
220    LET j=0                                
230    DO UNTIL j=k-1 OR r(j)=r(k)            
240       LET j=j+1                           
250    LOOP                                   
260    IF r(j)=r(k) THEN EXIT DO              
270    LET k=k+1                              
280 LOOP                                      
290 ! 結果の表示                              
300 PRINT ".";                                
310 FOR i=1 TO j                              
320    PRINT q(i);                           
330 NEXT i                                    
340 PRINT "{"; 
350 FOR i=j+1 TO k                            
360    PRINT q(i);                           
370 NEXT i                                    
380 PRINT "}"  
390 END                                       
  

