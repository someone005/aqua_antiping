ESX = nil
TriggerEvent('hypex:getTwojStarySharedTwojaStaraObject', function(obj) ESX = obj end)

RegisterServerEvent('aqua_antyping:checkPing')
AddEventHandler('aqua_antyping:checkPing', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    local ping = GetPlayerPing(source)
    if ping > Config.Max then
        xPlayer.triggerEvent('aqua_antyping:kickPlayer', ping)
    end
end)

RegisterServerEvent('aqua_antyping:kickPlayerS')
AddEventHandler('aqua_antyping:kickPlayerS', function(ping)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.kick(Config.Powiadomienie .. ping)
    print("Kicked player with id " .. source .. " because of high ping - " .. ping .. "ms")
end)