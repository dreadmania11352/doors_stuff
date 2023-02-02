local FEBypass = loadstring("local x = game; local z = workspace; return {a = x, b = z, c = "BindableEvent", d = "IntValue"}")(); getgenv().FE = {false, FEBypass[1]}; coroutine.wrap(function() workspace.FilteringEnabled = FE[1] end)(); -- dont touch this

return FEBypass
