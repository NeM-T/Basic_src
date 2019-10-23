dim w(10),x(100)
mat read w
data 3,5,4,1,6,10,8,2,7,9
let k=0
mat x=zer
call amida(w,x,k)
!mat print x
set window -1,11,k+2 ,-2
for i=1 to 10
  plot i,0;i,k+1
next i
for j=1 to k
  plot x(j),j;x(j)+1,j
next j
end

external sub amida(w(),x(),k)
dim v(10)
mat print w;    !!!!
let b=2 
do until b>10 or w(b-1)>w(b) 
  let b=b+1
loop
if b<=10 then 
  let a=1
  do while w(a)<w(b)
    let a=a+1
  loop
  mat v=w
  let v(a)=w(b)
  for i=a+1 to b
    let v(i)=w(i-1)
  next i
  for i=b-1 to a step -1
    let k=k+1
    let x(k)=i
  next i
  call amida(v,x,k)
end if
end sub

