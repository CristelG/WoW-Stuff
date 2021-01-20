--- Kaliel's Tracker
--- Copyright (c) 2012-2020, Marouan Sabbagh <mar.sabbagh@gmail.com>
--- All Rights Reserved.
---
--- This file is part of addon Kaliel's Tracker.

local _, KT = ...

-- Constants
KT.BLIZZARD_MODULES = {
    "SCENARIO_CONTENT_TRACKER_MODULE",
    "UI_WIDGET_TRACKER_MODULE",
    "CAMPAIGN_QUEST_TRACKER_MODULE",
    "QUEST_TRACKER_MODULE",
    "BONUS_OBJECTIVE_TRACKER_MODULE",
    "WORLD_QUEST_TRACKER_MODULE",
    "ACHIEVEMENT_TRACKER_MODULE"
}

KT.ALL_BLIZZARD_MODULES = {
    -- Don't change the order!
    "QUEST_TRACKER_MODULE",
    "CAMPAIGN_QUEST_TRACKER_MODULE",
    "ACHIEVEMENT_TRACKER_MODULE",
    "BONUS_OBJECTIVE_TRACKER_MODULE",
    "WORLD_QUEST_TRACKER_MODULE",
    "SCENARIO_CONTENT_TRACKER_MODULE",
    "SCENARIO_TRACKER_MODULE",
    "UI_WIDGET_TRACKER_MODULE"
}

KT.QUEST_DASH = "- "

KT.PLAYER_FACTION_COLORS = {
    Horde = "ff0000",
    Alliance = "007fff"
}

KT.AZERITE_CURRENCY_ID = C_CurrencyInfo.GetAzeriteCurrencyID()
KT.WAR_RESOURCES_CURRENCY_ID = C_CurrencyInfo.GetWarResourcesCurrencyID()
KT.ORDER_RESOURCES_CURRENCY_ID = 1220

KT.WORLD_QUEST_REWARD_TYPE_FLAG_MONEY = 0x0001
KT.WORLD_QUEST_REWARD_TYPE_FLAG_RESOURCES = 0x0002
KT.WORLD_QUEST_REWARD_TYPE_FLAG_ARTIFACT_POWER = 0x0004
KT.WORLD_QUEST_REWARD_TYPE_FLAG_MATERIALS = 0x0008
KT.WORLD_QUEST_REWARD_TYPE_FLAG_EQUIPMENT = 0x0010
KT.WORLD_QUEST_REWARD_TYPE_FLAG_REPUTATION = 0x0020
KT.WORLD_QUEST_REWARD_TYPE_FLAG_OTHERS = 0x10000

-- Blizzard Constants
OBJECTIVE_TRACKER_COLOR["Header"] = { r = 1, g = 0.5, b = 0 }					-- orange
OBJECTIVE_TRACKER_COLOR["Complete"] = { r = 0.1, g = 0.85, b = 0.1 }			-- green
OBJECTIVE_TRACKER_COLOR["CompleteHighlight"] = { r = 0, g = 1, b = 0 }			-- green
OBJECTIVE_TRACKER_COLOR["TimeLeft2"] = { r = 0, g = 0.5, b = 1 }				-- blue
OBJECTIVE_TRACKER_COLOR["TimeLeft2Highlight"] = { r = 0.3, g = 0.65, b = 1 }	-- blue
OBJECTIVE_TRACKER_COLOR["Label"] = { r = 0.5, g = 0.5, b = 0.5 }				-- gray
OBJECTIVE_TRACKER_COLOR["LabelHighlight"] = { r = 0.6, g = 0.6, b = 0.6 }	    -- gray
OBJECTIVE_TRACKER_COLOR["Header"].reverse = OBJECTIVE_TRACKER_COLOR["HeaderHighlight"]
OBJECTIVE_TRACKER_COLOR["HeaderHighlight"].reverse = OBJECTIVE_TRACKER_COLOR["Header"]
OBJECTIVE_TRACKER_COLOR["Complete"].reverse = OBJECTIVE_TRACKER_COLOR["CompleteHighlight"]
OBJECTIVE_TRACKER_COLOR["CompleteHighlight"].reverse = OBJECTIVE_TRACKER_COLOR["Complete"]
OBJECTIVE_TRACKER_COLOR["TimeLeft2"].reverse = OBJECTIVE_TRACKER_COLOR["TimeLeft2Highlight"]
OBJECTIVE_TRACKER_COLOR["TimeLeft2Highlight"].reverse = OBJECTIVE_TRACKER_COLOR["TimeLeft2"]
OBJECTIVE_TRACKER_COLOR["Label"].reverse = OBJECTIVE_TRACKER_COLOR["LabelHighlight"]
OBJECTIVE_TRACKER_COLOR["LabelHighlight"].reverse = OBJECTIVE_TRACKER_COLOR["Label"]