local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BackgroundTransparency = 0
Frame.Position = UDim2.new(1, -120, 0, 10)
Frame.Size = UDim2.new(0, 100, 0, 18)

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BackgroundTransparency = 1.000
TextButton.Size = UDim2.new(1, 0, 1, 0)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Crimson"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 40.000
TextButton.TextStrokeColor3 = Color3.fromRGB(255, 0, 0)
TextButton.TextStrokeTransparency = 0.000
TextButton.TextWrapped = true
TextButton.MouseButton1Down:Connect(function()
	game:GetService("VirtualInputManager"):SendKeyEvent(true, "V" , false , game)
end)

UITextSizeConstraint.Parent = TextButton
UITextSizeConstraint.MaxTextSize = 50

local player = game.Players.LocalPlayer

-- Function to show the GUI when the character respawns
local function onCharacterAdded(character)
    ScreenGui.Parent = player.PlayerGui
end

-- Function to connect character respawn event
local function connectCharacterAdded()
    player.CharacterAdded:Connect(onCharacterAdded)
end

-- Connect the CharacterAdded event
connectCharacterAdded()

-- Keep the GUI visible when the character dies
player.CharacterRemoving:Connect(function()
    ScreenGui.Parent = nil
end)

function b(tt,tx,cc)
    game.StarterGui:SetCore("SendNotification", {
        Title = tt;
        Text = tx;
        Duration = cc;
    })
end

b("Crimson", "Loaded!", 1)

local lib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/Vape.txt")()

local win = lib:Window("Crimson | Imperial Corporations",Color3.fromRGB(220, 20, 60), Enum.KeyCode.V)

local tab = win:Tab("Target Lock")
local tab2 = win:Tab("Camlock")
local tab3 = win:Tab("Silent")
local tab4 = win:Tab("Animations")
local tab5 = win:Tab("Others")
local tab6 = win:Tab("Credits")

tab:Button("Aimlock", function()
function x(tt,tx,cc)
    game.StarterGui:SetCore("SendNotification", {
        Title = tt;
        Text = tx;
        Duration = cc;
    })
end

x("Crimson", "Loaded!", 1)

-- No Skiddies allowed in here
local CC = game:GetService"Workspace".CurrentCamera
    local Plr
    local enabled = false
    getgenv().accomidationfactor = 0.1356875
    local mouse = game.Players.LocalPlayer:GetMouse()
    local placemarker = Instance.new("Part", game.Workspace)
    getgenv().NoDelay = true
    getgenv().autopred = false

if getgenv().NoDelay == true then
      local FuckDelay = game:GetService("CorePackages").Packages
            FuckDelay:Destroy()
        end

    function makemarker(Parent, Adornee, Color, Size, Size2)
        local e = Instance.new("BillboardGui", Parent)
        e.Name = "PP"
        e.Adornee = Adornee
        e.Size = UDim2.new(Size, Size2, Size, Size2)
        e.AlwaysOnTop = true
        local a = Instance.new("Frame", e)
        a.Size = UDim2.new(3, 0, 3, 0)
        a.BackgroundTransparency = 0
        a.BackgroundColor3 = Color
        local g = Instance.new("UICorner", a)
        g.CornerRadius = UDim.new(50, 50)
        return(e)
    end

local Tool = Instance.new("Tool")
Tool.RequiresHandle = false
Tool.Name = "Crimson Target"
Tool.Parent = game.Players.LocalPlayer.Backpack

local player = game.Players.LocalPlayer

local function connectCharacterAdded()
    player.CharacterAdded:Connect(onCharacterAdded)
end

connectCharacterAdded()

player.CharacterRemoving:Connect(function()
    Tool.Parent = game.Players.LocalPlayer.Backpack
end)

    local data = game.Players:GetPlayers()
    function noob(player)
        local character
        repeat wait() until player.Character
        local handler = makemarker(guimain, player.Character:WaitForChild("HumanoidRootPart"), Color3.fromRGB(220, 20, 60), 0.3, 3)
        handler.Name = player.Name
        player.CharacterAdded:connect(function(Char) handler.Adornee = Char:WaitForChild("HumanoidRootPart") end)



        spawn(function()
            while wait() do
                if player.Character then
                    TextLabel.Text = player.Name..tostring(player:WaitForChild("leaderstats").Wanted.Value).." | "..tostring(math.floor(player.Character:WaitForChild("Humanoid").Health))
                end
            end
        end)
    end

    for i = 1, #data do
        if data[i] ~= game.Players.LocalPlayer then
            noob(data[i])
        end
    end



    game.Players.PlayerAdded:connect(function(Player)
        noob(Player)
    end)

_G.Types = {
    Ball = Enum.PartType.Ball,
    Block = Enum.PartType.Block,
    Cylinder = Enum.PartType.Cylinder
}
    spawn(function()
        placemarker.Anchored = true
        placemarker.CanCollide = false
        placemarker.Shape = _G.Types.Ball
        placemarker.Material = Enum.Material.ForceField
        placemarker.Size = Vector3.new(10, 10, 10)
        placemarker.Transparency = -0.4
        placemarker.Color = Color3.fromRGB(225, 20, 60)
        makemarker(placemarker, placemarker, Color3.fromRGB(220, 20, 60), 0.40, 0)
    end)    

Tool.Activated:Connect(function()
    if enabled then
        enabled = false
        x("Crimson", "Unlocked", 3)
    else
        enabled = true 
        Plr = getClosestPlayerToCursor()
        x("Crimson", ""..Plr.Character.Humanoid.DisplayName, 3)
    end    
end)

    function getClosestPlayerToCursor()
        local closestPlayer
        local shortestDistance = math.huge

        for i, v in pairs(game.Players:GetPlayers()) do
            if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild("HumanoidRootPart") then
                local pos = CC:WorldToViewportPoint(v.Character.PrimaryPart.Position)
                local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(mouse.X, mouse.Y)).magnitude
                if magnitude < shortestDistance then
                    closestPlayer = v
                    shortestDistance = magnitude
                end
            end
        end
        return closestPlayer
    end

    	game:GetService"RunService".Stepped:connect(function()
        if enabled and Plr.Character and Plr.Character:FindFirstChild("HumanoidRootPart") then
            placemarker.CFrame = CFrame.new(Plr.Character.HumanoidRootPart.Position+(Plr.Character.HumanoidRootPart.Velocity*getgenv().accomidationfactor))
        else
            placemarker.CFrame = CFrame.new(0, 9999, 0)
        end
    end)

    local mt = getrawmetatable(game)
    local old = mt.__namecall
    setreadonly(mt, false)
    mt.__namecall = newcclosure(function(...)
        local args = {...}
        if enabled and getnamecallmethod() == "FireServer" and args[2] == "UpdateMousePos" then
            args[3] = Plr.Character.HumanoidRootPart.Position+(Plr.Character.HumanoidRootPart.Velocity*getgenv().accomidationfactor)
            return old(unpack(args))
        end
        return old(...)
    end)

 local mt = getrawmetatable(game)
    local old = mt.__namecall
    setreadonly(mt, false)
    mt.__namecall = newcclosure(function(...)
        local args = {...}
        if enabled and getnamecallmethod() == "FireServer" and args[2] == "GetMousePos" then
            args[3] = Plr.Character.HumanoidRootPart.Position+(Plr.Character.HumanoidRootPart.Velocity*getgenv().accomidationfactor)
            return old(unpack(args))
        end
        return old(...)
    end)

if getgenv().autopred == true then
pingvalue = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
             split = string.split(pingvalue,'(')
             ping = tonumber(split[1])
                if ping < 130 then
                getgenv().accomidationfactor = 0.1518
            elseif ping < 125 then
                getgenv().accomidationfactor = 0.14988
            elseif ping < 110 then
                getgenv().accomidationfactor = 0.14553132132121255556666672
            elseif ping < 105 then
                getgenv().accomidationfactor = 0.1409340
            elseif ping < 90 then
                getgenv().accomidationfactor = 0.13623132
            elseif ping < 80 then
                getgenv().accomidationfactor = 0.131314253678192031927365421456789331
            elseif ping < 70 then
                getgenv().accomidationfactor = 0.1424567
            elseif ping < 60 then
                getgenv().accomidationfactor = 0.14132646
            elseif ping < 50 then
                getgenv().accomidationfactor = 0.118532
            elseif ping < 40 then
                getgenv().accomidationfactor = 0.12132
            elseif ping < 30 then
                getgenv().accomidationfactor = 0.14231
            elseif ping < 20 then
                getgenv().accomidationfactor = 0.13
            elseif ping < 10 then
                getgenv().accomidationfactor = 0.09
    end
end
end)

tab:Toggle("Auto Pred",false, function(t)
getgenv().autopred = t
end)

tab:Textbox("Prediction",true, function(t)
getgenv().accomidationfactor = t
end)

tab2:Button("Camlock", function()
loadstring(game:HttpGet"https://raw.githubusercontent.com/bobbbb-b/B/main/Lalalalalaala")()
end)

tab2:Textbox("PredictionVelocity",true, function(t)
getgenv().PredictionVelocity = t
end)

tab2:Textbox("Smoothness",true, function(t)
getgenv().SmoothnessAmount = t
end)

tab3:Button("Silent Aim", function()

end)

tab4:Button("Mage Animation", function()
while true do
local Animate = game.Players.LocalPlayer.Character.Animate
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616168032"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=707861613"
game.Players.LocalPlayer.Character.Humanoid.Jump = false
wait(1)
end
end)

tab4:Button("Zombie Animation", function()
while true do
local Animate = game.Players.LocalPlayer.Character.Animate
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616168032"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616163682"
game.Players.LocalPlayer.Character.Humanoid.Jump = false
wait(1)
end
end)

tab5:Button("Speed Tool", function()
    getgenv().Speed = true
    getgenv().FakeMacro = false
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Allvideo/nukermode/main/Kit%20tools.txt"))()
    end)

tab6:Button("Ark - Owner", function()
print("soon")
end)

tab6:Button("Lion - Main Developer", function()
print("soon")
end)

tab6:Button("Fish - Helper", function()
print("soon")
end)

tab6:Button("Library used - Vape", function()
print("soon")
end)