Citizen.CreateThread(function()
    while true do
        Citizen.Wait(Config.Czas)

        TriggerServerEvent('aqua_antyping:checkPing')
    end
end)
