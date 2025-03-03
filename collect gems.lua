setfpscap(5)

script_key="dZhELTtXOWVyVkTKydlTWlDpPGRWUYSr";

-- Config with "MIN" = 1-5000 Minimum Quantity to sell
-- Config with "SELL_PERCENTAGE" -> 1 = 100% RAP, 1.1 = 110% RAP, 0.8 = 80% RAP, , 0.85 = 85% RAP (Any Amount)
getgenv().petsGoConfig = {
    DISCORD_ID = "973180636959490058",
    PLAZA_WEBHOOK_URL = "https://discordapp.com/api/webhooks/1334683075950411887/1jdsJpiHkE1hzW7h7joBUgrVW9BUCRLuTgA82iRdhjmDZ1rYCxYWXDOtrD4npoIgJ1QO",
    MAIL_GEM_WEBHOOK_URL = "https://discordapp.com/api/webhooks/1334683240358875288/56WW6WXJnpKq_d82bj6HW7gcBEHAzMVByETH8Xqyv9gF9L7i1XYCdI8oPIhioMr1zvP5",

    -- Plaza hop delay will reset if someone purchase something.
    PLAZA_HOP_DELAY = 15,  -- (minutes) If no one purchase, server hop
    BOOTH_RESET_DELAY = 3,  -- (minutes) force reset booth (Reset RAP Prices)
    AVOID_USERNAME = {
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
"Addis0nC0deGlitch",
"RavenShadowRift",
"Luke_Lucky85",
"MaxPrismYT",
"WolfCyberLava",
"XxCraze_BaconxX",
"Primal_Min3r",
"R0cketStarFlash",
"EMMA_Flash2006",
"Jack_Neon2020",
    },  -- serverhop when it finds username, You can put multiple usernames
    
    -- Pets
    SELL_100M_PET = false, SELL_PERCENTAGE_100M = 1,
    SELL_500M_PET = false, SELL_PERCENTAGE_500M = 1,
    SELL_SECRET = true, SELL_PERCENTAGE_SECRET = 0.9,
    SELL_HUGE = true, SELL_SHINY_HUGE = true, SELL_PERCENTAGE_HUGE = 0.9,
    
    -- Consumables
    SELL_CONSUMABLE = true, SELL_CONSUMABLE_MIN = 10, SELL_CONSUMABLE_PERCENTAGE = 0.83,
    SELL_SCROLL = true, SELL_SCROLL_PERCENTAGE = 0.83,
    SELL_BAIT = true, SELL_BAIT_MIN = 3000, SELL_BAIT_PERCENTAGE = 0.83,
    SELL_CHEST = true, SELL_CHEST_MIN = 1000, SELL_CHEST_PERCENTAGE = 0.82,
    SELL_GIFT_BAG = true, SELL_GIFT_BAG_MIN = 10, SELL_GIFT_BAG_PERCENTAGE = 0.83,
    SELL_ENCHANT_SAFE = true, SELL_ENCHANT_SAFE_MIN = 5, SELL_ENCHANT_SAFE_PERCENTAGE = 0.83,

    -- Potions
    SELL_POTION = true, SELL_POTION_MIN = 10, SELL_POTION_PERCENTAGE = 0.9,
    SELL_GOD_POTION = true, SELL_GOD_POTION_PERCENTAGE = 0.83,

    -- Eggs
    -- SELL_EGG_MIN : [Doesn't apply to Huge/Hype Egg (Default MIN 1)]
    SELL_EGG = true, SELL_EGG_MIN = 1000, SELL_EGG_PERCENTAGE = 0.83,
    SELL_HUGE_EGG = true, -- true/false
    SELL_HYPE_EGG = true, -- true/false
    
    -- Keys
    SELL_KEY = true, SELL_KEY_MIN = 50, SELL_KEY_PERCENTAGE = 0.93,
    SELL_KEY_LOWER = false,  -- true/false, enable selling lower crystal key
    SELL_KEY_UPPER = false,  -- true/false, enable selling upper crystal key

    -- Tools
    SELL_FISHING_ROD = true, SELL_FISHING_ROD_PERCENTAGE = 0.83, 
    SELL_PICKAXE = true, SELL_PICKAXE_PERCENTAGE = 0.83,
    SELL_LOCKPICK = false, SELL_LOCKPICK_PERCENTAGE = 0.83,

    MAIL_GEMS_USERNAME = {"rogers128"},  -- Empty = Disabled Gem Mail, You can put multiple usernames 1% fee
    MAIL_GEMS_MIN = 35000000  -- Minimum gems required to send
}

loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/f052a5fc5329a6e3c1c9b4ffbaabecf8.lua"))() 
