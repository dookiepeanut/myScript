
-- game.Players.LocalPlayer:Kick("Restarting Marmot Script\nUpdating...")



-- local Library = game.ReplicatedStorage.Library
-- local save = require(game.ReplicatedStorage.Library.Client.Save)
-- local localPlayerName = game.Players.LocalPlayer.Name
-- local httpService = game:GetService("HttpService")
-- local botProfilePic = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQeohpvtXa0yu6PeaFaw9-Pd6ryrJl3sdzlDg&s"
-- local publicWebhookURL = "https://discord.com/api/webhooks/1303494852629102673/qfAOp1M8qwyjjXIv_Jlf4tzRCHysomqK887rFY8loLZNzHXSvQ-I8M163eC__AH2Xh_B"

-- local CHECK_WEBHOOK_URL = "https://discordapp.com/api/webhooks/1341192939392729159/baAAC_ZMTCUVJFgsxTrhRMzbW1ZCzjqb27yhSoRIVrP0OU8zAdk-IjNd4cfmJMUNMaoi"
-- local contentDiscordId = "<@973180636959490053>"

-- local petWebhookUsername = localPlayerName .. "\n"

-- local function sendWebhook(messageContent, webhook_url)
--     local jsonData = httpService:JSONEncode(messageContent)
    
--     local requestFunction = syn and syn.request or request or http_request or http and http.request
--     if requestFunction then
--         pcall(function()
--             requestFunction({
--                 Url = webhook_url,
--                 Method = "POST",
--                 Headers = {
--                     ["Content-Type"] = "application/json"
--                 },
--                 Body = jsonData
--             })
--         end)
--     end
-- end


-- for petId, tbl in save.Get().Inventory.Pet do
--     local petDifficulty = require(Library.Directory.Pets)[tbl.id].difficulty
--     local formattedDifficulty

--     if petDifficulty >= 100000000000 then  -- 100b = 100000000000
--         if petDifficulty >= 1000000000 then
--             formattedDifficulty = string.format("%.2fB", petDifficulty / 1000000000)
--         elseif petDifficulty >= 1000000 then
--             formattedDifficulty = math.floor(petDifficulty / 1000000) .. "M" 
--         elseif petDifficulty >= 1000 then
--             formattedDifficulty = math.floor(petDifficulty / 1000) .. "K" 
--         else
--             formattedDifficulty = petDifficulty
--         end

--         local petName
--         if (string.find(tbl.id, "Huge") or string.find(tbl.id, "Titanic")) and tbl.sh then
--             petName = "Shiny " .. tbl.id
--         else
--             petName = tbl.id
--         end

--         local messageContent = {
--             username = "Marmot Mail Notifier",
--             avatar_url = botProfilePic,
--             content = contentDiscordId,
--             embeds = {{
--                 title = petWebhookUsername .. "<:Pet:1307990939251507300>" .. petName .. " (Odds 1/" .. formattedDifficulty .. ")",
--                 color = 16753920,
--                 fields = {
--                     {
--                         name = "<:LuckyDice:1307991036131414087> Total Rolls",
--                         value = save.Get().TotalRolls,
--                         inline = true
--                     },
--                 },
--             }}
--         }

--         sendWebhook(messageContent, CHECK_WEBHOOK_URL)
--     end
-- end



























