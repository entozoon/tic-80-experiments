--Load palette string
-- Sticks on loading page, but shows that you can redefine the color palette, which defaults as
-- https://github.com/nesbox/TIC-80/wiki/palette
--
-- You can also do palette swapping, say like a frickin night time color scheme
--
PAL_ARNE16="f6f6bfe6d1d1868691794765f5e17aedc38dcc8d86ca657e39d4b98dbcd28184ab6860869dc0857ea788567864051625"
function TIC()
    for i=0,15 do
        r=tonumber(string.sub(PAL_ARNE16,i*6+1,i*6+2),16)
        g=tonumber(string.sub(PAL_ARNE16,i*6+3,i*6+4),16)
        b=tonumber(string.sub(PAL_ARNE16,i*6+5,i*6+6),16)
        poke(0x3FC0+(i*3)+0,r)
        poke(0x3FC0+(i*3)+1,g)
        poke(0x3FC0+(i*3)+2,b)
    end
end