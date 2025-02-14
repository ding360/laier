-- 使用AI 豆包
repeat
    task.wait()
until game:IsLoaded()

local library = {}
local services = {
    CoreGui = game:GetService('CoreGui'),
    TweenService = game:GetService('TweenService'),
    Players = game:GetService('Players')
}

local function createUILibrary(text, imageId)
    -- 1cm = 10px in Roblox UI, so 20cm x 10cm is 200px x 100px
    local width = 200
    local height = 100

    -- 创建ScreenGui作为UI的根容器
    local screenGui = Instance.new('ScreenGui')
    screenGui.Parent = services.CoreGui

    -- 创建一个Frame用于包含文本和图片
    local mainFrame = Instance.new('Frame')
    mainFrame.Parent = screenGui
    mainFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    mainFrame.Size = UDim2.new(0, width, 0, height)
    -- 修改为屏幕中心位置
    mainFrame.Position = UDim2.new(0.5, -width / 2, 0.5, -height / 2)

    -- 创建文本标签
    local textLabel = Instance.new('TextLabel')
    textLabel.Parent = mainFrame
    textLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    textLabel.BackgroundTransparency = 1
    -- 将文本标签移动到左上角
    textLabel.Position = UDim2.new(0, 0, 0, 0)
    textLabel.Size = UDim2.new(1, 0, 0.3, 0)
    textLabel.Font = Enum.Font.GothamSemibold
    textLabel.Text = text
    textLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
    textLabel.TextSize = 14
    textLabel.TextXAlignment = Enum.TextXAlignment.Left

    -- 创建图片标签
    local imageLabel = Instance.new('ImageLabel')
    imageLabel.Parent = mainFrame
    imageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    imageLabel.BackgroundTransparency = 1
    -- 将图片标签移动到正中间
    imageLabel.Position = UDim2.new(0.5, -imageLabel.AbsoluteSize.X / 2, 0.5, -imageLabel.AbsoluteSize.Y / 2)
    imageLabel.Size = UDim2.new(0.8, 0, 0.6, 0)
    imageLabel.Image = "rbxassetid://".. imageId
    imageLabel.ScaleType = Enum.ScaleType.Fit

    -- 3秒后摧毁UI库 可修改
    task.delay(3, function()
        screenGui:Destroy()
    end)

    return screenGui
end


-- 使用示例
local ui = createUILibrary('小皮死妈了', 18942670945) -- 可以将18942670945替换为其他实际的图片ID