-- Zombie Spawning Service
-- Akita
-- March 4, 2021


--<< Variables >>--

local ZombieSpawningService = {Client = {}}

--<< Services >>--

local replicatedStorage = game:GetService("ReplicatedStorage")
local serverStorage = game:GetService("ServerStorage")

--<< Templates >>--

local zombieTemplate = serverStorage.ZombieTemplate

--<< Folders >>--

local spawnpoints = workspace.Spawnpoints
local zombieSpawnpoints = spawnpoints.Zombie

--<< Functions >>--

function ZombieSpawningService:Start()
	local spawnpoints = zombieSpawnpoints:GetChildren()
end


function ZombieSpawningService:Init()
	
end


return ZombieSpawningService