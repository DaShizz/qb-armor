local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('qb-setarmor:Server:GetPlayerarmor', function()
    local src = source
getArmor(src)
end)


-- set armor after using it
RegisterNetEvent('qb-setarmor:Server:SetPlayerArmor', function(amount)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.SetMetaData("armor", amount)

end)


-- Update it
RegisterNetEvent('qb-setarmor:Server:update', function(armorAmount)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.SetMetaData("armor", armorAmount)
end)


-- function just to update it..
function getArmor(src)
    Player = QBCore.Functions.GetPlayer(src)
    armorAmount = Player.PlayerData.metadata.armor
    SetPedArmour(src, armorAmount)
        if armorAmount > 0 then
            SetPedArmour(src, armorAmount)
        end
end