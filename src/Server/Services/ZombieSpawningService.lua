-- Zombie Spawning Service
-- Akita
-- March 4, 2021


--<< Variables >>--

local ZombieSpawningService = {Client = {}}

local spawnDelay = 100

--<< Services >>--

local replicatedStorage = game:GetService("ReplicatedStorage")
local serverStorage = game:GetService("ServerStorage")

--<< Templates >>--

local zombieTemplate = serverStorage["Zombie Template"]

--<< Folders >>--

local spawnpoints = workspace.Spawnpoints
local zombieSpawnpoints = spawnpoints.Zombie

--<< Functions >>--

function ZombieSpawningService:Start()
	local spawnpoints = zombieSpawnpoints:GetChildren()

    while true do
        for i = 1, 4 do
            local zombieClone = zombieTemplate:Clone()
            local chosenSpawnpoint = spawnpoints[math.random(1, #spawnpoints)]

            if zombieClone then
                zombieClone.Parent = workspace
                zombieClone.HumanoidRootPart.CFrame = chosenSpawnpoint.CFrame
            end
        end

        wait(spawnDelay)
    end
end


function ZombieSpawningService:Init()
	
end


return ZombieSpawningService