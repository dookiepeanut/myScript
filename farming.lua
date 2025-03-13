script_key="dZhELTtXOWVyVkTKydlTWlDpPGRWUYSr";
setfpscap(5)
getgenv().petsGoConfig = {
    AUTO_RESTART = true,
    -- true/false (true = consume, false = automail)
    CONSUME_CORRUPTED_HUGE_BAIT = true,
    CONSUME_ALL_MINING_CHEST = true,
    CONSUME_EVENT_EGG = true, -- Hype eggs not included
    CONSUME_INSTA_LUCK_4 = true,
    CONSUME_VAULT_KEY = true,
    CONSUME_KRAKEN_TENTACLE = true,
    CONSUME_BUCKET_O_CHUM = true,

    WEBHOOK_URL = "https://discord.com/api/webhooks/1332679074933510239/DqzGuqp98v9mU8jz7U0fOc8l2A5wgMjqDMjzxMH7YKJOecVYiHGnlp7ezUocFvGT_q8O",
    MAILING_WEBHOOK_URL = "https://discord.com/api/webhooks/1332679165442265129/N4G73oCnpZS-WMWLtSYvEyobeN1Tu6zxH7AD26CDc0rdaED8miWorKPnhP1Iqf0Os_LS",
    DISCORD_ID = "1168121186790686779",
    WEBHOOK_ODDS = 100000000, -- Minimum Pet Odds To Trigger Webhook

    DIAMOND_EGG = true,  -- true = Diamond Egg, false = F2P Egg
    MINE_ALL_ORES = false,  -- true = all ore, false = runic & event ore
    
    MAILING = false,  -- Auto mail
    SHOW_PET_WEBHOOK_USERNAME = true,
    MAIL_WEBHOOK_ODDS = 100000000, -- Minimum Pet Odds To Trigger MAIL Webhook
    MAIL_PET_ODDS = 100000000,  -- Minimum Pet Odds To Mail

    USERNAME_TO_MAIL = {""}, -- Mail to username, Example : USERNAME_TO_MAIL = {"username1", "username2"} 
}

for _, username in pairs(getgenv().petsGoConfig.USERNAME_TO_MAIL) do
    if game.Players.LocalPlayer.Name == username then
        getgenv().petsGoConfig.USERNAME_TO_MAIL = {""}
    end
end

loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/3bd4d9c6addd473626372179ee4a4be3.lua"))()

