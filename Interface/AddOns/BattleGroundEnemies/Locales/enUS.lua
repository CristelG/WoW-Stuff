local L = LibStub('AceLocale-3.0'):NewLocale('BattleGroundEnemies', 'enUS', true)

if not L then return end

L["Allies"] = "Allies"
L["allies"] = "allies"
L["ally"] = "ally"
L["Ally"] = "Ally"
L["AllyJoined"] = "An ally joined the battleground"
L["AllyLeft"] = "An ally left the battleground"
L["AND"] = "and"
L["AttachToObject"] = "Attach to object"
L["AttachToObject_Desc"] = "Note that not every object might be possible to select, depending on your positioning of the other frames. For example if you anchor the pvp talents at the racials and you are trying to anchor the racials at the pvp talents there will be a error message."
L["Auras_Buffs_Container_Color_Desc"] = "The border color of the container of the buff icons"
L["Auras_Buffs_Fontsize_Desc"] = "The Fontsize of the stacks on the buff icons"
L["Auras_Buffs_ShowNumbers_Desc"] = "When enabled there will be numbers on the buff icons indicating the remaining time"
L["Auras_Buffs_Textcolor_Desc"] = "The textcolor of the stacks on the buffs"
L["Auras_Debuffs_Coloring_Enabled"] = "Color by debuff type"
L["Auras_Debuffs_Coloring_Enabled_Desc"] = "When this option is enabled you can choose whether the frame's border or the countdown text should be colored by debuff type (Like its know from the default UI, poisons are green, diseases blue etc.)"
L["Auras_Debuffs_Container_Color_Desc"] = "The border color of the container of the debuff icons"
L["Auras_Debuffs_Fontsize_Desc"] = "The fontsize of the stacks on the debuff icons"
L["Auras_Debuffs_ShowNumbers_Desc"] = "When enabled there will be numbers on the debuff icons indicating the remaining time"
L["Auras_Debuffs_Textcolor_Desc"] = "The textcolor of the stacks on the debuffs"
L["Auras_Enabled"] = "Enable Auras"
L["Auras_Enabled_Desc"] = "When enabled there will be aura icons. There will also be a number for the remaining time and one for the stacks applied"
L["Auras_Fontsize_Desc"] = "The Fontsize of the stacks on the aura icons"
L["Auras_ShowNumbers_Desc"] = "When enabled there will be numbers on the aura icons indicating the remaining time"
L["Auras_ShowTooltips"] = "Show spell tooltips"
L["Auras_Textcolor_Desc"] = "The Textcolor of the stacks"
L["AurasFiltering_AddSpellID"] = "SpellID"
L["AurasFiltering_AddSpellID_Desc"] = "Enter a spellID or multiple comma-seperated spellIDs. The spellIDs are getting added to your filter list. Only auras whose spellID is on the filter list are getting shown when the spellID filtering is enabled."
L["AurasFiltering_Enabled_Desc"] = "When this option is enabled you will only see %s which you added to the filtering list"
L["AurasFiltering_Filterlist_Desc"] = "Click to remove this %s"
L["AurasFilteringSettings_Desc"] = "Here you can control which aura gets shown"
L["AurasSettings"] = "Auras"
L["AurasSettings_Desc"] = "Settings about auras (buffs and debuffs)"
L["AurasStacktextSettings"] = "Stack text"
L["BarBackground"] = "Background Color"
L["BarHeight_Desc"] = "The height of each row. This setting is not available in combat due to Blizzard's combat protection."
L["BarSettings"] = "Bar settings"
L["BarSettings_Desc"] = "Here you can configure the rows"
L["BarTexture"] = "Bar texture"
L["BarWidth_Desc"] = "The width of each row. This setting is not available in combat due to Blizzard's combat protection."
L["BattlegroundSize"] = "Battleground size"
L["BGSize_15"] = "1–15 Players"
L["BGSize_15_Desc"] = "This settings apply for %s in a BG with 1–15 players per side"
L["BGSize_40"] = "16–40 Players"
L["BGSize_40_Desc"] = "This settings apply for %s in a BG with 16–40 players per side"
L["BorderThickness"] = "Border size"
L["BOTTOM"] = "Bottom"
L["BOTTOMLEFT"] = "Bottom left"
L["BOTTOMRIGHT"] = "Bottom right"
L["buff"] = "buff"
L["BuffContainer"] = "Buff container"
L["BuffIcon"] = "Buff icon"
L["Buffs"] = "Buffs"
L["Button"] = "Button"
L["CantAnchorToItself"] = "Can't anchor to itself!"
L["CENTER"] = "Center"
L["Columns"] = "Columns"
L["Columns_Desc"] = "In how many colums the players are displayed."
L["ConfirmProfileOverride"] = "Are you sure that you want to override the subprofile %s with the subprofile %s"
L["Container_Color"] = "Container border color"
L["ContainerPosition"] = "Container position"
L["ConvertCyrillic"] = "Convert Cyrillic"
L["ConvertCyrillic_Desc"] = "Converts cyrillic characters which makes it easier to read names if you are playing against russians"
L["Cooldown_Fontsize_Desc"] = "The fontsize of the countdown numbers."
L["CopySettings"] = "Copy settings from %s"
L["CopySettings_Desc"] = "Click here if you want to import the settings of the subprofile %s."
L["Countdowntext"] = "Countdown text"
L["Curse"] = "Curse"
L["CustomMacro_Desc"] = [=[This enables you to set a custom macro. A empty field will lead to a empty macro.
Available substitutions: %n gets substituted with the enemy's name

Example: 
/targetexact %n
/cast Polymorph
/say Polymorph on %n
/targetlasttarget

This will target the enemy, cast Polymorph, write a message into the say channel and target your previous target.
Note that macros can only be 255 characters long (including substitutions).]=]
L["debuff"] = "debuff"
L["DebuffContainer"] = "Debuff container"
L["DebuffIcon"] = "Debuff icon"
L["Debuffs"] = "Debuffs"
L["DebuffType_Filtering"] = "Filter by debuff type"
L["DebuffType_Filtering_Desc"] = "When this option is enabled you will only see debuffs of the chose typ. This option is not simulated in the test mode since this would require a huge database with tons of spells and their debuff type."
L["DisableArenaFrames"] = "Disable Arenaframes"
L["DisableArenaFrames_Desc"] = "Disables the Arenaframes in a battleground. Also works when sArena is installed"
L["Disease"] = "Disease"
L["DisplayType"] = "Display type"
L["Downwards"] = "Downwards"
L["DR_Disorient"] = "Disorient"
L["DR_Incapacitate"] = "Incapacitate"
L["DR_Knockback"] = "Knockback"
L["DR_Root"] = "Root"
L["DR_Silence"] = "Silence"
L["DR_Stun"] = "Stun"
L["DRContainer"] = "DR container"
L["DrTracking_Container_Color_Desc"] = "The border color of the container of the DR icons"
L["DrTracking_DisplayType_Desc"] = "Here you can choose if the status of the DR should be indicated by a colored frame around the icon or by the textcolor of the countdown text. Note that the Countdown text setting will only work if you aren't using an addon like OmniCC that modifys the textcolor."
L["DrTracking_Enabled"] = "Enable DR Tracking"
L["DrTracking_Enabled_Desc"] = "When enabled there will be icons for DR Tracking next to the enemy row. Green Border: Next CC will be half duration. Yellow Border: Next CC will be quarter duration. Red Border: Next CC will not apply because the player is immune"
L["DrTracking_ShowNumbers_Desc"] = "Show the remaining time as a number until the DR resets"
L["DrTracking_Spacing"] = "DR Spacing"
L["DrTracking_Spacing_Desc"] = "The spacing between each DR icon"
L["DrTrackingFiltering_Enabled_Desc"] = "When this option is enabled you will only see icons of spells whose category is checked on the filtering list."
L["DrTrackingFiltering_Filterlist_Desc"] = "Click to track/untrack this category"
L["DrTrackingFilteringSettings_Desc"] = "Here you can choose which DR category is getting shown."
L["DrTrackingSettings"] = "DR Tracking"
L["DrTrackingSettings_Desc"] = "Settings regarding DR Tracking"
L["enemies"] = "enemies"
L["Enemies"] = "Enemies"
L["enemy"] = "enemy"
L["Enemy"] = "Enemy"
L["EnemyJoined"] = "An enemy joined the battleground"
L["EnemyLeft"] = "An enemy left the battleground"
L["Filtering_Enabled"] = "Enable filtering"
L["Filtering_Filterlist"] = "Filter list"
L["Font"] = "Font"
L["Font_Desc"] = "The main font used by this addon"
L["Font_Outline"] = "Font outline"
L["Font_Outline_Desc"] = "The font's outline"
L["Fontcolor"] = "Font color"
L["FontShadow_Enabled"] = "Enable Font shadow"
L["FontShadow_Enabled_Desc"] = "When enabled there will be a shadow around the font. You can choose the color of that shadow"
L["FontShadowColor"] = "Shadow color"
L["FontShadowColor_Desc"] = "The color of the text shadow"
L["Fontsize"] = "Font size"
L["Frame"] = "Frame"
L["Framescale"] = "Scale"
L["Framescale_Desc"] = "The scale of the mainframe. This setting is not available in combat due to Blizzard's combat protection."
L["General"] = "General"
L["GeneralSettings"] = "General settings"
L["GeneralSettings_Desc"] = "Some general settings"
L["GeneralSettingsAllies"] = "This settings apply to allies regardless of the size of the battleground"
L["GeneralSettingsEnemies"] = "This settings apply to enemies regardless of the size of the battleground"
L["HealthBar_Background_Desc"] = "Background Color for the health bar."
L["HealthBar_Texture_Desc"] = "The texture used for the health bars"
L["HealthBarSettings"] = "Healthbar"
L["HealthBarSettings_Desc"] = "Settings for the health bar."
L["Height"] = "Height"
L["Highlight_Color"] = "Highlight Color"
L["Highlight_Color_Desc"] = "The color of the player frame your cursor is currently on"
L["HorizontalGrowdirection"] = "Horizontal grow direction"
L["HorizontalGrowdirection_Desc"] = "Lets you choose if the rows grow to the left or to the right side"
L["HorizontalSpacing"] = "Horizontal spacing"
L["IconsPerRow"] = "Icons per row"
L["KeybindSettings_Desc"] = "Here you can configure what should happen on left- right- and middle click"
L["LEFT"] = "Left"
L["LeftToTargetCounter"] = "Left to target counter"
L["Leftwards"] = "Leftwards"
L["LevelText_Enabled"] = "Show player's level"
L["LevelText_Fontsize_Desc"] = "The fontsize used for the level text"
L["LevelText_OnlyShowIfNotMaxLevel"] = "Only show if not max level"
L["LevelText_Textcolor_Desc"] = "The textcolor used for the level"
L["LevelTextSettings"] = "Player level"
L["Locked"] = "Lock"
L["Locked_Desc"] = "Locks the frame in place"
L["Magic"] = "Magic"
L["MainFrameSettings"] = "Main frame settings"
L["MainFrameSettings_Desc"] = "Settings for the main frame which is used for %s"
L["MaxPlayers"] = "Maximum Enemys"
L["MaxPlayers_Desc"] = "The addon won't show enemys if there are more enemys than this number"
L["MyFocus_Color"] = "Focus Color"
L["MyFocus_Color_Desc"] = "The color used for the border indicating your current focus"
L["MyTarget_Color"] = "Target Color"
L["MyTarget_Color_Desc"] = "The color used for the border around the health bar indicating your current target"
L["Name"] = "Name"
L["Name_Desc"] = "Settings for names on the health bar."
L["Name_Fontsize_Desc"] = "The Fontsize used for enemy names"
L["Name_Textcolor_Desc"] = "The Textcolor used for enemy names"
L["None"] = "None"
L["Normal"] = "Normal"
L["NotAvailableInCombat"] = [=[
This setting is not available while you are in combat due to Blizzard's combat restrictions.]=]
L["Notifications_Allies_Enabled_Desc"] = "When enabled you will be notified when an ally is leaving or joining the battleground."
L["Notifications_Enabled"] = "Enable Notifications"
L["Notifications_Enemies_Enabled_Desc"] = "When enabled you will be notified when an enemy is leaving or joining the battleground."
L["NumericTargetindicator"] = "Target Counter"
L["NumericTargetindicator_Enabled_Desc"] = "Shows how many %s are targeting a player."
L["NumericTargetindicator_Fontsize_Desc"] = "The fontsize for the Target Counter"
L["NumericTargetindicator_Textcolor_Desc"] = "The textcolor for the Target Counter"
L["ObjectiveAndRespawn_Fontsize_Desc"] = "Size of the Text on the Objective Icon. This Text stands for the amount of flag debuff stacks or for the amount of damage taken increase in Temple of Kotmogu"
L["ObjectiveAndRespawn_ObjectiveEnabled"] = "Show Objectives"
L["ObjectiveAndRespawn_ObjectiveEnabled_Desc"] = "Shows in icon for flag, minecart and orb-carriers next to the enemy button"
L["ObjectiveAndRespawn_Position"] = "Position"
L["ObjectiveAndRespawn_Position_Desc"] = "If the icon should be shown left to the spec icon or right to the trinket/racial icons."
L["ObjectiveAndRespawn_RespawnEnabled"] = "Enable Respawn Timer"
L["ObjectiveAndRespawn_RespawnEnabled_Desc"] = "When enabled there will be an icon indicating the remaining time until the enemy is alive."
L["ObjectiveAndRespawn_ShowNumbers_Desc"] = "When enabled there will be numbers for the remaining time until the enemy is alive again."
L["ObjectiveAndRespawn_Textcolor_Desc"] = "Color of the Text on the Objective Icon. This Text stands for the amount of flag debuff stacks or for the amount of damage taken increase in temple of kotmogu"
L["ObjectiveAndRespawn_Width_Desc"] = "Width of the Objective Icon"
L["ObjectiveAndRespawnSettings"] = "Objective"
L["ObjectiveAndRespawnSettings_Desc"] = "Settings regarding the objective of the battleground"
L["OffsetX"] = "Offset X"
L["OffsetY"] = "Offset Y"
L["OnlyShowMine"] = "Only show mine"
L["OnlyShowMine_Desc"] = "Only show %s that i applied"
L["PlayerCount_Enabled"] = "Player Count"
L["PlayerCount_Enabled_Desc"] = "If there should a text for the current number of players. Note that this count can be different than the current number of rows shown due to combat protection or leaving allies/enemies in a RBG"
L["PlayerCount_Fontsize_Desc"] = "The Fontsize used for the Player Count"
L["PlayerCount_Textcolor_Desc"] = "The Textcolor used for the Player Count"
L["Point"] = "Point"
L["PointAtObject"] = "Point at object"
L["Poison"] = "Poison"
L["Position"] = "Position"
L["PowerBar_Background_Desc"] = "Background Color for the power bar."
L["PowerBar_Enabled"] = "Enable ressource bars"
L["PowerBar_Enabled_Desc"] = "Enable this option if you wan't to see bars for ressources like mana, rage etc."
L["PowerBar_Height_Desc"] = "The heigt of the ressource bar. Making the ressource bar higher will automatically make the health bar shorter"
L["PowerBar_Texture_Desc"] = "The texture used for the power bars"
L["PowerBarSettings"] = "Powerbar"
L["PowerBarSettings_Desc"] = "Settings for the ressource bar"
L["Racial_Enabled"] = "Enable Racials"
L["Racial_Enabled_Desc"] = "When enabled there will be icons for used racials"
L["Racial_ShowNumbers_Desc"] = "When enabled there will be cooldown numbers shown on the racial icons"
L["Racial_Width_Desc"] = "The width of the racial."
L["RacialFiltering_Enabled_Desc"] = "When this option is enabled you will only see racials which are checked on the filtering list."
L["RacialFiltering_Filterlist_Desc"] = "Click to track/untrack this racial"
L["RacialFilteringSettings_Desc"] = "Here you can select which racial you want to track"
L["RacialSettings"] = "Racials"
L["RacialSettings_Desc"] = "Settings regarding Racials"
L["RangeIndicator_Alpha"] = "Alpha"
L["RangeIndicator_Alpha_Desc"] = "The alpha of the enemy frame when the enemy is out of the chosen range"
L["RangeIndicator_Enabled"] = "Enable range indicator"
L["RangeIndicator_Enabled_Desc"] = "When tis option is enabled the frame will use the chosen alpha when an enemy is out of a chosen range"
L["RangeIndicator_Everything"] = "Modify the alpha of all elements"
L["RangeIndicator_Frames"] = "Modify alpha of"
L["RangeIndicator_Frames_Desc"] = "Set which parts of the enemy row should be shown with a higher transparency when the enemy is out of range."
L["RangeIndicator_Range"] = "Range"
L["RangeIndicator_Range_Desc"] = "When an enemy is more than this distance (in yards) away his frame will use the chosen alpha"
L["RangeIndicator_Settings"] = "Range indicator"
L["RangeIndicator_Settings_Desc"] = "Here you can configure the range indicator."
L["RBGSpecificSettings"] = "Rated Battleground"
L["RBGSpecificSettings_Desc"] = "This settings only apply in a RBG (Rated Battleground)"
L["RIGHT"] = "Right"
L["Rightwards"] = "Rightwards"
L["RoleIcon_Enabled"] = "Enable role icons"
L["RoleIcon_Enabled_Desc"] = "Enable this option if you want to see a role icon on the health bar"
L["RoleIcon_Size_Desc"] = "The size of the role icons (width and height)"
L["RoleIconSettings"] = "Role icon"
L["RoleIconSettings_Desc"] = "Settings for the role icon which is shown on the health bar"
L["ShowNumbers"] = "Show numbers"
L["ShowRealmnames"] = "Show Realmnames"
L["ShowRealmnames_Desc"] = "Shows the enemy's realm"
L["Side"] = "Side"
L["SideAtObject"] = "Side at object"
L["Size"] = "Size"
L["Spec_AuraDisplay_Enabled"] = "Enable Aura display"
L["Spec_AuraDisplay_Enabled_Desc"] = "When this option is enabled you will see icons for crowd control and interrupts (when active) instead of the spec icon"
L["Spec_AuraDisplay_ShowNumbers_Desc"] = "Show the remaining time of the aura with a countdown number"
L["Spec_Enabled"] = "Enable specialization"
L["Spec_Enabled_Desc"] = "When enabled there will be icons for the players's specialization"
L["Spec_Width_Desc"] = "The Width of the spec icon."
L["SpecSettings"] = "Spec"
L["SpecSettings_Desc"] = "Settings changing the spec icon."
L["SpellID_Filtering"] = "Filter by spellID"
L["SymbolicTargetindicator_Enabled"] = "Target Symbols"
L["SymbolicTargetindicator_Enabled_Desc"] = "Shows a square class-colored icon for each %s that is targeting a player."
L["TargetIndicator"] = "Target Indicator"
L["TargetIndicator_Desc"] = "Numeric and symbolic Target Indicators"
L["Testmode_Toggle"] = "Toggle test mode"
L["Testmode_Toggle_Desc"] = [=[Enables/Disables the testing mode. This mode makes it easier to see what impact most of the options have. Its not possible to simulate all options but most of them are covered in this fancy test mode. 
The test mode is disabled if you are currently in a battleground.]=]
L["Testmode_ToggleAnimation"] = "Toggle test mode animation"
L["Testmode_ToggleAnimation_Desc"] = "Enables/Disables the animation of the testmode so you can focus more on a specific setting without getting distracted by the animation."
L["TestmodeSettings"] = "Test mode"
L["Thick"] = "Thick"
L["TOP"] = "Top"
L["TOPLEFT"] = "Top left"
L["TOPRIGHT"] = "Top right"
L["Trinket_Enabled"] = "Enable Trinkets"
L["Trinket_Enabled_Desc"] = "When enabled there will be icons for Gladiator's Medallion, Adaptation and Relentless."
L["Trinket_ShowNumbers_Desc"] = "When enabled there will be cooldown numbers shown on the trinket icons"
L["Trinket_Width_Desc"] = "The width of the trinket."
L["TrinketSettings"] = "Trinket"
L["TrinketSettings_Desc"] = "Settings regarding Trinkets"
L["Upwards"] = "Upwards"
L["UseBarHeight"] = "Use bar height"
L["UserDefined"] = "User-defined"
L["VerticalGrowdirection"] = "Vertical grow direction"
L["VerticalGrowdirection_Desc"] = "Lets you choose if the bars grow upwards or downwards"
L["VerticalPosition"] = "Vertical position"
L["VerticalSpacing"] = "Vertical spacing"
L["Width"] = "Width"
