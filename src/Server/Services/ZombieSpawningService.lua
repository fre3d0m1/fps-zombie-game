-- Zombie Spawning Service
-- Akita
-- March 4, 2021



local ZombieSpawningService = {Client = {}}


function ZombieSpawningService:Start()
	local replicatedStorage = game:GetService("ReplicatedStorage")
    local serverStorage = game:GetService("ServerStorage")

    local zombieTemplate = serverStorage.zombieTemplate
end


function ZombieSpawningService:Init()
	
end


return ZombieSpawningService