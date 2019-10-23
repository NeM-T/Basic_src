100 ! ¢ABC‚ÅCangle_A,a,b‚©‚çangle_B,angle_C,c‚ð‹‚ß‚éB
110 ! ³Œ·’è—‚ð—p‚¢‚é‰ð
120 OPTION ANGLE DEGREES
130 INPUT angle_A,a,b
140 LET angle_B=ASIN(b/a*SIN(angle_A))
150 LET angle_C=180-(angle_A+angle_B)
160 LET c=a*SIN(angle_C)/SIN(angle_A)
170 PRINT angle_B,angle_C,c
180 ! another solution
190 LET angle_B=180-angle_B
200 LET angle_C=180-(angle_A+angle_B)
210 IF angle_C>0 THEN
220    LET c=a*SIN(angle_C)/SIN(angle_A)
230    PRINT angle_B,angle_C,c
240 END IF
250 END 
