--https://www.roblox.com/games/1252559098/Snow-Shoveling-Simulator

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/Revenant", true))()
local Flags = Library.Flags

local Window = Library:Window({
    "Main Functions"
})

local Window3 = Library:Window({
    Text = "Teleports"
})

window:Toggle({
    Text = "Mission Farm",
    Callback = function(v)
        getgenv().missions = v 
    end
})

--store tp
Window3:Dropdown({
    Text = "Teleport:",
    List = {"Frosty", "Tool Store", "BackPack Store", "Vehicle Store", "Pet Store"},
    Callback = function(teleport)
        if teleport == "Frosty" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(522.500061, 17.749939, -73.9999084)
        elseif teleport == "Tool Store" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(130.999939, 18.4499388, -14.1001091)
        elseif teleport == "BackPack Store" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(346.000702, 18.5218887, -8.84747314)
        elseif teleport == "Vehicle Store" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(90.8586349, 18.6554832, -144.558243)
        elseif teleport == "Pet Store" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(137.3517, 20.2798176, 284.694336)
        end 
    end
})

spawn(function()
    while game:GetService("RunService").Heartbeat:wait() do
        pcall(function()
            if getgenv().missions then
                
