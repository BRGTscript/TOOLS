local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local TS = game:GetService("TweenService")

local mainHolder = playerGui:FindFirstChild("NOTI")
if not mainHolder then
    mainHolder = Instance.new("ScreenGui")
    mainHolder.Name = "NOTI"
    mainHolder.ResetOnSpawn = false
    mainHolder.DisplayOrder = 999
    mainHolder.Parent = playerGui
    
    local layoutFrame = Instance.new("Frame")
    layoutFrame.Name = "Container"
    layoutFrame.Position = UDim2.new(1, -165, 0.2, 0) 
    layoutFrame.Size = UDim2.new(0, 155, 0, 400)
    layoutFrame.BackgroundTransparency = 1
    layoutFrame.Parent = mainHolder

    local layout = Instance.new("UIListLayout", layoutFrame)
    layout.VerticalAlignment = Enum.VerticalAlignment.Top
    layout.Padding = UDim.new(0, 3) 
end

local function ShowNotif(title, message)
    local sfx = Instance.new("Sound")
    sfx.SoundId = "rbxassetid://5276754334"   -- PALITAN MOTO KUNG ANONG SOUND ANG GUSTO MO
    sfx.Volume = 0.40     -- GAANO KALAKAS ANG SOUND
    sfx.Parent = game:GetService("SoundService")
    sfx:Play()
    game:GetService("Debris"):AddItem(sfx, 2)

    local finalSize = UDim2.new(1, 0, 0, 30)
    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0, 0, 0, 0)
    frame.Position = UDim2.new(0.5, 0, 0.5, 0)
    frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    frame.BackgroundTransparency = 0.5
    frame.BorderSizePixel = 0
    frame.ClipsDescendants = true 
    frame.Parent = mainHolder.Container

    Instance.new("UICorner", frame).CornerRadius = UDim.new(0, 4)

    local tLabel = Instance.new("TextLabel")
    tLabel.Size = UDim2.new(1, -10, 0, 12)
    tLabel.Position = UDim2.new(0, 8, 0, 3)
    tLabel.BackgroundTransparency = 1
    tLabel.Text = title:upper()
    tLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    tLabel.TextSize = 10
    tLabel.Font = Enum.Font.SourceSansBold
    tLabel.TextXAlignment = Enum.TextXAlignment.Left
    tLabel.Parent = frame

    local mLabel = Instance.new("TextLabel")
    mLabel.Size = UDim2.new(1, -10, 0, 12)
    mLabel.Position = UDim2.new(0, 8, 0, 15)
    mLabel.BackgroundTransparency = 1
    mLabel.Text = message
    mLabel.TextColor3 = Color3.fromRGB(0, 255, 127)
    mLabel.TextSize = 9
    mLabel.Font = Enum.Font.SourceSans
    mLabel.TextXAlignment = Enum.TextXAlignment.Left
    mLabel.Parent = frame

    TS:Create(frame, TweenInfo.new(2, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Size = finalSize}):Play()

    task.delay(1, function()   -- GAANO KATAGAL MAWALA ANG NOTI
        local fade = TS:Create(frame, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {BackgroundTransparency = 1, Position = UDim2.new(1.5, 0, 0, 0)})
        TS:Create(tLabel, TweenInfo.new(0.4), {TextTransparency = 1}):Play()
        TS:Create(mLabel, TweenInfo.new(0.4), {TextTransparency = 1}):Play()
        fade:Play()
        fade.Completed:Connect(function() frame:Destroy() end)
    end)
end
































local library = loadstring(game:HttpGet("https://gist.githubusercontent.com/Kyle-scriptmaker/818dbce2fcc9e3bd2b9db0d36655e363/raw/BRGT%20HUB%20ONLY%20BRGT%20.LUA"))()
local KEYPAY = "https://gist.githubusercontent.com/Kyle-scriptmaker/1ad001d6115420be9cdbe5a79f2ea77f/raw/BUILD%20A%20BOAT%20OF%20TREASURE%20KEY%20.lua"
local BRGT = library:Load(KEYPAY, "SCRIPT TOOLS")



-- SPY SCRIPT TAB
local SPYSCRIPT = BRGT:AddTab("SPY SCRIPTS", "SPYING THE REMOTE EVEND, AND LOCALSCRIPT AND MORE.")




-- TURTLE SPY
SPYSCRIPT:AddButton("TURTLE SPY SCRIPT", "", function()
ShowNotif("EXECUTE TURTLE SPY", "WORKING...")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ltseverydayyou/uuuuuuu/main/Turtle%20Spy.lua"))()
 print(".🛡️TURTLE SPY EXECUTE")
end)




-- COBALT
SPYSCRIPT:AddButton("COBALT SPY SCRIPT", "", function()
    ShowNotif("COBALT SPY EXECUTE", "WORKING...")
    loadstring(game:HttpGet("https://gitlab.com/upio/cobalt/-/releases/permalink/latest/downloads/Cobalt.luau"))()
 print(".🛡️COBALT SPY  EXECUTE")
end)




-- TAB EXPLORER SCRIPT
local EXLORERSCRIPT = BRGT:AddTab("EXPLORER SCRIPTS", "EXPLORER SCRIPT USE FOR EXPLORER SA FILES OF THE GAME AND SCRIPT.")



-- DEX EXPLORER
EXLORERSCRIPT:AddButton("DEX EXPLORER SCRIPT", "", function()
    ShowNotif("DEX EXPLORER EXECUTE", "WORKING...")
     loadstring(game:HttpGet("https://github.com/AZYsGithub/DexPlusPlus/releases/latest/download/out.lua"))()
 print("🛡️DEX EXPLORER EXECUTE")
end)
