QBCore = exports['qb-core']:GetCoreObject()
--   Player.Functions.GiveItem('sandwich', 1)
--Gathering Promethazine
RegisterNetEvent('CF-lean:server:GatheringPromethazine', function()
	local src = source
	local Player = QBCore.Functions.GetPlayer(src)
	Player.Functions.AddItem('promethazine', 1)
	TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['promethazine'], "add")
	TriggerClientEvent('QBCore:Notify', src, 'You made promethazine', "success")

end)
--Gathering Codeine
RegisterNetEvent('CF-lean:server:GatheringCodeine', function()
	local src = source
	local Player = QBCore.Functions.GetPlayer(src)
	Player.Functions.AddItem('codeine', 1)
	TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['codeine'], "add")
	TriggerClientEvent('QBCore:Notify', src, 'You made codeine', "success")

	end)
--Gathering Sprite
RegisterNetEvent('CF-lean:server:GatheringSprite',function()
	local src = source
	local Player =  QBCore.Functions.GetPlayer(src)
	Player.Functions.AddItem('sprite', 1)
	TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['sprite'], "add")
	TriggerClientEvent('QBCore:Notify', src, 'You gathered some sprite' , "success")
end)

-- Removing  Codeine, Promethazine, making coughsyrup
RegisterNetEvent('CF-lean:server:MakingCoughSyrup', function()
	local src = source
	local Player =  QBCore.Functions.GetPlayer(src)

	Player.Functions.RemoveItem('codeine',1)
	TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['codeine'],"remove")
	Player.Functions.RemoveItem('promethazine',1)
	TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['promethazine'],"remove")
	Player.Functions.AddItem('coughsyrup',1)
	TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['coughsyrup'], "add")


	end)


	-- Removing Sprite, Codeine, Promethazine, making lean
RegisterNetEvent('CF-lean:server:MakingLean', function()
	local src = source
	local Player = QBCore.Functions.GetPlayer(src)
	Player.Functions.RemoveItem('styrofoamcups', 1)
	TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['styrofoamcups'], "remove")
	Player.Functions.RemoveItem('sprite', 1)
	TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['sprite'], "remove")
	Player.Functions.RemoveItem('coughsyrup', 1)
	TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['coughsyrup'], "remove")
	Player.Functions.AddItem('lean', 1)
	TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['lean'], "add")
	end)

