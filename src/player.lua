-- Player script for Night Watch: Aswang Hunt game

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- Player settings
local playerSettings = {
    health = 100,
    stamina = 100,
    inventory = {}
}

-- Function to update player health
local function updateHealth(player, amount)
    playerSettings.health = math.clamp(playerSettings.health + amount, 0, 100)
    print("Player " .. player.Name .. " health: " .. playerSettings.health)
end

-- Function to update player stamina
local function updateStamina(player, amount)
    playerSettings.stamina = math.clamp(playerSettings.stamina + amount, 0, 100)
    print("Player " .. player.Name .. " stamina: " .. playerSettings.stamina)
end

-- Function to add item to player inventory
local function addToInventory(player, item)
    table.insert(playerSettings.inventory, item)
    print("Player " .. player.Name .. " added " .. item .. " to inventory")
end

-- Initialize player
local function initializePlayer(player)
    print("Initializing player " .. player.Name)
    -- Set up player with default settings
end

-- Connect events
Players.PlayerAdded:Connect(initializePlayer)

-- Example usage
-- updateHealth(player, -10) -- Decrease player health by 10
-- updateStamina(player, -5) -- Decrease player stamina by 5
-- addToInventory(player, "Pistol") -- Add pistol to player inventory