local TeleportService = game:GetService("TeleportService")
local Players = game:GetService("Players")
local PlaceID = 15089506416 -- The Place ID to teleport players to
local Loop = true

while Loop do
    for _, player in pairs(Players:GetPlayers()) do
        local success, errorMsg = pcall(function()
            TeleportService:Teleport(PlaceID, player)
        end)
        
        if not success then
            warn("Failed to teleport player: " .. errorMsg)
        end
    end
    
    wait(1) -- Use wait() to create a delay
end
