ESX = nil

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        if ESX == nil then
            TriggerEvent('esx:getSharedObject', function(obj)
                ESX = obj
            end)
            Citizen.Wait(50)
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(Config.Czas)

        TriggerServerEvent('aqua_antyping:checkPing')
    end
end)

RegisterNetEvent('aqua_antyping:kickPlayer')
AddEventHandler('aqua_antyping:kickPlayer', function(ping)
    TriggerServerEvent('aqua_antyping:kickPlayerS', ping)
end)