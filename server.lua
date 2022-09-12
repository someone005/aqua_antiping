RegisterServerEvent('aqua_antyping:checkPing')
AddEventHandler('aqua_antyping:checkPing', function()
    local ping = GetPlayerPing(source)
    if ping > Config.Max then
       DropPlayer(Config.Powiadomienie .. ping)
       print("Kicked player with id " .. source .. " because of high ping - " .. ping .. "ms")
    end
end)
