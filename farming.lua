script_key="dZhELTtXOWVyVkTKydlTWlDpPGRWUYSr";
setfpscap(5)
getgenv().petsGoConfig = {
    AUTO_RESTART = true,
    -- true/false (true = consume, false = automail)
    CONSUME_CORRUPTED_HUGE_BAIT = true,
    CONSUME_ALL_ENCHANT_SAFE = false,
    CONSUME_ALL_MINING_CHEST = true,
    CONSUME_EVENT_EGG = true, -- Hype eggs not included
    CONSUME_ALL_THIEVING_CHEST = true,
    CONSUME_INSTA_LUCK_4 = false,
    IGNORE_DICE_COMBO = false, -- Consume Insta Luck 3 without combo
    CONSUME_VAULT_KEY = true,

    WEBHOOK_URL = "https://discord.com/api/webhooks/1332679074933510239/DqzGuqp98v9mU8jz7U0fOc8l2A5wgMjqDMjzxMH7YKJOecVYiHGnlp7ezUocFvGT_q8O",
    MAILING_WEBHOOK_URL = "https://discord.com/api/webhooks/1332679165442265129/N4G73oCnpZS-WMWLtSYvEyobeN1Tu6zxH7AD26CDc0rdaED8miWorKPnhP1Iqf0Os_LS",
    DISCORD_ID = "1168121186790686779",
    WEBHOOK_ODDS = 100000000, -- Minimum Pet Odds To Trigger Webhook

    DIAMOND_EGG = true,  -- true = Diamond Egg, false = F2P Egg
    MINE_ALL_ORES = true,  -- true = all ore, false = runic & event ore
    
    MAILING = true,  -- Auto mail
    MAIL_WEBHOOK_ODDS = 1000000000, -- Minimum Pet Odds To Trigger MAIL Webhook
    MAIL_PET_ODDS = 1000000000,  -- Minimum Pet Odds To Mail
    MAIL_GEMS_MIN = 100000,  -- Minimum Gems to mail out

    USERNAME_TO_MAIL = {
"Drift_Puls3",
"WyattArrow2019",
"XxHyperAlphaxX30",
"XxVictoriaFlamexX201",
"Julian_Cookie2016YT",
"EchoLegend_YT",
"Ezra_Hyper2019",
"GigaRogue2019",
"HannahEagl32006",
"XxSebastianR0guexX",
"WyattPandaDrift",
"EthanQueenOrbitYT",
"XxEliBearBladexX2013",
"BearBlazeHer096",
"Pix3l_Primal",
"AvaGalaxy49",
"FireEchoMaster",
"Jayd3nCha0s2016",
"XxMateoFrostProxX202",
"Ac3_L3g3nd2019",
    } -- Mail to username, Example : USERNAME_TO_MAIL = {"username1", "username2"}
}

loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/3bd4d9c6addd473626372179ee4a4be3.lua"))()

