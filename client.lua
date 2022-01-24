local QBCore = exports['qb-core']:GetCoreObject()
local Player = QBCore.Functions.GetPlayerData()
local waitTime = false
local refreshTimer = 30000


RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    TriggerServerEvent('qb-setarmor:Server:GetPlayerarmor')
end)

RegisterNetEvent('QBCore:Player:SetPlayerData', function(val)
    Player = val
end)

CreateThread(function()
    while true do
    Wait(1)
        if LocalPlayer.state.isLoggedIn then
            if not waitTime then
                waitTime = true
                local armorAmount = Player.metadata.armor
                TriggerServerEvent('qb-setarmor:Server:update', armorAmount)
                Wait(refreshTimer)
                waitTime = false
            end
        end
    end
end)