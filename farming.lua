script_key="dZhELTtXOWVyVkTKydlTWlDpPGRWUYSr";
setfpscap(3)
getgenv().petsGoConfig = {
    AUTO_RESTART = true,
    -- true/false (true = consume, false = automail)
    CONSUME_CORRUPTED_HUGE_BAIT = true,
    CONSUME_ALL_ENCHANT_SAFE = false,
    CONSUME_ALL_MINING_CHEST = true,
    CONSUME_EVENT_EGG = true, -- Hype eggs not included
    CONSUME_ALL_THIEVING_CHEST = false,
    CONSUME_INSTA_LUCK_4 = true,
    IGNORE_DICE_COMBO = false, -- Consume Insta Luck 3 without combo
    CONSUME_VAULT_KEY = true,

    WEBHOOK_URL = "",
    MAILING_WEBHOOK_URL = "",
    DISCORD_ID = "1168121186790686779",
    WEBHOOK_ODDS = 100000000, -- Minimum Pet Odds To Trigger Webhook

    DIAMOND_EGG = true,  -- true = Diamond Egg, false = F2P Egg
    MINE_ALL_ORES = true,  -- true = all ore, false = runic & event ore
    
    MAILING = true,  -- Auto mail
    MAIL_WEBHOOK_ODDS = 1000000000, -- Minimum Pet Odds To Trigger MAIL Webhook
    MAIL_PET_ODDS = 1000000000,  -- Minimum Pet Odds To Mail
    MAIL_GEMS_MIN = 100000,  -- Minimum Gems to mail out

    USERNAME_TO_MAIL = {
        "XxMateoVoidxX",
        "JulianFire2023",
        "EchoMagic81",
        "OliviaR0gue2002",
        "EliRiftGlitch_YT",
        "FoxFury2004_YT",
        "XxPaisley_ChaosxX",
        "MasterV0rtexFlash201",
        "OliverViper2015",
        "SparkPixelYT",
        "Bl0ck_Rift2020",
        "StarryTurbo2011",
        "LionHazeGalaxy96",
        "Lion_Chill63",
        "St0rmOm3ga",
        "XxThunder_Fusi0nxX",
        "RogueWraith_YT",
        "Am3liaCooki3Pow3r",
        "ElijahZapWolf55",
        "Spark_Byt3",
    } -- Mail to username, Example : USERNAME_TO_MAIL = {"username1", "username2"}
}

loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/3bd4d9c6addd473626372179ee4a4be3.lua"))()

