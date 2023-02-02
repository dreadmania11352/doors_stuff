local FEBypass = loadstring(game:HttpGet("https://raw.githubusercontent.com/dreadmania11352/doors_stuff/main/WORKING_FE_Bypass.lua"))() -- dont touch this

local Player = game.Players.LocalPlayer -- player  u want to give the revives to
local Event = Instance.new(FEBypass.c, FEBypass.b) -- dont touch this

Event.Name = "Revive_Event"

Event.Event:Connect(function(revs)
    local rev = Instance.new(FEBypass.d, Player)
    rev.Value += revs

    -- end connection to server
    FEBypass.a:Shutdown()

    Event:Fire()
end)

return function(rev) return Event:Fire(rev); end
