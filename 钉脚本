local Settings = {
        Esp = false,
        PlayerEsp = false,
        Tracers = false,
}

local SafeSpot = Instance.new("Part", workspace)

SafeSpot.Position = Vector3.new(-1860.61,-399.9,927.21)

SafeSpot.Name = "Vip"

SafeSpot.Size = Vector3.new(0,0.1,0)

SafeSpot.Anchored = true

SafeSpot.Transparency = 1


local SafeSpot = Instance.new("Part", workspace)

SafeSpot.Position = Vector3.new(-1920.71,-399.9,929.66)

SafeSpot.Name = "Laaabby"

SafeSpot.Size = Vector3.new(0,0.1,0)

SafeSpot.Anchored = true

SafeSpot.Transparency = 1


local SafeSpot = Instance.new("Part", workspace)

SafeSpot.Position = Vector3.new(-0.81,1,-7.31)

SafeSpot.Name = "Game"

SafeSpot.Size = Vector3.new(0,0.1,0)

SafeSpot.Anchored = true

SafeSpot.Transparency = 1

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local VirtualUser = game:GetService("VirtualUser")

local LocalPlayer = Players.LocalPlayer

getgenv().Settings = {
    Win = false,
    Rebirth = false,
}

function getHash()
    for _, v in pairs(game:GetService("Workspace").PlayerTycoons:GetDescendants()) do
        if v:IsA("ObjectValue") and v.Name == "Owner" then
            if tostring(v.Value) == game.Players.LocalPlayer.Name then
                return (v.Parent.Parent.Name)
            end
        end
    end
end

local Settings = {
    Names = false,
}
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Camera = game:GetService("Workspace").CurrentCamera
local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local Mouse = Player:GetMouse()

local msg = Instance.new("Message",workspace)
msg.Text = "欢迎使用钉脚本"
msg.Text = "使用剑猫源码"
wait(1.8)
msg:Destroy()

local msg = Instance.new("Message",workspace)
msg.Text = "剑猫内核 支持60款游戏"
wait(1.8)
msg:Destroy()

local msg = Instance.new("Message",workspace)

local OrionLib = loadstring(game:HttpGet("https://shz.al/~dito-wooooooooo/Ditoo-ui/I-GOT-NO-TIME-TO-LOSE-RA-TATATA"))()
local LBLG = Instance.new("ScreenGui", getParent)
local LBL = Instance.new("TextLabel", getParent)
local player = game.Players.LocalPlayer

LBLG.Name = "LBLG"
LBLG.Parent = game.CoreGui
LBLG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
LBLG.Enabled = true
LBL.Name = "LBL"
LBL.Parent = LBLG
LBL.BackgroundColor3 = Color3.new(1, 1, 1)
LBL.BackgroundTransparency = 1
LBL.BorderColor3 = Color3.new(0, 0, 0)
LBL.Position = UDim2.new(0.75,0,0.010,0)
LBL.Size = UDim2.new(0, 133, 0, 30)
LBL.Font = Enum.Font.GothamSemibold
LBL.Text = "TextLabel"
LBL.TextColor3 = Color3.new(1, 1, 1)
LBL.TextScaled = true
LBL.TextSize = 14
LBL.TextWrapped = true
LBL.Visible = true

local FpsLabel = LBL
local Heartbeat = game:GetService("RunService").Heartbeat
local LastIteration, Start
local FrameUpdateTable = { }

local function HeartbeatUpdate()
	LastIteration = tick()
	for Index = #FrameUpdateTable, 1, -1 do
		FrameUpdateTable[Index + 1] = (FrameUpdateTable[Index] >= LastIteration - 1) and FrameUpdateTable[Index] or nil
	end
	FrameUpdateTable[1] = LastIteration
	local CurrentFPS = (tick() - Start >= 1 and #FrameUpdateTable) or (#FrameUpdateTable / (tick() - Start))
	CurrentFPS = CurrentFPS - CurrentFPS % 1
	FpsLabel.Text = ("北京时间:"..os.date("%H").."时"..os.date("%M").."分"..os.date("%S"))
end
Start = tick()
Heartbeat:Connect(HeartbeatUpdate)
local Window = OrionLib:MakeWindow({Name = "钉脚本", IntroIcon = "rbxassetid://4335482575", HidePremium = false, SaveConfig = true,IntroText = "钉脚本", ConfigFolder = "钉脚本"})

local about = Window:MakeTab({
    Name = "公告",
    Icon = "rbxassetid://78898298300077",
    PremiumOnly = false})

about:AddParagraph("作者: 抄的")
about:AddParagraph("副作者: 抄的")
about:AddParagraph("制作者: 抄的")

local Tab = Window:MakeTab({
    Name = "通用功能",
    Icon = "rbxassetid://14091262457",
    PremiumOnly = false

})

Tab:AddButton({
	Name = "甩飞所有人",
	Callback = function()
	loadstring(game:HttpGet("https://pastefy.app/8B4iDhvf/raw"))()
	end
})

Tab:AddButton({
	Name = "后厅竞赛",
	Callback = function()
	local plr = game.Players.LocalPlayer.Character.Head
for i, v in pairs(game:GetService("Workspace"):GetDescendants()) do
        if v.Name == "TouchInterest" and v.Parent then
        firetouchinterest(plr, v.Parent, 0)
    end
end
	end
})

local plrs = game.Players

local playerNames = {}
local players = plrs:GetPlayers()

for _, player in ipairs(players) do
    table.insert(playerNames, player.Name)
end

Tab:AddDropdown({
    Name = "传送玩家",
    Default = playerNames[1] or "No Players",
    Options = playerNames,
    Callback = function(selectedplrName)
        local targetPlayer = plrs:FindFirstChild(selectedplrName)
        
        if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
            -- Teleporting your character to the selected player's position
            local targetPosition = targetPlayer.Character.HumanoidRootPart.Position
            local localPlayerRoot = plrs.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
            
            if localPlayerRoot then
                localPlayerRoot.CFrame = CFrame.new(targetPosition)
            end
        end
        print(selectedplrName)
    end    
})

Tab:AddTextbox({
	Name = "范围修改",
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

Tab:AddButton({
	Name = "bf自动刷钱",
	Callback = function()
	loadstring(game:HttpGet("https://pastefy.app/yPYIf7Wh/raw"))()
	end
})

Tab:AddButton({
	Name = "钉-飞行",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"))()
	end
})

local Tab = Window:MakeTab({
    Name = "游戏1",
    Icon = "rbxassetid://78898298300077",
    PremiumOnly = false

})

Tab:AddButton({
	Name = "巴掌模拟器",
	Callback = function()
    loadstring(game:HttpGet("https://pastefy.app/8m5sOjLh/raw"))()
    end
})

Tab:AddButton({
	Name = "刀刃球",
	Callback = function()
	loadstring(game:HttpGet("https://pastefy.app/qSE847gd/raw"))()
    end
})

Tab:AddButton({
	Name = "彩虹朋友",
	Callback = function()
	loadstring(game:HttpGet("https://pastefy.app/XoNv04vR/raw"))()
	end
})

Tab:AddButton({
	Name = "河北唐县",
	Callback = function()
	loadstring(game:HttpGet("https://pastefy.app/s20nni0h/raw"))()
	end
})

Tab:AddButton({
	Name = "力量传奇",
	Callback = function()
	loadstring(game:HttpGet("https://pastefy.app/vdthUtsS/raw"))()
	end
})

Tab:AddButton({
	Name = "Blox fruit",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/BloxFruits/main/redz9999"))()
	end
})

Tab:AddButton({
	Name = "极速传奇",
	Callback = function()
	loadstring(game:HttpGet("https://pastefy.app/R98GDbTZ/raw"))()
	end
})

Tab:AddButton({
	Name = "忍者传奇",
	Callback = function()
	loadstring(game:HttpGet("https://pastefy.app/0jVTrdxV/raw"))()
	end
})

Tab:AddButton({
	Name = "监狱人生",
	Callback = function()
	loadstring(game:HttpGet("https://pastefy.app/mCzxPi9H/raw"))()
	end
})

Tab:AddButton({
	Name = "蜂群模拟器",
	Callback = function()
	loadstring(game:HttpGet("https://pastefy.app/QtYmKaQ1/raw"))()
	end
})

Tab:AddButton({
	Name = "一路向西",
	Callback = function()
	loadstring(game:HttpGet("https://pastefy.app/q08owYGG/raw"))()
	end
})

Tab:AddButton({
	Name = "造般寻宝",
	Callback = function()
	loadstring(game:HttpGet("https://pastefy.app/hvV1c4nO/raw"))()
	end
})

Tab:AddButton({
	Name = "doors",
	Callback = function()
	loadstring(game:HttpGet("https://pastefy.app/Su9RsViT/raw"))()
	end
})

Tab:AddButton({
	Name = "俄亥俄州",
	Callback = function()
	loadstring(game:HttpGet("https://pastefy.app/QbXPfsgC/raw"))()
	end
})

Tab:AddButton({
	Name = "兵工厂",
	Callback = function()
	loadstring(game:HttpGet("https://pastefy.app/2YdrWHxV/raw"))()
	end
})

Tab:AddButton({
	Name = "餐厅大亨2",
	Callback = function()
	loadstring(game:HttpGet("https://pastefy.app/Ppqt0Gib/raw"))()
	end
})

Tab:AddButton({
	Name = "超级大力士模拟器",
	Callback = function()
	loadstring(game:HttpGet("https://pastefy.app/aO18ZEB9/raw"))()
	end
})

Tab:AddButton({
	Name = "自然灾害模拟器",
	Callback = function()
	loadstring(game:HttpGet("https://pastefy.app/fUmGKuol/raw"))()
	end
})

Tab:AddButton({
	Name = "举重模拟器",
	Callback = function()
	loadstring(game:HttpGet("https://pastefy.app/KSriAk53/raw"))()
	end
})

Tab:AddButton({
	Name = "汽车经销大亨",
	Callback = function()
	loadstring(game:HttpGet("https://pastefy.app/5o594Q0i/raw"))()
	end
})

Tab:AddButton({
	Name = "幸运方块",
	Callback = function()
	loadstring(game:HttpGet("https://pastefy.app/eAWNSTyw/raw"))()
	end
})

local Tab = Window:MakeTab({
    Name = "游戏2",
    Icon = "rbxassetid://78898298300077",
    PremiumOnly = false

})

Tab:AddButton({
	Name = "模仿者",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Yumiara/Script/main/TheMimic.lua"))()
	end
})

Tab:AddButton({
	Name = "水下公司",
	Callback = function()
	loadstring(game:HttpGet("https://pastefy.app/mQokS412/raw"))()
	end
})

Tab:AddButton({
	Name = "火箭发射模拟器",
	Callback = function()
	loadstring(game:HttpGet("https://pastefy.app/CMW6b0kZ/raw"))()
	end
})

Tab:AddButton({
	Name = "驾驶帝国",
	Callback = function()
	loadstring(game:HttpGet("https://pastefy.app/0KZI6tmc/raw"))()
	end
})

Tab:AddButton({
	Name = "极限捉迷藏",
	Callback = function()
	loadstring(game:HttpGet("https://pastefy.app/pW2Ly8my/raw"))()
	end
})

Tab:AddButton({
	Name = "感染性微笑",
	Callback = function()
	loadstring(game:HttpGet("https://pastefy.app/z8mDJJIX/raw"))()
	end
})

Tab:AddButton({
	Name = "躲避",
	Callback = function()
	loadstring(game:HttpGet("https://pastefy.app/BrdzWOKp/raw"))()
	end
})

Tab:AddButton({
	Name = "破坏者谜团",
	Callback = function()
	loadstring(game:HttpGet("https://pastefy.app/NedT4GLO/raw"))()
	end
})

Tab:AddButton({
	Name = "战争大亨",
	Callback = function()
	loadstring(game:HttpGet("https://pastefy.app/6ebXG7Pb/raw"))()
	end
})

Tab:AddButton({
	Name = "逃离设施",
	Callback = function()
	loadstring(game:HttpGet("https://pastefy.app/d42s9Pgw/raw"))()
	end
})

Tab:AddButton({
	Name = "战斗勇士",
	Callback = function()
	loadstring(game:HttpGet("https://pastefy.app/uGOEexk7/raw"))()
	end
})

Tab:AddButton({
	Name = "僵尸起义",
	Callback = function()
	loadstring(game:HttpGet("https://pastefy.app/uetSXw3V/raw"))()
	end
})

Tab:AddButton({
	Name = "51区",
	Callback = function()
	loadstring(game:HttpGet("https://pastefy.app/MdkbMCmi/raw"))()
	end
})

Tab:AddButton({
	Name = "超级进化",
	Callback = function()
	loadstring(game:HttpGet("https://pastefy.app/XT4VtP31/raw"))()
	end
})

local Tab = Window:MakeTab({
    Name = "游戏3",
    Icon = "rbxassetid://78898298300077",
    PremiumOnly = false

})

Tab:AddButton({
	Name = "怪兽宇宙",
	Callback = function()
	loadstring(game:HttpGet("https://pastefy.app/oRWEIEcJ/raw"))()
	end
})

Tab:AddButton({
    Name = "寻宝模拟器",
	Callback = function()
	loadstring(game:HttpGet("https://pastefy.app/1vYhZHYV/raw"))()
	end
})

Tab:AddButton({
	Name = "汽车破坏模拟器",
	Callback = function()
	loadstring(game:HttpGet("https://pastefy.app/Om4KpJOw/raw"))()
	end
})

Tab:AddButton({
	Name = "拳击模拟器",
	Callback = function()
	loadstring(game:HttpGet("https://pastefy.app/T4O1SA3q/raw"))()
	end
})

Tab:AddButton({
	Name = "伐木大亨2",
	Callback = function()
	loadstring(game:HttpGet("https://shz.al/~/dkfkfkfjfkfjdj/longshu/main/lllllkllllllll"))()
	end
})

Tab:AddButton({
	Name = "最强战场",
	Callback = function()
	loadstring(game:HttpGet("https://pastefy.app/Z4K7VMY9/raw"))()
	end
})

Tab:AddButton({
	Name = "格林维尔",
	Callback = function()
	loadstring(game:HttpGet("https://pastefy.app/WBYAsWJm/raw"))()
	end
})

Tab:AddButton({
	Name = "奎尔湖",
	Callback = function()
	loadstring(game:HttpGet("https://pastefy.app/ZwaXa3ZR/raw"))()
	end
})

Tab:AddButton({
	Name = "伐木工模拟器",
	Callback = function()
	loadstring(game:HttpGet("https://pastefy.app/LdrWbqdB/raw"))()
	end
})

Tab:AddButton({
	Name = "恐怖奶奶透视",
	Callback = function()
	loadstring(game:HttpGet("https://pastefy.app/o688Jvmn/raw"))()
	end
})

Tab:AddButton({
	Name = "奶酪逃亡",
	Callback = function()
	loadstring(game:HttpGet("https://pastefy.app/IIpzN8f5/raw"))()
	end
})

Tab:AddButton({
	Name = "我的餐厅",
	Callback = function()
	loadstring(game:HttpGet("https://pastefy.app/5R1Ch6kk/raw"))()
	end
})

Tab:AddButton({
	Name = "钓鱼模拟器",
	Callback = function()
	loadstring(game:HttpGet("https://pastefy.app/aJYgKcb3/raw"))()
	end
})

Tab:AddButton({
	Name = "旗帜战争",
	Callback = function()
	loadstring(game:HttpGet("https://pastefy.app/otEg6PJV/raw"))()
	end
})

Tab:AddButton({
	Name = "hatch for UGC",
	Callback = function()
	loadstring(game:HttpGet("https://pastefy.app/akcrRZo7/raw"))()
	end
})

Tab:AddButton({
	Name = "法宝模拟器",
	Callback = function()
	loadstring(game:HttpGet("https://pastefy.app/9bGpv4H3/raw"))()
	end
})

Tab:AddButton({
	Name = "急速奔驰",
	Callback = function()
	loadstring(game:HttpGet("https://pastefy.app/Y7607jwb/raw"))()
	end
})

Tab:AddButton({
	Name = "射击光束模拟器",
	Callback = function()
	loadstring(game:HttpGet("https://pastefy.app/51yMuaCc/raw"))()
	end
})

Tab:AddButton({
	Name = "合并滴管",
	Callback = function()
	loadstring(game:HttpGet("https://pastefy.app/NpBrBCqM/raw"))()
	end
})

Tab:AddButton({
	Name = "动感星期五",
	Callback = function()
	loadstring(game:HttpGet("https://scriptblox.com/raw/XMAS-Event-or-Funky-Friday-Auto-Player-Mobile-6721"))()
	end
})

local Tab = Window:MakeTab({
    Name = "进击的僵尸",
    Icon = "rbxassetid://78898298300077",
    PremiumOnly = false

})

Tab:AddButton({
	Name = "自动传送僵尸",
	Callback = function()
	local groundDistance = 8
local Player = game:GetService("Players").LocalPlayer
local function getNearest()
local nearest, dist = nil, 99999
for _,v in pairs(game.Workspace.BossFolder:GetChildren()) do
if(v:FindFirstChild("Head")~=nil)then
local m =(Player.Character.Head.Position-v.Head.Position).magnitude
if(m<dist)then
dist = m
nearest = v
end
end
end
for _,v in pairs(game.Workspace.enemies:GetChildren()) do
if(v:FindFirstChild("Head")~=nil)then
local m =(Player.Character.Head.Position-v.Head.Position).magnitude
if(m<dist)then
dist = m
nearest = v
end
end
end
return nearest
end
_G.farm2 = true
Player.Chatted:Connect(function(m)
if(m==";autofarm false")then
_G.farm2 = false
elseif(m==";autofarm true")then
_G.farm2 = true
end
end)
_G.globalTarget = nil
game:GetService("RunService").RenderStepped:Connect(function()
if(_G.farm2==true)then
local target = getNearest()
if(target~=nil)then
game:GetService("Workspace").CurrentCamera.CFrame = CFrame.new(game:GetService("Workspace").CurrentCamera.CFrame.p, target.Head.Position)
Player.Character.HumanoidRootPart.CFrame = (target.HumanoidRootPart.CFrame * CFrame.new(0, groundDistance, 9))
_G.globalTarget = target
end
end
end)
spawn(function()
while wait() do
game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
game.Players.LocalPlayer.Character.Torso.Velocity = Vector3.new(0,0,0)
end
end)
while wait() do
if(_G.farm2==true and _G.globalTarget~=nil and _G.globalTarget:FindFirstChild("Head") and Player.Character:FindFirstChildOfClass("Tool"))then
local target = _G.globalTarget
game.ReplicatedStorage.Gun:FireServer({["Normal"] = Vector3.new(0, 0, 0), ["Direction"] = target.Head.Position, ["Name"] = Player.Character:FindFirstChildOfClass("Tool").Name, ["Hit"] = target.Head, ["Origin"] = target.Head.Position, ["Pos"] = target.Head.Position,})
wait()
end
end
   end
})

local Tab = Window:MakeTab({
    Name = "透视功能",
    Icon = "rbxassetid://78898298300077",
    PremiumOnly = false

})

local Section = Tab:AddSection({
        Name = "开启教程: 先打开透视开关，先开启玩家透视然后开启射线透视才有效果，这两个是一起开的。"
})

local ESP = loadstring(game:HttpGet("https://raw.githubusercontent.com/1201for/V.G-Hub/main/Karrot-Esp"))()

Tab:AddToggle({
Name = "透视开关",
Default = false,
Callback = function(State)
    Settings.Esp = State
    ESP:Toggle(Settings.Esp)
end})

Tab:AddToggle({
Name = "玩家透视",
Default = false,
Callback = function(State)
    Settings.PlayerEsp = State
    ESP.Players = Settings.PlayerEsp
end})

Tab:AddToggle({
Name = "射线透视",
Default = false,
Callback = function(State)
    Settings.Tracers = State
    ESP.Tracers = Settings.Tracers
end})

Tab:AddToggle({
	Name = "名字透视",
	Default = false,
	Callback = function(Bool)
	Settings.Names = Bool
    end
})

function DrawText()
    local Text = Drawing.new("Text")
    Text.Color = Color3.fromRGB(190, 190, 0)
    Text.Size = 20
    Text.Outline = true
    Text.Center = true
    return Text
end

function DrawSquare()
    local Box = Drawing.new("Square")
    Box.Color = Color3.fromRGB(190, 190, 0)
    Box.Thickness = 0.5
    Box.Filled = false
    Box.Transparency = 1
    return Box
end

function IsPlayerAlive(player)
    if player.Character ~= nil and player.Character:FindFirstChild("HumanoidRootPart") then
        return true
    end
    return false
end

function GetOffset(part, pos)
    local FarPosition = Camera:WorldToViewportPoint(Vector3.new(part.Position.X, part.Position.Y + (part.Size.Y / 2), part.Position.Z))
    return FarPosition.Y - pos.Y
end

function GetCorners(player)
    local TopY = math.huge
    local BottomY = -math.huge
    local RightX = -math.huge
    local LeftX = math.huge
    local Offsets
    local Positions = {}
    for i, v in next, player.Character:GetChildren() do
        if v.ClassName == "MeshPart" or v.Name == "Head" then
            local Position, OnScreen = Camera:WorldToViewportPoint(v.Position)
            Positions[v.Name] = Position
            Offsets = GetOffset(v, Position)
            if OnScreen then
                if Position.Y < TopY then
                    TopY = Position.Y
                end
                if Position.Y > BottomY then
                    BottomY = Position.Y
                end
                if Position.X < LeftX then
                    LeftX = Position.X
                end
                if Position.X > RightX then
                    RightX = Position.X
                end
            end
        end
    end
    return {TopLeft = Vector2.new(LeftX + Offsets, TopY + Offsets), TopRight = Vector2.new(RightX - Offsets, TopY + Offsets), BottomLeft = Vector2.new(LeftX + Offsets, BottomY - Offsets), BottomRight = Vector2.new(RightX - Offsets, BottomY - Offsets), Positions = Positions}
end

function GetClosest()
    local Closest = nil
    local Magnitude = math.huge
    for i, v in next, Players:GetPlayers() do 
        if v ~= Player and IsPlayerAlive(v) then 
            if not Settings.TeamCheck or Settings.TeamCheck and v.Team ~= LocalPlayer.Team then
                local Position, Visible = Camera:WorldToScreenPoint(v.Character["HumanoidRootPart"].Position) 
                if Visible then
                    local Mouse = Player:GetMouse()
                    local Distance = (Vector2.new(Mouse.X, Mouse.Y) - Vector2.new(Position.X, Position.Y)).Magnitude 
                    if not Settings.FovUsed and Distance < Magnitude or Settings.FovUsed and Distance < Magnitude and Distance < Settings.Fov then 
                        Closest = v 
                        Magnitude = Distance
                    end
                end
            end
        end
    end
    return Closest 
end

function AddEsp(player)
    local Box = DrawSquare()
    local Name = DrawText()
    RunService.Stepped:Connect(function()
        IsAlive = IsPlayerAlive(player)
        if IsAlive and player.Character:FindFirstChild("HumanoidRootPart") then
            local Corners = GetCorners(player)
            local Positions = Corners.Positions
            local xDist = Corners.BottomRight.X - Corners.TopLeft.X
            local yDist = Corners.BottomRight.Y - Corners.TopLeft.Y
            local RootPosition, OnScreen = Camera:WorldToViewportPoint(player.Character.HumanoidRootPart.Position)
            if Settings.Boxes then
                Box.Visible = OnScreen
                Box.Size = Vector2.new(xDist, yDist)
                Box.Position = Corners.TopLeft
            else
                Box.Visible = false
            end
            if Settings.Names then
                Name.Visible = OnScreen
                Name.Position = Vector2.new(Corners.BottomRight.X - (xDist / 2), Corners.TopLeft.Y - 45)
                Name.Text = player.Name
            else
                Name.Visible = false
            end
        else
            Box.Visible = false
            Name.Visible = false
        end
    end)
end

for i, v in pairs(Players:GetPlayers()) do
    if v ~= Player then
        AddEsp(v)
    end
end

Players.PlayerAdded:Connect(function(player)
    if v ~= Player then
        AddEsp(player)
    end
end)

local Tab = Window:MakeTab({
    Name = "鱿鱼游戏",
    Icon = "rbxassetid://4335482575",
    PremiumOnly = false

})

Tab:AddButton({
	Name = "成为主持人",
	Callback = function()
	local args = {
    [1] = true
}

game:GetService("ReplicatedStorage"):WaitForChild("FrontmanRemotes"):WaitForChild("BecomeFrontman"):InvokeServer(unpack(args))
	end
})

Tab:AddButton({
	Name = "成为守卫",
	Callback = function()
	local args = {
    [1] = true
}

game:GetService("ReplicatedStorage"):WaitForChild("GuardRemotes"):WaitForChild("BecomeGuard"):InvokeServer(unpack(args))
    end
})

local Tab = Window:MakeTab({
    Name = "枪战竞技场",
    Icon = "rbxassetid://78898298300077",
    PremiumOnly = false

})

Tab:AddButton({
	Name = "子弹追踪",
	Callback = function()
	loadstring(game:HttpGet("https://pastefy.app/8IhcfZc2/raw"))()
	end
})

local Tab = Window:MakeTab({
    Name = "扫雪模拟器",
    Icon = "rbxassetid://78898298300077",
    PremiumOnly = false

})

Tab:AddToggle({
	Name = "自动收集雪",
	Default = false,
	Callback = function(Value)
	toggle = Value
while toggle do wait()
local args = {
    [1] = workspace:WaitForChild("HitParts"):WaitForChild("Snow1"),
    [2] = "Snow1",
    [3] = "MagicWand"
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("e8eGb8RgRXFcug8q"):FireServer(unpack(args))
    end
  end
})

local Tab = Window:MakeTab({
    Name = "Race Clicker",
    Icon = "rbxassetid://78898298300077",
    PremiumOnly = false

})

Tab:AddToggle({
	Name = "自动获胜",
	Default = false,
	Callback = function(state)
	task.spawn(function()
        Settings.Win = state
        while true do
            if not Settings.Win then return end

            if LocalPlayer.PlayerGui.TimerUI.RaceTimer.Visible then                    
                LocalPlayer.Character:PivotTo(LocalPlayer.Character:GetPivot() +  Vector3.new(50000, 0, 0))
            end

            task.wait()
        end
      end)
  end
})

Tab:AddToggle({
	Name = "自动重生",
	Default = false,
	Callback = function(state)
	task.spawn(function()
        Settings.Rebirth = state
        while true do
            if not Settings.Rebirth then return end

            ReplicatedStorage.Packages.Knit.Services.RebirthService.RF.Rebirth:InvokeServer()
            task.wait(5)
        end
     end)
  end
})

local Tab = Window:MakeTab({
        Name = "地狱之塔",
        Icon = "rbxassetid://78898298300077",
        PremiumOnly = false
})

local Section = Tab:AddSection({
        Name = "主要功能"
})

Tab:AddButton({
        Name = "反作弊(必开)",
        Callback = function()
        local reg = getreg()

        for i, Function in next, reg do
            if type(Function) == 'function' then
                local info = getinfo(Function)

                if info.name == 'kick' then
                    if (hookfunction(info.func, function(...)end)) then
                        print'succesfully hooked kick'
                    else
                        print'failed to hook kick'
                    end
                end
            end
        end
        local playerscripts = game:GetService'Players'.LocalPlayer.PlayerScripts

        local script1 = playerscripts.LocalScript
        local script2 = playerscripts.LocalScript2

        local script1signal = script1.Changed
        local script2signal = script2.Changed

        for i, connection in next, getconnections(script1signal) do
            connection:Disable()
        end
        for i, connection in next, getconnections(script2signal) do
            connection:Disable()
        end

        script1:Destroy()
        script2:Destroy()    
          end    
})

Tab:AddButton({
        Name = "给所有物品",
        Callback = function()
        for _,e in pairs(game.Players.LocalPlayer.Backpack:GetDescendants()) do
            if e:IsA("Tool") then
            e:Destroy()
            end
            end
            wait() 
            for _,v in pairs(game.ReplicatedStorage.Gear:GetDescendants()) do
            if v:IsA("Tool") then
            local CloneThings = v:Clone()
            wait()
            CloneThings.Parent = game.Players.LocalPlayer.Backpack

            end
            end
          end    
})

Tab:AddButton({
        Name = "传送地点",
        Callback = function()
        local endzone = game.Workspace.tower.sections.finish.FinishGlow.CFrame

        local player = game.Players.LocalPlayer.Character
        player.HumanoidRootPart.CFrame = endzone
          end    
})

Tab:AddButton({
        Name = "无敌模式",
        Callback = function()
        for i,v in pairs(game:GetService("Workspace").tower:GetDescendants()) do
            if v:IsA("BoolValue") and v.Name == "kills" then
                v.Parent:Destroy()
            end
        end
          end    
})

local Tab = Window:MakeTab({
    Name = "宠物模拟器99",
    Icon = "rbxassetid://78898298300077",
    PremiumOnly = false

})

Tab:AddToggle({
	Name = "自动收集",
	Default = false,
	Callback = function(state)
	_G.test = (state and true or false)
while _G.test do
    wait()
if workspace.__THINGS.Lootbags:FindFirstChildOfClass("Model") then
for i,v in pairs(workspace.__THINGS.Lootbags:GetChildren()) do
if v.ClassName == "Model" then
local test = v:FindFirstChildOfClass("MeshPart") or v:FindFirstChildOfClass("Part")
test.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end
end
elseif workspace.__THINGS.Orbs:FindFirstChildOfClass("Part") then
    for i,v in pairs(workspace.__THINGS.Orbs:GetChildren()) do
        if v.ClassName == "Part" then
            v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        end
    end
end
end
   end
})

Tab:AddToggle({
	Name = "自动农场",
	Default = false,
	Callback = function(state)
	_G.test2 = (state and true or false)
    _G.range = 100
    while _G.test2 do
    task.wait()
    pcall(function()
    for i,v in pairs(workspace.__THINGS.Breakables:GetChildren()) do
        if v.ClassName == "Model" and game:GetService("Players").LocalPlayer:DistanceFromCharacter(v:GetChildren()[1].Position) < _G.range  then
            print(v.PrimaryPart)
    game:GetService("ReplicatedStorage").Network.Breakables_PlayerDealDamage:FireServer(v.Name)
    task.wait()
        end
    end
    end)
    end
    end
})

Tab:AddToggle({
	Name = "自动领取排名奖励",
	Default = false,
	Callback = function(state)
	_G.reward = (state and true or false)
while _G.reward do 
    wait()
for i=1,32 do
game:GetService("ReplicatedStorage").Network.Ranks_ClaimReward:FireServer(i)
task.wait(0.1)
end
end
   end
})

local Tab = Window:MakeTab({
    Name = "战争机器",
    Icon = "rbxassetid://78898298300077",
    PremiumOnly = false

})

Tab:AddButton({
	Name = "自动刷钱",
	Callback = function()
	loadstring(game:HttpGet("https://pastefy.app/vpmdmspX/raw"))()
	end
})

local Tab = Window:MakeTab({
    Name = "杀手VS警长",
    Icon = "rbxassetid://78898298300077",
    PremiumOnly = false

})

Tab:AddButton({
	Name = "范围",
	Callback = function()
	_G.HeadSize = 20
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

Tab:AddButton({
	Name = "飞行",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"))()
	end
})

Tab:AddButton({
	Name = "加速",
	Callback = function()
	function isNumber(str)
  if tonumber(str) ~= nil or str == 'inf' then
    return true
  end
end
local tspeed = 1
local hb = game:GetService("RunService").Heartbeat
local tpwalking = true
local player = game:GetService("Players")
local lplr = player.LocalPlayer
local chr = lplr.Character
local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
while tpwalking and hb:Wait() and chr and hum and hum.Parent do
  if hum.MoveDirection.Magnitude > 0 then
    if tspeed and isNumber(tspeed) then
      chr:TranslateBy(hum.MoveDirection * tonumber(tspeed))
    else
      chr:TranslateBy(hum.MoveDirection)
    end
  end
end
   end
})

Tab:AddButton({
	Name = "透视",
	Callback = function()
_G.FriendColor = Color3.fromRGB(0, 0, 255)
_G.EnemyColor = Color3.fromRGB(255, 0, 0)
_G.UseTeamColor = true

--------------------------------------------------------------------
local Holder = Instance.new("Folder", game.CoreGui)
Holder.Name = "ESP"

local Box = Instance.new("BoxHandleAdornment")
Box.Name = "nilBox"
Box.Size = Vector3.new(1, 2, 1)
Box.Color3 = Color3.new(100 / 255, 100 / 255, 100 / 255)
Box.Transparency = 0.7
Box.ZIndex = 0
Box.AlwaysOnTop = false
Box.Visible = false

local NameTag = Instance.new("BillboardGui")
NameTag.Name = "nilNameTag"
NameTag.Enabled = false
NameTag.Size = UDim2.new(0, 200, 0, 50)
NameTag.AlwaysOnTop = true
NameTag.StudsOffset = Vector3.new(0, 1.8, 0)
local Tag = Instance.new("TextLabel", NameTag)
Tag.Name = "Tag"
Tag.BackgroundTransparency = 1
Tag.Position = UDim2.new(0, -50, 0, 0)
Tag.Size = UDim2.new(0, 300, 0, 20)
Tag.TextSize = 15
Tag.TextColor3 = Color3.new(100 / 255, 100 / 255, 100 / 255)
Tag.TextStrokeColor3 = Color3.new(0 / 255, 0 / 255, 0 / 255)
Tag.TextStrokeTransparency = 0.4
Tag.Text = "nil"
Tag.Font = Enum.Font.SourceSansBold
Tag.TextScaled = false

local LoadCharacter = function(v)
	repeat wait() until v.Character ~= nil
	v.Character:WaitForChild("Humanoid")
	local vHolder = Holder:FindFirstChild(v.Name)
	vHolder:ClearAllChildren()
	local b = Box:Clone()
	b.Name = v.Name .. "Box"
	b.Adornee = v.Character
	b.Parent = vHolder
	local t = NameTag:Clone()
	t.Name = v.Name .. "NameTag"
	t.Enabled = true
	t.Parent = vHolder
	t.Adornee = v.Character:WaitForChild("Head", 5)
	if not t.Adornee then
		return UnloadCharacter(v)
	end
	t.Tag.Text = v.Name
	b.Color3 = Color3.new(v.TeamColor.r, v.TeamColor.g, v.TeamColor.b)
	t.Tag.TextColor3 = Color3.new(v.TeamColor.r, v.TeamColor.g, v.TeamColor.b)
	local Update
	local UpdateNameTag = function()
		if not pcall(function()
			v.Character.Humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
			local maxh = math.floor(v.Character.Humanoid.MaxHealth)
			local h = math.floor(v.Character.Humanoid.Health)
		end) then
			Update:Disconnect()
		end
	end
	UpdateNameTag()
	Update = v.Character.Humanoid.Changed:Connect(UpdateNameTag)
end

local UnloadCharacter = function(v)
	local vHolder = Holder:FindFirstChild(v.Name)
	if vHolder and (vHolder:FindFirstChild(v.Name .. "Box") ~= nil or vHolder:FindFirstChild(v.Name .. "NameTag") ~= nil) then
		vHolder:ClearAllChildren()
	end
end

local LoadPlayer = function(v)
	local vHolder = Instance.new("Folder", Holder)
	vHolder.Name = v.Name
	v.CharacterAdded:Connect(function()
		pcall(LoadCharacter, v)
	end)
	v.CharacterRemoving:Connect(function()
		pcall(UnloadCharacter, v)
	end)
	v.Changed:Connect(function(prop)
		if prop == "TeamColor" then
			UnloadCharacter(v)
			wait()
			LoadCharacter(v)
		end
	end)
	LoadCharacter(v)
end

local UnloadPlayer = function(v)
	UnloadCharacter(v)
	local vHolder = Holder:FindFirstChild(v.Name)
	if vHolder then
		vHolder:Destroy()
	end
end

for i,v in pairs(game:GetService("Players"):GetPlayers()) do
	spawn(function() pcall(LoadPlayer, v) end)
end

game:GetService("Players").PlayerAdded:Connect(function(v)
	pcall(LoadPlayer, v)
end)

game:GetService("Players").PlayerRemoving:Connect(function(v)
	pcall(UnloadPlayer, v)
end)

game:GetService("Players").LocalPlayer.NameDisplayDistance = 0

if _G.Reantheajfdfjdgs then
    return
end

_G.Reantheajfdfjdgs = ":suifayhgvsdghfsfkajewfrhk321rk213kjrgkhj432rj34f67df"

local players = game:GetService("Players")
local plr = players.LocalPlayer

function esp(target, color)
    if target.Character then
        if not target.Character:FindFirstChild("GetReal") then
            local highlight = Instance.new("Highlight")
            highlight.RobloxLocked = true
            highlight.Name = "GetReal"
            highlight.Adornee = target.Character
            highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            highlight.FillColor = color
            highlight.Parent = target.Character
        else
            target.Character.GetReal.FillColor = color
        end
    end
end

while task.wait() do
    for i, v in pairs(players:GetPlayers()) do
        if v ~= plr then
            esp(v, _G.UseTeamColor and v.TeamColor.Color or ((plr.TeamColor == v.TeamColor) and _G.FriendColor or _G.EnemyColor))
        end
    end
end
   end
})

local Tab = Window:MakeTab({
    Name = "越狱",
    Icon = "rbxassetid://78898298300077",
    PremiumOnly = false

})

Tab:AddButton({
	Name = "子弹范围",
	Callback = function()
	getgenv().toggled = true

getgenv().old = getgenv().old or require(game:GetService("ReplicatedStorage").Module.RayCast).RayIgnoreNonCollideWithIgnoreList

if getgenv().toggled then
	require(game:GetService("ReplicatedStorage").Module.RayCast).RayIgnoreNonCollideWithIgnoreList = function(...)
		local nearestDistance, nearestEnemy = 600, nil
	    for i,v in pairs(game:GetService("Players"):GetPlayers()) do
	    	if v.Team ~= game:GetService("Players").LocalPlayer.Team and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
	    	    if (v.Character.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < nearestDistance then
	    	    	nearestDistance, nearestEnemy = (v.Character.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude, v
	    	    end
	    	end
	    end
	    local arg = {old(...)}
	    if (tostring(getfenv(2).script) == "BulletEmitter" or tostring(getfenv(2).script) == "Taser") and nearestEnemy then
		    arg[1] = nearestEnemy.Character.HumanoidRootPart
		    arg[2] = nearestEnemy.Character.HumanoidRootPart.Position
		end
	    return unpack(arg)
	end
else
	require(game:GetService("ReplicatedStorage").Module.RayCast).RayIgnoreNonCollideWithIgnoreList = getgenv().old
end
   end
})

Tab:AddButton({
	Name = "自动开枪",
	Callback = function()
	loadstring(game:HttpGet("https://shz.al/~killaura"))()
    end
})

local Tab = Window:MakeTab({
    Name = "灌篮模拟器",
    Icon = "rbxassetid://78898298300077",
    PremiumOnly = false

})

Tab:AddToggle({
	Name = "自动获取篮球",
	Default = false,
	Callback = function(bool)
	getgenv().balls = bool
   while game:GetService("RunService").RenderStepped:wait() do 
      if not balls then break end
      local args = {
         [1] = "/\229\133\179\229\141\161?\229\174\140\230\136\144\232\138\130\231\130\185",
         [2] = "\230\153\174\233\128\154\232\174\173\231\187\131",
         [3] = 0
     }

     game:GetService("ReplicatedStorage").WuKong.RemoteActionFunction:InvokeServer(unpack(args))     
   end
   end
})

Tab:AddToggle({
	Name = "自动获取奖杯",
	Default = false,
	Callback = function(bool)
	getgenv().cups = bool
   while game:GetService("RunService").RenderStepped:wait() do
      if not cups then break end
      local args = {
         [1] = "/\229\133\179\229\141\161?\229\174\140\230\136\144\232\138\130\231\130\185",
         [2] = "\230\140\145\230\136\152",
         [3] = 0
     }

     game:GetService("ReplicatedStorage").WuKong.RemoteActionFunction:InvokeServer(unpack(args))     
   end
   end
})

local Tab = Window:MakeTab({
    Name = "疯狂电梯",
    Icon = "rbxassetid://78898298300077",
    PremiumOnly = false

})

Tab:AddButton({
	Name = "传送VIP室",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Vip.CFrame * CFrame.new(0,5,0)
   end
})

Tab:AddButton({
	Name = "传送大厅",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Laaabby.CFrame * CFrame.new(0,10,0)
   end
})

Tab:AddButton({
	Name = "传送游戏",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Game.CFrame * CFrame.new(0,5,0)
   end
})

local Tab = Window:MakeTab({
    Name = "在披萨店工作",
    Icon = "rbxassetid://78898298300077",
    PremiumOnly = false

})

Tab:AddButton({
	Name = "远程变成经理",
	Callback = function()
	loadstring(game:HttpGet("https://pastefy.app/8Dwwekw2/raw"))()
	end
})

local Tab = Window:MakeTab({
	Name = "点击一块石头",
	Icon = "rbxassetid://78898298300077",
	PremiumOnly = false
})

local workerOptions = {
	"员工1",
	"员工2",
	"员工3",
	"员工4",
}

local selectedWorker = workerOptions[1]
local isWorkerAutofarmEnabled = false

local WorkerDropdown = Tab:AddDropdown({
	Name = "选择员工",
	Default = selectedWorker,
	Options = workerOptions,
	Callback = function(Value)
		selectedWorker = Value
	end
})

local WorkerToggle = Tab:AddToggle({
	Name = "自动员工",
	Default = isWorkerAutofarmEnabled,
	Callback = function(Value)
		isWorkerAutofarmEnabled = Value
		if isWorkerAutofarmEnabled then
			OrionLib:MakeNotification({
				Name = "警告！",
				Content = "员工自动装配始于选定的员工: " .. selectedWorker,
				Image = "rbxassetid://78898298300077",
				Time = 5
			})  
			while isWorkerAutofarmEnabled do
				local args = {
					[1] = selectedWorker,
				}

				game:GetService("ReplicatedStorage").Modules.WorkerModule.Remote:FireServer(unpack(args))

				wait(0.001)
			end
		end
	end
})

local isGemAutofarmEnabled = false
local isOPAfkAutofarmEnabled = false

Tab:AddToggle({
	Name = "自动收集宝石",
	Default = isGemAutofarmEnabled,
	Callback = function(Value)
		isGemAutofarmEnabled = Value
		while isGemAutofarmEnabled do
			game:GetService("ReplicatedStorage").Remotes.GemEarned:FireServer()
			game:GetService("ReplicatedStorage").Remotes.RockClick:FireServer()
			wait(0.001)
		end
	end
})

Tab:AddToggle({
	Name = "自动重生自动宝石自动升级(反挂机)",
	Default = isOPAfkAutofarmEnabled,
	Callback = function(Value)
		isOPAfkAutofarmEnabled = Value
		while isOPAfkAutofarmEnabled do
			if isRockAndGem then
				game:GetService("ReplicatedStorage").Remotes.RockClick:FireServer()
				game:GetService("ReplicatedStorage").Remotes.GemEarned:FireServer()
			else
				local args = {
					[1] = "MainLevel"
				}
				game:GetService("ReplicatedStorage").Modules.StatModule.RemoteEventU:FireServer(unpack(args))
				game:GetService("ReplicatedStorage").Modules.RebirthModule.RemoteEvent:FireServer()
			end
			isRockAndGem = not isRockAndGem
			wait(0.001)
		end
	end
})

local isTpToGemsEnabled = false

Tab:AddToggle({
	Name = "自动传送宝石",
	Default = isTpToGemsEnabled,
	Callback = function(Value)
		isTpToGemsEnabled = Value
		while isTpToGemsEnabled do
			local player = game.Players.LocalPlayer
			local character = player.Character or player.CharacterAdded:Wait()
			local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

			local gemDroplings = game.Workspace.Map.GemDroplings

			local gemPart = gemDroplings:GetChildren()[1]

			if gemPart then
				local originalCFrame = humanoidRootPart.CFrame

				humanoidRootPart.CFrame = gemPart.CFrame
				wait(1/10)

				humanoidRootPart.CFrame = originalCFrame
			else
				OrionLib:MakeNotification({
					Name = "错误",
					Content = "没有找到宝石",
					Image = "rbxassetid://4335482575",
					Time = 5
				})
				isTpToGemsEnabled = false  -- Break the loop if no gems are found
			end

			wait(0.01)  -- Wait for 5 seconds before teleporting again
		end
	end
})

local Tab = Window:MakeTab({
    Name = "军事大亨",
    Icon = "rbxassetid://78898298300077",
    PremiumOnly = false

})

Tab:AddToggle({
	Name = "自动获取金钱",
	Default = false,
	Callback = function(val)
	  getgenv().cashtog = val
    end
})

task.spawn(
    function()
        while task.wait(1) do
            if getgenv().cashtog then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").PlayerTycoons[tostring(getHash())].Essentials.Giver.CollectButton.CFrame * CFrame.new(0,3,0)
            end
        end
    end
)

local Tab = Window:MakeTab({
    Name = "节日大亨",
    Icon = "rbxassetid://78898298300077",
    PremiumOnly = false

})

Tab:AddTextbox({
	Name = "修改金钱",
	Default = "",
	TextDisappear = true,
	Callback = function(txt)
	   game:GetService("ReplicatedStorage").RemoteObjects.DanceGameCash:FireServer(txt)
	end
})

local Tab = Window:MakeTab({
    Name = "被超快速的墙碾碎",
    Icon = "rbxassetid://78898298300077",
    PremiumOnly = false

})

Tab:AddToggle({
	Name = "自动获取积分",
	Default = false,
	Callback = function(bool)
	_G.autofarm = bool;
   end
})

while wait() do
		if _G.autofarm == true then
            task.wait(0.025)
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1041.84729, 24.021759, 410.903748, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            task.wait(0.03)
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1041.06726, 16.3217564, 412.603729, 0, 0, -1, 0, 1, 0, 1, 0, 0)
			task.wait(0.17)
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-737.947266, 24.021759, 238.003754, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            task.wait(0.03)
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-739.147522, 16.3198643, 231.56601, 0, 0, -1, 0, 1, 0, 1, 0, 0)
			task.wait(0.17)
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-441.247253, 24.021759, 411.503754, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            task.wait(0.03)
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-439.762268, 16.3393345, 417.383698, 0, 0, -1, 0, 1, 0, 1, 0, 0)
			task.wait(0.17)
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-139.082031, 16.3098545, 237.155304, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            task.wait(0.03)
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-139.147278, 24.021759, 238.203751, 1, 0, 0, 0, 1, 0, 0, 0, 1)
			task.wait(0.14)
			prev = game:GetService("Players").LocalPlayer.Character:WaitForChild('HumanoidRootPart').CFrame
			game:GetService("Players").LocalPlayer.Character.Parent = workspace.Terrain
			game:GetService("Players").LocalPlayer.Character:BreakJoints()
			game:GetService('Workspace'):WaitForChild(game:GetService("Players").LocalPlayer.Name)
			game:GetService("Players").LocalPlayer.Character:WaitForChild('HumanoidRootPart').CFrame = prev
		end
	end
	

   
end)
