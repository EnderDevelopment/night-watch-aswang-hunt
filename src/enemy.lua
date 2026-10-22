-- Enemy script for Night Watch: Aswang Hunt game

local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- Enemy settings
local enemySettings = {
    health = 100,
    damage = 10,
    speed = 5
}

-- Function to update enemy health
local function updateEnemyHealth(enemy, amount)
    enemySettings.health = math.clamp(enemySettings.health + amount, 0, 100)
    print("Enemy " .. enemy.Name .. " health: " .. enemySettings.health)
end

-- Function to make enemy attack
local function enemyAttack(enemy, player)
    print("Enemy " .. enemy.Name .. " attacks player " .. player.Name)
    -- Implement attack logic here
end

-- Function to spawn enemy
local function spawnEnemy(enemyType, position)
    local enemy = Instance.new("Model")
    enemy.Name = enemyType
    enemy.PrimaryPart = Instance.new("Part")
    enemy.PrimaryPart.Position = position
    enemy.Parent = workspace
    
    print("Spawned " .. enemyType .. " at " .. tostring(position))
    
    return enemy
end

-- Example usage
-- local enemy = spawnEnemy("Aswang", Vector3.new(0, 0, 0))
-- updateEnemyHealth(enemy, -20) -- Decrease enemy health by 20
-- enemyAttack(enemy, player) -- Make enemy attack player