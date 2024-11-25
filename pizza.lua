local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({IntroText = "by thanhdanh6446",Name = "TDanh | MVSD", HidePremium = false, SaveConfig = true, ConfigFolder = ""})

local Tab = Window:MakeTab({
	Name = "Player",
	Icon = "rbxassetid://15862434941",
	PremiumOnly = false
})

Tab:AddTextbox({
	Name = "Hitbox",
	Default = "",
	TextDisappear = true,
	Callback = function(value)
		print(value)
_G.HeadSize = value
_G.Disabled = true
 
game:GetService('RunService').RenderStepped:connect(function()
if _G.Disabled then
for i,v in next, game:GetService('Players'):GetPlayers() do
if v.Name ~= game:GetService('Players').LocalPlayer.Name then
pcall(function()
v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
v.Character.HumanoidRootPart.Transparency = 0.7
v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really blue")
v.Character.HumanoidRootPart.Material = "Neon"
v.Character.HumanoidRootPart.CanCollide = false
end)
end
end
end
end)
	end	  
})

Tab:AddTextbox({
	Name = "Speed",
	Default = "",
	TextDisappear = true,
	Callback = function(value)
		print(value)
getgenv().Walkspeed = value
    pcall(function()
        game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = value
    end)
	end	  
})

Tab: AddToggle({
	Name = "On Speed",
	Callback = function(state)
		print(value)
getgenv().loopW = state
    game:GetService("RunService").Heartbeat:Connect(function()
        if loopW == true then
            pcall(function()
                game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = Walkspeed
            end)
        end
    end)
	end	  
})

OrionLib:Init()
