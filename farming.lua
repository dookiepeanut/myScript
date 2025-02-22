script_key="dZhELTtXOWVyVkTKydlTWlDpPGRWUYSr";
setfpscap(4)
getgenv().petsGoConfig = {
    AUTO_RESTART = true,
    -- true/false (true = consume, false = automail)
    CONSUME_CORRUPTED_HUGE_BAIT = true,
    CONSUME_ALL_ENCHANT_SAFE = false,
    CONSUME_ALL_MINING_CHEST = false,
    CONSUME_EVENT_EGG = false, -- Hype eggs not included
    CONSUME_ALL_THIEVING_CHEST = false,
    CONSUME_INSTA_LUCK_4 = true,
    IGNORE_DICE_COMBO = false, -- Consume Insta Luck 3 without combo

    WEBHOOK_URL = "",
    MAILING_WEBHOOK_URL = "",
    DISCORD_ID = "",
    WEBHOOK_ODDS = 100000000, -- Minimum Pet Odds To Trigger Webhook

    DIAMOND_EGG = true,  -- true = Diamond Egg, false = F2P Egg
    MINE_ALL_ORES = true,  -- true = all ore, false = runic & event ore
    
    MAILING = true,  -- Auto mail
    MAIL_WEBHOOK_ODDS = 1000000000, -- Minimum Pet Odds To Trigger MAIL Webhook
    MAIL_PET_ODDS = 1000000000,  -- Minimum Pet Odds To Mail
    MAIL_GEMS_MIN = 100000,  -- Minimum Gems to mail out

    USERNAME_TO_MAIL = {
        "crystalwildcat5503",
        "whitestork9667",
        "sincerecopperhead301",
        "sweetguppy6625",
        "curiousquoll2413",
        "pompousdogfish2047",
        "realisticnyala8282",
        "hiddenzebu8706",
        "maizebeaver2483",
        "unyieldinganteater38",
        "roseelephant7198",
        "olivinegibbon2747",
        "amaranthowl3386",
        "refinedtench6232",
        "cordialtarantula5872",
        "coppergerbil6786",
        "perfectquoll4121",
        "ivoryherring3885",
        "abidingpetrel4975",
        "quaintbettong6988",
        "steadydragon5837",
        "uptightibis5096",
        "maskedrobin5121",
        "benigncoyote4273",
        "delectableeagle6369",
    } -- Mail to username, Example : USERNAME_TO_MAIL = {"username1", "username2"}
}

loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/3bd4d9c6addd473626372179ee4a4be3.lua"))()

