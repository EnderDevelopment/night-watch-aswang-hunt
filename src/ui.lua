-- UI script for Night Watch: Aswang Hunt game

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- Function to create a GUI for a player
local function createPlayerGUI(player)
    local playerGui = Instance.new("ScreenGui")
    playerGui.Name = "PlayerGUI"
    playerGui.Parent = player:WaitForChild("PlayerGui")
    
    -- Create health bar
    local healthBar = Instance.new("Frame")
    healthBar.Name = "HealthBar"
    healthBar.Size = UDim2.new(0.2, 0, 0.05, 0)
    healthBar.Position = UDim2.new(0.4, 0, 0.1, 0)
    healthBar.BackgroundColor3 = Color3.new(1, 0, 0)
    healthBar.Parent = playerGui
    
    -- Create stamina bar
    local staminaBar = Instance.new("Frame")
    staminaBar.Name = "StaminaBar"
    staminaBar.Size = UDim2.new(0.2, 0, 0.05, 0)
    staminaBar.Position = UDim2.new(0.4, 0, 0.2, 0)
    staminaBar.BackgroundColor3 = Color3.new(0, 1, 0)
    staminaBar.Parent = playerGui
    
    print("Created GUI for player " .. player.Name)
end

-- Function to update health bar
local function updateHealthBar(player, health)
    local playerGui = player:WaitForChild("PlayerGui"):FindFirstChild("PlayerGUI")
    if playerGui then
        local healthBar = playerGui:FindFirstChild("HealthBar")
        if healthBar then
            healthBar.Size = UDim2.new(health / 100 * 0.2, 0, 0.05, 0)
            print("Updated health bar for player " .. player.Name)
        end
    end
end

-- Function to update stamina bar
local function updateStaminaBar(player, stamina)
    local playerGui = player:WaitForChild("PlayerGui"):FindFirstChild("PlayerGUI")
    if playerGui then
        local staminaBar = playerGui:FindFirstChild("StaminaBar")
        if staminaBar then
            staminaBar.Size = UDim2.new(stamina / 100 * 0.2, 0, 0.05, 0)
            print("Updated stamina bar for player " .. player.Name)
        end
    end
end

-- Initialize player GUI
local function initializePlayerGUI(player)
    createPlayerGUI(player)
    -- Example usage
    updateHealthBar(player, 100) -- Set initial health to 100
    updateStaminaBar(player, 100) -- Set initial stamina to 100
end

-- Connect events
Players.PlayerAdded:Connect(initializePlayerGUI)