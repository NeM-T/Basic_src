! ‚³‚¢‚±‚ë‚ğn‰ñ“Š‚°‚é‚Æ‚«‚Ì–Ú‚Ì”‚Ì˜a‚Ì•ª•z
dim A(0 to 42),B(0 to 42)

mat A=zer
let A(0)=1

set window -2,43,-0.012,0.25
draw axes0
set text justify "center","top"
for x=0 to 40 step 10
   plot text,at x,0 :str$(x)
next x

for n=1 to 7
   mat B=zer
   for i=1 to 6
      for j=0 to 36
         let B(i+j)=B(i+j)+A(j)
      next j
   next i
   mat A=B 
    
   set line color n
   for j= 0 to 42
      let p=B(j)/6^n
      plot lines: j-0.5,0 ; j-0.5,p ; j+0.5,p ; j+0.5,0
   next j
   plot lines
next n

end