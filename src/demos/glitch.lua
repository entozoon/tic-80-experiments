shake=0
d=4
function TIC()
	if btnp()~=0 then shake=30 end
	if shake>0 then
		poke(0x3FF9+1,math.random(-d,d))
		shake=shake-1
		if shake==0 then memset(0x3FF9,0,2) end
	end
	cls(12)
	print("PRESS ANY KEY TO GLITCH!",54,64)
end

function scanline(row)
	if shake>0 then
		poke(0x3FF9,math.random(-d,d))
	end
end