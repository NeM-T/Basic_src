declare external sub exchange
dim w(5),x(100)
mat read w
data 3,5,4,1,2
let k=0
mat x=zer
do 
  let f=0
  for j=1 to 5-1
    if w(j)>w(j+1) then 
      let k=k+1
      let x(k)=j
      call exchange(w(j),w(j+1))
      let f=1
    end if
  next j
loop until f=0
mat print x;
set window -1,5+1,k+2,-2
for i=1 to 5
  plot i,0;i,k+1
next i
for j=1 to k
  plot x(j),j;x(j)+1,j
next j
end
external sub exchange(a,b)
let c=a
let a=b
let b=c
end sub


