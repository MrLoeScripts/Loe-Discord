local QBCore = exports['qb-core']:GetCoreObject()           -- For the get players callback

Citizen.CreateThread(function()
    -- Defined variables for usability
    local appId = appidhere                                 -- Server Discord Application ID, should be numbers
    local largeIcon = 'image_name'                          -- Name of Server Photo uploaded to Discord dev portal rich presence
    local smallIcon = 'image_name'                          -- Same as above for the smaller photo
    local hoverText = 'Server Name'                         -- Upper Title Text (spaces are fine)
    local connectUrl = "https://cfx.re/join/000000"         -- Server Connect URL
    local discordUrl = "https://discord.gg/nill"            -- Discord Connect URL

    while true do
        -- This gets the total number of players from the server for qb-core, can be changed for your own server
        QBCore.Functions.TriggerCallback('smallresources:server:GetCurrentPlayers', function(playerCount)

            SetDiscordAppId(appId)
            SetDiscordRichPresenceAsset(largeIcon)
            SetDiscordRichPresenceAssetText(hoverText)
            SetDiscordRichPresenceAssetSmall(smallIcon)
            SetDiscordRichPresenceAssetSmallText(hoverText)

            local richPresenceText = "Playing Servername | Players: " .. playerCount            -- Enter your server name here
            SetRichPresence(richPresenceText)


            SetDiscordRichPresenceAction(0, "Connect!", connectUrl)
            SetDiscordRichPresenceAction(1, "Discord!", discordUrl)
        end)

        Citizen.Wait(60000)                                                                     -- Update Interval, default is 60 seconds
    end
end)
