-- spr demo

--Build sprite from text
data="010000000160010015240160170170170170170175170166250255170170170175106170170170170170051051051051"
for i=0,31 do
 poke(0x4000+32+i,
 tonumber(string.sub(data,i*3+1,i*3+3)))
end

p={
 x={val=100,min=0,max=240},
 y={val=68,min=0,max=136},
 colorkey={val=0,min=-1,max=15},
 scale={val=1,min=0,max=256},
 flip={val=0,min=0,max=3},
 rotate={val=0,min=0,max=3},
}
sel=next(p,nil)


function TIC()

 --Keys
 if btnp(0,30,6) then
  for n=0,4 do
   sel=next(p,sel) or next(p,nil)
  end
 end
 if btnp(1,30,6) then
  sel=next(p,sel) or next(p,nil)
 end

 if btnp(2,30,6) then
  p[sel].val=p[sel].val-1
 end
 if btnp(3,30,6) then
  p[sel].val=p[sel].val+1
 end

 --Clamp
 if p[sel].val>p[sel].max then
   p[sel].val=p[sel].max
 end
 if p[sel].val<p[sel].min then
   p[sel].val=p[sel].min
 end

 cls(0)
 print("Use up/down  to select parameter",0,0)
 print("left/right to change its value:",0,10)

 --Build menu with cursor
 r=0
 for k,v in pairs(p) do
  cur=(k==sel) and '>' or ' '
  print(cur..k..':'..v.val,0,30+10*r)
  r=r+1
 end

 --Draw Sprite
 spr(1,
    p.x.val,
    p.y.val,
    p.colorkey.val,
    p.scale.val,
    p.flip.val,
    p.rotate.val)

end