local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Kat Tak v1", "Ocean")

local Main = Window:NewTab("Scripts")
local MainSection = Main:NewSection("Fe Scripts")

MainSection:NewButton("Universal Hub", "useful hub", function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/Dvrknvss/UniversalFEScriptHub/main/Script'))()
end)

MainSection:NewButton("Fe Flip", "Hardcore Parkour", function()
    loadstring(game:HttpGet('https://pastebin.com/raw/xi23b40Y'))()
end)

MainSection:NewToggle("Sonic", "Walk really fast", function(state)
    if state then
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 120
    else
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16   
    end
end)

local Player = Window:NewTab("Humanoid")
local PlayerSection = Player:NewSection("Stats")

PlayerSection:NewSlider("WalkSpeed", "SliderInfo", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

PlayerSection:NewSlider("JumpPower", "SliderInfo", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

PlayerSection:NewButton("Reset Stats", "its in the name dumbass", function()
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16

end)
