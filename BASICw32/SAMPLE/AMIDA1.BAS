declare external sub construct
dim w(5)
mat read W
data 3,4,5,1,2
set window -1,5+1,32,-2     ! 画面の上が若い縦座標
let p=0                     ! 横線の縦座標のカウンタ。
for i=1 to 5
  plot i,0;i,31
next i
call construct(w,5,p)
end
! 
external sub construct(w(),n,p)
! あみだくじを作る.nはくじの本数
if n=1 then exit sub
! w(k)=n となるkをさがす
let k=1
do until w(k)=n
  let k=k+1
loop
! k→n,k+1→k,…,n→n-1となる横線を生成する
for i=k to n-1
  let p=p+1
  plot i,p;i+1,p
next i
! 本数を減らした問題を作って再帰的に呼出す
dim v(5)
for i=1 to k-1
  let v(i)=w(i)
next i
for i=k to n-1
  let v(i)=w(i+1)
next i
call construct(v,n-1,p)
end sub


