-- title:  Trace all global variables
-- author: Al Rado 28.02.2017
-- desc:   Standard Lua demo
-- script: lua
-- input:  gamepad
-- pal:    DB16

local seen={}

function dump(t,i)
    seen[t]=true
    local s={}
    local n=0
    for k in pairs(t) do
        n=n+1 s[n]=k
    end
    table.sort(s)
    for k,v in ipairs(s) do
        trace(i..v)
        v=t[v]
        if type(v)=="table" and not seen[v] then
            dump(v,i.."\t")
        end
    end
end

cls()
trace("---------------------")
trace("All global variables:")
dump(_G,"")
trace("---------------------")

print("See all global variables in console!")

function TIC() end