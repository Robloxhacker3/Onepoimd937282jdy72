-- Create ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "InfernalUI"
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Create Draggable Frame
local mainFrame = Instance.new("Frame")
mainFrame.Name = "MainFrame"
mainFrame.Size = UDim2.new(0, 300, 0, 500)
mainFrame.Position = UDim2.new(0.5, -150, 0.5, -250)
mainFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 255) -- Blue color
mainFrame.BackgroundTransparency = 0.3 -- Slightly transparent
mainFrame.BorderSizePixel = 0
mainFrame.Active = true
mainFrame.Draggable = true -- Makes the frame draggable
mainFrame.Parent = screenGui

-- Enable Scrolling
local scrollingFrame = Instance.new("ScrollingFrame")
scrollingFrame.Name = "ScrollingFrame"
scrollingFrame.Size = UDim2.new(1, 0, 1, 0)
scrollingFrame.CanvasSize = UDim2.new(0, 0, 2, 0)
scrollingFrame.ScrollBarThickness = 8
scrollingFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 255) -- Blue color
scrollingFrame.BackgroundTransparency = 0.4 -- More transparent for scrolling
scrollingFrame.BorderSizePixel = 0
scrollingFrame.Parent = mainFrame

-- Add Title
local titleLabel = Instance.new("TextLabel")
titleLabel.Name = "TitleLabel"
titleLabel.Size = UDim2.new(1, 0, 0, 50)
titleLabel.Position = UDim2.new(0, 0, 0, 0)
titleLabel.Text = "Infernal UI"
titleLabel.Font = Enum.Font.GothamBold
titleLabel.TextSize = 20
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
titleLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 200) -- Blue for the title
titleLabel.BackgroundTransparency = 0.2 -- Slight transparency
titleLabel.BorderSizePixel = 0
titleLabel.Parent = scrollingFrame

-- Function to create buttons
local function createButton(name, position, callback)
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0.9, 0, 0, 50)
    button.Position = position
    button.Text = name
    button.Font = Enum.Font.Gotham
    button.TextSize = 18
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.BackgroundColor3 = Color3.fromRGB(0, 0, 200) -- Blue button
    button.BackgroundTransparency = 0.3 -- Slight transparency
    button.BorderSizePixel = 0
    button.Parent = scrollingFrame
    button.MouseButton1Click:Connect(callback)
    return button
end

-- Bang V2 Button
createButton("Bang V2", UDim2.new(0.05, 0, 0.2, 0), function()
    local character = game.Players.LocalPlayer.Character
    if character and character:FindFirstChild("Humanoid") then
        local rigType = character.Humanoid.RigType
        if rigType == Enum.HumanoidRigType.R15 then
            loadstring(game:HttpGet("https://pastebin.com/raw/1ePMTt9n"))()
        elseif rigType == Enum.HumanoidRigType.R6 then
            loadstring(game:HttpGet("https://pastebin.com/raw/aPSHMV6K"))()
        end
    else
        warn("Character or Humanoid not found!")
    end
end)

-- Suck (by me) Button
createButton("Suck (by me)", UDim2.new(0.05, 0, 0.3, 0), function()
    local character = game.Players.LocalPlayer.Character
    if character and character:FindFirstChild("Humanoid") then
        local rigType = character.Humanoid.RigType
        if rigType == Enum.HumanoidRigType.R15 then
            loadstring(game:HttpGet("https://pastebin.com/raw/p8yxRfr4"))()
        elseif rigType == Enum.HumanoidRigType.R6 then
            loadstring(game:HttpGet("https://pastebin.com/raw/SymCfnAW"))()
        end
    else
        warn("Character or Humanoid not found!")
    end
end)

-- Jerk (half me) Button
createButton("Jerk (half me)", UDim2.new(0.05, 0, 0.4, 0), function()
    local character = game.Players.LocalPlayer.Character
    if character and character:FindFirstChild("Humanoid") then
        local rigType = character.Humanoid.RigType
        if rigType == Enum.HumanoidRigType.R15 then
            loadstring(game:HttpGet("https://pastefy.app/YZoglOyJ/raw"))()
        elseif rigType == Enum.HumanoidRigType.R6 then
            loadstring(game:HttpGet("https://pastefy.app/wa3v2Vgm/raw"))()
        end
    else
        warn("Character or Humanoid not found!")
    end
end)

-- Tuber Sound Button
createButton("Play Tuber Sound", UDim2.new(0.05, 0, 0.5, 0), function()
    -- Create a sound object
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://6129291390" -- Tuber Sound ID
    sound.Volume = 10 -- Set a high volume for everyone to hear
    sound.Looped = false -- Play once
    sound.PlayOnRemove = true -- Ensure it plays when destroyed
    sound.Parent = workspace

    -- Play the sound globally
    sound:Play()
    wait(3) -- Duration of the sound before cleanup
    sound:Destroy()
end)

-- Achromatic V2 Button
createButton("Achromatic V2", UDim2.new(0.05, 0, 0.6, 0), function()
    loadstring(game:HttpGet("https://pastebin.com/raw/2cqh97aB"))()
end)

-- QuirkyCMD Button
createButton("QuirkyCMD", UDim2.new(0.05, 0, 0.7, 0), function()
    loadstring(game:HttpGet("https://gist.github.com/someunknowndude/38cecea5be9d75cb743eac8b1eaf6758/raw"))()
end)

-- KillBot V2 Button
createButton("KillBot V2", UDim2.new(0.05, 0, 0.8, 0), function()
    loadstring(game:HttpGetAsync("https://bit.ly/3sQWSuV"))()
end)

-- Sans Button
createButton("Sans", UDim2.new(0.05, 0, 0.9, 0), function()
    loadstring(game:HttpGetAsync("https://bit.ly/3vMd56u"))()
end)

-- Minigun Button
createButton("Minigun", UDim2.new(0.05, 0, 1.0, 0), function()
    loadstring(game:HttpGetAsync("https://bit.ly/3Cqns13"))()
end)

-- Reaper Button
createButton("Reaper", UDim2.new(0.05, 0, 1.1, 0), function()
    loadstring(game:HttpGetAsync("https://bit.ly/3HTwHIe"))()
end)

-- Dual Pink Guns Button
createButton("Dual Pink Guns", UDim2.new(0.05, 0, 1.2, 0), function()
    loadstring(game:HttpGetAsync("https://bit.ly/3vOnA9r"))()
end)

-- Corrupted Overseer Button
createButton("Corrupted Overseer", UDim2.new(0.05, 0, 1.3, 0), function()
    loadstring(game:HttpGetAsync("https://bit.ly/3q8ECf5"))()
end)

-- Sniper Button
createButton("Sniper", UDim2.new(0.05, 0, 1.4, 0), function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Sniper"))()
end)

createButton("fe neko girl", UDim2.new(0.05, 0, 1.5, 0), function()
DisableFlingHealthBar = false
loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Neko"))()
end)

createButton("fe ak 47", UDim2.new(0.05, 0, 1.6, 0), function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/AK-47"))()
end)
createButton("cool gunz"), Udim2.new(0.05, 0, 1.7, 0), function()
loadstring(game:HttpGet('https://paste.ee/r/bXruF/0'))()
end)
-- Add Toggleable Cube
local toggleButton = Instance.new("TextButton")
toggleButton.Size = UDim2.new(0, 30, 0, 30)
toggleButton.Position = UDim2.new(1, -40, 0, 10) -- Top-right corner
toggleButton.Text = "X"
toggleButton.Font = Enum.Font.GothamBold
toggleButton.TextSize = 14
toggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
toggleButton.BackgroundColor3 = Color3.fromRGB(0, 0, 200)
toggleButton.BackgroundTransparency = 0.2
toggleButton.BorderSizePixel = 0
toggleButton.Parent = mainFrame

-- Toggle GUI visibility
local guiVisible = true
toggleButton.MouseButton1Click:Connect(function()
    guiVisible = not guiVisible
    mainFrame.Visible = guiVisible
end)
