-- title: screen wave and sky gradient snippet
-- author: Darkhog

-- TIC function cut because it doesn't matter here.
-- This code can be used for e.g. water or some hazy/hot environments.
wavelimit = 136/2
function scanline(row)
	-- skygradient
	poke(0x3fc0,190-row)
	poke(0x3fc1,140-row)
	poke(0x3fc2,0)
	-- screen wave
	if row>wavelimit then
		poke(0x3ff9,math.sin((time()/200+row/5))*10)
	else
		poke(0x3ff9,0)
	end
end
function TIC()

end