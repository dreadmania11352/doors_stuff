local gui = Instance.new("ScreenGui", game.Players.LocalPlayer.PlayerGui)

workspace.ChildAdded:Connect(function(v)
    if string.find(v.Name, "Moving") then
         local Entity = v:FindFirstChild("RushNew")
         
         if Entity then
            if (Entity.Position - game.Players.LocalPlayer.Character.PrimaryPart.Position).magnitude < 1000 then
                local t = Instance.new("TextLabel", gui)
                t.Position = UDim2.new(0.5,0,0.5,0)
                t.AnchorPoint = Vector2.new(.5,.5)
                t.Size = UDim2.new(.1,0,.1,0)
                t.Text = v.Name .. " has spawned, hide"
                t.TextColor = Color3.new(1,0,0)
                t.BackgroundTransparency = 1
                t.TextScaled = true
                task.wait(1)
                t:Destroy()
            end
         end
    end
end)
