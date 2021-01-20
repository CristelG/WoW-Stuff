
PlaterDB = {
	["profileKeys"] = {
		["Yogshi - Kazzak"] = "ITH - Plater",
	},
	["profiles"] = {
		["Default"] = {
			["use_ui_parent"] = true,
			["aura_tracker"] = {
				["buff_tracked"] = {
					[209859] = true,
				},
			},
			["hook_auto_imported"] = {
				["Reorder Nameplate"] = 4,
				["Dont Have Aura"] = 1,
				["Players Targetting Amount"] = 4,
				["Color Automation"] = 1,
				["Combo Points"] = 4,
				["Cast Bar Icon Config"] = 2,
				["Aura Reorder"] = 3,
				["Hide Neutral Units"] = 1,
				["Extra Border"] = 2,
				["Target Color"] = 3,
				["Attacking Specific Unit"] = 1,
				["Execute Range"] = 1,
			},
			["script_data"] = {
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)    \n    --change the nameplate color to this if allowed\n    envTable.CanChangeNameplateColor = scriptTable.config.changeNameplateColor --\n    envTable.NameplateColor = scriptTable.config.nameplateColor\n    envTable.NameplateSizeOffset = scriptTable.config.nameplateSizeOffset --\n    \n    unitFrame.UnitImportantSkullTexture = unitFrame.UnitImportantSkullTexture or unitFrame:CreateTexture(nil, \"background\")\n    \n    unitFrame.UnitImportantSkullTexture:SetTexture([[Interface/AddOns/Plater/media/skullbones_128]])\n    unitFrame.UnitImportantSkullTexture:SetPoint(\"center\", unitFrame.healthBar, \"center\", 0, -5)\n    \n    unitFrame.UnitImportantSkullTexture:SetVertexColor(Plater:ParseColors(scriptTable.config.skullColor))\n    unitFrame.UnitImportantSkullTexture:SetAlpha(scriptTable.config.skullAlpha)\n    unitFrame.UnitImportantSkullTexture:SetScale(scriptTable.config.skullScale)\n    \n    unitFrame.UnitImportantSkullTexture:Hide()\nend\n\n--[=[\n\n154564 - debug\n\nUsing spellIDs for multi-language support\n\n164362 - smily morsel - plaguefall\n168882 - fleeting manifestation - sanguine depths\n170234 - oppressive banner - theater of pain\n168988 - overgrowth - Mists of Tirna Scithe\n170452 - essesnce orb - torghast\n\n\n--]=]",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    Plater.StopDotAnimation(unitFrame.healthBar, envTable.dotAnimation)   \n    \n    --restore the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight)    \n    \n    unitFrame.UnitImportantSkullTexture:Hide()\nend\n\n\n",
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can change the nameplate color\n    if (envTable.CanChangeNameplateColor) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end\n    \nend\n\n\n\n\n",
					["Time"] = 1604599472,
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\media\\skullbones_64",
					["Enabled"] = true,
					["Revision"] = 355,
					["semver"] = "",
					["Author"] = "Izimode-Azralon",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["Desc"] = "Highlight a nameplate of an important Add. Add the unit name or NpcID into the trigger box to add more.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    if (envTable.dotAnimation) then\n        Plater.StopDotAnimation(unitFrame.healthBar, envTable.dotAnimation)\n    end\n    \n    envTable.dotAnimation = Plater.PlayDotAnimation(unitFrame.healthBar, 2, scriptTable.config.dotsColor, 3, 4) \n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \n    unitFrame.UnitImportantSkullTexture:Show()\nend\n\n\n\n\n",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Options"] = {
						{
							["Type"] = 6,
							["Key"] = "option4",
							["Value"] = 0,
							["Name"] = "Blank Space",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 5,
							["Key"] = "option6",
							["Value"] = "Enter the npc name or npcId in the \"Add Trigger\" box and hit \"Add\".",
							["Name"] = "Option 6",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 6,
							["Name"] = "Blank Space",
							["Value"] = 0,
							["Key"] = "option4",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [3]
						{
							["Type"] = 4,
							["Key"] = "changeNameplateColor",
							["Value"] = true,
							["Name"] = "Change Nameplate Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "change to true to change the color",
						}, -- [4]
						{
							["Type"] = 1,
							["Key"] = "nameplateColor",
							["Value"] = {
								1, -- [1]
								0, -- [2]
								0.5254901960784314, -- [3]
								1, -- [4]
							},
							["Name"] = "Nameplate Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "",
						}, -- [5]
						{
							["Type"] = 2,
							["Max"] = 6,
							["Desc"] = "increase the nameplate height by this value",
							["Min"] = 0,
							["Fraction"] = false,
							["Value"] = 3,
							["Name"] = "Nameplate Size Offset",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "nameplateSizeOffset",
						}, -- [6]
						{
							["Type"] = 6,
							["Name"] = "Blank Space",
							["Value"] = 0,
							["Key"] = "option4",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [7]
						{
							["Type"] = 1,
							["Key"] = "dotsColor",
							["Value"] = {
								1, -- [1]
								0.7137254901960784, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Name"] = "Dot Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "",
						}, -- [8]
						{
							["Type"] = 6,
							["Key"] = "option4",
							["Value"] = 0,
							["Name"] = "Blank Space",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [9]
						{
							["Type"] = 5,
							["Key"] = "option10",
							["Value"] = "Skull Texture",
							["Name"] = "Skull Texture",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [10]
						{
							["Type"] = 1,
							["Key"] = "skullColor",
							["Value"] = {
								1, -- [1]
								0.4627450980392157, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Name"] = "Skull Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "",
						}, -- [11]
						{
							["Type"] = 2,
							["Max"] = 1,
							["Desc"] = "",
							["Min"] = 0,
							["Name"] = "Alpha",
							["Value"] = 0.2,
							["Fraction"] = true,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "skullAlpha",
						}, -- [12]
						{
							["Type"] = 2,
							["Max"] = 2,
							["Desc"] = "",
							["Min"] = 0.4,
							["Key"] = "skullScale",
							["Value"] = 0.6,
							["Name"] = "Scale",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = true,
						}, -- [13]
					},
					["version"] = -1,
					["Name"] = "Unit - Important [Plater]",
					["NpcNames"] = {
						"164362", -- [1]
						"168882", -- [2]
						"168988", -- [3]
						"170234", -- [4]
						"165905", -- [5]
						"170452", -- [6]
					},
				}, -- [1]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    --creates a glow around the icon\n    envTable.buffIconGlow = envTable.buffIconGlow or Plater.CreateIconGlow (self, scriptTable.config.glowColor)\n    \nend",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    if (scriptTable.config.glowEnabled) then\n        envTable.buffIconGlow:Hide()\n    end\n    \n    if (scriptTable.config.dotsEnabled) then\n        Plater.StopDotAnimation(self, envTable.dotAnimation)\n    end\n    \n    \nend",
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \n    \nend",
					["Time"] = 1605214963,
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura",
					["Enabled"] = true,
					["Revision"] = 607,
					["semver"] = "",
					["Author"] = "Tercioo-Sylvanas",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["Desc"] = "Add the buff name in the trigger box.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    if (scriptTable.config.glowEnabled) then\n        envTable.buffIconGlow:Show()\n    end\n    \n    if (scriptTable.config.dotsEnabled) then\n        envTable.dotAnimation = Plater.PlayDotAnimation(self, 6, scriptTable.config.dotsColor, 6, 3) \n    end\n    \nend\n\n\n\n\n",
					["SpellIds"] = {
						323149, -- [1]
						324392, -- [2]
						340544, -- [3]
						342189, -- [4]
						333227, -- [5]
					},
					["PlaterCore"] = 1,
					["Options"] = {
						{
							["Type"] = 6,
							["Name"] = "Blank Space",
							["Value"] = 0,
							["Key"] = "option1",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 5,
							["Name"] = "Option 2",
							["Value"] = "Enter the spell name or spellID of the Buff in the Add Trigger box and hit \"Add\".",
							["Key"] = "option2",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 6,
							["Name"] = "Blank Space",
							["Value"] = 0,
							["Key"] = "option3",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [3]
						{
							["Type"] = 4,
							["Name"] = "Glow Enabled",
							["Value"] = false,
							["Key"] = "glowEnabled",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "",
						}, -- [4]
						{
							["Type"] = 1,
							["Name"] = "Glow Color",
							["Value"] = {
								0.403921568627451, -- [1]
								0.00392156862745098, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Key"] = "glowColor",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "",
						}, -- [5]
						{
							["Type"] = 6,
							["Key"] = "option3",
							["Value"] = 0,
							["Name"] = "Blank Space",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [6]
						{
							["Type"] = 4,
							["Name"] = "Dots Enabled",
							["Value"] = true,
							["Key"] = "dotsEnabled",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "",
						}, -- [7]
						{
							["Type"] = 1,
							["Key"] = "dotsColor",
							["Value"] = {
								1, -- [1]
								0.3215686274509804, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Name"] = "Dots Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "",
						}, -- [8]
					},
					["version"] = -1,
					["Name"] = "Aura - Buff Alert [Plater]",
					["NpcNames"] = {
					},
				}, -- [2]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --insert code here\n    \n    if (not unitFrame.spitefulTexture) then\n        unitFrame.spitefulTexture = unitFrame.healthBar:CreateTexture(nil, \"overlay\", nil, 6)\n        unitFrame.spitefulTexture:SetPoint('right', 0, 0)\n        unitFrame.spitefulTexture:SetSize(27, 14)\n        unitFrame.spitefulTexture:SetColorTexture(.3, .3, 1, .7)\n        \n        unitFrame.spitefulText = unitFrame.healthBar:CreateFontString(nil, \"overlay\", \"GameFontNormal\", 6)\n        DetailsFramework:SetFontFace (unitFrame.spitefulText, \"2002\")\n        unitFrame.spitefulText:SetPoint(\"right\", unitFrame.spitefulTexture, \"right\", -2, 0)\n        unitFrame.spitefulText:SetJustifyH(\"right\")\n        \n        unitFrame.spitefulTexture:Hide()\n        unitFrame.spitefulText:Hide()\n    end\n    \n    function envTable.UpdateSpitefulWidget(unitFrame)\n        \n        local r, g, b, a = Plater:ParseColors(scriptTable.config.bgColor)\n        unitFrame.spitefulTexture:SetColorTexture(r, g, b, a)\n        unitFrame.spitefulTexture:SetSize(scriptTable.config.bgWidth, unitFrame.healthBar:GetHeight())   \n        Plater:SetFontSize(unitFrame.spitefulText, scriptTable.config.textSize)\n        Plater:SetFontColor(unitFrame.spitefulText, scriptTable.config.textColor)\n        \n        local currentHealth = unitFrame.healthBar.CurrentHealth\n        local maxHealth = unitFrame.healthBar.CurrentHealthMax\n        \n        local healthPercent = currentHealth / maxHealth * 100\n        local timeToDie = format(\"%.1fs\", healthPercent / 8)\n        unitFrame.spitefulText:SetText(timeToDie)\n        \n        unitFrame.spitefulText:Show()\n        unitFrame.spitefulTexture:Show()\n        \n        if scriptTable.config.switchTargetName then\n            local plateFrame = unitFrame.PlateFrame\n            local target = UnitName(unitFrame.namePlateUnitToken .. \"target\") or UnitName(unitFrame.namePlateUnitToken)\n            if target and target ~= \"\" then\n                plateFrame.namePlateUnitName = target\n                Plater.UpdateUnitName (plateFrame)\n            end\n        end\n        \n        if scriptTable.config.useTargetingColor then\n            local targeted = UnitIsUnit(unitFrame.namePlateUnitToken .. \"target\", \"player\")\n            if targeted then\n                Plater.SetNameplateColor (unitFrame, scriptTable.config.targetingColor)\n            end\n        end\n    end\nend",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --insert code here\n    if (unitFrame.spitefulTexture) then\n        unitFrame.spitefulText:Hide()\n        unitFrame.spitefulTexture:Hide()    \n    end\nend\n\n\n\n\n\n",
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --insert code here\n    envTable.UpdateSpitefulWidget(unitFrame)\nend\n\n\n",
					["Time"] = 1609281290,
					["url"] = "",
					["Icon"] = 135945,
					["Enabled"] = true,
					["Revision"] = 132,
					["semver"] = "",
					["Author"] = "Symantec-Azralon",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["Desc"] = "Time to die Spiteful affix",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --insert code here\n    envTable.UpdateSpitefulWidget(unitFrame)\nend\n\n\n",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Options"] = {
						{
							["Type"] = 2,
							["Max"] = 50,
							["Desc"] = "",
							["Min"] = 10,
							["Fraction"] = false,
							["Value"] = 27,
							["Key"] = "bgWidth",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Width",
						}, -- [1]
						{
							["Type"] = 1,
							["Name"] = "Background Color",
							["Value"] = {
								0.5058823529411764, -- [1]
								0.07058823529411765, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["Key"] = "bgColor",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 6,
							["Name"] = "Option 5",
							["Value"] = 0,
							["Key"] = "option5",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [3]
						{
							["Type"] = 2,
							["Max"] = 24,
							["Desc"] = "",
							["Min"] = 7,
							["Fraction"] = false,
							["Value"] = 8,
							["Key"] = "textSize",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Text Size",
						}, -- [4]
						{
							["Type"] = 1,
							["Name"] = "Text Color",
							["Value"] = {
								1, -- [1]
								0.5843137254901961, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Key"] = "textColor",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "",
						}, -- [5]
						{
							["Type"] = 6,
							["Key"] = "option7",
							["Value"] = 0,
							["Name"] = "Option 7",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [6]
						{
							["Type"] = 4,
							["Key"] = "switchTargetName",
							["Value"] = false,
							["Name"] = "Show Target instead of Name",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "",
						}, -- [7]
						{
							["Type"] = 6,
							["Key"] = "option8",
							["Value"] = 0,
							["Name"] = "Option 8",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [8]
						{
							["Type"] = 4,
							["Key"] = "useTargetingColor",
							["Value"] = false,
							["Name"] = "Change Color if targeting You",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "",
						}, -- [9]
						{
							["Type"] = 1,
							["Key"] = "targetingColor",
							["Value"] = {
								0.5058823529411764, -- [1]
								0.07058823529411765, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["Name"] = "Color if targeting You",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "",
						}, -- [10]
					},
					["version"] = -1,
					["Name"] = "M+ Spiteful",
					["NpcNames"] = {
						"174773", -- [1]
					},
				}, -- [3]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+40, self:GetHeight()+20, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:SetVertexColor(Plater:ParseColors(scriptTable.config.flashColor))\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, scriptTable.config.flashDuration/2, 0, 1)\n    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, scriptTable.config.flashDuration/2, 1, 0)\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (unitFrame, scriptTable.config.shakeDuration, scriptTable.config.shakeAmplitude, scriptTable.config.shakeFrequency, false, false, 0, 1, 0.05, 0.1, Plater.GetPoints (unitFrame))\n    \n    --update the config for the flash here so it wont need a /reload\n    fadeIn:SetDuration (scriptTable.config.flashDuration/2)\n    fadeOut:SetDuration (scriptTable.config.flashDuration/2)\n    \n    --update the config for the skake here so it wont need a /reload\n    envTable.FrameShake.OriginalAmplitude = scriptTable.config.shakeAmplitude\n    envTable.FrameShake.OriginalDuration = scriptTable.config.shakeDuration\n    envTable.FrameShake.OriginalFrequency = scriptTable.config.shakeFrequency\nend",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    Plater.StopDotAnimation(unitFrame.castBar, envTable.dotAnimation)    \n    \n    envTable.BackgroundFlash:Stop()\n    \n    unitFrame:StopFrameShake (envTable.FrameShake)    \n    \nend\n\n\n",
					["ScriptType"] = 2,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \nend\n\n\n",
					["Time"] = 1604674264,
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar_darkorange",
					["Enabled"] = true,
					["Revision"] = 695,
					["semver"] = "",
					["Author"] = "Bombad�o-Azralon",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["Desc"] = "Highlight a very important cast applying several effects into the Cast Bar. Add spell in the Add Trigger field.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    envTable.dotAnimation = Plater.PlayDotAnimation(unitFrame.castBar, 5, scriptTable.config.dotColor, scriptTable.config.xOffset, scriptTable.config.yOffset)\n    \n    \n    envTable.BackgroundFlash:Play()\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    unitFrame:PlayFrameShake (envTable.FrameShake)\n    \n    if (envTable._CanInterrupt) then\n        if (scriptTable.config.useCastbarColor) then\n            self:SetStatusBarColor (Plater:ParseColors (scriptTable.config.castBarColor))\n        end\n    end\n    \nend\n\n\n",
					["SpellIds"] = {
						321247, -- [1]
						334522, -- [2]
						320232, -- [3]
						319962, -- [4]
						325879, -- [5]
						324427, -- [6]
						322999, -- [7]
						325360, -- [8]
						322903, -- [9]
						324103, -- [10]
						333294, -- [11]
						333540, -- [12]
						319521, -- [13]
						326021, -- [14]
						326450, -- [15]
						322711, -- [16]
						329104, -- [17]
						295000, -- [18]
						242391, -- [19]
						320197, -- [20]
						329608, -- [21]
					},
					["PlaterCore"] = 1,
					["Options"] = {
						{
							["Type"] = 6,
							["Key"] = "option1",
							["Value"] = 0,
							["Name"] = "Option 1",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 5,
							["Key"] = "option2",
							["Value"] = "Plays a big animation when the cast start.",
							["Name"] = "Option 2",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 5,
							["Name"] = "Option 2",
							["Value"] = "Enter the spell name or spellID of the Spell in the Add Trigger box and hit \"Add\".",
							["Key"] = "option2",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [3]
						{
							["Type"] = 6,
							["Key"] = "option4",
							["Value"] = 0,
							["Name"] = "Option 4",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [4]
						{
							["Type"] = 5,
							["Key"] = "option2",
							["Value"] = "Flash:",
							["Name"] = "Flash",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [5]
						{
							["Type"] = 2,
							["Max"] = 1.2,
							["Desc"] = "How long is the flash played when the cast starts.",
							["Min"] = 0.1,
							["Name"] = "Flash Duration",
							["Value"] = 0.8,
							["Fraction"] = true,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "flashDuration",
						}, -- [6]
						{
							["Type"] = 1,
							["Key"] = "flashColor",
							["Value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["Name"] = "Flash Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "Color of the Flash",
						}, -- [7]
						{
							["Type"] = 6,
							["Key"] = "option7",
							["Value"] = 0,
							["Name"] = "Option 7",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [8]
						{
							["Type"] = 5,
							["Name"] = "Shake",
							["Value"] = "Shake:",
							["Key"] = "option2",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [9]
						{
							["Type"] = 2,
							["Max"] = 0.5,
							["Desc"] = "When the cast starts, there's a small shake in the nameplate, this settings controls how long it takes.",
							["Min"] = 0.1,
							["Name"] = "Shake Duration",
							["Value"] = 0.2,
							["Fraction"] = true,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "shakeDuration",
						}, -- [10]
						{
							["Type"] = 2,
							["Max"] = 10,
							["Desc"] = "How strong is the shake.",
							["Min"] = 1,
							["Name"] = "Shake Amplitude",
							["Value"] = 5,
							["Fraction"] = false,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "shakeAmplitude",
						}, -- [11]
						{
							["Type"] = 2,
							["Max"] = 80,
							["Desc"] = "How fast the shake moves.",
							["Min"] = 1,
							["Name"] = "Shake Frequency",
							["Value"] = 40,
							["Fraction"] = false,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "shakeFrequency",
						}, -- [12]
						{
							["Type"] = 6,
							["Key"] = "option13",
							["Value"] = 0,
							["Name"] = "Option 13",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [13]
						{
							["Type"] = 5,
							["Key"] = "option14",
							["Value"] = "Dot Animation:",
							["Name"] = "Dot Animation",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [14]
						{
							["Type"] = 1,
							["Key"] = "dotColor",
							["Value"] = {
								0.5647058823529412, -- [1]
								0.5647058823529412, -- [2]
								0.5647058823529412, -- [3]
								1, -- [4]
							},
							["Name"] = "Dot Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "Adjust the color of the dots around the nameplate",
						}, -- [15]
						{
							["Type"] = 2,
							["Max"] = 20,
							["Desc"] = "Adjust the width of the dots to better fit in your nameplate.",
							["Min"] = -10,
							["Fraction"] = false,
							["Value"] = 8,
							["Name"] = "Dot X Offset",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "xOffset",
						}, -- [16]
						{
							["Type"] = 2,
							["Max"] = 10,
							["Desc"] = "Adjust the height of the dots to better fit in your nameplate.",
							["Min"] = -10,
							["Name"] = "Dot Y Offset",
							["Value"] = 3,
							["Key"] = "yOffset",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = false,
						}, -- [17]
						{
							["Type"] = 6,
							["Key"] = "option18",
							["Value"] = 0,
							["Name"] = "blank",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [18]
						{
							["Type"] = 6,
							["Name"] = "blank",
							["Value"] = 0,
							["Key"] = "option18",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [19]
						{
							["Type"] = 6,
							["Name"] = "blank",
							["Value"] = 0,
							["Key"] = "option18",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [20]
						{
							["Type"] = 6,
							["Key"] = "option18",
							["Value"] = 0,
							["Name"] = "blank",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [21]
						{
							["Type"] = 6,
							["Key"] = "option18",
							["Value"] = 0,
							["Name"] = "blank",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [22]
						{
							["Type"] = 6,
							["Name"] = "blank",
							["Value"] = 0,
							["Key"] = "option18",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [23]
						{
							["Type"] = 5,
							["Key"] = "option19",
							["Value"] = "Cast Bar",
							["Name"] = "Option 19",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [24]
						{
							["Type"] = 4,
							["Key"] = "useCastbarColor",
							["Value"] = true,
							["Name"] = "Use Cast Bar Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "Use cast bar color.",
						}, -- [25]
						{
							["Type"] = 1,
							["Key"] = "castBarColor",
							["Value"] = {
								0.4117647058823529, -- [1]
								1, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Name"] = "Cast Bar Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "Cast bar color.",
						}, -- [26]
					},
					["version"] = -1,
					["Name"] = "Cast - Very Important [Plater]",
					["NpcNames"] = {
					},
				}, -- [4]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    --settings\n    envTable.NameplateSizeOffset = scriptTable.config.castBarHeight\n    envTable.ShowArrow = scriptTable.config.showArrow\n    envTable.ArrowAlpha = scriptTable.config.arrowAlpha\n    envTable.HealthBarColor = scriptTable.config.healthBarColor\n    \n    --creates the spark to show the cast progress inside the health bar\n    envTable.overlaySpark = envTable.overlaySpark or Plater:CreateImage (unitFrame.healthBar)\n    envTable.overlaySpark:SetBlendMode (\"ADD\")\n    envTable.overlaySpark.width = 16\n    envTable.overlaySpark.height = 36\n    envTable.overlaySpark.alpha = .9\n    envTable.overlaySpark.texture = [[Interface\\AddOns\\Plater\\images\\spark3]]\n    \n    envTable.topArrow = envTable.topArrow or Plater:CreateImage (unitFrame.healthBar)\n    envTable.topArrow:SetBlendMode (\"ADD\")\n    envTable.topArrow.width = scriptTable.config.arrowWidth\n    envTable.topArrow.height = scriptTable.config.arrowHeight\n    envTable.topArrow.alpha = envTable.ArrowAlpha\n    envTable.topArrow.texture = [[Interface\\BUTTONS\\Arrow-Down-Up]]\n    \n    --scale animation\n    envTable.smallScaleAnimation = envTable.smallScaleAnimation or Plater:CreateAnimationHub (unitFrame.healthBar)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 1, 0.075, 1, 1, 1.08, 1.08)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 2, 0.075, 1, 1, 0.95, 0.95)    \n    --envTable.smallScaleAnimation:Play() --envTable.smallScaleAnimation:Stop()\n    \nend\n\n\n\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    Plater.StopDotAnimation(unitFrame.healthBar, envTable.dotAnimation)\n    \n    envTable.overlaySpark:Hide()\n    envTable.topArrow:Hide()\n    \n    Plater.RefreshNameplateColor (unitFrame)\n    \n    envTable.smallScaleAnimation:Stop()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight)\nend\n\n\n",
					["ScriptType"] = 2,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    --update the percent\n    envTable.overlaySpark:SetPoint (\"left\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100)-9, 0)\n    \n    envTable.topArrow:SetPoint (\"bottomleft\", unitFrame.healthBar, \"topleft\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100) - 4, 2 )\n    \n    --forces the script to update on a 60Hz base\n    self.ThrottleUpdate = 0\n    \n\nend\n\n\n",
					["Time"] = 1604698647,
					["url"] = "",
					["Icon"] = 2175503,
					["Enabled"] = true,
					["Revision"] = 462,
					["semver"] = "",
					["Author"] = "Bombad�o-Azralon",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["Desc"] = "Apply several animations when the explosion orb cast starts on a Mythic Dungeon with Explosion Affix",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    envTable.overlaySpark:Show()\n    \n    if (envTable.ShowArrow) then\n        envTable.topArrow:Show()\n    end\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    envTable.smallScaleAnimation:Play()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \n    envTable.overlaySpark.height = nameplateHeight + 5\n    \n    envTable.dotAnimation = Plater.PlayDotAnimation(unitFrame.healthBar, 2, scriptTable.config.dotColor, scriptTable.config.xOffset, scriptTable.config.yOffset)\n    \n    self:SetStatusBarColor (Plater:ParseColors (scriptTable.config.castBarColor))\nend\n\n\n\n\n\n\n",
					["SpellIds"] = {
						240446, -- [1]
					},
					["PlaterCore"] = 1,
					["Options"] = {
						{
							["Type"] = 6,
							["Key"] = "option1",
							["Value"] = 0,
							["Name"] = "Option 1",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 5,
							["Key"] = "option2",
							["Value"] = "Plays a special animation showing the explosion time.",
							["Name"] = "Option 2",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 6,
							["Key"] = "option3",
							["Value"] = 0,
							["Name"] = "Option 3",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [3]
						{
							["Type"] = 2,
							["Max"] = 6,
							["Desc"] = "Increases the cast bar height by this value",
							["Min"] = 0,
							["Fraction"] = false,
							["Value"] = 3,
							["Name"] = "Cast Bar Height Mod",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "castBarHeight",
						}, -- [4]
						{
							["Type"] = 1,
							["Key"] = "castBarColor",
							["Value"] = {
								1, -- [1]
								0.5843137254901961, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Name"] = "Cast Bar Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "Changes the cast bar color to this one.",
						}, -- [5]
						{
							["Type"] = 6,
							["Key"] = "option7",
							["Value"] = 0,
							["Name"] = "Option 7",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [6]
						{
							["Type"] = 5,
							["Key"] = "option6",
							["Value"] = "Arrow:",
							["Name"] = "Arrow:",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [7]
						{
							["Type"] = 4,
							["Key"] = "showArrow",
							["Value"] = true,
							["Name"] = "Show Arrow",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "Show an arrow above the nameplate showing the cast bar progress.",
						}, -- [8]
						{
							["Type"] = 2,
							["Max"] = 1,
							["Desc"] = "Arrow alpha.",
							["Min"] = 0,
							["Fraction"] = true,
							["Value"] = 0.5,
							["Name"] = "Arrow Alpha",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "arrowAlpha",
						}, -- [9]
						{
							["Type"] = 2,
							["Max"] = 12,
							["Desc"] = "Arrow Width.",
							["Min"] = 4,
							["Name"] = "Arrow Width",
							["Value"] = 8,
							["Key"] = "arrowWidth",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = false,
						}, -- [10]
						{
							["Type"] = 2,
							["Max"] = 12,
							["Desc"] = "Arrow Height.",
							["Min"] = 4,
							["Fraction"] = false,
							["Value"] = 8,
							["Name"] = "Arrow Height",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "arrowHeight",
						}, -- [11]
						{
							["Type"] = 6,
							["Key"] = "option13",
							["Value"] = 0,
							["Name"] = "Option 13",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [12]
						{
							["Type"] = 5,
							["Key"] = "option12",
							["Value"] = "Dot Animation:",
							["Name"] = "Dot Animation:",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [13]
						{
							["Type"] = 1,
							["Key"] = "dotColor",
							["Value"] = {
								1, -- [1]
								0.615686274509804, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Name"] = "Dot Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "Adjust the color of the dot animation.",
						}, -- [14]
						{
							["Type"] = 2,
							["Max"] = 10,
							["Desc"] = "Dot X Offset",
							["Min"] = -10,
							["Name"] = "Dot X Offset",
							["Value"] = 4,
							["Fraction"] = false,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "xOffset",
						}, -- [15]
						{
							["Type"] = 2,
							["Max"] = 10,
							["Desc"] = "Dot Y Offset",
							["Min"] = -10,
							["Key"] = "yOffset",
							["Value"] = 3,
							["Name"] = "Dot Y Offset",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = false,
						}, -- [16]
					},
					["version"] = -1,
					["Name"] = "Explosion Affix M+ [Plater]",
					["NpcNames"] = {
					},
				}, -- [5]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    --creates a glow around the icon\n    envTable.buffIconGlow = envTable.buffIconGlow or Plater.CreateIconGlow (self, scriptTable.config.glowColor)\n    \nend\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    if (scriptTable.config.glowEnabled) then\n        envTable.buffIconGlow:Hide()\n    end\n    \n    if (scriptTable.config.dotsEnabled) then\n        Plater.StopDotAnimation(self, envTable.dotAnimation)\n    end\n    \n    \nend\n\n\n",
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Time"] = 1604454032,
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura",
					["Enabled"] = true,
					["Revision"] = 351,
					["semver"] = "",
					["Author"] = "Tercioo-Sylvanas",
					["Desc"] = "Add the debuff name in the trigger box.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    if (scriptTable.config.glowEnabled) then\n        envTable.buffIconGlow:Show()\n    end\n    \n    if (scriptTable.config.dotsEnabled) then\n        envTable.dotAnimation = Plater.PlayDotAnimation(self, 6, scriptTable.config.dotsColor, 6, 3) \n    end\nend\n\n\n",
					["SpellIds"] = {
						337220, -- [1]
						337253, -- [2]
						337251, -- [3]
					},
					["PlaterCore"] = 1,
					["Options"] = {
						{
							["Type"] = 6,
							["Key"] = "option1",
							["Value"] = 0,
							["Name"] = "Blank Space",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 5,
							["Key"] = "option2",
							["Value"] = "Enter the spell name or spellID of the Buff in the Add Trigger box and hit \"Add\".",
							["Name"] = "Option 2",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 6,
							["Key"] = "option3",
							["Value"] = 0,
							["Name"] = "Blank Space",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [3]
						{
							["Type"] = 4,
							["Key"] = "glowEnabled",
							["Value"] = false,
							["Name"] = "Glow Enabled",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "",
						}, -- [4]
						{
							["Type"] = 1,
							["Key"] = "glowColor",
							["Value"] = {
								0.403921568627451, -- [1]
								0.00392156862745098, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Name"] = "Glow Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "",
						}, -- [5]
						{
							["Type"] = 6,
							["Name"] = "Blank Space",
							["Value"] = 0,
							["Key"] = "option3",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [6]
						{
							["Type"] = 4,
							["Key"] = "dotsEnabled",
							["Value"] = true,
							["Name"] = "Dots Enabled",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "",
						}, -- [7]
						{
							["Type"] = 1,
							["Name"] = "Dots Color",
							["Value"] = {
								1, -- [1]
								0.3215686274509804, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Key"] = "dotsColor",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "",
						}, -- [8]
					},
					["version"] = -1,
					["Name"] = "Aura - Debuff Alert [Plater]",
					["NpcNames"] = {
					},
				}, -- [6]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    --settings\n    envTable.NameplateSizeOffset = scriptTable.config.castBarHeight\n    envTable.ShowArrow = scriptTable.config.showArrow\n    envTable.ArrowAlpha = scriptTable.config.arrowAlpha\n    envTable.HealthBarColor = scriptTable.config.healthBarColor\n    \n    --creates the spark to show the cast progress inside the health bar\n    envTable.overlaySpark = envTable.overlaySpark or Plater:CreateImage (unitFrame.healthBar)\n    envTable.overlaySpark:SetBlendMode (\"ADD\")\n    envTable.overlaySpark.width = 16\n    envTable.overlaySpark.height = 36\n    envTable.overlaySpark.alpha = .9\n    envTable.overlaySpark.texture = [[Interface\\AddOns\\Plater\\images\\spark3]]\n    \n    envTable.topArrow = envTable.topArrow or Plater:CreateImage (unitFrame.healthBar)\n    envTable.topArrow:SetBlendMode (\"ADD\")\n    envTable.topArrow.width = scriptTable.config.arrowWidth\n    envTable.topArrow.height = scriptTable.config.arrowHeight\n    envTable.topArrow.alpha = envTable.ArrowAlpha\n    envTable.topArrow.texture = [[Interface\\BUTTONS\\Arrow-Down-Up]]\n    \n    --scale animation\n    envTable.smallScaleAnimation = envTable.smallScaleAnimation or Plater:CreateAnimationHub (unitFrame.healthBar)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 1, 0.075, 1, 1, 1.08, 1.08)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 2, 0.075, 1, 1, 0.95, 0.95)    \n    --envTable.smallScaleAnimation:Play() --envTable.smallScaleAnimation:Stop()\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (unitFrame, scriptTable.config.shakeDuration, scriptTable.config.shakeAmplitude, scriptTable.config.shakeFrequency, false, false, 0, 1, 0.05, 0.1, Plater.GetPoints (unitFrame))    \n    \n    --update the config for the skake here so it wont need a /reload\n    envTable.FrameShake.OriginalAmplitude = scriptTable.config.shakeAmplitude\n    envTable.FrameShake.OriginalDuration = scriptTable.config.shakeDuration\n    envTable.FrameShake.OriginalFrequency = scriptTable.config.shakeFrequency\nend\n\n\n\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    Plater.StopDotAnimation(unitFrame.healthBar, envTable.dotAnimation)\n    \n    envTable.overlaySpark:Hide()\n    envTable.topArrow:Hide()\n    \n    Plater.RefreshNameplateColor (unitFrame)\n    \n    envTable.smallScaleAnimation:Stop()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight)\nend\n\n\n",
					["ScriptType"] = 2,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    --update the percent\n    envTable.overlaySpark:SetPoint (\"left\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100)-9, 0)\n    \n    envTable.topArrow:SetPoint (\"bottomleft\", unitFrame.healthBar, \"topleft\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100) - 4, 2 )\n    \n    --forces the script to update on a 60Hz base\n    self.ThrottleUpdate = 0.016\n    \n    --update the health bar color coloring from yellow to red\n    --Plater.SetNameplateColor (unitFrame, max (envTable._CastPercent/100, .66), abs (envTable._CastPercent/100 - 1), 0, 1)\n    \n    Plater.SetNameplateColor (unitFrame, envTable.HealthBarColor)\nend\n\n\n",
					["Time"] = 1604617977,
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar_red",
					["Enabled"] = true,
					["Revision"] = 513,
					["semver"] = "",
					["Author"] = "Bombad�o-Azralon",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["Desc"] = "Used on casts that make the mob explode or transform if the cast passes.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    envTable.overlaySpark:Show()\n    \n    if (envTable.ShowArrow) then\n        envTable.topArrow:Show()\n    end\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    envTable.smallScaleAnimation:Play()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \n    envTable.overlaySpark.height = nameplateHeight + 5\n    \n    envTable.dotAnimation = Plater.PlayDotAnimation(unitFrame.healthBar, 2, scriptTable.config.dotColor, scriptTable.config.xOffset, scriptTable.config.yOffset)\n    \n    \nend",
					["SpellIds"] = {
						332329, -- [1]
						320103, -- [2]
						321406, -- [3]
						335817, -- [4]
						321061, -- [5]
						320141, -- [6]
						326171, -- [7]
					},
					["PlaterCore"] = 1,
					["Options"] = {
						{
							["Type"] = 6,
							["Name"] = "Option 1",
							["Value"] = 0,
							["Key"] = "option1",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 5,
							["Name"] = "Option 2",
							["Value"] = "Plays a special animation showing the explosion time.",
							["Key"] = "option2",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 6,
							["Name"] = "Option 3",
							["Value"] = 0,
							["Key"] = "option3",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [3]
						{
							["Type"] = 2,
							["Max"] = 6,
							["Desc"] = "Increases the health bar height by this value",
							["Min"] = 0,
							["Fraction"] = false,
							["Value"] = 3,
							["Key"] = "castBarHeight",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Health Bar Height Mod",
						}, -- [4]
						{
							["Type"] = 1,
							["Name"] = "Health Bar Color",
							["Value"] = {
								1, -- [1]
								0.5843137254901961, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Key"] = "healthBarColor",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "Changes the health bar color to this one.",
						}, -- [5]
						{
							["Type"] = 6,
							["Name"] = "Option 7",
							["Value"] = 0,
							["Key"] = "option7",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [6]
						{
							["Type"] = 5,
							["Name"] = "Arrow:",
							["Value"] = "Arrow:",
							["Key"] = "option6",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [7]
						{
							["Type"] = 4,
							["Name"] = "Show Arrow",
							["Value"] = true,
							["Key"] = "showArrow",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "Show an arrow above the nameplate showing the cast bar progress.",
						}, -- [8]
						{
							["Type"] = 2,
							["Max"] = 1,
							["Desc"] = "Arrow alpha.",
							["Min"] = 0,
							["Fraction"] = true,
							["Value"] = 0.5,
							["Key"] = "arrowAlpha",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Arrow Alpha",
						}, -- [9]
						{
							["Type"] = 2,
							["Max"] = 12,
							["Desc"] = "Arrow Width.",
							["Min"] = 4,
							["Name"] = "Arrow Width",
							["Value"] = 8,
							["Fraction"] = false,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "arrowWidth",
						}, -- [10]
						{
							["Type"] = 2,
							["Max"] = 12,
							["Desc"] = "Arrow Height.",
							["Min"] = 4,
							["Fraction"] = false,
							["Value"] = 8,
							["Key"] = "arrowHeight",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Arrow Height",
						}, -- [11]
						{
							["Type"] = 6,
							["Name"] = "Option 13",
							["Value"] = 0,
							["Key"] = "option13",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [12]
						{
							["Type"] = 5,
							["Name"] = "Dot Animation:",
							["Value"] = "Dot Animation:",
							["Key"] = "option12",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [13]
						{
							["Type"] = 1,
							["Name"] = "Dot Color",
							["Value"] = {
								1, -- [1]
								0.615686274509804, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Key"] = "dotColor",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "Adjust the color of the dot animation.",
						}, -- [14]
						{
							["Type"] = 2,
							["Max"] = 10,
							["Desc"] = "Dot X Offset",
							["Min"] = -10,
							["Name"] = "Dot X Offset",
							["Value"] = 4,
							["Key"] = "xOffset",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = false,
						}, -- [15]
						{
							["Type"] = 2,
							["Max"] = 10,
							["Desc"] = "Dot Y Offset",
							["Min"] = -10,
							["Key"] = "yOffset",
							["Value"] = 3,
							["Fraction"] = false,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Dot Y Offset",
						}, -- [16]
					},
					["version"] = -1,
					["Name"] = "Cast - Ultra Important [P]",
					["NpcNames"] = {
					},
				}, -- [7]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --castbar color (when can be interrupted)\n    envTable.CastbarColor = scriptTable.config.castbarColor\n    \n    --flash duration\n    local CONFIG_BACKGROUND_FLASH_DURATION = scriptTable.config.flashDuration\n    \n    --add this value to the cast bar height\n    envTable.CastBarHeightAdd = scriptTable.config.castBarHeight\n    \n    --create a fast flash above the cast bar\n    envTable.FullBarFlash = envTable.FullBarFlash or Plater.CreateFlash (self, 0.05, 1, \"white\")\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (unitFrame, scriptTable.config.shakeDuration, scriptTable.config.shakeAmplitude, scriptTable.config.shakeFrequency, false, false, 0, 1, 0.05, 0.1, Plater.GetPoints (unitFrame))\n    \n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+60, self:GetHeight()+50, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    envTable.BackgroundFlash.fadeIn = envTable.BackgroundFlash.fadeIn or Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, .75)\n    envTable.BackgroundFlash.fadeIn:SetDuration(CONFIG_BACKGROUND_FLASH_DURATION/2)\n    \n    envTable.BackgroundFlash.fadeOut = envTable.BackgroundFlash.fadeOut or Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \n    envTable.BackgroundFlash.fadeOut:SetDuration(CONFIG_BACKGROUND_FLASH_DURATION/2)\n    \n    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()    \n    \n    \n    \n    \n    \nend\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\" or Plater.ZoneInstanceType == \"none\") then\n        return\n    end    \n    \n    unitFrame.castBar:SetHeight (envTable._DefaultHeight)\n    \n    --stop the camera shake\n    unitFrame:StopFrameShake (envTable.FrameShake)\n    \n    envTable.FullBarFlash:Stop()\n    envTable.BackgroundFlash:Stop()\n    \n    unitFrame.castBar.Spark:SetHeight(unitFrame.castBar:GetHeight())\n    \nend\n\n\n\n\n\n",
					["ScriptType"] = 2,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \nend\n\n\n",
					["Time"] = 1604696442,
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar_orange",
					["Enabled"] = true,
					["Revision"] = 970,
					["semver"] = "",
					["Author"] = "Tercioo-Sylvanas",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend",
					["Desc"] = "Flash, Bounce and Red Color the CastBar border when when an important cast is happening. Add spell in the Add Trigger field.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\" or Plater.ZoneInstanceType == \"none\") then\n        return\n    end\n    \n    --play flash animations\n    envTable.FullBarFlash:Play()\n    \n    --envTable.currentHeight = unitFrame.castBar:GetHeight()\n    \n    --restoring the default size (not required since it already restore in the hide script)\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n    end\n    \n    --increase the cast bar size\n    local height = self:GetHeight()\n    envTable.OriginalHeight = height\n    \n    self:SetHeight (height + envTable.CastBarHeightAdd)\n    \n    Plater.SetCastBarBorderColor (self, 1, .2, .2, 0.4)\n    \n    unitFrame:PlayFrameShake (envTable.FrameShake)\n    \n    --set the color of the cast bar to dark orange (only if can be interrupted)\n    --Plater auto set this color to default when a new cast starts, no need to reset this value at OnHide.    \n    if (envTable._CanInterrupt) then\n        if (scriptTable.config.useCastbarColor) then\n            self:SetStatusBarColor (Plater:ParseColors (envTable.CastbarColor))\n        end\n    end\n    \n    envTable.BackgroundFlash:Play()\n    \n    unitFrame.castBar.Spark:SetHeight(unitFrame.castBar:GetHeight())\n    \nend\n\n\n\n\n\n\n\n\n",
					["SpellIds"] = {
						338353, -- [1]
						334748, -- [2]
						334749, -- [3]
						320784, -- [4]
						341352, -- [5]
						341520, -- [6]
						341522, -- [7]
						336005, -- [8]
						339777, -- [9]
						331933, -- [10]
						326617, -- [11]
						324914, -- [12]
						324776, -- [13]
						326046, -- [14]
						340634, -- [15]
						319070, -- [16]
						328295, -- [17]
						317936, -- [18]
						327413, -- [19]
						319654, -- [20]
						323821, -- [21]
						320772, -- [22]
						324293, -- [23]
						330562, -- [24]
						330868, -- [25]
						341902, -- [26]
						342139, -- [27]
						342675, -- [28]
						323190, -- [29]
						332836, -- [30]
						327648, -- [31]
						328217, -- [32]
						322938, -- [33]
						340544, -- [34]
						325876, -- [35]
						325700, -- [36]
						323552, -- [37]
						332666, -- [38]
						332612, -- [39]
						332706, -- [40]
						340026, -- [41]
						294171, -- [42]
						292910, -- [43]
						294165, -- [44]
						338871, -- [45]
						330813, -- [46]
						335694, -- [47]
						327461, -- [48]
						329787, -- [49]
						304946, -- [50]
						15245, -- [51]
						276754, -- [52]
						304831, -- [53]
						277036, -- [54]
						320657, -- [55]
						294362, -- [56]
						270248, -- [57]
						292926, -- [58]
					},
					["PlaterCore"] = 1,
					["Options"] = {
						{
							["Type"] = 6,
							["Name"] = "Blank Line",
							["Value"] = 0,
							["Key"] = "option1",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 5,
							["Name"] = "Option 2",
							["Value"] = "Produces a notable effect in the cast bar when a spell from the 'Triggers' starts to cast.",
							["Key"] = "option2",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 5,
							["Name"] = "Option 3",
							["Value"] = "Enter the spell name or spellID of the Spell in the Add Trigger box and hit \"Add\".",
							["Key"] = "option3",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [3]
						{
							["Type"] = 6,
							["Name"] = "Blank Space",
							["Value"] = 0,
							["Key"] = "option4",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [4]
						{
							["Type"] = 4,
							["Name"] = "Cast Bar Color Enabled",
							["Value"] = true,
							["Key"] = "useCastbarColor",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "When enabled, changes the cast bar color,",
						}, -- [5]
						{
							["Type"] = 1,
							["Name"] = "Cast Bar Color",
							["Value"] = {
								1, -- [1]
								0.4313725490196079, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Key"] = "castbarColor",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "Color of the cast bar.",
						}, -- [6]
						{
							["Type"] = 6,
							["Name"] = "Blank Line",
							["Value"] = 0,
							["Key"] = "option7",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [7]
						{
							["Type"] = 2,
							["Max"] = 1,
							["Desc"] = "When the cast starts it flash rapidly, adjust how fast it flashes. Value is milliseconds.",
							["Min"] = 0.05,
							["Fraction"] = true,
							["Value"] = 0.4,
							["Key"] = "flashDuration",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Flash Duration",
						}, -- [8]
						{
							["Type"] = 2,
							["Max"] = 10,
							["Desc"] = "Increases the cast bar height by this value",
							["Min"] = 0,
							["Fraction"] = false,
							["Value"] = 5,
							["Key"] = "castBarHeight",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Cast Bar Height Mod",
						}, -- [9]
						{
							["Type"] = 2,
							["Max"] = 1,
							["Desc"] = "When the cast starts, there's a small shake in the nameplate, this settings controls how long it takes.",
							["Min"] = 0.1,
							["Fraction"] = true,
							["Value"] = 0.2,
							["Key"] = "shakeDuration",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Shake Duration",
						}, -- [10]
						{
							["Type"] = 2,
							["Max"] = 100,
							["Desc"] = "How strong is the shake.",
							["Min"] = 2,
							["Name"] = "Shake Amplitude",
							["Value"] = 8,
							["Key"] = "shakeAmplitude",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = false,
						}, -- [11]
						{
							["Type"] = 2,
							["Max"] = 80,
							["Desc"] = "How fast the shake moves.",
							["Min"] = 1,
							["Name"] = "Shake Frequency",
							["Value"] = 40,
							["Key"] = "shakeFrequency",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = false,
						}, -- [12]
					},
					["version"] = -1,
					["Name"] = "Cast - Big Alert [Plater]",
					["NpcNames"] = {
					},
				}, -- [8]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    --flash duration\n    local CONFIG_FLASH_DURATION = scriptTable.config.flashDuration\n    \n    --manually create a new texture for the flash animation\n    if (not envTable.SmallFlashTexture) then\n        envTable.SmallFlashTexture = envTable.SmallFlashTexture or Plater:CreateImage (unitFrame.castBar)\n        envTable.SmallFlashTexture:SetColorTexture (1, 1, 1)\n        envTable.SmallFlashTexture:SetAllPoints()\n    end\n    \n    --manually create a flash animation using the framework\n    if (not envTable.SmallFlashAnimationHub) then \n        \n        local onPlay = function()\n            envTable.SmallFlashTexture:Show()\n        end\n        \n        local onFinished = function()\n            envTable.SmallFlashTexture:Hide()\n        end\n        \n        local animationHub = Plater:CreateAnimationHub (envTable.SmallFlashTexture, onPlay, onFinished)\n        envTable.flashIn = Plater:CreateAnimation (animationHub, \"Alpha\", 1, CONFIG_FLASH_DURATION/2, 0, .6)\n        envTable.flashOut = Plater:CreateAnimation (animationHub, \"Alpha\", 2, CONFIG_FLASH_DURATION/2, 1, 0)\n        \n        envTable.SmallFlashAnimationHub = animationHub\n    end\n    \n    envTable.flashIn:SetDuration(scriptTable.config.flashDuration / 2)\n    envTable.flashOut:SetDuration(scriptTable.config.flashDuration / 2)\n    envTable.SmallFlashTexture:SetColorTexture (Plater:ParseColors(scriptTable.config.flashColor))\n    \nend\n\n\n\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    envTable.SmallFlashAnimationHub:Stop()\n    \nend\n\n\n",
					["ScriptType"] = 2,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    \n    \nend\n\n\n",
					["Time"] = 1604617585,
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["Enabled"] = true,
					["Revision"] = 595,
					["semver"] = "",
					["Author"] = "Tercioo-Sylvanas",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["Desc"] = "Flashes the Cast Bar when a spell in the trigger list is Cast. Add spell in the Add Trigger field.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    envTable.SmallFlashAnimationHub:Play()\n    \nend\n\n\n",
					["SpellIds"] = {
						320170, -- [1]
						320171, -- [2]
						320462, -- [3]
						330712, -- [4]
						332170, -- [5]
						333875, -- [6]
						326836, -- [7]
						342135, -- [8]
						333861, -- [9]
						341969, -- [10]
						317963, -- [11]
						327481, -- [12]
						328331, -- [13]
						322614, -- [14]
						325701, -- [15]
						326438, -- [16]
						323538, -- [17]
						321764, -- [18]
						296523, -- [19]
						330755, -- [20]
						295929, -- [21]
						296019, -- [22]
						335685, -- [23]
						170751, -- [24]
						342207, -- [25]
					},
					["PlaterCore"] = 1,
					["Options"] = {
						{
							["Type"] = 6,
							["Key"] = "option1",
							["Value"] = 0,
							["Name"] = "Option 1",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 5,
							["Key"] = "option2",
							["Value"] = "Plays a small animation when the cast start.",
							["Name"] = "Option 2",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 5,
							["Name"] = "Option 2",
							["Value"] = "Enter the spell name or spellID of the Spell in the Add Trigger box and hit \"Add\".",
							["Key"] = "option2",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [3]
						{
							["Type"] = 6,
							["Key"] = "option3",
							["Value"] = 0,
							["Name"] = "Option 3",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [4]
						{
							["Type"] = 2,
							["Max"] = 1.2,
							["Desc"] = "How long is the flash played when the cast starts.",
							["Min"] = 0.1,
							["Fraction"] = true,
							["Value"] = 0.6,
							["Name"] = "Flash Duration",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "flashDuration",
						}, -- [5]
						{
							["Type"] = 1,
							["Key"] = "flashColor",
							["Value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["Name"] = "Flash Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "Color of the Flash",
						}, -- [6]
					},
					["version"] = -1,
					["Name"] = "Cast - Small Alert [Plater]",
					["NpcNames"] = {
					},
				}, -- [9]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --insert code here\n    \n    --check for marks\n    function  envTable.CheckMark (unitId, unitFrame)\n        if (not GetRaidTargetIndex(unitId)) then\n            if (scriptTable.config.onlyInCombat) then\n                if (not UnitAffectingCombat(unitId)) then\n                    return\n                end                \n            end\n            \n            SetRaidTarget(unitId, 8)\n        end       \n    end\nend\n\n\n--163520 - forsworn squad-leader\n--163618 - zolramus necromancer - The Necrotic Wake\n--164506 - anciet captain - theater of pain\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --insert code here\n    envTable.CheckMark (unitId, unitFrame)\nend\n\n\n",
					["Time"] = 1604696441,
					["url"] = "",
					["Icon"] = "Interface\\Worldmap\\GlowSkull_64Grey",
					["Enabled"] = true,
					["Revision"] = 63,
					["semver"] = "",
					["Author"] = "Aelerolor-Torghast",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["Desc"] = "Auto set skull marker",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --insert code here\n    envTable.CheckMark (unitId, unitFrame)\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Options"] = {
						{
							["Type"] = 5,
							["Key"] = "option1",
							["Value"] = "Auto set a raid target Skull on the unit.",
							["Name"] = "Option 1",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 6,
							["Key"] = "option2",
							["Value"] = 0,
							["Name"] = "Option 2",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 4,
							["Key"] = "onlyInCombat",
							["Value"] = false,
							["Name"] = "Only in Combat",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "Set the mark only if the unit is in combat.",
						}, -- [3]
					},
					["version"] = -1,
					["Name"] = "Auto Set Skull",
					["NpcNames"] = {
						"163520", -- [1]
						"163618", -- [2]
						"164506", -- [3]
					},
				}, -- [10]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \nend\n\n--[=[\n\n154564 - debug\n\n168098 - empowered coldheart agent\n156212 - coldheart agent\n\n\n\n--]=]",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    Plater.StopDotAnimation(unitFrame.healthBar, unitFrame.healthBar.MainTargetDotAnimation)\n    \n    --restore the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight)    \n    \nend\n\n\n\n\n",
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    --check if can change the nameplate color\n    if (scriptTable.config.changeNameplateColor) then\n        Plater.SetNameplateColor (unitFrame, scriptTable.config.nameplateColor)\n    end\n    \nend\n\n\n\n\n",
					["Time"] = 1604607993,
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\media\\skullbones_64",
					["Enabled"] = true,
					["Revision"] = 406,
					["semver"] = "",
					["Author"] = "Izimode-Azralon",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["Desc"] = "Highlight a nameplate of an important Add. Add the unit name or NpcID into the trigger box to add more.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    Plater.StopDotAnimation(unitFrame.healthBar, unitFrame.healthBar.MainTargetDotAnimation)\n    \n    unitFrame.healthBar.MainTargetDotAnimation = Plater.PlayDotAnimation(unitFrame.healthBar, 2, scriptTable.config.dotsColor, 3, 4) \n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + scriptTable.config.nameplateSizeOffset)\n    \nend\n\n\n\n\n\n\n\n",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Options"] = {
						{
							["Type"] = 6,
							["Name"] = "Blank Space",
							["Value"] = 0,
							["Key"] = "option4",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 5,
							["Name"] = "Option 6",
							["Value"] = "Enter the npc name or npcId in the \"Add Trigger\" box and hit \"Add\".",
							["Key"] = "option6",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 6,
							["Key"] = "option4",
							["Value"] = 0,
							["Name"] = "Blank Space",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [3]
						{
							["Type"] = 4,
							["Name"] = "Change Nameplate Color",
							["Value"] = true,
							["Key"] = "changeNameplateColor",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "change to true to change the color",
						}, -- [4]
						{
							["Type"] = 1,
							["Name"] = "Nameplate Color",
							["Value"] = {
								1, -- [1]
								0, -- [2]
								0.5254901960784314, -- [3]
								1, -- [4]
							},
							["Key"] = "nameplateColor",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "",
						}, -- [5]
						{
							["Type"] = 2,
							["Max"] = 6,
							["Desc"] = "increase the nameplate height by this value",
							["Min"] = 0,
							["Key"] = "nameplateSizeOffset",
							["Value"] = 0,
							["Fraction"] = false,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Nameplate Size Offset",
						}, -- [6]
						{
							["Type"] = 6,
							["Key"] = "option4",
							["Value"] = 0,
							["Name"] = "Blank Space",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [7]
						{
							["Type"] = 1,
							["Name"] = "Dot Color",
							["Value"] = {
								1, -- [1]
								0.7137254901960784, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Key"] = "dotsColor",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "",
						}, -- [8]
						{
							["Type"] = 6,
							["Name"] = "Blank Space",
							["Value"] = 0,
							["Key"] = "option4",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [9]
					},
					["version"] = -1,
					["Name"] = "Unit - Main Target [P]",
					["NpcNames"] = {
						"156212", -- [1]
						"168098", -- [2]
					},
				}, -- [11]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    --settings (require a /reload after editing any setting)\n    do\n        --blink and glow\n        envTable.BlinkEnabled = scriptTable.config.blinkEnabled\n        envTable.GlowEnabled = scriptTable.config.glowEnabled \n        envTable.ChangeNameplateColor = scriptTable.config.changeNameplateColor;\n        envTable.TimeLeftToBlink = scriptTable.config.timeleftToBlink;\n        envTable.BlinkSpeed = scriptTable.config.blinkSpeed; \n        envTable.BlinkColor = scriptTable.config.blinkColor; \n        envTable.BlinkMaxAlpha = scriptTable.config.blinkMaxAlpha; \n        envTable.NameplateColor = scriptTable.config.nameplateColor; \n        \n        --text color\n        envTable.TimerColorEnabled = scriptTable.config.timerColorEnabled \n        envTable.TimeLeftWarning = scriptTable.config.timeLeftWarning;\n        envTable.TimeLeftCritical = scriptTable.config.timeLeftCritical;\n        envTable.TextColor_Warning = scriptTable.config.warningColor; \n        envTable.TextColor_Critical = scriptTable.config.criticalColor; \n        \n        --list of spellIDs to ignore\n        envTable.IgnoredSpellID = {\n            [12] = true, --use a simple comma here\n            [13] = true,\n        }\n    end\n    \n    \n    --private\n    do\n        envTable.blinkTexture = Plater:CreateImage (self, \"\", 1, 1, \"overlay\")\n        envTable.blinkTexture:SetPoint ('center', 0, 0)\n        envTable.blinkTexture:Hide()\n        \n        local onPlay = function()\n            envTable.blinkTexture:Show() \n            envTable.blinkTexture.color = envTable.BlinkColor\n        end\n        local onStop = function()\n            envTable.blinkTexture:Hide()  \n        end\n        envTable.blinkAnimation = Plater:CreateAnimationHub (envTable.blinkTexture, onPlay, onStop)\n        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 1, envTable.BlinkSpeed / 2, 0, envTable.BlinkMaxAlpha)\n        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 2, envTable.BlinkSpeed / 2, envTable.BlinkMaxAlpha, 0)\n        \n        envTable.glowEffect = envTable.glowEffect or Plater.CreateIconGlow (self)\n        --envTable.glowEffect:Show() --envTable.glowEffect:Hide()\n        \n    end\n    \nend\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.blinkAnimation:Stop()\n    envTable.blinkTexture:Hide()\n    envTable.blinkAnimation:Stop()\n    envTable.glowEffect:Stop()\n    Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\nend\n\n\n",
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    local timeLeft = envTable._RemainingTime\n    \n    --check if the spellID isn't being ignored\n    if (envTable.IgnoredSpellID [envTable._SpellID]) then\n        return\n    end\n    \n    --check the time left and start or stop the blink animation and also check if the time left is > zero\n    if ((envTable.BlinkEnabled or envTable.GlowEnabled) and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftToBlink) then\n            --blink effect\n            if (envTable.BlinkEnabled) then\n                if (not envTable.blinkAnimation:IsPlaying()) then\n                    envTable.blinkAnimation:Play()\n                end\n            end\n            --glow effect\n            if (envTable.GlowEnabled) then\n                envTable.glowEffect:Show()\n            end\n            --nameplate color\n            if (envTable.ChangeNameplateColor) then\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n            end\n        else\n            --blink effect\n            if (envTable.blinkAnimation:IsPlaying()) then\n                envTable.blinkAnimation:Stop()\n            end\n            --glow effect\n            if (envTable.GlowEnabled and envTable.glowEffect:IsShown()) then\n                envTable.glowEffect:Hide()\n            end\n        end\n    end\n    \n    --timer color\n    if (envTable.TimerColorEnabled and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftCritical) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Critical)\n        elseif (timeLeft < envTable.TimeLeftWarning) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Warning)        \n        else\n            Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\n        end\n    end\n    \nend",
					["Time"] = 1604354808,
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura_blink",
					["Enabled"] = true,
					["Revision"] = 331,
					["semver"] = "",
					["Author"] = "Izimode-Azralon",
					["Initialization"] = "					function (scriptTable)\n						--insert code here\n						\n					end\n				",
					["Desc"] = "Blink, change the number and nameplate color. Add the debuffs int he trigger box. Set settings on constructor script.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.blinkTexture:SetSize (self:GetSize())\n    \nend\n\n\n",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Options"] = {
						{
							["Type"] = 6,
							["Key"] = "option10",
							["Value"] = 0,
							["Name"] = "Blank Space",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 5,
							["Key"] = "option17",
							["Value"] = "Enter the spell name or spellID in the Add Trigger box and hit \"Add\".",
							["Name"] = "Option 17",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 6,
							["Name"] = "Blank Space",
							["Value"] = 0,
							["Key"] = "option10",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [3]
						{
							["Type"] = 4,
							["Key"] = "blinkEnabled",
							["Value"] = true,
							["Name"] = "Blink Enabled",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "set to 'false' to disable blink",
						}, -- [4]
						{
							["Type"] = 4,
							["Key"] = "glowEnabled",
							["Value"] = true,
							["Name"] = "Glow Enabled",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "set to 'false' to disable glows",
						}, -- [5]
						{
							["Type"] = 4,
							["Key"] = "changeNameplateColor",
							["Value"] = true,
							["Name"] = "Change NamePlate Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "set to 'true' to enable nameplate color change",
						}, -- [6]
						{
							["Type"] = 2,
							["Max"] = 20,
							["Desc"] = "in seconds, affects the blink effect only",
							["Min"] = 1,
							["Fraction"] = true,
							["Value"] = 3,
							["Name"] = "Timeleft to Blink",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "timeleftToBlink",
						}, -- [7]
						{
							["Type"] = 2,
							["Max"] = 3,
							["Desc"] = "time to complete a blink loop",
							["Min"] = 0.5,
							["Fraction"] = true,
							["Value"] = 1,
							["Name"] = "Blink Speed",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "blinkSpeed",
						}, -- [8]
						{
							["Type"] = 2,
							["Max"] = 1,
							["Desc"] = "max transparency in the animation loop (1.0 is full opaque)",
							["Min"] = 0.1,
							["Fraction"] = true,
							["Value"] = 0.6,
							["Name"] = "Blink Max Alpha",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "blinkMaxAlpha",
						}, -- [9]
						{
							["Type"] = 1,
							["Key"] = "blinkColor",
							["Value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["Name"] = "Blink Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "color of the blink",
						}, -- [10]
						{
							["Type"] = 1,
							["Key"] = "",
							["Value"] = {
								0.2862745098039216, -- [1]
								0.00392156862745098, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Name"] = "Nameplate Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "nameplate color if ChangeNameplateColor is true",
						}, -- [11]
						{
							["Type"] = 6,
							["Name"] = "Blank Space",
							["Value"] = 0,
							["Key"] = "option10",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [12]
						{
							["Type"] = 4,
							["Key"] = "timerColorEnabled",
							["Value"] = true,
							["Name"] = "Timer Color Enabled",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "set to 'false' to disable changes in the color of the time left text",
						}, -- [13]
						{
							["Type"] = 2,
							["Max"] = 20,
							["Desc"] = "in seconds, affects the color of the text",
							["Min"] = 1,
							["Name"] = "Time Left Warning",
							["Value"] = 8,
							["Fraction"] = true,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "timeLeftWarning",
						}, -- [14]
						{
							["Type"] = 2,
							["Max"] = 10,
							["Desc"] = "in seconds, affects the color of the text",
							["Min"] = 1,
							["Name"] = "Time Left Critical",
							["Value"] = 3,
							["Fraction"] = true,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "timeLeftCritical",
						}, -- [15]
						{
							["Type"] = 1,
							["Key"] = "warningColor",
							["Value"] = {
								1, -- [1]
								0.8705882352941177, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Name"] = "Warning Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "color when the time left entered in a warning zone",
						}, -- [16]
						{
							["Type"] = 1,
							["Key"] = "criticalColor",
							["Value"] = {
								1, -- [1]
								0.07450980392156863, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Name"] = "Critical Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "color when the time left is critical",
						}, -- [17]
					},
					["version"] = -1,
					["Name"] = "Aura - Blink by Time Left [Plater]",
					["NpcNames"] = {
					},
				}, -- [12]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --insert code here\n    \n    envTable.npcInfo = {\n        [164427] = {secondCastBar = true, timer = 20, timerId = 321247, altCastId = \"1\", name = \"Boom!\"}, --reanimated warrior - plaguefall\n        \n        [164414] = {secondCastBar = true, timer = 20, timerId = 321247, altCastId = \"2\", name = \"Boom!\"}, --reanimated mage - plaguefall\n        \n        [164185] = {secondCastBar = true, timer = 20, timerId = 319941, altCastId = \"3\", remaining = 5, name = GetSpellInfo(319941)}, --Echelon - Halls of Atonement\n        \n        [164567] = {secondCastBar = true, altCastId = \"dromanswrath\", debuffTimer = 323059, name = GetSpellInfo(323059), spellIcon = 323059}, --Ingra Maloch -- tirna scythe\n        \n        [165408] = {secondCastBar = true, timer = 20, timerId = 322711, altCastId = \"4\", remaining = 5, name = GetSpellInfo(322711)}, --Halkias - Refracted Sinlight - Halls of Atonement\n        \n        \n        --[154564] = {secondCastBar = true, timerId = \"Test Bar\", altCastId = \"debugcast\", remaining = 5, name = GetSpellInfo(319941), spellIcon = 319941}, --debug \"Test (1)\" BW \"Test Bar\" DBM --DEBUG\n        --[154580] = {secondCastBar = true, altCastId = \"debugcast\", debuffTimer = 204242, name = GetSpellInfo(81297), spellIcon = 81297}, --debug \"Test (1)\" BW \"Test Bar\" DBM --DEBUG\n    }\n    \n    --set the castbar config\n    local config = {\n        iconTexture = \"\",\n        iconTexcoord = {0.1, 0.9, 0.1, 0.9},\n        iconAlpha = 1,\n        iconSize = 14,\n        \n        text = \"Boom!\",\n        textSize = 9,\n        \n        texture = [[Interface\\AddOns\\Plater\\images\\bar_background]],\n        color = \"silver\",\n        \n        isChanneling = false,\n        canInterrupt = false,\n        \n        height = 2,\n        width = Plater.db.profile.plate_config.enemynpc.health_incombat[1],\n        \n        spellNameAnchor = {side = 3, x = 0, y = -2},\n        timerAnchor = {side = 5, x = 0, y = -2},\n    }    \n    \n    function envTable.ShowAltCastBar(npcInfo, unitFrame, unitId, customTime, customStart)\n        --show the cast bar\n        if (npcInfo.timerId) then\n            local barObject = Plater.GetBossTimer(npcInfo.timerId)\n            if (barObject) then\n                if (npcInfo.remaining) then\n                    local timeLeft = barObject.timer + barObject.start - GetTime()\n                    if (timeLeft > npcInfo.remaining) then\n                        return\n                    end\n                end\n                \n                config.text = npcInfo.name\n                \n                if (npcInfo.spellIcon) then\n                    local _, _, iconTexture = GetSpellInfo(npcInfo.spellIcon)\n                    config.iconTexture = iconTexture\n                else\n                    config.iconTexture = \"\"\n                end\n                \n                Plater.SetAltCastBar(unitFrame.PlateFrame, config, barObject.timer, customStart or barObject.start, npcInfo.altCastId)\n            end\n        else\n            Plater.SetAltCastBar(unitFrame.PlateFrame, config, customTime or npcInfo.timer, customStart, npcInfo.altCastId)            \n        end\n        \n        DetailsFramework:TruncateText(unitFrame.castBar2.Text, unitFrame.castBar2:GetWidth() - 16)\n    end\nend",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --insert code here\n    Plater.ClearAltCastBar(unitFrame.PlateFrame)\nend",
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    local npcInfo = envTable.npcInfo[envTable._NpcID]\n    \n    if (npcInfo and npcInfo.secondCastBar) then\n        if (npcInfo.timerId) then\n            local barObject = Plater.GetBossTimer(npcInfo.timerId)\n            if (barObject) then\n                local altCastId = Plater.GetAltCastBarAltId(unitFrame.PlateFrame)\n                if (altCastId ~= npcInfo.altCastId or not unitFrame.castBar2:IsShown()) then\n                    envTable.ShowAltCastBar(npcInfo, unitFrame, unitId)\n                end\n            end \n            \n        elseif (npcInfo.debuffTimer) then\n            if (Plater.NameplateHasAura (unitFrame, npcInfo.debuffTimer)) then\n                \n                --get the debuff timeleft\n                local name = npcInfo.name\n                local _, _, _, _, duration, expirationTime = AuraUtil.FindAuraByName(name, unitId, \"DEBUFF\")\n                local startTime = expirationTime - duration\n                \n                if (not unitFrame.castBar2:IsShown() or unitFrame.castBar2.spellStartTime < startTime) then\n                    envTable.ShowAltCastBar(npcInfo, unitFrame, unitId, duration, startTime)\n                end\n                \n            else \n                if (unitFrame.castBar2:IsShown()) then\n                    local altCastId = Plater.GetAltCastBarAltId(unitFrame.PlateFrame)\n                    if (altCastId == npcInfo.altCastId) then\n                        Plater.ClearAltCastBar(unitFrame.PlateFrame)\n                    end                   \n                end                              \n            end\n        end\n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["Time"] = 1604354364,
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\Images\\countdown_bar_icon",
					["Enabled"] = true,
					["Revision"] = 206,
					["semver"] = "",
					["Author"] = "Aelerolor-Torghast",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["Desc"] = "Some units has special events without a clear way to show. This script adds a second cast bar to inform the user about it.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    local npcInfo = envTable.npcInfo[envTable._NpcID]\n    \n    if (npcInfo and npcInfo.secondCastBar) then\n        if (npcInfo.debuffTimer) then\n            if (Plater.NameplateHasAura (unitFrame, npcInfo.debuffTimer)) then\n                \n                local name = npcInfo.name\n                local _, _, _, _, duration, expirationTime = AuraUtil.FindAuraByName(name, unitId, \"DEBUFF\")\n                \n                envTable.ShowAltCastBar(npcInfo, unitFrame, unitId, duration, expirationTime-duration)\n            else\n                if (unitFrame.castBar2:IsShown()) then\n                    local altCastId = Plater.GetAltCastBarAltId(unitFrame.PlateFrame)\n                    if (altCastId == npcInfo.altCastId) then\n                        Plater.ClearAltCastBar(unitFrame.PlateFrame)\n                    end                   \n                end                              \n            end\n        else\n            envTable.ShowAltCastBar(npcInfo, unitFrame, unitId)\n        end\n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Options"] = {
					},
					["version"] = -1,
					["Name"] = "Countdown",
					["NpcNames"] = {
						"164427", -- [1]
						"164414", -- [2]
						"164185", -- [3]
						"164567", -- [4]
						"165408", -- [5]
					},
				}, -- [13]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --insert code here\n    \n    envTable.lifePercent = {\n        --npcId         percent divisions\n        [154564] = {80, 30},   --debug\n        [164451] = {40}, --dessia the decapirator - theater of pain\n        [164463] = {40}, --Paceran the Virulent - theater of pain\n        [164461] = {40}, -- Sathel the Accursed - theater of pain\n        [165946]= {50}, -- ~mordretha - thather of pain\n        [164501] = {70, 40, 10}, --mistcaller - tina scythe\n        [164218] = {70, 40}, --Lord Chamberlain - Halls of Atonement\n    }\n    \n    function envTable.CreateMarker(unitFrame)\n        unitFrame.healthMarker = unitFrame.healthBar:CreateTexture(nil, \"overlay\")\n        unitFrame.healthMarker:SetColorTexture(1, 1, 1)\n        unitFrame.healthMarker:SetSize(1, unitFrame.healthBar:GetHeight())\n        \n        unitFrame.healthOverlay = unitFrame.healthBar:CreateTexture(nil, \"overlay\")\n        unitFrame.healthOverlay:SetColorTexture(1, 1, 1)\n        unitFrame.healthOverlay:SetSize(1, unitFrame.healthBar:GetHeight())\n    end\n    \n    function envTable.UpdateMarkers(unitFrame)\n        local markersTable = envTable.lifePercent[envTable._NpcID]\n        if (markersTable) then\n            local unitLifePercent = envTable._HealthPercent / 100\n            for i, percent in ipairs(markersTable) do\n                percent = percent / 100\n                if (unitLifePercent > percent) then\n                    if (not unitFrame.healthMarker) then\n                        envTable.CreateMarker(unitFrame)\n                    end\n                    \n                    unitFrame.healthMarker:Show()\n                    local width = unitFrame.healthBar:GetWidth()\n                    unitFrame.healthMarker:SetPoint(\"left\", unitFrame.healthBar, \"left\", width*percent, 0)\n                    \n                    local overlaySize = width * (unitLifePercent - percent)\n                    unitFrame.healthOverlay:SetWidth(overlaySize)\n                    unitFrame.healthOverlay:SetPoint(\"left\", unitFrame.healthMarker, \"right\", 0, 0)\n                    \n                    unitFrame.healthMarker:SetVertexColor(Plater:ParseColors(scriptTable.config.indicatorColor))\n                    unitFrame.healthMarker:SetAlpha(scriptTable.config.indicatorAlpha)\n                    \n                    unitFrame.healthOverlay:SetVertexColor(Plater:ParseColors(scriptTable.config.fillColor))\n                    unitFrame.healthOverlay:SetAlpha(scriptTable.config.fillAlpha)\n                    \n                    return\n                end\n            end --end for\n            \n            if (unitFrame.healthMarker and unitFrame.healthMarker:IsShown()) then\n                unitFrame.healthMarker:Hide()\n                unitFrame.healthOverlay:Hide()\n            end\n        end\n    end\nend      \n\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    if (unitFrame.healthMarker) then\n        unitFrame.healthMarker:Hide()\n        unitFrame.healthOverlay:Hide()\n    end\nend\n\n\n\n\n",
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --insert code here\n    envTable.UpdateMarkers(unitFrame)\nend\n\n\n",
					["Time"] = 1606506781,
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\health_indicator",
					["Enabled"] = true,
					["Revision"] = 109,
					["semver"] = "",
					["Author"] = "Aelerolor-Torghast",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["Desc"] = "Place a marker into the health bar to indicate when the unit will change phase or cast an important spell.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --insert code here\n    envTable.UpdateMarkers(unitFrame)\nend\n\n\n",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Options"] = {
						{
							["Type"] = 5,
							["Name"] = "Option 1",
							["Value"] = "Add markers into the health bar to remind you about boss abilities at life percent.",
							["Key"] = "option1",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 6,
							["Name"] = "blank line",
							["Value"] = 0,
							["Key"] = "",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 1,
							["Name"] = "Vertical Line Color",
							["Value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["Key"] = "indicatorColor",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "Indicator color.",
						}, -- [3]
						{
							["Type"] = 2,
							["Max"] = 1,
							["Desc"] = "Indicator alpha.",
							["Min"] = 0.1,
							["Fraction"] = true,
							["Value"] = 0.79,
							["Key"] = "indicatorAlpha",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Vertical Line Alpha",
						}, -- [4]
						{
							["Type"] = 6,
							["Key"] = "",
							["Value"] = 0,
							["Name"] = "blank line",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [5]
						{
							["Type"] = 1,
							["Key"] = "fillColor",
							["Value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["Name"] = "Fill Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "Fill color.",
						}, -- [6]
						{
							["Type"] = 2,
							["Max"] = 1,
							["Desc"] = "Fill alpha.",
							["Min"] = 0,
							["Key"] = "fillAlpha",
							["Value"] = 0.2,
							["Name"] = "Fill Alpha",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = true,
						}, -- [7]
					},
					["version"] = -1,
					["Name"] = "Unit - Health Markers [P]",
					["NpcNames"] = {
						"164451", -- [1]
						"164463", -- [2]
						"164461", -- [3]
						"165946", -- [4]
						"164501", -- [5]
						"164218", -- [6]
					},
				}, -- [14]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    envTable.movingArrow = envTable.movingArrow or Plater:CreateImage (self, [[Interface\\PETBATTLES\\PetBattle-StatIcons]], 16, self:GetHeight(), \"background\", {0, 15/32, 18/32, 30/32})\n    \n    --envTable.movingArrow.color = scriptTable.config.arrowColor\n    envTable.movingArrow:SetAlpha (scriptTable.config.arrowAlpha)\n    envTable.movingArrow:SetDesaturated (scriptTable.config.desaturateArrow)\n    \n    envTable.movingAnimation = envTable.movingAnimation or Plater:CreateAnimationHub (envTable.movingArrow, \n        function() \n            envTable.movingArrow:Show() \n            envTable.movingArrow:SetPoint(\"left\", 0, 0)\n        end, \n        function() envTable.movingArrow:Hide() end)\n    \n    envTable.movingAnimation:SetLooping (\"REPEAT\")\n    \n    envTable.arrowAnimation = envTable.arrowAnimation or Plater:CreateAnimation (envTable.movingAnimation, \"translation\", 1, 0.20, self:GetWidth()-16, 0)\n    \n    envTable.arrowAnimation:SetDuration(scriptTable.config.animSpeed)\nend\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    envTable.movingAnimation:Stop()\nend\n\n\n",
					["ScriptType"] = 2,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \nend",
					["Time"] = 1604599443,
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar_frontal",
					["Enabled"] = true,
					["Revision"] = 460,
					["semver"] = "",
					["Author"] = "Izimode-Azralon",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["Desc"] = "Does an animation for casts that affect the frontal area of the enemy. Add spell in the Add Trigger field.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    envTable.movingAnimation:Play()\nend\n\n\n",
					["SpellIds"] = {
						323489, -- [1]
						323496, -- [2]
						319941, -- [3]
						319592, -- [4]
						334266, -- [5]
						325258, -- [6]
						334913, -- [7]
						326221, -- [8]
						322936, -- [9]
						323236, -- [10]
						321834, -- [11]
						336752, -- [12]
						325418, -- [13]
						324667, -- [14]
						327233, -- [15]
						324368, -- [16]
						324205, -- [17]
						323943, -- [18]
						319713, -- [19]
						320596, -- [20]
						320729, -- [21]
						323608, -- [22]
						330614, -- [23]
						320063, -- [24]
						332708, -- [25]
						334023, -- [26]
						317231, -- [27]
						317943, -- [28]
						320966, -- [29]
						334053, -- [30]
						328458, -- [31]
						321968, -- [32]
						331718, -- [33]
						325793, -- [34]
						330453, -- [35]
						326997, -- [36]
						334051, -- [37]
						292903, -- [38]
						330843, -- [39]
						294173, -- [40]
						189200, -- [41]
					},
					["PlaterCore"] = 1,
					["Options"] = {
						{
							["Type"] = 6,
							["Key"] = "option1",
							["Value"] = 0,
							["Name"] = "Option 1",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 5,
							["Key"] = "option2",
							["Value"] = "Produces an effect to indicate the spell will hit players in front of the enemy.",
							["Name"] = "Option 2",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 5,
							["Key"] = "option4",
							["Value"] = "Enter the spell name or spellID of the Spell in the Add Trigger box and hit \"Add\".",
							["Name"] = "Option 4",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [3]
						{
							["Type"] = 6,
							["Key"] = "option3",
							["Value"] = 0,
							["Name"] = "Option 3",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [4]
						{
							["Type"] = 2,
							["Max"] = 1,
							["Desc"] = "Set the alpha of the moving arrow",
							["Min"] = 0,
							["Name"] = "Arrow Alpha",
							["Value"] = 0.275,
							["Fraction"] = true,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "arrowAlpha",
						}, -- [5]
						{
							["Type"] = 2,
							["Max"] = 1,
							["Desc"] = "Time that takes for an arrow to travel from the to right.",
							["Min"] = 0,
							["Name"] = "Animation Speed",
							["Value"] = 0.2,
							["Fraction"] = true,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "animSpeed",
						}, -- [6]
						{
							["Type"] = 4,
							["Key"] = "desaturateArrow",
							["Value"] = false,
							["Name"] = "Use White Arrow",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "If enabled, the arrow color will be desaturated.",
						}, -- [7]
					},
					["version"] = -1,
					["Name"] = "Cast - Frontal Cone [Plater]",
					["NpcNames"] = {
					},
				}, -- [15]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\n    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.BuffFrame, \"top\", 0, 10);    \n    \n    envTable.FixateIcon = Plater:CreateImage (unitFrame, 236188, 16, 16, \"overlay\");\n    envTable.FixateIcon:SetPoint (\"bottom\", envTable.FixateTarget, \"top\", 0, 4);    \n    \n    envTable.FixateTarget:Hide()\n    envTable.FixateIcon:Hide()\nend\n\n--165560 = Gormling Larva - MTS\n\n\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Hide()\n    envTable.FixateIcon:Hide()\nend\n\n\n",
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    local targetName = UnitName (unitId .. \"target\");\n    if (targetName) then\n        local _, class = UnitClass (unitId .. \"target\");\n        targetName = Plater.SetTextColorByClass (unitId .. \"target\", targetName);\n        envTable.FixateTarget.text = targetName;\n        \n        envTable.FixateTarget:Show();\n        envTable.FixateIcon:Show();\n    end    \nend\n\n\n",
					["Time"] = 1604239880,
					["url"] = "",
					["Icon"] = 1029718,
					["Enabled"] = true,
					["Revision"] = 269,
					["semver"] = "",
					["Author"] = "Celian-Sylvanas",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n\n\n\n\n",
					["Desc"] = "Show above the nameplate who is the player fixated",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Options"] = {
					},
					["version"] = -1,
					["Name"] = "Fixate [Plater]",
					["NpcNames"] = {
						"165560", -- [1]
					},
				}, -- [16]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --castbar color (when can be interrupted)\n    envTable.CastbarColor = scriptTable.config.castbarColor\n    \n    --flash duration\n    local CONFIG_BACKGROUND_FLASH_DURATION = scriptTable.config.flashDuration\n    \n    --add this value to the cast bar height\n    envTable.CastBarHeightAdd = scriptTable.config.castBarHeight\n    \n    --create a fast flash above the cast bar\n    envTable.FullBarFlash = envTable.FullBarFlash or Plater.CreateFlash (self, 0.05, 1, \"white\")\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (unitFrame, scriptTable.config.shakeDuration, scriptTable.config.shakeAmplitude, scriptTable.config.shakeFrequency, false, false, 0, 1, 0.05, 0.1, Plater.GetPoints (unitFrame))\n    \n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+60, self:GetHeight()+50, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    envTable.BackgroundFlash.fadeIn = envTable.BackgroundFlash.fadeIn or Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, .75)\n    envTable.BackgroundFlash.fadeIn:SetDuration(CONFIG_BACKGROUND_FLASH_DURATION/2)\n    \n    envTable.BackgroundFlash.fadeOut = envTable.BackgroundFlash.fadeOut or Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \n    envTable.BackgroundFlash.fadeOut:SetDuration(CONFIG_BACKGROUND_FLASH_DURATION/2)\n    \n    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()    \n    \n    \n    \n    \n    \nend\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    if (not Plater.IsPlayerTank()) then\n        return\n    end\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end    \n    \n    unitFrame.castBar:SetHeight (envTable._DefaultHeight)\n    \n    --stop the camera shake\n    unitFrame:StopFrameShake (envTable.FrameShake)\n    \n    envTable.FullBarFlash:Stop()\n    envTable.BackgroundFlash:Stop()\n    \n    unitFrame.castBar.Spark:SetHeight(unitFrame.castBar:GetHeight())\n    \nend\n\n\n\n\n\n",
					["ScriptType"] = 2,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \nend\n\n\n",
					["Time"] = 1604593143,
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar_tank",
					["Enabled"] = true,
					["Revision"] = 833,
					["semver"] = "",
					["Author"] = "Tercioo-Sylvanas",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend",
					["Desc"] = "Cast alert for abilities which only the tank can interrupt.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    if (not Plater.IsPlayerTank()) then\n        return\n    end\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end\n    \n    --play flash animations\n    envTable.FullBarFlash:Play()\n    \n    --envTable.currentHeight = unitFrame.castBar:GetHeight()\n    \n    --restoring the default size (not required since it already restore in the hide script)\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n    end\n    \n    --increase the cast bar size\n    local height = self:GetHeight()\n    envTable.OriginalHeight = height\n    \n    self:SetHeight (height + envTable.CastBarHeightAdd)\n    \n    Plater.SetCastBarBorderColor (self, 1, .2, .2, 0.4)\n    \n    unitFrame:PlayFrameShake (envTable.FrameShake)\n    \n    --set the color of the cast bar to dark orange (only if can be interrupted)\n    --Plater auto set this color to default when a new cast starts, no need to reset this value at OnHide.    \n    if (envTable._CanInterrupt) then\n        if (scriptTable.config.useCastbarColor) then\n            self:SetStatusBarColor (Plater:ParseColors (envTable.CastbarColor))\n        end\n    end\n    \n    envTable.BackgroundFlash:Play()\n    \n    unitFrame.castBar.Spark:SetHeight(unitFrame.castBar:GetHeight())\n    \nend\n\n\n\n\n\n\n\n\n",
					["SpellIds"] = {
						321828, -- [1]
					},
					["PlaterCore"] = 1,
					["Options"] = {
						{
							["Type"] = 6,
							["Key"] = "option1",
							["Value"] = 0,
							["Name"] = "Blank Line",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 5,
							["Key"] = "option2",
							["Value"] = "Produces a notable effect in the cast bar when a spell from the 'Triggers' starts to cast.",
							["Name"] = "Option 2",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 5,
							["Key"] = "option3",
							["Value"] = "Enter the spell name or spellID of the Spell in the Add Trigger box and hit \"Add\".",
							["Name"] = "Option 3",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [3]
						{
							["Type"] = 6,
							["Key"] = "option4",
							["Value"] = 0,
							["Name"] = "Blank Space",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [4]
						{
							["Type"] = 4,
							["Key"] = "useCastbarColor",
							["Value"] = true,
							["Name"] = "Cast Bar Color Enabled",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "When enabled, changes the cast bar color,",
						}, -- [5]
						{
							["Type"] = 1,
							["Key"] = "castbarColor",
							["Value"] = {
								1, -- [1]
								0.4313725490196079, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Name"] = "Cast Bar Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "Color of the cast bar.",
						}, -- [6]
						{
							["Type"] = 6,
							["Key"] = "option7",
							["Value"] = 0,
							["Name"] = "Blank Line",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [7]
						{
							["Type"] = 2,
							["Max"] = 1,
							["Desc"] = "When the cast starts it flash rapidly, adjust how fast it flashes. Value is milliseconds.",
							["Min"] = 0.05,
							["Name"] = "Flash Duration",
							["Value"] = 0.2,
							["Fraction"] = true,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "flashDuration",
						}, -- [8]
						{
							["Type"] = 2,
							["Max"] = 10,
							["Desc"] = "Increases the cast bar height by this value",
							["Min"] = 0,
							["Name"] = "Cast Bar Height Mod",
							["Value"] = 0,
							["Fraction"] = false,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "castBarHeight",
						}, -- [9]
						{
							["Type"] = 2,
							["Max"] = 1,
							["Desc"] = "When the cast starts, there's a small shake in the nameplate, this settings controls how long it takes.",
							["Min"] = 0.1,
							["Name"] = "Shake Duration",
							["Value"] = 0.1,
							["Fraction"] = true,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "shakeDuration",
						}, -- [10]
						{
							["Type"] = 2,
							["Max"] = 200,
							["Desc"] = "How strong is the shake.",
							["Min"] = 10,
							["Fraction"] = false,
							["Value"] = 25,
							["Name"] = "Shake Amplitude",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "shakeAmplitude",
						}, -- [11]
						{
							["Type"] = 2,
							["Max"] = 80,
							["Desc"] = "How fast the shake moves.",
							["Min"] = 1,
							["Fraction"] = false,
							["Value"] = 30,
							["Name"] = "Shake Frequency",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "shakeFrequency",
						}, -- [12]
					},
					["version"] = -1,
					["Name"] = "Cast - Tank Interrupt [P]",
					["NpcNames"] = {
					},
				}, -- [17]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    envTable.EnergyAmount = Plater:CreateLabel (unitFrame, \"\", 16, \"silver\");\n    envTable.EnergyAmount:SetPoint (\"bottom\", unitFrame, \"top\", 0, 18);    \n    \n    envTable.EnergyAmount.fontsize = scriptTable.config.fontSize\n    envTable.EnergyAmount.fontcolor = scriptTable.config.fontColor\n    envTable.EnergyAmount.outline = scriptTable.config.outline\n    \n    \nend\n\n--[=[\n\n164406 = Shriekwing\n164407 = Sludgefist\n162100 = kryxis the voracious\n162099 = general kaal - sanguine depths\n162329 = Xav the Unfallen - threater of pain\n--]=]",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    envTable.EnergyAmount:Hide()\nend\n\n\n",
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    local currentPower = UnitPower(unitId)\n    \n    if (currentPower and currentPower > 0) then\n        local maxPower = UnitPowerMax (unitId)\n        local percent = floor (currentPower / maxPower * 100)\n        \n        envTable.EnergyAmount.text = \"\" .. percent;\n        \n        if (scriptTable.config.showLater) then\n            local alpha = (percent -80) * 5\n            alpha = alpha / 100\n            alpha = max(0, alpha)\n            envTable.EnergyAmount:SetAlpha(alpha)\n            \n        else\n            envTable.EnergyAmount:SetAlpha(1.0)\n        end\n        \n        \n    else\n        envTable.EnergyAmount.text = \"\"\n    end\nend\n\n\n\n\n\n\n\n\n",
					["Time"] = 1604357453,
					["url"] = "",
					["Icon"] = 136048,
					["Enabled"] = true,
					["Revision"] = 233,
					["semver"] = "",
					["Author"] = "Celian-Sylvanas",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["Desc"] = "Show the energy amount above the nameplate.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    envTable.EnergyAmount:Show()\nend\n\n\n",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Options"] = {
						{
							["Type"] = 6,
							["Key"] = "option1",
							["Value"] = 0,
							["Name"] = "Option 1",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 5,
							["Key"] = "option3",
							["Value"] = "Show the power of the unit above the nameplate.",
							["Name"] = "script desc",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 5,
							["Name"] = "add trigger",
							["Value"] = "Add the unit name or unitId in the \"Add Trigger\" field and press \"Add\".",
							["Key"] = "option3",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [3]
						{
							["Type"] = 6,
							["Key"] = "option2",
							["Value"] = 0,
							["Name"] = "Option 2",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [4]
						{
							["Type"] = 4,
							["Key"] = "showLater",
							["Value"] = true,
							["Name"] = "Show at 80% of Energy",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "If enabled, the energy won't start showing until the unit has 80% energy.",
						}, -- [5]
						{
							["Type"] = 6,
							["Name"] = "Option 2",
							["Value"] = 0,
							["Key"] = "option2",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [6]
						{
							["Type"] = 2,
							["Max"] = 32,
							["Desc"] = "Text size.",
							["Min"] = 8,
							["Name"] = "Text Size",
							["Value"] = 16,
							["Fraction"] = false,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "fontSize",
						}, -- [7]
						{
							["Type"] = 1,
							["Key"] = "fontColor",
							["Value"] = {
								0.803921568627451, -- [1]
								0.803921568627451, -- [2]
								0.803921568627451, -- [3]
								1, -- [4]
							},
							["Name"] = "Font Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "Color of the text.",
						}, -- [8]
						{
							["Type"] = 4,
							["Key"] = "outline",
							["Value"] = true,
							["Name"] = "Enable Text Outline",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "If enabled, the text uses outline.",
						}, -- [9]
					},
					["version"] = -1,
					["Name"] = "Unit - Show Energy [Plater]",
					["NpcNames"] = {
						"164406", -- [1]
						"164407", -- [2]
						"162100", -- [3]
						"162099", -- [4]
						"162329", -- [5]
						"164558", -- [6]
					},
				}, -- [18]
				{
					["ConstructorCode"] = "--todo: add npc ids for multilanguage support\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.TextAboveNameplate = \"** On You **\"\n    envTable.NameplateColor = \"green\"\n    \n    --label to show the text above the nameplate\n    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\n    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.healthBar, \"top\", 0, 30);\n    \n    --the spell casted by the npc in the trigger list needs to be in the list below as well\n    local spellList = {\n        [321891] = \"Freeze Tag Fixation\", --Illusionary Vulpin - MTS\n        \n    }\n    \n    --build the list with localized spell names\n    envTable.FixateDebuffs = {}\n    for spellID, enUSSpellName in pairs (spellList) do\n        local localizedSpellName = GetSpellInfo (spellID)\n        envTable.FixateDebuffs [localizedSpellName or enUSSpellName] = true\n    end\n    \n    --debug - smuggled crawg\n    envTable.FixateDebuffs [\"Jagged Maw\"] = true\n    \nend\n\n--[=[\nNpcIDs:\n136461: Spawn of G'huun (mythic uldir G'huun)\n\n--]=]\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:SetText (\"\")\n    envTable.FixateTarget:Hide()\n    \n    envTable.IsFixated = false\n    \n    Plater.RefreshNameplateColor (unitFrame)\nend\n\n\n",
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --swap this to true when it is fixated\n    local isFixated = false\n    \n    --check the debuffs the player has and see if any of these debuffs has been placed by this unit\n    for debuffId = 1, 40 do\n        local name, texture, count, debuffType, duration, expirationTime, caster = UnitDebuff (\"player\", debuffId)\n        \n        --cancel the loop if there's no more debuffs on the player\n        if (not name) then \n            break \n        end\n        \n        --check if the owner of the debuff is this unit\n        if (envTable.FixateDebuffs [name] and caster and UnitIsUnit (caster, unitId)) then\n            --the debuff the player has, has been placed by this unit, set the name above the unit name\n            envTable.FixateTarget:SetText (envTable.TextAboveNameplate)\n            envTable.FixateTarget:Show()\n            Plater.SetNameplateColor (unitFrame,  envTable.NameplateColor)\n            isFixated = true\n            \n            if (not envTable.IsFixated) then\n                envTable.IsFixated = true\n                Plater.FlashNameplateBody (unitFrame, \"fixate\", .2)\n            end\n        end\n        \n    end\n    \n    --check if the nameplate color is changed but isn't fixated any more\n    if (not isFixated and envTable.IsFixated) then\n        --refresh the nameplate color\n        Plater.RefreshNameplateColor (unitFrame)\n        --reset the text\n        envTable.FixateTarget:SetText (\"\")\n        \n        envTable.IsFixated = false\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["Time"] = 1604087921,
					["url"] = "",
					["Icon"] = 841383,
					["Enabled"] = true,
					["Revision"] = 266,
					["semver"] = "",
					["Author"] = "Tecno-Azralon",
					["Desc"] = "When an enemy places a debuff and starts to chase you. This script changes the nameplate color and place your name above the nameplate as well.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["SpellIds"] = {
						"spawn of g'huun", -- [1]
						"smuggled crawg", -- [2]
						"sergeant bainbridge", -- [3]
						"blacktooth scrapper", -- [4]
						"irontide grenadier", -- [5]
						"feral bloodswarmer", -- [6]
						"earthrager", -- [7]
						"crawler mine", -- [8]
						"rezan", -- [9]
					},
					["PlaterCore"] = 1,
					["Options"] = {
					},
					["version"] = -1,
					["Name"] = "Fixate On You [Plater]",
					["NpcNames"] = {
					},
				}, -- [19]
			},
			["aura2_x_offset"] = 0,
			["hook_data"] = {
				{
					["Enabled"] = false,
					["Revision"] = 348,
					["Options"] = {
						{
							["Type"] = 5,
							["Name"] = "Icon Settings",
							["Value"] = "Icon Settings:",
							["Key"] = "option4",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 4,
							["Name"] = "Show Icon",
							["Value"] = true,
							["Key"] = "showIcon",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "Show the castbar icon when enabled",
						}, -- [2]
						{
							["Type"] = 4,
							["Name"] = "Icon on Left Side",
							["Value"] = true,
							["Key"] = "iconOnLeftSide",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "If enabled it anchor the icon on the left side, right otherwise",
						}, -- [3]
						{
							["Type"] = 4,
							["Key"] = "useFullSize",
							["Value"] = false,
							["Name"] = "Use Big Icon",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "If enabled the icon has the size of the cast bar plus the healthbar",
						}, -- [4]
						{
							["Type"] = 2,
							["Max"] = 5,
							["Desc"] = "Fine tune the icon size",
							["Min"] = 0,
							["Fraction"] = true,
							["Value"] = 0,
							["Key"] = "iconSizeOffset",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Icon Size Offset",
						}, -- [5]
						{
							["Type"] = 2,
							["Max"] = 5,
							["Desc"] = "Space between the icon and the cast bar",
							["Min"] = -5,
							["Name"] = "Icon Padding",
							["Value"] = 0,
							["Fraction"] = false,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "iconPadding",
						}, -- [6]
						{
							["Type"] = 6,
							["Name"] = "Blank Space",
							["Value"] = 0,
							["Key"] = "option6",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [7]
						{
							["Type"] = 5,
							["Name"] = "Interrupt Texture",
							["Value"] = "Can't Interrupt Texture:",
							["Key"] = "option5",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [8]
						{
							["Type"] = 4,
							["Name"] = "Show Texture",
							["Value"] = true,
							["Key"] = "showTexture",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "If enabled show a texture to tell the cast can't be interrupted",
						}, -- [9]
						{
							["Type"] = 3,
							["Name"] = "Texture Path",
							["Value"] = "Interface\\GROUPFRAME\\UI-GROUP-MAINTANKICON",
							["Key"] = "iconTexturePath",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_text",
							["Desc"] = "Insert the path for the texture",
						}, -- [10]
						{
							["Type"] = 4,
							["Name"] = "Texture Desaturated",
							["Value"] = true,
							["Key"] = "desaturatedTexture",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "If enbaled, texture is shown in black & white",
						}, -- [11]
						{
							["Type"] = 1,
							["Name"] = "Texture Color",
							["Value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0.3056715726852417, -- [4]
							},
							["Key"] = "textureColor",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "Select the color of the texture",
						}, -- [12]
						{
							["Type"] = 2,
							["Max"] = 32,
							["Desc"] = "Adjust the texture width",
							["Min"] = 1,
							["Fraction"] = false,
							["Value"] = 10,
							["Key"] = "textureWidth",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Texture Width",
						}, -- [13]
						{
							["Type"] = 2,
							["Max"] = 16,
							["Desc"] = "The texture is set to be the same size as the cast bar, fine tune the height as wanted",
							["Min"] = -16,
							["Name"] = "Texture Height Mod",
							["Value"] = 0,
							["Fraction"] = true,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "textureHeightMod",
						}, -- [14]
						{
							["Type"] = 2,
							["Max"] = 32,
							["Desc"] = "Adjust the texture position",
							["Min"] = -32,
							["Fraction"] = false,
							["Value"] = 0,
							["Key"] = "texturePosition",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Texture Position",
						}, -- [15]
						{
							["Type"] = 2,
							["Max"] = 1,
							["Desc"] = "Adjust the texture transparency",
							["Min"] = 0,
							["Key"] = "textureAlpha",
							["Value"] = 1,
							["Name"] = "Texture Alpha",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = true,
						}, -- [16]
					},
					["HooksTemp"] = {
					},
					["version"] = -1,
					["Author"] = "Ditador-Azralon",
					["LastHookEdited"] = "",
					["Desc"] = "Move the icon of the spell cast to the left or right side of the nameplate.",
					["Hooks"] = {
						["Cast Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateIconPosition (unitFrame)\n    self.ThrottleUpdate = -1\n    \nend\n\n\n",
						["Cast Start"] = "function (self, unitId, unitFrame, envTable)\n    \n    unitFrame.castBar.BorderShield:SetDrawLayer(\"artwork\")\n    envTable.UpdateIconPosition (unitFrame)\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable, modTable)\n    \n    --private:\n    function envTable.UpdateIconPosition (unitFrame)\n        local castBar = unitFrame.castBar\n        local icon = castBar.Icon\n        local noInterruptTexture = castBar.BorderShield\n        \n        if (modTable.config.showIcon) then\n            icon:ClearAllPoints()\n            \n            if (modTable.config.iconOnLeftSide) then\n                if (modTable.config.useFullSize) then\n                    icon:SetPoint (\"topright\", unitFrame.healthBar, \"topleft\", modTable.config.iconPadding, modTable.config.iconSizeOffset)\n                    icon:SetPoint (\"bottomright\", unitFrame.castBar, \"bottomleft\", modTable.config.iconPadding, -modTable.config.iconSizeOffset)\n                    \n                else\n                    \n                    icon:SetPoint (\"topright\", unitFrame.castBar, \"topleft\", modTable.config.iconPadding, modTable.config.iconSizeOffset)\n                    icon:SetPoint (\"bottomright\", unitFrame.castBar, \"bottomleft\", modTable.config.iconPadding, -modTable.config.iconSizeOffset)\n                end\n                \n            else\n                if (modTable.config.useFullSize) then\n                    icon:SetPoint (\"topleft\", unitFrame.healthBar, \"topright\", modTable.config.iconPadding, modTable.config.iconSizeOffset)\n                    icon:SetPoint (\"bottomleft\", unitFrame.castBar, \"bottomright\", modTable.config.iconPadding, -modTable.config.iconSizeOffset)\n                    \n                else\n                    \n                    icon:SetPoint (\"topleft\", unitFrame.castBar, \"topright\", modTable.config.iconPadding, modTable.config.iconSizeOffset)\n                    icon:SetPoint (\"bottomleft\", unitFrame.castBar, \"bottomright\", modTable.config.iconPadding, -modTable.config.iconSizeOffset)\n                end\n            end\n            \n            icon:SetWidth (icon:GetHeight())\n            icon:Show()\n        else\n            icon:Hide()\n        end\n        \n        if (modTable.config.showTexture and not castBar.canInterrupt) then\n            noInterruptTexture:Show()\n            \n            local texturePath = modTable.config.iconTexturePath\n            texturePath = texturePath:gsub(\"//\", \"/\")\n            texturePath = texturePath:gsub(\"\\\\\", \"/\")\n            \n            noInterruptTexture:SetTexture (texturePath)\n            noInterruptTexture:SetTexCoord (0, 1, 0, 1)\n            \n            if (modTable.config.desaturatedTexture) then\n                noInterruptTexture:SetDesaturated (modTable.config.desaturatedTexture)\n            else\n                noInterruptTexture:SetVertexColor (DetailsFramework:ParseColors (modTable.config.textureColor))\n            end\n            \n            noInterruptTexture:SetSize (modTable.config.textureWidth, castBar:GetHeight() + modTable.config.textureHeightMod)\n            noInterruptTexture:ClearAllPoints()\n            noInterruptTexture:SetPoint (\"center\", castBar, \"left\", modTable.config.texturePosition, 0)\n            noInterruptTexture:SetAlpha (modTable.config.textureAlpha)\n        else\n            noInterruptTexture:Hide()\n        end\n    end\nend",
					},
					["semver"] = "",
					["Time"] = 1597097268,
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["race"] = {
						},
					},
					["PlaterCore"] = 1,
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\castbar_icon",
					["Name"] = "Cast Bar Icon Settings [P]",
				}, -- [1]
				{
					["Enabled"] = false,
					["Revision"] = 50,
					["semver"] = "",
					["HooksTemp"] = {
					},
					["Author"] = "Kastfall-Azralon",
					["Time"] = 1547392935,
					["Desc"] = "Easy way to change the color of an unit. Open the constructor script and follow the examples.",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --attempt to get the color from the unit color list\n    local color = envTable.NpcColors [unitFrame.namePlateUnitNameLower] or envTable.NpcColors [unitFrame.namePlateUnitName] or envTable.NpcColors [unitFrame.namePlateNpcId]\n    \n    --if the color exists, set the health bar color\n    if (color) then\n        Plater.SetNameplateColor (unitFrame, color)\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --list of npcs and their colors, can be inserted:\n    --name of the unit\n    --name of the unit in lower case\n    --npcID of the unit\n    \n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    \n    envTable.NpcColors = {\n        \n        --examples, using the unit name in lower case, regular unit name and the unitID:\n        \n        [\"Thunderlord Windreader\"] = \"red\", --using regular mob name and color it as red\n        [\"thunderlord crag-leaper\"] = {1, 1, 0}, --using lower case and coloring it yellow\n        [75790] = \"#00FF00\", --using the ID of the unit and using green as color\n        \n        --insert the new mobs here:\n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n    } --close custom color bracket\n    \nend\n\n\n\n\n",
					},
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Name"] = "Color Automation [Plater]",
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\color_bar",
					["version"] = -1,
				}, -- [2]
				{
					["Enabled"] = false,
					["Revision"] = 84,
					["semver"] = "",
					["HooksTemp"] = {
					},
					["Author"] = "Ahwa-Azralon",
					["Time"] = 1547406548,
					["Desc"] = "Add extra effects to execute range. See the constructor script for options.",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (envTable.UseCustomExecutePercent) then\n        \n        --manual detection\n        local healthBar = unitFrame.healthBar\n        if (healthBar.CurrentHealth / healthBar.CurrentHealthMax <= envTable.ExecutePercent) then\n            envTable.UnitInExecuteRange (unitFrame)\n        end        \n        \n    else\n        \n        --auto detection\n        if (unitFrame.InExecuteRange) then\n            envTable.UnitInExecuteRange (unitFrame)\n        end\n        \n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --execute detection, if true the script will handle the execute percent\n    --while false Plater will automatically trigger the execute range\n    --you only want to set this to true in case of Plater not detecting the execute range correctly\n    envTable.UseCustomExecutePercent = false\n    --execute percent, if not detecting automatic, this is the percent to active the execute range\n    --use from zero to one, 0.20 is equal to 20% of the unit life\n    envTable.ExecutePercent = 0.20\n    \n    --allow this script to change the nameplate color when the unit is in execute range\n    envTable.CanChangeColor = true\n    --change the health bar color to this color when the unit is in execute range\n    --color can be set as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}\n    envTable.ExecuteColor = \"green\"\n    \n    --border color\n    envTable.CanChangeBorderColor = false\n    envTable.BorderColor = \"red\"\n    \n    --hide the default health divisor and the health execute indicator\n    envTable.HideHealthDivisor = false\n    --if not hidden, adjust the health divisor settings and the health execute indicator\n    envTable.HealthDivisorAlpha = 0.5\n    envTable.HealthDivisorColor = \"white\"\n    envTable.HealthExecuteIndicatorAlpha = 0.15\n    envTable.HealthExecuteIndicatorColor = \"darkred\"\n    \n    \n    --private (internal functions)\n    do\n        function envTable.UnitInExecuteRange (unitFrame)\n            --check if can change the execute color\n            if (envTable.CanChangeColor) then\n                Plater.SetNameplateColor (unitFrame, envTable.ExecuteColor)\n            end\n            \n            if (envTable.CanChangeBorderColor) then\n                Plater.SetBorderColor (unitFrame, envTable.BorderColor)\n            end\n            \n            if (envTable.HideHealthDivisor) then\n                unitFrame.healthBar.healthCutOff:Hide() \n                unitFrame.healthBar.executeRange:Hide()\n                \n            else\n                envTable.UpdateHealthDivisor (unitFrame)\n                \n            end\n        end\n        \n        function envTable.UpdateHealthDivisor (unitFrame)\n            local healthBar = unitFrame.healthBar\n            \n            healthBar.healthCutOff:Show()\n            healthBar.healthCutOff:SetVertexColor (DetailsFramework:ParseColors (envTable.HealthDivisorColor))\n            healthBar.healthCutOff:SetAlpha (envTable.HealthDivisorAlpha)\n            \n            healthBar.executeRange:Show()\n            healthBar.executeRange:SetVertexColor (DetailsFramework:ParseColors (envTable.HealthExecuteIndicatorColor))\n            healthBar.executeRange:SetAlpha (envTable.HealthExecuteIndicatorAlpha)\n            \n            if (envTable.UseCustomExecutePercent) then\n                healthBar.healthCutOff:ClearAllPoints()\n                healthBar.executeRange:ClearAllPoints()\n                \n                healthBar.healthCutOff:SetSize (healthBar:GetHeight(), healthBar:GetHeight())\n                healthBar.healthCutOff:SetPoint (\"center\", healthBar, \"left\", healthBar:GetWidth() * envTable.ExecutePercent, 0)\n                \n                healthBar.executeRange:SetTexCoord (0, envTable.ExecutePercent, 0, 1)\n                healthBar.executeRange:SetHeight (healthBar:GetHeight())\n                healthBar.executeRange:SetPoint (\"left\", healthBar, \"left\", 0, 0)\n                healthBar.executeRange:SetPoint (\"right\", healthBar.healthCutOff, \"center\")\n            end\n            \n        end\n    end\n    \nend",
					},
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["role"] = {
						},
					},
					["Name"] = "Execute Range [Plater]",
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["url"] = "",
					["Icon"] = 135358,
					["version"] = -1,
				}, -- [3]
				{
					["Enabled"] = false,
					["Revision"] = 222,
					["semver"] = "",
					["HooksTemp"] = {
					},
					["Author"] = "Kastfall-Azralon",
					["Time"] = 1547993111,
					["Desc"] = "Change the nameplate color if the unit is attacking a specific unit like Monk's Ox Statue or Druid's Treants. You may edit which units it track in the constructor script.",
					["Hooks"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --list of npcs and their colors, can be inserted:\n    --name of the unit\n    --name of the unit in lower case\n    --npcID of the unit\n    \n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    \n    envTable.ListOfNpcs = {\n        [61146] = \"olive\", --monk statue npcID\n        [103822] = \"olive\", --druid treant npcID\n        \n    }\n    \n    \nend\n\n\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the GUID of the target of the unit\n    local targetGUID = UnitGUID (unitId .. \"target\")\n    \n    if (targetGUID) then\n        \n        --get the npcID of the target\n        local npcID = Plater.GetNpcIDFromGUID (targetGUID)\n        --check if the npcID of this unit is in the npc list \n        if (envTable.ListOfNpcs [npcID]) then\n            Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [npcID])\n            \n        else\n            --check if the name of ths unit is in the list\n            local unitName = UnitName (unitId .. \"target\")\n            if (envTable.ListOfNpcs [unitName]) then\n                Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [unitName])\n                \n            else\n                --check if the name of the unit in lower case is in the npc list\n                unitName = string.lower (unitName)\n                if (envTable.ListOfNpcs [unitName]) then\n                    Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [unitName])                \n                    \n                end\n            end\n        end\n        \n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					},
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Name"] = "Attacking Specific Unit [Plater]",
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_attacking_unit",
					["version"] = -1,
				}, -- [4]
				{
					["Enabled"] = false,
					["Revision"] = 73,
					["semver"] = "",
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Time"] = 1541606242,
					["Desc"] = "Hide neutral units, show when selected, see the constructor script for options.",
					["Hooks"] = {
						["Leave Combat"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end    \n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat) then\n            envTable.HideNameplate (unitFrame)\n        end\n    end\nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end\n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat and InCombatLockdown()) then\n            return\n        end\n        \n        envTable.HideNameplate (unitFrame)\n    end\n    \nend\n\n\n\n\n\n\n",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end    \n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat and InCombatLockdown()) then\n            return\n        end\n        \n        --check the unit reaction\n        if (unitFrame.namePlateIsTarget) then\n            envTable.ShowNameplate (unitFrame)\n            \n        else\n            envTable.HideNameplate (unitFrame)\n            \n        end    \n    end\n    \nend\n\n\n\n\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        envTable.ShowNameplate (unitFrame)\n    end\n    \nend\n\n\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --when plater finishes an update on the nameplate\n    --check within the envTable if the healthBar of this nameplate should be hidden\n    if (envTable.IsHidden) then\n        if (unitFrame.healthBar:IsShown()) then\n            envTable.HideNameplate (unitFrame)\n        end\n    end\n    \nend\n\n\n\n\n",
						["Enter Combat"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end    \n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat) then\n            envTable.ShowNameplate (unitFrame)\n        end\n    end\nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.OnlyInOpenWorld = true;\n    envTable.ShowInCombat = true;\n    \n    --consts\n    envTable.REACTION_NEUTRAL = 4;\n    \n    --functions to hide and show the healthBar\n    function envTable.HideNameplate (unitFrame)\n        Plater.HideHealthBar (unitFrame)\n        Plater.DisableHighlight (unitFrame)\n        envTable.IsHidden = true\n    end\n    \n    function envTable.ShowNameplate (unitFrame)\n        Plater.ShowHealthBar (unitFrame)\n        Plater.EnableHighlight (unitFrame)\n        envTable.IsHidden = false\n    end\n    \nend\n\n\n\n\n",
					},
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["race"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Name"] = "Hide Neutral Units [Plater]",
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["url"] = "",
					["Icon"] = 1990989,
					["version"] = -1,
				}, -- [5]
				{
					["Enabled"] = false,
					["Revision"] = 254,
					["Options"] = {
					},
					["HooksTemp"] = {
					},
					["version"] = -1,
					["Author"] = "Izimode-Azralon",
					["LastHookEdited"] = "",
					["Desc"] = "Show combo points above the nameplate for Druid Feral and Rogues.",
					["Hooks"] = {
						["Nameplate Created"] = "function (self, unitId, unitFrame, envTable)\n    \n    --run constructor!\n    --constructor is executed only once when any script of the hook runs.\n    \nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if need update the amount of combo points shown\n    if (envTable.LastPlayerTalentUpdate > envTable.LastUpdate) then\n        envTable.UpdateComboPointAmount()\n    end    \n    \n    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\n        envTable.ComboPointFrame:Show()\n        envTable.UpdateComboPoints()\n        \n    else\n        envTable.ComboPointFrame:Hide()\n    end    \n    \nend\n\n\n",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if this nameplate is the current target\n    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\n        envTable.ComboPointFrame:Show()\n        envTable.UpdateComboPoints()\n    else\n        envTable.ComboPointFrame:Hide()\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Player Power Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\n        envTable.UpdateComboPoints()\n    end\n    \n    \nend\n\n\n\n\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.ComboPointFrame:Hide()\n    \nend\n\n\n",
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.ComboPointFrame:Hide()\n    \nend\n\n\n\n\n",
						["Player Talent Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    --update the amount of comboo points shown when the player changes talents or specialization\n    envTable.UpdateComboPointAmount()\n    \n    --save the time of the last talent change\n    envTable.LastPlayerTalentUpdate = GetTime()\n    \n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    --settings\n    local anchors = {\n        {\"bottom\", unitFrame.healthBar, \"top\", 0, 24},\n    }\n    \n    local sizes = {\n        width = 12,\n        height = 12,\n        scale = 1,\n    }\n    \n    local textures = {\n        backgroundTexture = [[Interface\\PLAYERFRAME\\ClassOverlayComboPoints]],\n        backgroundTexCoords = {0/128, 21/128, 101/128, 122/128},\n        \n        comboPointTexture = [[Interface\\PLAYERFRAME\\ClassOverlayComboPoints]],\n        comboPointTexCoords = {3/128, 18/128, 81/128, 96/128},\n    }\n    \n    local frameLevel = 1000\n    local frameStrata = \"high\"    \n    \n    --private\n    do\n        --store combo points frames on this table\n        envTable.ComboPoints = {}\n        --save when the player changed talents or spec\n        envTable.LastPlayerTalentUpdate = GetTime()\n        --save when this nameplate got a combo point amount and alignment update        \n        \n        --build combo points frame anchor (combo point are anchored to this)\n        if (not unitFrame.PlaterComboPointFrame) then\n            local hostFrame = CreateFrame (\"frame\", nil, unitFrame)\n            hostFrame.ComboPointFramesPool = {}\n            unitFrame.PlaterComboPointFrame = hostFrame\n            envTable.ComboPointFrame = hostFrame\n            envTable.ComboPointFrame:SetScale (sizes.scale)\n            \n            --DetailsFramework:ApplyStandardBackdrop (envTable.ComboPointFrame) --debug anchor size\n            \n            --animations\n            local onPlayShowAnimation = function (animation)\n                --stop the hide animation if it's playing\n                if (animation:GetParent():GetParent().HideAnimation:IsPlaying()) then\n                    animation:GetParent():GetParent().HideAnimation:Stop()\n                end\n                \n                animation:GetParent():Show()\n            end\n            \n            local onPlayHideAnimation = function (animation)\n                --stop the show animation if it's playing\n                if (animation:GetParent():GetParent().ShowAnimation:IsPlaying()) then\n                    animation:GetParent():GetParent().ShowAnimation:Stop()\n                end\n            end        \n            local onStopHideAnimation = function (animation)\n                animation:GetParent():Hide()       \n            end\n            \n            local createAnimations = function (comboPoint)\n                --on show\n                comboPoint.ShowAnimation = Plater:CreateAnimationHub (comboPoint.comboPointTexture, onPlayShowAnimation, nil)\n                Plater:CreateAnimation (comboPoint.ShowAnimation, \"scale\", 1, 0.1, 0, 0, 1, 1)\n                Plater:CreateAnimation (comboPoint.ShowAnimation, \"alpha\", 1, 0.1, .5, 1)\n                Plater:CreateAnimation (comboPoint.ShowAnimation, \"scale\", 2, 0.1, 1.2, 1.2, 1, 1)\n                \n                --on hide\n                comboPoint.HideAnimation = Plater:CreateAnimationHub (comboPoint.comboPointTexture, onPlayHideAnimation, onStopHideAnimation)\n                Plater:CreateAnimation (comboPoint.HideAnimation, \"scale\", 1, 0.1, 1, 1, 0, 0)\n                Plater:CreateAnimation (comboPoint.HideAnimation, \"alpha\", 1, 0.1, 1, 0)\n            end\n            \n            --build combo point frame        \n            for i =1, 10 do \n                local f = CreateFrame (\"frame\", nil, envTable.ComboPointFrame)\n                f:SetSize (sizes.width, sizes.height)\n                tinsert (envTable.ComboPoints, f)\n                tinsert (unitFrame.PlaterComboPointFrame.ComboPointFramesPool, f)\n                \n                local backgroundTexture = f:CreateTexture (nil, \"background\")\n                backgroundTexture:SetTexture (textures.backgroundTexture)\n                backgroundTexture:SetTexCoord (unpack (textures.backgroundTexCoords))\n                backgroundTexture:SetSize (sizes.width, sizes.height)\n                backgroundTexture:SetPoint (\"center\")\n                \n                local comboPointTexture = f:CreateTexture (nil, \"artwork\")\n                comboPointTexture:SetTexture (textures.comboPointTexture)\n                comboPointTexture:SetTexCoord (unpack (textures.comboPointTexCoords))\n                \n                comboPointTexture:SetSize (sizes.width, sizes.height)\n                comboPointTexture:SetPoint (\"center\")\n                comboPointTexture:Hide()            \n                \n                f.IsActive = false\n                \n                f.backgroundTexture = backgroundTexture\n                f.comboPointTexture = comboPointTexture\n                \n                createAnimations (f)\n            end\n            \n        else\n            envTable.ComboPointFrame = unitFrame.PlaterComboPointFrame\n            envTable.ComboPointFrame:SetScale (sizes.scale)\n            envTable.ComboPoints = unitFrame.PlaterComboPointFrame.ComboPointFramesPool\n            \n        end            \n        \n        envTable.ComboPointFrame:SetFrameLevel (frameLevel)\n        envTable.ComboPointFrame:SetFrameStrata (frameStrata)\n        \n        function envTable.UpdateComboPoints()\n            local comboPoints = UnitPower (\"player\", Enum.PowerType.ComboPoints)\n            \n            for i = 1, envTable.TotalComboPoints do\n                local thisComboPoint = envTable.ComboPoints [i]\n                \n                if (i <= comboPoints ) then\n                    --combo point enabled\n                    if (not thisComboPoint.IsActive) then\n                        thisComboPoint.ShowAnimation:Play()\n                        thisComboPoint.IsActive = true\n                        \n                    end\n                    \n                else\n                    --combo point disabled\n                    if (thisComboPoint.IsActive) then\n                        thisComboPoint.HideAnimation:Play()\n                        thisComboPoint.IsActive = false\n                        \n                    end\n                end\n            end\n            \n            \n        end\n        \n        function envTable.UpdateComboPointAmount()\n            local namePlateWidth = Plater.db.profile.plate_config.enemynpc.health_incombat[1]\n            local comboPoints = UnitPowerMax (\"player\", Enum.PowerType.ComboPoints)\n            local reservedSpace = (namePlateWidth - sizes.width * comboPoints)  / comboPoints \n            \n            --store the total amount of combo points\n            envTable.TotalComboPoints = comboPoints\n            \n            --update anchor frame\n            envTable.ComboPointFrame:SetWidth (namePlateWidth)\n            envTable.ComboPointFrame:SetHeight (20)\n            envTable.ComboPointFrame:ClearAllPoints()\n            for i = 1, #anchors do\n                local anchor = anchors[i]\n                envTable.ComboPointFrame:SetPoint (unpack (anchor))\n            end        \n            \n            --\n            for i = 1, #envTable.ComboPoints do\n                envTable.ComboPoints[i]:Hide()\n                envTable.ComboPoints[i]:ClearAllPoints()\n            end\n            \n            for i = 1, comboPoints do\n                local comboPoint = envTable.ComboPoints[i]\n                if i == 1 then\n                    comboPoint:SetPoint (\"left\", envTable.ComboPointFrame, \"left\", reservedSpace/2, 0)\n                else\n                    comboPoint:SetPoint (\"left\", envTable.ComboPoints[i-1], \"right\", reservedSpace, 0)\n                end\n                \n                comboPoint:Show()\n            end\n            \n            envTable.LastUpdate = GetTime()\n            \n            envTable.UpdateComboPoints()\n        end\n        \n        --initialize\n        envTable.UpdateComboPointAmount()\n        envTable.ComboPointFrame:Hide()\n    end\n    \n    \nend",
					},
					["semver"] = "",
					["Time"] = 1603567332,
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
							["Enabled"] = true,
							["DRUID"] = true,
							["ROGUE"] = true,
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
							["103"] = true,
							["Enabled"] = true,
						},
						["race"] = {
						},
						["encounter_ids"] = {
						},
						["affix"] = {
						},
					},
					["PlaterCore"] = 1,
					["url"] = "",
					["Icon"] = 135426,
					["Name"] = "Combo Points [Plater]",
				}, -- [6]
				{
					["Enabled"] = false,
					["Revision"] = 176,
					["semver"] = "",
					["HooksTemp"] = {
					},
					["Author"] = "Tecno-Azralon",
					["Time"] = 1547409079,
					["Desc"] = "Add another border with more customizations. This border can also be manipulated by other scripts.",
					["Hooks"] = {
						["Nameplate Created"] = "function (self, unitId, unitFrame, envTable)\n    \n    --run constructor!\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.IsEnabled) then\n        if (unitFrame.IsSelf) then\n            if (envTable.ShowOnPersonalBar) then\n                envTable.BorderFrame:Show()\n            else\n                envTable.BorderFrame:Hide() \n            end\n        else\n            envTable.BorderFrame:Show()\n        end   \n    end\n    \nend   \n\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.BorderFrame:Hide()\n    \nend\n\n\n",
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.BorderFrame:Hide()\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --border color\n    local borderColor = \"yellow\"\n    \n    --size of the border\n    local borderSize = 1\n    \n    --transparency\n    local borderAlpha = 1\n    \n    --enabled (set to false it you only want to use the extra border in other scripts)\n    local isEnabled = true\n    \n    --export border (allow the border to be used by other scripts)\n    --other scripts can use:\n    --unitFrame.healthBar.extraBorder:Show()\n    --unitFrame.healthBar.extraBorder:SetVertexColor (r, g, b)\n    --unitFrame.healthBar.extraBorder:SetBorderSizes (borderSize)\n    local canExportBorder = true\n    \n    --do not add the border to personal bar\n    local noPersonalBar = true\n    \n    --private\n    do\n        \n        local newBorder = CreateFrame (\"frame\", nil, unitFrame.healthBar, \"NamePlateFullBorderTemplate\")\n        envTable.BorderFrame = newBorder\n        \n        newBorder:SetBorderSizes (borderSize, borderSize, borderSize, borderSize)\n        newBorder:UpdateSizes()\n        \n        local r, g, b = DetailsFramework:ParseColors (borderColor)\n        newBorder:SetVertexColor (r, g, b, borderAlpha)\n        \n        envTable.ShowOnPersonalBar = not noPersonalBar\n        \n        if (canExportBorder) then\n            unitFrame.healthBar.extraBorder = newBorder\n        end\n        \n        if (not isEnabled) then\n            envTable.IsEnabled = false\n        else\n            envTable.IsEnabled = true\n        end\n    end\n    \nend\n\n\n",
					},
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["race"] = {
						},
					},
					["Name"] = "Extra Border [Plater]",
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["url"] = "",
					["Icon"] = 133689,
					["version"] = -1,
				}, -- [7]
				{
					["Enabled"] = false,
					["Revision"] = 93,
					["Options"] = {
					},
					["HooksTemp"] = {
					},
					["version"] = -1,
					["Author"] = "Kastfall-Azralon",
					["LastHookEdited"] = "",
					["Desc"] = "Function Plater.UpdatePlateSize from Plater.lua exported to scritps.",
					["Hooks"] = {
						["Nameplate Added"] = "\n\n-- exported function Plater.UpdatePlateSize() from Plater.lua\n--this is for advanced users which wants to reorder the nameplate frame at their desire\n\n\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --check if there's a type of unit on this nameplate\n    local plateFrame = unitFrame:GetParent()\n    if (not plateFrame.actorType) then\n        return\n    end\n    \n    --get all the frames and cache some variables\n    local ACTORTYPE_ENEMY_PLAYER = \"enemyplayer\"\n    local profile = Plater.db.profile\n    local DB_PLATE_CONFIG = profile.plate_config\n    local isInCombat = Plater.IsInCombat()\n    local actorType = plateFrame.actorType\n    \n    local unitFrame = plateFrame.unitFrame\n    local healthBar = unitFrame.healthBar\n    local castBar = unitFrame.castBar\n    local powerBar = unitFrame.powerBar\n    local buffFrame1 = unitFrame.BuffFrame\n    local buffFrame2 = unitFrame.BuffFrame2\n    \n    --use in combat bars when in pvp\n    if (plateFrame.actorType == ACTORTYPE_ENEMY_PLAYER) then\n        if ((Plater.ZoneInstanceType == \"pvp\" or Plater.ZoneInstanceType == \"arena\") and DB_PLATE_CONFIG.player.pvp_always_incombat) then\n            isInCombat = true\n        end\n    end\n    \n    --get the config for this actor type\n    local plateConfigs = DB_PLATE_CONFIG [actorType]\n    --get the config key based if the player is in combat\n    local castBarConfigKey, healthBarConfigKey, manaConfigKey = Plater.GetHashKey (isInCombat)\n    \n    --get the width and height from what the user set in the options panel\n    local healthBarWidth, healthBarHeight = unitFrame.customHealthBarWidth or plateConfigs [healthBarConfigKey][1], unitFrame.customHealthBarHeight or plateConfigs [healthBarConfigKey][2]\n    local castBarWidth, castBarHeight = unitFrame.customCastBarWidth or plateConfigs [castBarConfigKey][1], unitFrame.customCastBarHeight or plateConfigs [castBarConfigKey][2]\n    local powerBarWidth, powerBarHeight = unitFrame.customPowerBarHeight or plateConfigs [manaConfigKey][1], unitFrame.customPowerBarHeight or plateConfigs [manaConfigKey][2]\n    \n    --calculate the offset for the cast bar, this is done due to the cast bar be anchored to topleft and topright\n    local castBarOffSetX = (healthBarWidth - castBarWidth) / 2\n    local castBarOffSetY = plateConfigs.castbar_offset\n    \n    --calculate offsets for the power bar\n    local powerBarOffSetX = (healthBarWidth - powerBarWidth) / 2\n    local powerBarOffSetY = 0\n    \n    --calculate the size deviation for pets\n    local unitType = Plater.GetUnitType (plateFrame)\n    if (unitType == \"pet\") then\n        healthBarHeight = healthBarHeight * Plater.db.profile.pet_height_scale\n        healthBarWidth = healthBarWidth * Plater.db.profile.pet_width_scale\n        \n    elseif (unitType == \"minus\") then\n        healthBarHeight = healthBarHeight * Plater.db.profile.minor_height_scale\n        healthBarWidth = healthBarWidth * Plater.db.profile.minor_width_scale\n    end\n    \n    --unit frame - is set to be the same size as the plateFrame\n    unitFrame:ClearAllPoints()\n    unitFrame:SetAllPoints()\n    \n    --calculates the health bar anchor points\n    --it will always be placed in the center of the nameplate area (where it accepts mouse clicks) \n    local xOffSet = (plateFrame:GetWidth() - healthBarWidth) / 2\n    local yOffSet = (plateFrame:GetHeight() - healthBarHeight) / 2\n    \n    --set the health bar point\n    healthBar:ClearAllPoints()\n    PixelUtil.SetPoint (healthBar, \"topleft\", unitFrame, \"topleft\", xOffSet + profile.global_offset_x, -yOffSet + profile.global_offset_y)\n    PixelUtil.SetPoint (healthBar, \"bottomright\", unitFrame, \"bottomright\", -xOffSet + profile.global_offset_x, yOffSet + profile.global_offset_y)\n    \n    --set the cast bar point and size\n    castBar:ClearAllPoints()\n    PixelUtil.SetPoint (castBar, \"topleft\", healthBar, \"bottomleft\", castBarOffSetX, castBarOffSetY)\n    PixelUtil.SetPoint (castBar, \"topright\", healthBar, \"bottomright\", -castBarOffSetX, castBarOffSetY)\n    PixelUtil.SetHeight (castBar, castBarHeight)\n    PixelUtil.SetSize (castBar.Icon, castBarHeight, castBarHeight)\n    PixelUtil.SetSize (castBar.BorderShield, castBarHeight * 1.4, castBarHeight * 1.4)\n    \n    --set the power bar point and size\n    powerBar:ClearAllPoints()\n    PixelUtil.SetPoint (powerBar, \"topleft\", healthBar, \"bottomleft\", powerBarOffSetX, powerBarOffSetY)\n    PixelUtil.SetPoint (powerBar, \"topright\", healthBar, \"bottomright\", -powerBarOffSetX, powerBarOffSetY)\n    PixelUtil.SetHeight (powerBar, powerBarHeight)\n    \n    --power bar are hidden by default, show it if there's a custom size for it\n    if (unitFrame.customPowerBarWidth and unitFrame.customPowerBarHeight) then\n        powerBar:SetUnit (unitFrame.unit)\n    end\n    \n    --aura frames\n    local bf1Anchor = Plater.db.profile.aura_frame1_anchor\n    Plater.SetAnchor (buffFrame1, {side = bf1Anchor.side, x = bf1Anchor.x, y = bf1Anchor.y + plateConfigs.buff_frame_y_offset}, unitFrame.healthBar, (Plater.db.profile.aura_grow_direction or 2) == 2)\n    \n    local bf2Anchor = Plater.db.profile.aura_frame2_anchor\n    Plater.SetAnchor (buffFrame2, {side = bf2Anchor.side, x = bf2Anchor.x, y = bf2Anchor.y + plateConfigs.buff_frame_y_offset}, unitFrame.healthBar, (Plater.db.profile.aura2_grow_direction or 2) == 2)\n    \nend\n\n\n",
					},
					["semver"] = "",
					["Time"] = 1596791840,
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["race"] = {
						},
					},
					["PlaterCore"] = 1,
					["url"] = "",
					["Icon"] = 574574,
					["Name"] = "Reorder Nameplate [Plater]",
				}, -- [8]
				{
					["Enabled"] = false,
					["Revision"] = 59,
					["semver"] = "",
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Time"] = 1554138845,
					["Desc"] = "Change the nameplate color when a nameplate does not have the auras set in the constructor script.",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --do nothing if the player isn't in combat\n    if (not Plater.IsInCombat()) then\n        return \n    end\n    \n    --do nothing if the unit isn't in combat\n    if (not unitFrame.InCombat) then\n        return\n    end\n    \n    --do nothing if the unit is the player it self\n    if (unitFrame.IsSelf) then\n        return\n    end\n    \n    --check the auras\n    local hasAura = false\n    \n    for auraName, _ in pairs (envTable.TrackingAuras) do\n        if (Plater.NameplateHasAura (unitFrame, auraName)) then\n            hasAura = true\n            break\n        end\n    end\n    \n    if (not hasAura) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    else\n        if (envTable.ForceRefreshNameplateColor) then\n            Plater.RefreshNameplateColor (unitFrame) \n        end\n    end    \n    \nend",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    --Important: lines starting with double dashes are comments and are not part of the script\n    \n    --set this to true if you are not using threat colors in the health bar\n    envTable.ForceRefreshNameplateColor = true\n    \n    --if the unit does not have any of the following auras, it will be painted with the color listed below\n    --list of spells to track, can be the spell name (case-sensitive) or the spellID\n    envTable.TrackingAuras = {\n        --[\"Nightblade\"] = true, --this is an example using the spell name\n        --[195452] = true, --this is an example using the spellID\n        \n    }\n    \n    --which color the nameplate wil be changed\n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    --you may also use /plater colors\n    envTable.NameplateColor = \"pink\"\n    \nend",
					},
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["role"] = {
						},
					},
					["Name"] = "Don't Have Aura [Plater]",
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["url"] = "",
					["Icon"] = 136207,
					["version"] = -1,
				}, -- [9]
				{
					["Enabled"] = false,
					["Revision"] = 182,
					["semver"] = "",
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Time"] = 1548278227,
					["Desc"] = "Show how many raid members are targeting the unit",
					["Hooks"] = {
						["Leave Combat"] = "function (self, unitId, unitFrame, envTable)\n    envTable.CanShow = false;\n    envTable.TargetAmount:SetText (\"\")\nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --when a nameplate is added to the screen check if the player is in combat\n    if (InCombatLockdown()) then\n        --player is in combat, check if can check amount of targets\n        envTable.CanShow = envTable.CanShowTargetAmount();\n        \n    else\n        envTable.CanShow = false; \n    end\n    \n    envTable.TargetAmount:SetText (\"\");\n    \nend",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.TargetAmount:SetText (\"\");\n    envTable.CanShow = false;\n    \nend\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --if the script is allowed to show the amount of targets\n    --also check if the unit is in combat\n    if (envTable.CanShow and UnitAffectingCombat (unitId)) then\n        \n        --check if can update the amount of targets following the cooldown set in the constructor script\n        --by default Plater updates the nameplate every 250ms, by default the cooldown is 2, so it'll update the amuont of target every 1/2 of a second\n        envTable.UpdateCooldown = envTable.UpdateCooldown + 1\n        if (envTable.UpdateCooldown < envTable.UpdateInterval) then\n            return\n        else\n            \n            --reset the cooldown interval to check the amount of target again\n            envTable.UpdateCooldown = 0\n            \n            --get the amount of targets\n            local amount;\n            if (envTable.InRaid) then\n                amount = envTable.NumTargetsInRaid (unitFrame)      \n                \n            elseif (envTable.InParty) then\n                amount = envTable.NumTargetsInParty (unitFrame)   \n                \n            else\n                envTable.TargetAmount:SetText (\"\")\n                return\n            end\n            \n            --update the amount text\n            if (amount == 0) then\n                envTable.TargetAmount:SetText (\"\")\n            else\n                envTable.TargetAmount:SetText (amount)\n            end\n            \n        end\n    end\nend\n\n\n",
						["Enter Combat"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can show the amount of targets\n    envTable.CanShow = envTable.CanShowTargetAmount();\n    \n    if (not envTable.CanShow) then\n        envTable.TargetAmount:SetText (\"\") \n    end\nend\n\n\n\n\n",
						["Constructor"] = "--all gray text like this are comments and do not run as code\n--build the settings and basic functions for the hook\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --declare setting variables:\n    local textColor = \"orange\";\n    local textSize = 12;\n    \n    local showInRaid = true;\n    local showInDungeon = true;\n    local showInArena = false;\n    local showInBattleground = false;\n    local showInOpenWorld = true;\n    \n    envTable.UpdateInterval = 2; --each 2 updates in the nameplate it'll update the amount of targets\n    \n    local anchor = {\n        side = 6, --1 = topleft 2 = left 3 = bottomleft 4 = bottom 5 = bottom right 6 = right 7 = topright 8 = top\n        x = 4, --x offset\n        y = 0, --y offset\n    };\n    \n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------\n    \n    \n    --frames:\n    \n    --create the text that will show the amount of people targeting the unit\n    if (not  unitFrame.healthBar.TargetAmount) then\n        envTable.TargetAmount = Plater:CreateLabel (unitFrame.healthBar, \"\", textSize, textColor);\n        Plater.SetAnchor (envTable.TargetAmount, anchor);\n        unitFrame.healthBar.TargetAmount = envTable.TargetAmount\n    end\n    \n    --in case Plater wipes the envTable\n    envTable.TargetAmount = unitFrame.healthBar.TargetAmount\n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------           \n    --private variables (they will be used in the other scripts within this hook)\n    envTable.CanShow = false;\n    envTable.UpdateCooldown = 0;\n    envTable.InRaid = false;\n    envTable.InParty = false;\n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------           \n    --functions\n    \n    --update the InRaid or InParty proprieties\n    function envTable.UpdateGroupType()\n        if (IsInRaid()) then\n            envTable.InRaid = true;\n            envTable.InParty = false;     \n            \n        elseif (IsInGroup()) then\n            envTable.InRaid = false;\n            envTable.InParty = true;   \n            \n        else\n            envTable.InRaid = false;            \n            envTable.InParty = false;\n        end\n    end\n    \n    --this function controls if the amount of targets can show following the settings in the top of this script\n    function envTable.CanShowTargetAmount()\n        \n        local _, instanceType, difficultyID, _, _, _, _, instanceMapID, instanceGroupSize = GetInstanceInfo()\n        \n        if (showInRaid and instanceType == \"raid\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInDungeon and instanceType == \"party\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInArena and instanceType == \"arena\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInBattleground and instanceType == \"pvp\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInOpenWorld and instanceType == \"none\") then\n            envTable.UpdateGroupType()\n            if (envTable.InRaid or envTable.InParty) then\n                return true\n            end\n        end\n        \n        return false\n    end\n    \n    --get the amount of player targetting the unit in raid or party\n    function envTable.NumTargetsInRaid (unitFrame)\n        local amount = 0\n        for i = 1, GetNumGroupMembers() do\n            local unit = \"raid\" .. i .. \"target\"\n            if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\n                amount = amount + 1\n            end\n        end\n        \n        return amount\n    end\n    \n    function envTable.NumTargetsInParty()\n        local amount = 0\n        for i = 1, GetNumGroupMembers() - 1 do\n            local unit = \"party\" .. i .. \"target\"\n            if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\n                amount = amount + 1\n            end\n        end\n        \n        local unit = \"playertarget\"\n        if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\n            amount = amount + 1\n        end        \n        \n        return amount\n    end\n    \nend",
					},
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Name"] = "Players Targeting a Target [Plater]",
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["url"] = "",
					["Icon"] = 1966587,
					["version"] = -1,
				}, -- [10]
				{
					["Enabled"] = false,
					["Revision"] = 356,
					["Options"] = {
					},
					["HooksTemp"] = {
					},
					["version"] = -1,
					["Author"] = "Ditador-Azralon",
					["LastHookEdited"] = "",
					["Desc"] = "Reorder buffs and debuffs following the settings set in the constructor.",
					["Hooks"] = {
						["Initialization"] = "function (modTable)\n    \n    --ATTENTION: after enabling this mod, you may have to adjust the anchor point at the Buff Settings tab\n    \n    local sortByTime = false\n    local invertSort = false\n    \n    --which auras goes first, assign a value (any number), bigger value goes first\n    local priority = {\n        [\"Vampiric Touch\"] = 50,\n        [\"Shadow Word: Pain\"] = 22,\n        [\"Mind Flay\"] = 5,\n        [\"Pistol Shot\"] = 50,\n        [\"Marked for Death\"] = 99,\n    }\n    \n    -- Sort function - do not touch\n    Plater.db.profile.aura_sort = true\n    \n    \n    function Plater.AuraIconsSortFunction (aura1, aura2)\n        local p1 = priority[aura1.SpellId] or priority[aura1.SpellName] or 1\n        local p2 = priority[aura2.SpellId] or priority[aura2.SpellName] or 1\n        \n        if sortByTime and p1 == p2 then\n            if invertSort then\n                return (aura1.Duration == 0 and 99999999 or aura1.RemainingTime or 0) > (aura2.Duration == 0 and 99999999 or aura2.RemainingTime or 0)\n            else\n                return (aura1.Duration == 0 and 99999999 or aura1.RemainingTime or 0) < (aura2.Duration == 0 and 99999999 or aura2.RemainingTime or 0)\n            end\n        else\n            if invertSort then\n                 return p1 < p2\n            else\n                return p1 > p2\n            end\n        end\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					},
					["semver"] = "",
					["Time"] = 1608663128,
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["affix"] = {
						},
						["race"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["PlaterCore"] = 1,
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura_reorder",
					["Name"] = "Aura Reorder [Plater]",
				}, -- [11]
				{
					["Enabled"] = false,
					["Revision"] = 93,
					["semver"] = "",
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Time"] = 1552354619,
					["Desc"] = "Changes the target color to the color set in the constructor script.",
					["Hooks"] = {
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    envTable.UpdateColor (unitFrame)\nend",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    envTable.UpdateColor (unitFrame)\nend",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    envTable.UpdateColor (unitFrame)\nend\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --usage: color name e.g \"red\" \"yellow\"; color table e.g {1, 0, 0} {1, 1, 0}; hex string e.g. \"#FF0000\" \"FFFF00\"\n    \n    envTable.TargetColor = \"purple\"\n    --envTable.TargetColor = \"#FF00FF\"\n    --envTable.TargetColor = {252/255, 0/255, 254/255}\n    \n    function envTable.UpdateColor (unitFrame)\n        --do not change the color of the personal bar\n        if (not unitFrame.IsSelf) then\n            \n            --if this nameplate the current target of the player?\n            if (unitFrame.namePlateIsTarget) then\n                Plater.SetNameplateColor (unitFrame, envTable.TargetColor)  --rgb\n            else\n                --refresh the nameplate color\n                Plater.RefreshNameplateColor (unitFrame)\n            end\n        end\n    end\n    \nend\n\n\n\n\n",
					},
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["role"] = {
						},
					},
					["Name"] = "Current Target Color [Plater]",
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["url"] = "",
					["Icon"] = 878211,
					["version"] = -1,
				}, -- [12]
			},
			["aura_x_offset"] = 0,
			["first_run3"] = true,
			["captured_spells"] = {
				[310143] = {
					["source"] = "Avtryckaren",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[311484] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lotuspetal",
					["npcID"] = 0,
				},
				[231390] = {
					["source"] = "Avtryckaren",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[165961] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Mahtaß",
					["npcID"] = 0,
				},
				[308525] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ruthentia",
					["npcID"] = 0,
				},
				[2383] = {
					["source"] = "Sylvanses",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[342309] = {
					["source"] = "Avtryckaren",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[307185] = {
					["source"] = "Seryma",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[311471] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Maddonnaa",
					["npcID"] = 0,
				},
				[72968] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Jægergås",
					["npcID"] = 0,
				},
				[311464] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Taurantis",
					["npcID"] = 0,
				},
				[308488] = {
					["source"] = "Seryma",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[334443] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Summerlock",
					["npcID"] = 0,
				},
				[164273] = {
					["source"] = "Bigbadgrimi",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[292361] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ilona",
					["npcID"] = 0,
				},
				[325101] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Steward",
					["npcID"] = 166663,
				},
				[1459] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Maddonnaa",
					["npcID"] = 0,
				},
				[341449] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Угачака-ЧерныйШрам",
					["npcID"] = 0,
				},
				[227723] = {
					["source"] = "Avtryckaren",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[335150] = {
					["source"] = "Avtryckaren",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[210053] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Khianji",
					["npcID"] = 0,
				},
				[308506] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Donzyo",
					["npcID"] = 0,
				},
				[311459] = {
					["source"] = "Seryma",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[347600] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ilona",
					["npcID"] = 0,
				},
				[311474] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Añiva",
					["npcID"] = 0,
				},
				[311483] = {
					["source"] = "Avtryckaren",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2580] = {
					["source"] = "Avtryckaren",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[43308] = {
					["source"] = "Sylvanses",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[24858] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Maevanna",
					["npcID"] = 0,
				},
			},
			["OptionsPanelDB"] = {
				["PlaterOptionsPanelFrame"] = {
					["scale"] = 1,
				},
			},
			["ui_parent_scale_tune"] = 1.333333333333333,
			["saved_cvars"] = {
				["ShowClassColorInNameplate"] = "1",
				["nameplateLargeTopInset"] = "0.085",
				["nameplateShowEnemyMinus"] = "1",
				["nameplateMotionSpeed"] = "0.05",
				["NamePlateClassificationScale"] = "1",
				["nameplateShowFriendlyTotems"] = "0",
				["nameplateShowEnemyMinions"] = "1",
				["nameplateShowFriendlyPets"] = "0",
				["nameplateShowFriendlyNPCs"] = "0",
				["nameplateSelectedScale"] = "1.15",
				["nameplateTargetRadialPosition"] = "1",
				["nameplateResourceOnTarget"] = "0",
				["nameplateMinScale"] = "1",
				["nameplateMaxDistance"] = "100",
				["nameplateOtherTopInset"] = "0.085",
				["nameplatePersonalHideDelaySeconds"] = "0.2",
				["nameplateShowFriendlyMinions"] = "0",
				["nameplateShowFriendlyGuardians"] = "0",
				["nameplateTargetBehindMaxDistance"] = "30",
				["NamePlateHorizontalScale"] = "1",
				["ShowNamePlateLoseAggroFlash"] = "1",
				["nameplateShowAll"] = "1",
				["NamePlateVerticalScale"] = "1",
			},
			["aura2_y_offset"] = 5,
			["login_counter"] = 2,
			["number_region_first_run"] = true,
			["script_auto_imported"] = {
				["Unit - Important"] = 11,
				["Aura - Buff Alert"] = 13,
				["Cast - Very Important"] = 11,
				["Explosion Affix M+"] = 11,
				["Aura - Debuff Alert"] = 11,
				["Cast - Ultra Important"] = 11,
				["Cast - Big Alert"] = 11,
				["Cast - Small Alert"] = 11,
				["Auto Set Skull"] = 11,
				["Unit - Main Target"] = 11,
				["Aura - Blink Time Left"] = 11,
				["Countdown"] = 11,
				["Unit - Health Markers"] = 12,
				["Cast - Frontal Cone"] = 11,
				["Fixate"] = 11,
				["Cast - Tank Interrupt"] = 11,
				["Fixate On You"] = 11,
				["Spiteful Affix"] = 2,
				["Unit - Show Energy"] = 11,
			},
			["plate_config"] = {
				["global_health_width"] = 112,
				["global_health_height"] = 12,
			},
			["patch_version"] = 13,
			["aura_y_offset"] = 5,
		},
		["ITH - Plater"] = {
			["extra_icon_use_blizzard_border_color"] = false,
			["script_data"] = {
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)    \n    --change the nameplate color to this if allowed\n    envTable.CanChangeNameplateColor = scriptTable.config.changeNameplateColor --\n    envTable.NameplateColor = scriptTable.config.nameplateColor\n    envTable.NameplateSizeOffset = scriptTable.config.nameplateSizeOffset --\n    \n    unitFrame.UnitImportantSkullTexture = unitFrame.UnitImportantSkullTexture or unitFrame:CreateTexture(nil, \"background\")\n    \n    unitFrame.UnitImportantSkullTexture:SetTexture([[Interface/AddOns/Plater/media/skullbones_128]])\n    unitFrame.UnitImportantSkullTexture:SetPoint(\"center\", unitFrame.healthBar, \"center\", 0, -5)\n    \n    unitFrame.UnitImportantSkullTexture:SetVertexColor(Plater:ParseColors(scriptTable.config.skullColor))\n    unitFrame.UnitImportantSkullTexture:SetAlpha(scriptTable.config.skullAlpha)\n    unitFrame.UnitImportantSkullTexture:SetScale(scriptTable.config.skullScale)\n    \n    unitFrame.UnitImportantSkullTexture:Hide()\nend\n\n--[=[\n\n154564 - debug\n\nUsing spellIDs for multi-language support\n\n164362 - smily morsel - plaguefall\n168882 - fleeting manifestation - sanguine depths\n170234 - oppressive banner - theater of pain\n168988 - overgrowth - Mists of Tirna Scithe\n170452 - essesnce orb - torghast\n\n\n--]=]",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    Plater.StopDotAnimation(unitFrame.healthBar, envTable.dotAnimation)   \n    \n    --restore the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight)    \n    \n    unitFrame.UnitImportantSkullTexture:Hide()\nend\n\n\n",
					["OptionsValues"] = {
					},
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can change the nameplate color\n    if (envTable.CanChangeNameplateColor) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end\n    \nend\n\n\n\n\n",
					["Time"] = 1604599472,
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\media\\skullbones_64",
					["Enabled"] = true,
					["Revision"] = 355,
					["semver"] = "",
					["Author"] = "Izimode-Azralon",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    if (envTable.dotAnimation) then\n        Plater.StopDotAnimation(unitFrame.healthBar, envTable.dotAnimation)\n    end\n    \n    envTable.dotAnimation = Plater.PlayDotAnimation(unitFrame.healthBar, 2, scriptTable.config.dotsColor, 3, 4) \n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \n    unitFrame.UnitImportantSkullTexture:Show()\nend\n\n\n\n\n",
					["Options"] = {
						{
							["Type"] = 6,
							["Key"] = "option4",
							["Value"] = 0,
							["Name"] = "Blank Space",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 5,
							["Key"] = "option6",
							["Value"] = "Enter the npc name or npcId in the \"Add Trigger\" box and hit \"Add\".",
							["Name"] = "Option 6",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 6,
							["Key"] = "option4",
							["Value"] = 0,
							["Name"] = "Blank Space",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [3]
						{
							["Type"] = 4,
							["Key"] = "changeNameplateColor",
							["Value"] = true,
							["Name"] = "Change Nameplate Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "change to true to change the color",
						}, -- [4]
						{
							["Type"] = 1,
							["Key"] = "nameplateColor",
							["Value"] = {
								1, -- [1]
								0, -- [2]
								0.52549019607843, -- [3]
								1, -- [4]
							},
							["Name"] = "Nameplate Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "",
						}, -- [5]
						{
							["Type"] = 2,
							["Max"] = 6,
							["Desc"] = "increase the nameplate height by this value",
							["Min"] = 0,
							["Key"] = "nameplateSizeOffset",
							["Value"] = 3,
							["Fraction"] = false,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Nameplate Size Offset",
						}, -- [6]
						{
							["Type"] = 6,
							["Key"] = "option4",
							["Value"] = 0,
							["Name"] = "Blank Space",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [7]
						{
							["Type"] = 1,
							["Key"] = "dotsColor",
							["Value"] = {
								1, -- [1]
								0.71372549019608, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Name"] = "Dot Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "",
						}, -- [8]
						{
							["Type"] = 6,
							["Key"] = "option4",
							["Value"] = 0,
							["Name"] = "Blank Space",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [9]
						{
							["Type"] = 5,
							["Key"] = "option10",
							["Value"] = "Skull Texture",
							["Name"] = "Skull Texture",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [10]
						{
							["Type"] = 1,
							["Key"] = "skullColor",
							["Value"] = {
								1, -- [1]
								0.46274509803922, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Name"] = "Skull Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "",
						}, -- [11]
						{
							["Type"] = 2,
							["Max"] = 1,
							["Desc"] = "",
							["Min"] = 0,
							["Key"] = "skullAlpha",
							["Value"] = 0.2,
							["Fraction"] = true,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Alpha",
						}, -- [12]
						{
							["Type"] = 2,
							["Max"] = 2,
							["Desc"] = "",
							["Min"] = 0.4,
							["Key"] = "skullScale",
							["Value"] = 0.6,
							["Fraction"] = true,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Scale",
						}, -- [13]
					},
					["version"] = -1,
					["PlaterCore"] = 1,
					["Desc"] = "Highlight a nameplate of an important Add. Add the unit name or NpcID into the trigger box to add more.",
					["SpellIds"] = {
					},
					["Name"] = "Unit - Important [Plater]",
					["NpcNames"] = {
						"164362", -- [1]
						"168882", -- [2]
						"168988", -- [3]
						"170234", -- [4]
						"165905", -- [5]
						"170452", -- [6]
					},
				}, -- [1]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    --creates a glow around the icon\n    envTable.buffIconGlow = envTable.buffIconGlow or Plater.CreateIconGlow (self, scriptTable.config.glowColor)\n    \nend",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    if (scriptTable.config.glowEnabled) then\n        envTable.buffIconGlow:Hide()\n    end\n    \n    if (scriptTable.config.dotsEnabled) then\n        Plater.StopDotAnimation(self, envTable.dotAnimation)\n    end\n    \n    \nend",
					["OptionsValues"] = {
					},
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \n    \nend",
					["Time"] = 1605214963,
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura",
					["Enabled"] = true,
					["Revision"] = 607,
					["semver"] = "",
					["Author"] = "Tercioo-Sylvanas",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    if (scriptTable.config.glowEnabled) then\n        envTable.buffIconGlow:Show()\n    end\n    \n    if (scriptTable.config.dotsEnabled) then\n        envTable.dotAnimation = Plater.PlayDotAnimation(self, 6, scriptTable.config.dotsColor, 6, 3) \n    end\n    \nend\n\n\n\n\n",
					["Options"] = {
						{
							["Type"] = 6,
							["Key"] = "option1",
							["Value"] = 0,
							["Name"] = "Blank Space",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 5,
							["Key"] = "option2",
							["Value"] = "Enter the spell name or spellID of the Buff in the Add Trigger box and hit \"Add\".",
							["Name"] = "Option 2",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 6,
							["Key"] = "option3",
							["Value"] = 0,
							["Name"] = "Blank Space",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [3]
						{
							["Type"] = 4,
							["Key"] = "glowEnabled",
							["Value"] = false,
							["Name"] = "Glow Enabled",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "",
						}, -- [4]
						{
							["Type"] = 1,
							["Key"] = "glowColor",
							["Value"] = {
								0.40392156862745, -- [1]
								0.003921568627451, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Name"] = "Glow Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "",
						}, -- [5]
						{
							["Type"] = 6,
							["Key"] = "option3",
							["Value"] = 0,
							["Name"] = "Blank Space",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [6]
						{
							["Type"] = 4,
							["Key"] = "dotsEnabled",
							["Value"] = true,
							["Name"] = "Dots Enabled",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "",
						}, -- [7]
						{
							["Type"] = 1,
							["Key"] = "dotsColor",
							["Value"] = {
								1, -- [1]
								0.32156862745098, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Name"] = "Dots Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "",
						}, -- [8]
					},
					["version"] = -1,
					["PlaterCore"] = 1,
					["Desc"] = "Add the buff name in the trigger box.",
					["SpellIds"] = {
						323149, -- [1]
						324392, -- [2]
						340544, -- [3]
						342189, -- [4]
						333227, -- [5]
					},
					["Name"] = "Aura - Buff Alert [Plater]",
					["NpcNames"] = {
					},
				}, -- [2]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    --creates a glow around the icon\n    envTable.buffIconGlow = envTable.buffIconGlow or Plater.CreateIconGlow (self, scriptTable.config.glowColor)\n    \nend\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    if (scriptTable.config.glowEnabled) then\n        envTable.buffIconGlow:Hide()\n    end\n    \n    if (scriptTable.config.dotsEnabled) then\n        Plater.StopDotAnimation(self, envTable.dotAnimation)\n    end\n    \n    \nend\n\n\n",
					["OptionsValues"] = {
					},
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Time"] = 1604454032,
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura",
					["Enabled"] = true,
					["Revision"] = 351,
					["Options"] = {
						{
							["Type"] = 6,
							["Key"] = "option1",
							["Value"] = 0,
							["Name"] = "Blank Space",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 5,
							["Key"] = "option2",
							["Value"] = "Enter the spell name or spellID of the Buff in the Add Trigger box and hit \"Add\".",
							["Name"] = "Option 2",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 6,
							["Key"] = "option3",
							["Value"] = 0,
							["Name"] = "Blank Space",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [3]
						{
							["Type"] = 4,
							["Key"] = "glowEnabled",
							["Value"] = false,
							["Name"] = "Glow Enabled",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "",
						}, -- [4]
						{
							["Type"] = 1,
							["Key"] = "glowColor",
							["Value"] = {
								0.40392156862745, -- [1]
								0.003921568627451, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Name"] = "Glow Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "",
						}, -- [5]
						{
							["Type"] = 6,
							["Key"] = "option3",
							["Value"] = 0,
							["Name"] = "Blank Space",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [6]
						{
							["Type"] = 4,
							["Key"] = "dotsEnabled",
							["Value"] = true,
							["Name"] = "Dots Enabled",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "",
						}, -- [7]
						{
							["Type"] = 1,
							["Key"] = "dotsColor",
							["Value"] = {
								1, -- [1]
								0.32156862745098, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Name"] = "Dots Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "",
						}, -- [8]
					},
					["Author"] = "Tercioo-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    if (scriptTable.config.glowEnabled) then\n        envTable.buffIconGlow:Show()\n    end\n    \n    if (scriptTable.config.dotsEnabled) then\n        envTable.dotAnimation = Plater.PlayDotAnimation(self, 6, scriptTable.config.dotsColor, 6, 3) \n    end\nend\n\n\n",
					["semver"] = "",
					["version"] = -1,
					["PlaterCore"] = 1,
					["SpellIds"] = {
						337220, -- [1]
						337253, -- [2]
						337251, -- [3]
					},
					["Desc"] = "Add the debuff name in the trigger box.",
					["Name"] = "Aura - Debuff Alert [Plater]",
					["NpcNames"] = {
					},
				}, -- [3]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    --flash duration\n    local CONFIG_FLASH_DURATION = scriptTable.config.flashDuration\n    \n    --manually create a new texture for the flash animation\n    if (not envTable.SmallFlashTexture) then\n        envTable.SmallFlashTexture = envTable.SmallFlashTexture or Plater:CreateImage (unitFrame.castBar)\n        envTable.SmallFlashTexture:SetColorTexture (1, 1, 1)\n        envTable.SmallFlashTexture:SetAllPoints()\n    end\n    \n    --manually create a flash animation using the framework\n    if (not envTable.SmallFlashAnimationHub) then \n        \n        local onPlay = function()\n            envTable.SmallFlashTexture:Show()\n        end\n        \n        local onFinished = function()\n            envTable.SmallFlashTexture:Hide()\n        end\n        \n        local animationHub = Plater:CreateAnimationHub (envTable.SmallFlashTexture, onPlay, onFinished)\n        envTable.flashIn = Plater:CreateAnimation (animationHub, \"Alpha\", 1, CONFIG_FLASH_DURATION/2, 0, .6)\n        envTable.flashOut = Plater:CreateAnimation (animationHub, \"Alpha\", 2, CONFIG_FLASH_DURATION/2, 1, 0)\n        \n        envTable.SmallFlashAnimationHub = animationHub\n    end\n    \n    envTable.flashIn:SetDuration(scriptTable.config.flashDuration / 2)\n    envTable.flashOut:SetDuration(scriptTable.config.flashDuration / 2)\n    envTable.SmallFlashTexture:SetColorTexture (Plater:ParseColors(scriptTable.config.flashColor))\n    \nend\n\n\n\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    envTable.SmallFlashAnimationHub:Stop()\n    \nend\n\n\n",
					["OptionsValues"] = {
					},
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    envTable.SmallFlashAnimationHub:Play()\n    \nend\n\n\n",
					["ScriptType"] = 2,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    \n    \nend\n\n\n",
					["Time"] = 1606060042,
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    envTable.SmallFlashAnimationHub:Stop()\n    \nend\n\n\n",
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    --flash duration\n    local CONFIG_FLASH_DURATION = scriptTable.config.flashDuration\n    \n    --manually create a new texture for the flash animation\n    if (not envTable.SmallFlashTexture) then\n        envTable.SmallFlashTexture = envTable.SmallFlashTexture or Plater:CreateImage (unitFrame.castBar)\n        envTable.SmallFlashTexture:SetColorTexture (1, 1, 1)\n        envTable.SmallFlashTexture:SetAllPoints()\n    end\n    \n    --manually create a flash animation using the framework\n    if (not envTable.SmallFlashAnimationHub) then \n        \n        local onPlay = function()\n            envTable.SmallFlashTexture:Show()\n        end\n        \n        local onFinished = function()\n            envTable.SmallFlashTexture:Hide()\n        end\n        \n        local animationHub = Plater:CreateAnimationHub (envTable.SmallFlashTexture, onPlay, onFinished)\n        envTable.flashIn = Plater:CreateAnimation (animationHub, \"Alpha\", 1, CONFIG_FLASH_DURATION/2, 0, .6)\n        envTable.flashOut = Plater:CreateAnimation (animationHub, \"Alpha\", 2, CONFIG_FLASH_DURATION/2, 1, 0)\n        \n        envTable.SmallFlashAnimationHub = animationHub\n    end\n    \n    envTable.flashIn:SetDuration(scriptTable.config.flashDuration / 2)\n    envTable.flashOut:SetDuration(scriptTable.config.flashDuration / 2)\n    envTable.SmallFlashTexture:SetColorTexture (Plater:ParseColors(scriptTable.config.flashColor))\n    \nend\n\n\n\n\n\n\n\n",
					["Enabled"] = true,
					["Revision"] = 597,
					["semver"] = "",
					["Temp_Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    \n    \nend\n\n\n",
					["Author"] = "Tercioo-Sylvanas",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    envTable.SmallFlashAnimationHub:Play()\n    \nend\n\n\n",
					["SpellIds"] = {
						320170, -- [1]
						320171, -- [2]
						320462, -- [3]
						330712, -- [4]
						332170, -- [5]
						333875, -- [6]
						326836, -- [7]
						342135, -- [8]
						333861, -- [9]
						341969, -- [10]
						317963, -- [11]
						327481, -- [12]
						328331, -- [13]
						322614, -- [14]
						325701, -- [15]
						326438, -- [16]
						323538, -- [17]
						321764, -- [18]
						296523, -- [19]
						330755, -- [20]
						295929, -- [21]
						296019, -- [22]
						335685, -- [23]
						170751, -- [24]
						342207, -- [25]
					},
					["Prio"] = 99,
					["Name"] = "Cast - Small Alert [Plater]",
					["PlaterCore"] = 1,
					["version"] = -1,
					["Desc"] = "Flashes the Cast Bar when a spell in the trigger list is Cast. Add spell in the Add Trigger field.",
					["Options"] = {
						{
							["Type"] = 6,
							["Key"] = "option1",
							["Value"] = 0,
							["Name"] = "Option 1",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 5,
							["Key"] = "option2",
							["Value"] = "Plays a small animation when the cast start.",
							["Name"] = "Option 2",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 5,
							["Key"] = "option2",
							["Value"] = "Enter the spell name or spellID of the Spell in the Add Trigger box and hit \"Add\".",
							["Name"] = "Option 2",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [3]
						{
							["Type"] = 6,
							["Key"] = "option3",
							["Value"] = 0,
							["Name"] = "Option 3",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [4]
						{
							["Type"] = 2,
							["Max"] = 1.2,
							["Desc"] = "How long is the flash played when the cast starts.",
							["Min"] = 0.1,
							["Key"] = "flashDuration",
							["Value"] = 0.6,
							["Fraction"] = true,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Flash Duration",
						}, -- [5]
						{
							["Type"] = 1,
							["Key"] = "flashColor",
							["Value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["Name"] = "Flash Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "Color of the Flash",
						}, -- [6]
					},
					["NpcNames"] = {
					},
				}, -- [4]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --color to set the nameplate\n    envTable.NameplateColor = \"gray\"\n    \nend\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["OptionsValues"] = {
					},
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --only change the nameplate color in combat\n    if (InCombatLockdown()) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end\n    \nend\n\n\n\n\n\n\n",
					["Time"] = 1603742549,
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_invalid",
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Revision"] = 107,
					["semver"] = "",
					["Enabled"] = true,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --color to set the nameplate\n    envTable.NameplateColor = \"gray\"\n    \nend\n\n\n",
					["Author"] = "Izimode-Azralon",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --only change the nameplate color in combat\n    if (InCombatLockdown()) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end\n    \nend\n\n\n\n\n\n\n",
					["Desc"] = "When an aura makes the unit invulnarable and you don't want to attack it. Add spell in the Add Trigger field.",
					["version"] = -1,
					["Prio"] = 99,
					["Name"] = "Aura - Invalidate Unit [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
						261265, -- [1]
						261266, -- [2]
						271590, -- [3]
					},
					["Options"] = {
					},
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["NpcNames"] = {
					},
				}, -- [5]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings:\n    do\n        \n        --change the nameplate color to this color\n        --can use color names: \"red\", \"yellow\"\n        --can use color hex: \"#FF0000\", \"#FFFF00\"\n        --con use color table: {1, 0, 0}, {1, 1, 0}\n        \n        envTable.Color = \"green\"\n        \n        --if true, it'll replace the health info with the unit name\n        envTable.ReplaceHealthWithName = false\n        \n        --use flash when the unit is shown in the screen\n        envTable.FlashNameplate = true\n        \n    end\n    \n    --private:\n    do\n        --create a flash for when the unit if shown\n        envTable.smallFlash = envTable.smallFlash or Plater.CreateFlash (unitFrame.healthBar, 0.15, 1, envTable.Color)\n        \n    end\n    \nend\n\n--[=[\n\nNpc IDS:\n\n141851: Spawn of G'Huun on Mythic Dungeons\n\n\n--]=]\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --make plater refresh the nameplate color\n    Plater.RefreshNameplateColor (unitFrame)\n    \n        envTable.smallFlash:Stop()\n    \nend\n\n\n",
					["OptionsValues"] = {
					},
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can flash the nameplate\n    if (envTable.FlashNameplate) then\n        envTable.smallFlash:Play()\n    end\n    \nend\n\n\n\n\n\n\n\n\n",
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --adjust the nameplate color\n    Plater.SetNameplateColor (unitFrame, envTable.Color)\n    \n    --check if can replace the health amount with the unit name\n    if (envTable.ReplaceHealthWithName) then\n        \n        local healthPercent = format (\"%.1f\", unitFrame.healthBar.CurrentHealth / unitFrame.healthBar.CurrentHealthMax *100)\n        \n        unitFrame.healthBar.lifePercent:SetText (unitFrame.namePlateUnitName .. \"  (\" .. healthPercent  .. \"%)\")\n        \n    end\n    \nend\n\n\n",
					["Time"] = 1603742545,
					["url"] = "",
					["Icon"] = 135024,
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --make plater refresh the nameplate color\n    Plater.RefreshNameplateColor (unitFrame)\n    \n        envTable.smallFlash:Stop()\n    \nend\n\n\n",
					["Revision"] = 66,
					["semver"] = "",
					["Enabled"] = true,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings:\n    do\n        \n        --change the nameplate color to this color\n        --can use color names: \"red\", \"yellow\"\n        --can use color hex: \"#FF0000\", \"#FFFF00\"\n        --con use color table: {1, 0, 0}, {1, 1, 0}\n        \n        envTable.Color = \"green\"\n        \n        --if true, it'll replace the health info with the unit name\n        envTable.ReplaceHealthWithName = false\n        \n        --use flash when the unit is shown in the screen\n        envTable.FlashNameplate = true\n        \n    end\n    \n    --private:\n    do\n        --create a flash for when the unit if shown\n        envTable.smallFlash = envTable.smallFlash or Plater.CreateFlash (unitFrame.healthBar, 0.15, 1, envTable.Color)\n        \n    end\n    \nend\n\n--[=[\n\nNpc IDS:\n\n141851: Spawn of G'Huun on Mythic Dungeons\n\n\n--]=]\n\n\n\n\n",
					["Author"] = "Izimode-Azralon",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --adjust the nameplate color\n    Plater.SetNameplateColor (unitFrame, envTable.Color)\n    \n    --check if can replace the health amount with the unit name\n    if (envTable.ReplaceHealthWithName) then\n        \n        local healthPercent = format (\"%.1f\", unitFrame.healthBar.CurrentHealth / unitFrame.healthBar.CurrentHealthMax *100)\n        \n        unitFrame.healthBar.lifePercent:SetText (unitFrame.namePlateUnitName .. \"  (\" .. healthPercent  .. \"%)\")\n        \n    end\n    \nend\n\n\n",
					["Desc"] = "Add a unitID or unit name in 'Add Trigger' entry. See the constructor script for options.",
					["version"] = -1,
					["Prio"] = 99,
					["Name"] = "Color Change [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
					},
					["Options"] = {
					},
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can flash the nameplate\n    if (envTable.FlashNameplate) then\n        envTable.smallFlash:Play()\n    end\n    \nend\n\n\n\n\n\n\n\n\n",
					["NpcNames"] = {
						"141851", -- [1]
					},
				}, -- [6]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    --settings (require a /reload after editing any setting)\n    do\n        --blink and glow\n        envTable.BlinkEnabled = scriptTable.config.blinkEnabled\n        envTable.GlowEnabled = scriptTable.config.glowEnabled \n        envTable.ChangeNameplateColor = scriptTable.config.changeNameplateColor;\n        envTable.TimeLeftToBlink = scriptTable.config.timeleftToBlink;\n        envTable.BlinkSpeed = scriptTable.config.blinkSpeed; \n        envTable.BlinkColor = scriptTable.config.blinkColor; \n        envTable.BlinkMaxAlpha = scriptTable.config.blinkMaxAlpha; \n        envTable.NameplateColor = scriptTable.config.nameplateColor; \n        \n        --text color\n        envTable.TimerColorEnabled = scriptTable.config.timerColorEnabled \n        envTable.TimeLeftWarning = scriptTable.config.timeLeftWarning;\n        envTable.TimeLeftCritical = scriptTable.config.timeLeftCritical;\n        envTable.TextColor_Warning = scriptTable.config.warningColor; \n        envTable.TextColor_Critical = scriptTable.config.criticalColor; \n        \n        --list of spellIDs to ignore\n        envTable.IgnoredSpellID = {\n            [12] = true, --use a simple comma here\n            [13] = true,\n        }\n    end\n    \n    \n    --private\n    do\n        envTable.blinkTexture = Plater:CreateImage (self, \"\", 1, 1, \"overlay\")\n        envTable.blinkTexture:SetPoint ('center', 0, 0)\n        envTable.blinkTexture:Hide()\n        \n        local onPlay = function()\n            envTable.blinkTexture:Show() \n            envTable.blinkTexture.color = envTable.BlinkColor\n        end\n        local onStop = function()\n            envTable.blinkTexture:Hide()  \n        end\n        envTable.blinkAnimation = Plater:CreateAnimationHub (envTable.blinkTexture, onPlay, onStop)\n        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 1, envTable.BlinkSpeed / 2, 0, envTable.BlinkMaxAlpha)\n        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 2, envTable.BlinkSpeed / 2, envTable.BlinkMaxAlpha, 0)\n        \n        envTable.glowEffect = envTable.glowEffect or Plater.CreateIconGlow (self)\n        --envTable.glowEffect:Show() --envTable.glowEffect:Hide()\n        \n    end\n    \nend\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.blinkAnimation:Stop()\n    envTable.blinkTexture:Hide()\n    envTable.blinkAnimation:Stop()\n    envTable.glowEffect:Stop()\n    Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\nend\n\n\n",
					["OptionsValues"] = {
					},
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    local timeLeft = envTable._RemainingTime\n    \n    --check if the spellID isn't being ignored\n    if (envTable.IgnoredSpellID [envTable._SpellID]) then\n        return\n    end\n    \n    --check the time left and start or stop the blink animation and also check if the time left is > zero\n    if ((envTable.BlinkEnabled or envTable.GlowEnabled) and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftToBlink) then\n            --blink effect\n            if (envTable.BlinkEnabled) then\n                if (not envTable.blinkAnimation:IsPlaying()) then\n                    envTable.blinkAnimation:Play()\n                end\n            end\n            --glow effect\n            if (envTable.GlowEnabled) then\n                envTable.glowEffect:Show()\n            end\n            --nameplate color\n            if (envTable.ChangeNameplateColor) then\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n            end\n        else\n            --blink effect\n            if (envTable.blinkAnimation:IsPlaying()) then\n                envTable.blinkAnimation:Stop()\n            end\n            --glow effect\n            if (envTable.GlowEnabled and envTable.glowEffect:IsShown()) then\n                envTable.glowEffect:Hide()\n            end\n        end\n    end\n    \n    --timer color\n    if (envTable.TimerColorEnabled and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftCritical) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Critical)\n        elseif (timeLeft < envTable.TimeLeftWarning) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Warning)        \n        else\n            Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\n        end\n    end\n    \nend",
					["Time"] = 1604354808,
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura_blink",
					["Enabled"] = true,
					["Revision"] = 331,
					["semver"] = "",
					["Author"] = "Izimode-Azralon",
					["Initialization"] = "					function (scriptTable)\n						--insert code here\n						\n					end\n				",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.blinkTexture:SetSize (self:GetSize())\n    \nend\n\n\n",
					["Options"] = {
						{
							["Type"] = 6,
							["Key"] = "option10",
							["Value"] = 0,
							["Name"] = "Blank Space",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 5,
							["Key"] = "option17",
							["Value"] = "Enter the spell name or spellID in the Add Trigger box and hit \"Add\".",
							["Name"] = "Option 17",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 6,
							["Key"] = "option10",
							["Value"] = 0,
							["Name"] = "Blank Space",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [3]
						{
							["Type"] = 4,
							["Key"] = "blinkEnabled",
							["Value"] = true,
							["Name"] = "Blink Enabled",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "set to 'false' to disable blink",
						}, -- [4]
						{
							["Type"] = 4,
							["Key"] = "glowEnabled",
							["Value"] = true,
							["Name"] = "Glow Enabled",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "set to 'false' to disable glows",
						}, -- [5]
						{
							["Type"] = 4,
							["Key"] = "changeNameplateColor",
							["Value"] = true,
							["Name"] = "Change NamePlate Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "set to 'true' to enable nameplate color change",
						}, -- [6]
						{
							["Type"] = 2,
							["Max"] = 20,
							["Desc"] = "in seconds, affects the blink effect only",
							["Min"] = 1,
							["Key"] = "timeleftToBlink",
							["Value"] = 3,
							["Fraction"] = true,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Timeleft to Blink",
						}, -- [7]
						{
							["Type"] = 2,
							["Max"] = 3,
							["Desc"] = "time to complete a blink loop",
							["Min"] = 0.5,
							["Key"] = "blinkSpeed",
							["Value"] = 1,
							["Fraction"] = true,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Blink Speed",
						}, -- [8]
						{
							["Type"] = 2,
							["Max"] = 1,
							["Desc"] = "max transparency in the animation loop (1.0 is full opaque)",
							["Min"] = 0.1,
							["Key"] = "blinkMaxAlpha",
							["Value"] = 0.6,
							["Fraction"] = true,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Blink Max Alpha",
						}, -- [9]
						{
							["Type"] = 1,
							["Key"] = "blinkColor",
							["Value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["Name"] = "Blink Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "color of the blink",
						}, -- [10]
						{
							["Type"] = 1,
							["Key"] = "",
							["Value"] = {
								0.28627450980392, -- [1]
								0.003921568627451, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Name"] = "Nameplate Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "nameplate color if ChangeNameplateColor is true",
						}, -- [11]
						{
							["Type"] = 6,
							["Key"] = "option10",
							["Value"] = 0,
							["Name"] = "Blank Space",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [12]
						{
							["Type"] = 4,
							["Key"] = "timerColorEnabled",
							["Value"] = true,
							["Name"] = "Timer Color Enabled",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "set to 'false' to disable changes in the color of the time left text",
						}, -- [13]
						{
							["Type"] = 2,
							["Max"] = 20,
							["Desc"] = "in seconds, affects the color of the text",
							["Min"] = 1,
							["Key"] = "timeLeftWarning",
							["Value"] = 8,
							["Fraction"] = true,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Time Left Warning",
						}, -- [14]
						{
							["Type"] = 2,
							["Max"] = 10,
							["Desc"] = "in seconds, affects the color of the text",
							["Min"] = 1,
							["Key"] = "timeLeftCritical",
							["Value"] = 3,
							["Fraction"] = true,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Time Left Critical",
						}, -- [15]
						{
							["Type"] = 1,
							["Key"] = "warningColor",
							["Value"] = {
								1, -- [1]
								0.87058823529412, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Name"] = "Warning Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "color when the time left entered in a warning zone",
						}, -- [16]
						{
							["Type"] = 1,
							["Key"] = "criticalColor",
							["Value"] = {
								1, -- [1]
								0.074509803921569, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Name"] = "Critical Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "color when the time left is critical",
						}, -- [17]
					},
					["version"] = -1,
					["PlaterCore"] = 1,
					["Desc"] = "Blink, change the number and nameplate color. Add the debuffs int he trigger box. Set settings on constructor script.",
					["SpellIds"] = {
					},
					["Name"] = "Aura - Blink by Time Left [Plater]",
					["NpcNames"] = {
					},
				}, -- [7]
				{
					["ConstructorCode"] = "--gray lines are comments and doesn't affect the code\n\n--1) add the aura you want by typing its name or spellID into the \"Add Trigger\" and click the \"Add\" button.\n--2) the border will use the default color set below, to a custom color type aura name and the color you want in the BorderColorByAura table.\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --default color if the aura name isn't found in the Color By Aura table below\n    envTable.DefaultBorderColor = \"orange\"\n    \n    --transparency, affect all borders\n    envTable.BorderAlpha = 1.0\n    \n    --add the aura name and the color, \n    envTable.BorderColorByAura = {\n        \n        --examples:\n        --[\"Aura Name\"] = \"yellow\", --using regular aura name | using the name of the color\n        --[\"aura name\"] = \"#FFFF00\", --using lower case in the aura name |using html #hex for the color\n        --[54214] = {1, 1, 0}, --using the spellID instead of the name | using rgb table (0 to 1) for the color\n        --color table uses zero to one values: 255 = 1.0, 127 = 0.5, orange color = {1, 0.7, 0}\n        \n        --add your custom border colors below:\n        \n        [\"Aura Name\"] = {1, .5, 0}, --example to copy/paste\n        \n    }\n    \n    \nend\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --reset the border color\n    self:SetBackdropBorderColor (0, 0, 0, 0)\n    \nend\n\n\n",
					["OptionsValues"] = {
					},
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the aura name in lower case\n    local auraLowerName = string.lower (envTable._SpellName)\n    \n    --attempt to get a custom color added by the user in the constructor script\n    local hasCustomBorderColor = envTable.BorderColorByAura [auraLowerName] or envTable.BorderColorByAura [envTable._SpellName] or envTable.BorderColorByAura [envTable._SpellID]\n    \n    --save the custom color\n    envTable.CustomBorderColor = hasCustomBorderColor\n    \nend\n\n\n",
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the custom color added by the user or the default color\n    local color = envTable.CustomBorderColor or envTable.DefaultBorderColor\n    --parse the color since it can be a color name, hex or color table\n    local r, g, b = DetailsFramework:ParseColors (color)\n    \n    --set the border color\n    self:SetBackdropBorderColor (r, g, b, envTable.BorderAlpha)\n    \nend\n\n\n\n\n",
					["Time"] = 1598131256,
					["url"] = "",
					["Icon"] = 133006,
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --reset the border color\n    self:SetBackdropBorderColor (0, 0, 0, 0)\n    \nend\n\n\n",
					["Revision"] = 46,
					["semver"] = "",
					["Enabled"] = false,
					["Temp_ConstructorCode"] = "--gray lines are comments and doesn't affect the code\n\n--1) add the aura you want by typing its name or spellID into the \"Add Trigger\" and click the \"Add\" button.\n--2) the border will use the default color set below, to a custom color type aura name and the color you want in the BorderColorByAura table.\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --default color if the aura name isn't found in the Color By Aura table below\n    envTable.DefaultBorderColor = \"orange\"\n    \n    --transparency, affect all borders\n    envTable.BorderAlpha = 1.0\n    \n    --add the aura name and the color, \n    envTable.BorderColorByAura = {\n        \n        --examples:\n        --[\"Aura Name\"] = \"yellow\", --using regular aura name | using the name of the color\n        --[\"aura name\"] = \"#FFFF00\", --using lower case in the aura name |using html #hex for the color\n        --[54214] = {1, 1, 0}, --using the spellID instead of the name | using rgb table (0 to 1) for the color\n        --color table uses zero to one values: 255 = 1.0, 127 = 0.5, orange color = {1, 0.7, 0}\n        \n        --add your custom border colors below:\n        \n        [\"Aura Name\"] = {1, .5, 0}, --example to copy/paste\n        \n    }\n    \n    \nend\n\n\n\n\n",
					["Author"] = "Izimode-Azralon",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the custom color added by the user or the default color\n    local color = envTable.CustomBorderColor or envTable.DefaultBorderColor\n    --parse the color since it can be a color name, hex or color table\n    local r, g, b = DetailsFramework:ParseColors (color)\n    \n    --set the border color\n    self:SetBackdropBorderColor (r, g, b, envTable.BorderAlpha)\n    \nend\n\n\n\n\n",
					["Desc"] = "Add a border to an aura icon. Add the aura into the Add Trigger entry. You can customize the icon color at the constructor script.",
					["version"] = -1,
					["Prio"] = 99,
					["Name"] = "Aura - Border Color [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
					},
					["Options"] = {
					},
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the aura name in lower case\n    local auraLowerName = string.lower (envTable._SpellName)\n    \n    --attempt to get a custom color added by the user in the constructor script\n    local hasCustomBorderColor = envTable.BorderColorByAura [auraLowerName] or envTable.BorderColorByAura [envTable._SpellName] or envTable.BorderColorByAura [envTable._SpellID]\n    \n    --save the custom color\n    envTable.CustomBorderColor = hasCustomBorderColor\n    \nend\n\n\n",
					["NpcNames"] = {
					},
				}, -- [8]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount = Plater:CreateLabel (unitFrame, \"\", 16, \"silver\");\n    envTable.EnergyAmount:SetPoint (\"bottom\", unitFrame, \"top\", 0, 18);\nend\n\n--[=[\n\n\n--]=]",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount:Hide()\nend\n\n\n",
					["OptionsValues"] = {
					},
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount:Show()\nend\n\n\n",
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount.text = \"\" .. UnitPower (unitId);\nend\n\n\n",
					["Time"] = 1598131306,
					["url"] = "",
					["Icon"] = 136048,
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount:Hide()\nend\n\n\n",
					["Revision"] = 132,
					["semver"] = "",
					["Enabled"] = true,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount = Plater:CreateLabel (unitFrame, \"\", 16, \"silver\");\n    envTable.EnergyAmount:SetPoint (\"bottom\", unitFrame, \"top\", 0, 18);\nend\n\n--[=[\n\n\n--]=]",
					["Author"] = "Celian-Sylvanas",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount.text = \"\" .. UnitPower (unitId);\nend\n\n\n",
					["Desc"] = "Show the energy amount above the nameplate",
					["version"] = -1,
					["Prio"] = 99,
					["Name"] = "UnitPower [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
					},
					["Options"] = {
					},
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount:Show()\nend\n\n\n",
					["NpcNames"] = {
						"Guardian of Yogg-Saron", -- [1]
					},
				}, -- [9]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\n    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.BuffFrame, \"top\", 0, 10);    \n    \n    envTable.FixateIcon = Plater:CreateImage (unitFrame, 236188, 16, 16, \"overlay\");\n    envTable.FixateIcon:SetPoint (\"bottom\", envTable.FixateTarget, \"top\", 0, 4);    \n    \n    envTable.FixateTarget:Hide()\n    envTable.FixateIcon:Hide()\nend\n\n--165560 = Gormling Larva - MTS\n\n\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Hide()\n    envTable.FixateIcon:Hide()\nend\n\n\n",
					["OptionsValues"] = {
					},
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    local targetName = UnitName (unitId .. \"target\");\n    if (targetName) then\n        local _, class = UnitClass (unitId .. \"target\");\n        targetName = Plater.SetTextColorByClass (unitId .. \"target\", targetName);\n        envTable.FixateTarget.text = targetName;\n        \n        envTable.FixateTarget:Show();\n        envTable.FixateIcon:Show();\n    end    \nend\n\n\n",
					["Time"] = 1604239880,
					["url"] = "",
					["Icon"] = 1029718,
					["Enabled"] = true,
					["Revision"] = 269,
					["semver"] = "",
					["Author"] = "Celian-Sylvanas",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n\n\n\n\n",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Options"] = {
					},
					["version"] = -1,
					["PlaterCore"] = 1,
					["Desc"] = "Show above the nameplate who is the player fixated",
					["SpellIds"] = {
					},
					["Name"] = "Fixate [Plater]",
					["NpcNames"] = {
						"165560", -- [1]
					},
				}, -- [10]
				{
					["ConstructorCode"] = "--todo: add npc ids for multilanguage support\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.TextAboveNameplate = \"** On You **\"\n    envTable.NameplateColor = \"green\"\n    \n    --label to show the text above the nameplate\n    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\n    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.healthBar, \"top\", 0, 30);\n    \n    --the spell casted by the npc in the trigger list needs to be in the list below as well\n    local spellList = {\n        [321891] = \"Freeze Tag Fixation\", --Illusionary Vulpin - MTS\n        \n    }\n    \n    --build the list with localized spell names\n    envTable.FixateDebuffs = {}\n    for spellID, enUSSpellName in pairs (spellList) do\n        local localizedSpellName = GetSpellInfo (spellID)\n        envTable.FixateDebuffs [localizedSpellName or enUSSpellName] = true\n    end\n    \n    --debug - smuggled crawg\n    envTable.FixateDebuffs [\"Jagged Maw\"] = true\n    \nend\n\n--[=[\nNpcIDs:\n136461: Spawn of G'huun (mythic uldir G'huun)\n\n--]=]\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:SetText (\"\")\n    envTable.FixateTarget:Hide()\n    \n    envTable.IsFixated = false\n    \n    Plater.RefreshNameplateColor (unitFrame)\nend\n\n\n",
					["OptionsValues"] = {
					},
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --swap this to true when it is fixated\n    local isFixated = false\n    \n    --check the debuffs the player has and see if any of these debuffs has been placed by this unit\n    for debuffId = 1, 40 do\n        local name, texture, count, debuffType, duration, expirationTime, caster = UnitDebuff (\"player\", debuffId)\n        \n        --cancel the loop if there's no more debuffs on the player\n        if (not name) then \n            break \n        end\n        \n        --check if the owner of the debuff is this unit\n        if (envTable.FixateDebuffs [name] and caster and UnitIsUnit (caster, unitId)) then\n            --the debuff the player has, has been placed by this unit, set the name above the unit name\n            envTable.FixateTarget:SetText (envTable.TextAboveNameplate)\n            envTable.FixateTarget:Show()\n            Plater.SetNameplateColor (unitFrame,  envTable.NameplateColor)\n            isFixated = true\n            \n            if (not envTable.IsFixated) then\n                envTable.IsFixated = true\n                Plater.FlashNameplateBody (unitFrame, \"fixate\", .2)\n            end\n        end\n        \n    end\n    \n    --check if the nameplate color is changed but isn't fixated any more\n    if (not isFixated and envTable.IsFixated) then\n        --refresh the nameplate color\n        Plater.RefreshNameplateColor (unitFrame)\n        --reset the text\n        envTable.FixateTarget:SetText (\"\")\n        \n        envTable.IsFixated = false\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["Time"] = 1604087921,
					["url"] = "",
					["Icon"] = 841383,
					["Enabled"] = true,
					["Revision"] = 266,
					["Options"] = {
					},
					["Author"] = "Tecno-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["semver"] = "",
					["version"] = -1,
					["PlaterCore"] = 1,
					["SpellIds"] = {
						"spawn of g'huun", -- [1]
						"smuggled crawg", -- [2]
						"sergeant bainbridge", -- [3]
						"blacktooth scrapper", -- [4]
						"irontide grenadier", -- [5]
						"feral bloodswarmer", -- [6]
						"earthrager", -- [7]
						"crawler mine", -- [8]
						"rezan", -- [9]
					},
					["Desc"] = "When an enemy places a debuff and starts to chase you. This script changes the nameplate color and place your name above the nameplate as well.",
					["Name"] = "Fixate On You [Plater]",
					["NpcNames"] = {
					},
				}, -- [11]
				{
					["ConstructorCode"] = "function(self, unitId, unitframe, envTable)\n    \n    envTable.shadowwordpain = envTable.shadowwordpain or Plater.CreateIconGlow (self)\n    --envTable.shadowwordpain:Show() --envTable.shadowwordpain:Hide()\n    \n    \n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.shadowwordpain:Hide()\n    \n    \nend",
					["OptionsValues"] = {
					},
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    for i=1,40 do\n        local name, _, _, debuffType, duration, expirationTime, unitCaster, isStealable, nameplateShowPersonal, spellId, canApplyAura, isBossDebuff, nameplateShowAll, timeMod, value1, value2, value3 = UnitDebuff(unitId,i, \"player\")\n        \n        if name == \"Shadow Word: Pain\" then\n            local swpainTimer = expirationTime - GetTime()\n            if swpainTimer <= 4.8 then\n                envTable.shadowwordpain:Show()\n            else\n                envTable.shadowwordpain:Hide()\n            end\n            \n            break\n        end\n    end\n    \nend\n\n\n\n\n\n",
					["Time"] = 1606746765,
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.shadowwordpain:Hide()\n    \n    \nend",
					["url"] = "",
					["Icon"] = 136207,
					["Temp_ConstructorCode"] = "function(self, unitId, unitframe, envTable)\n    \n    envTable.shadowwordpain = envTable.shadowwordpain or Plater.CreateIconGlow (self)\n    --envTable.shadowwordpain:Show() --envTable.shadowwordpain:Hide()\n    \n    \n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["Enabled"] = true,
					["Revision"] = 109,
					["semver"] = "",
					["Temp_Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    for i=1,40 do\n        local name, _, _, debuffType, duration, expirationTime, unitCaster, isStealable, nameplateShowPersonal, spellId, canApplyAura, isBossDebuff, nameplateShowAll, timeMod, value1, value2, value3 = UnitDebuff(unitId,i, \"player\")\n        \n        if name == \"Shadow Word: Pain\" then\n            local swpainTimer = expirationTime - GetTime()\n            if swpainTimer <= 4.8 then\n                envTable.shadowwordpain:Show()\n            else\n                envTable.shadowwordpain:Hide()\n            end\n            \n            break\n        end\n    end\n    \nend\n\n\n\n\n\n",
					["Author"] = "Gwelican-Lightbringer",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["SpellIds"] = {
						589, -- [1]
					},
					["Prio"] = 99,
					["Name"] = "Shadow Word: Pain",
					["PlaterCore"] = 1,
					["version"] = -1,
					["Desc"] = "SW:PAIN_FLASH",
					["Options"] = {
					},
					["NpcNames"] = {
					},
				}, -- [12]
				{
					["ConstructorCode"] = "function(self, unitId, unitframe, envTable)\n    \n    envTable.vampirictouch = envTable.vampirictouch or Plater.CreateIconGlow (self)\n    --envTable.vampirictouch:Show() --envTable.vampirictouch:Hide()\n    \n    \n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.vampirictouch:Hide()\n    \n    \nend",
					["OptionsValues"] = {
					},
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    for i=1,40 do\n        local name, _, _, debuffType, duration, expirationTime, unitCaster, isStealable, nameplateShowPersonal, spellId, canApplyAura, isBossDebuff, nameplateShowAll, timeMod, value1, value2, value3 = UnitDebuff(unitId,i, \"player\")\n        \n        if name == \"Vampiric Touch\" then\n            local vamptouchTimer = expirationTime - GetTime()\n            if vamptouchTimer <= 6.3 then\n                envTable.vampirictouch:Show()\n            else\n                envTable.vampirictouch:Hide()\n            end\n            \n            break\n        end\n    end\n    \nend\n\n\n\n\n\n",
					["Time"] = 1606747876,
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.vampirictouch:Hide()\n    \n    \nend",
					["url"] = "",
					["Icon"] = 135978,
					["Temp_ConstructorCode"] = "function(self, unitId, unitframe, envTable)\n    \n    envTable.vampirictouch = envTable.vampirictouch or Plater.CreateIconGlow (self)\n    --envTable.vampirictouch:Show() --envTable.vampirictouch:Hide()\n    \n    \n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["Enabled"] = true,
					["Revision"] = 116,
					["semver"] = "",
					["Temp_Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    for i=1,40 do\n        local name, _, _, debuffType, duration, expirationTime, unitCaster, isStealable, nameplateShowPersonal, spellId, canApplyAura, isBossDebuff, nameplateShowAll, timeMod, value1, value2, value3 = UnitDebuff(unitId,i, \"player\")\n        \n        if name == \"Vampiric Touch\" then\n            local vamptouchTimer = expirationTime - GetTime()\n            if vamptouchTimer <= 6.3 then\n                envTable.vampirictouch:Show()\n            else\n                envTable.vampirictouch:Hide()\n            end\n            \n            break\n        end\n    end\n    \nend\n\n\n\n\n\n",
					["Author"] = "Gwelican-Lightbringer",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["SpellIds"] = {
						34914, -- [1]
					},
					["Prio"] = 99,
					["Name"] = "Vampiric Touch",
					["PlaterCore"] = 1,
					["version"] = -1,
					["Desc"] = "VT_FLASH",
					["Options"] = {
					},
					["NpcNames"] = {
					},
				}, -- [13]
				{
					["ConstructorCode"] = "function(self, unitId, unitframe, envTable)\n    \n    envTable.corruption = envTable.corruption or Plater.CreateIconGlow (self)\n    --envTable.corruption:Show() --envTable.corruption:Hide()\n    \n    \n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.corruption:Hide()\n    \n    \nend",
					["OptionsValues"] = {
					},
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    local _, _, _, selected = GetTalentInfo(2,2,1)\n    \n    if selected then\n        return\n    end\n    \n    for i=1,40 do\n        local name, _, _, debuffType, duration, expirationTime, unitCaster, isStealable, nameplateShowPersonal, spellId, canApplyAura, isBossDebuff, nameplateShowAll, timeMod, value1, value2, value3 = UnitDebuff(unitId,i, \"player\")\n        \n        if name == \"Corruption\" then\n            local corruTimer = expirationTime - GetTime()\n            if corruTimer <= 4.2 then\n                envTable.corruption:Show()\n            else\n                envTable.corruption:Hide()\n            end\n            \n            break\n        end\n    end\n    \nend\n\n\n\n\n\n",
					["Time"] = 1604188045,
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.corruption:Hide()\n    \n    \nend",
					["url"] = "",
					["Icon"] = 136118,
					["Temp_ConstructorCode"] = "function(self, unitId, unitframe, envTable)\n    \n    envTable.corruption = envTable.corruption or Plater.CreateIconGlow (self)\n    --envTable.corruption:Show() --envTable.corruption:Hide()\n    \n    \n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["Enabled"] = true,
					["Revision"] = 102,
					["semver"] = "",
					["Temp_Initialization"] = "					function (scriptTable)\n						--insert code here\n						\n					end\n				",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    local _, _, _, selected = GetTalentInfo(2,2,1)\n    \n    if selected then\n        return\n    end\n    \n    for i=1,40 do\n        local name, _, _, debuffType, duration, expirationTime, unitCaster, isStealable, nameplateShowPersonal, spellId, canApplyAura, isBossDebuff, nameplateShowAll, timeMod, value1, value2, value3 = UnitDebuff(unitId,i, \"player\")\n        \n        if name == \"Corruption\" then\n            local corruTimer = expirationTime - GetTime()\n            if corruTimer < 4.2 then\n                envTable.corruption:Show()\n            else\n                envTable.corruption:Hide()\n            end\n            \n            break\n        end\n    end\n    \nend\n\n\n\n\n\n",
					["Author"] = "Gwelican-Lightbringer",
					["Initialization"] = "					function (scriptTable)\n						--insert code here\n						\n					end\n				",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["SpellIds"] = {
						285140, -- [1]
					},
					["Prio"] = 99,
					["Name"] = "Corruption flash",
					["PlaterCore"] = 1,
					["version"] = -1,
					["Desc"] = "CORR_FLASH",
					["Options"] = {
					},
					["NpcNames"] = {
					},
				}, -- [14]
				{
					["ConstructorCode"] = "function(self, unitId, unitframe, envTable)\n    \n    envTable.immolate = envTable.immolate or Plater.CreateIconGlow (self)\n    --envTable.immolate:Show() --envTable.immolate:Hide()\n    \n    \n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.immolate:Hide()\n    \n    \nend",
					["OptionsValues"] = {
					},
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    for i=1,40 do\n        local name, _, _, debuffType, duration, expirationTime, unitCaster, isStealable, nameplateShowPersonal, spellId, canApplyAura, isBossDebuff, nameplateShowAll, timeMod, value1, value2, value3 = UnitDebuff(unitId,i, \"player\")\n        \n        if name == \"Immolate\" then\n            local immoTimer = expirationTime - GetTime()\n            if immoTimer <= 5.4 then\n                envTable.immolate:Show()\n            else\n                envTable.immolate:Hide()\n            end\n            \n            break\n        end\n    end\n    \nend\n\n\n\n\n\n",
					["Time"] = 1604188037,
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.immolate:Hide()\n    \n    \nend",
					["url"] = "",
					["Icon"] = 135802,
					["Temp_ConstructorCode"] = "function(self, unitId, unitframe, envTable)\n    \n    envTable.immolate = envTable.immolate or Plater.CreateIconGlow (self)\n    --envTable.immolate:Show() --envTable.immolate:Hide()\n    \n    \n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["Enabled"] = true,
					["Revision"] = 104,
					["semver"] = "",
					["Temp_Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    for i=1,40 do\n        local name, _, _, debuffType, duration, expirationTime, unitCaster, isStealable, nameplateShowPersonal, spellId, canApplyAura, isBossDebuff, nameplateShowAll, timeMod, value1, value2, value3 = UnitDebuff(unitId,i, \"player\")\n        \n        if name == \"Immolate\" then\n            local immoTimer = expirationTime - GetTime()\n            if immoTimer < 5.4 then\n                envTable.immolate:Show()\n            else\n                envTable.immolate:Hide()\n            end\n            \n            break\n        end\n    end\n    \nend\n\n\n\n\n\n",
					["Author"] = "Gwelican-Lightbringer",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["SpellIds"] = {
						295425, -- [1]
					},
					["Prio"] = 99,
					["Name"] = "Immolate flash",
					["PlaterCore"] = 1,
					["version"] = -1,
					["Desc"] = "IMMO_FLASH",
					["Options"] = {
					},
					["NpcNames"] = {
					},
				}, -- [15]
				{
					["ConstructorCode"] = "function(self, unitId, unitframe, envTable)\n    \n    envTable.siphonlife = envTablesiphonlife or Plater.CreateIconGlow (self)\n    --envTable.siphonlife:Show() --envTable.siphonlife:Hide()\n    \n    \n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.siphonlife:Hide()\n    \n    \nend",
					["OptionsValues"] = {
					},
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    for i=1,40 do\n        local name, _, _, debuffType, duration, expirationTime, unitCaster, isStealable, nameplateShowPersonal, spellId, canApplyAura, isBossDebuff, nameplateShowAll, timeMod, value1, value2, value3 = UnitDebuff(unitId,i, \"player\")\n        \n        if name == \"Siphon Life\" then\n            local siphonTimer = expirationTime - GetTime()\n            if siphonTimer <= 4.5 then\n                envTable.siphonlife:Show()\n            else\n                envTable.siphonlife:Hide()\n            end\n            \n            break\n        end\n    end\n    \nend\n\n\n\n\n\n",
					["Time"] = 1604188002,
					["url"] = "",
					["Icon"] = 136188,
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.siphonlife:Hide()\n    \n    \nend",
					["Revision"] = 96,
					["semver"] = "",
					["Enabled"] = true,
					["Temp_ConstructorCode"] = "function(self, unitId, unitframe, envTable)\n    \n    envTable.siphonlife = envTablesiphonlife or Plater.CreateIconGlow (self)\n    --envTable.siphonlife:Show() --envTable.siphonlife:Hide()\n    \n    \n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["Author"] = "Gwelican-Lightbringer",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    for i=1,40 do\n        local name, _, _, debuffType, duration, expirationTime, unitCaster, isStealable, nameplateShowPersonal, spellId, canApplyAura, isBossDebuff, nameplateShowAll, timeMod, value1, value2, value3 = UnitDebuff(unitId,i, \"player\")\n        \n        if name == \"Siphon Life\" then\n            local siphonTimer = expirationTime - GetTime()\n            if siphonTimer < 4.5 then\n                envTable.siphonlife:Show()\n            else\n                envTable.siphonlife:Hide()\n            end\n            \n            break\n        end\n    end\n    \nend\n\n\n\n\n\n",
					["Desc"] = "SL_FLASH",
					["version"] = -1,
					["Prio"] = 99,
					["Name"] = "Siphon Life flash",
					["PlaterCore"] = 1,
					["SpellIds"] = {
						63106, -- [1]
					},
					["Options"] = {
					},
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["NpcNames"] = {
					},
				}, -- [16]
				{
					["ConstructorCode"] = "function(self, unitId, unitframe, envTable)\n    \n    envTable.virulentplague = envTable.virulentplague or Plater.CreateIconGlow (self)\n    --envTable.virulentplague:Show() --envTable.virulentplague:Hide()\n    \n    \n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.virulentplague:Hide()\n    \n    \nend",
					["OptionsValues"] = {
					},
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    for i=1,40 do\n        local name, _, _, debuffType, duration, expirationTime, unitCaster, isStealable, nameplateShowPersonal, spellId, canApplyAura, isBossDebuff, nameplateShowAll, timeMod, value1, value2, value3 = UnitDebuff(unitId,i, \"player\")\n        \n        if name == \"Virulent Plague\" then\n            local vpTimer = expirationTime - GetTime()\n            if vpTimer <= 8.1 then\n                envTable.virulentplague:Show()\n            else\n                envTable.virulentplague:Hide()\n            end\n            \n            break\n        end\n    end\n    \nend\n\n\n\n\n\n",
					["Time"] = 1604838089,
					["Temp_ConstructorCode"] = "function(self, unitId, unitframe, envTable)\n    \n    envTable.virulentplague = envTable.virulentplague or Plater.CreateIconGlow (self)\n    --envTable.virulentplague:Show() --envTable.virulentplague:Hide()\n    \n    \n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["Icon"] = 132099,
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.virulentplague:Hide()\n    \n    \nend",
					["Revision"] = 111,
					["Options"] = {
					},
					["Enabled"] = true,
					["Author"] = "Gwelican-Lightbringer",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend",
					["Desc"] = "VP_FLASH",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    for i=1,40 do\n        local name, _, _, debuffType, duration, expirationTime, unitCaster, isStealable, nameplateShowPersonal, spellId, canApplyAura, isBossDebuff, nameplateShowAll, timeMod, value1, value2, value3 = UnitDebuff(unitId,i, \"player\")\n        \n        if name == \"Virulent Plague\" then\n            local vpTimer = expirationTime - GetTime()\n            if vpTimer <= 8.1 then\n                envTable.virulentplague:Show()\n            else\n                envTable.virulentplague:Hide()\n            end\n            \n            break\n        end\n    end\n    \nend\n\n\n\n\n\n",
					["Prio"] = 99,
					["Name"] = "Virulent Plague",
					["PlaterCore"] = 1,
					["Temp_Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend",
					["SpellIds"] = {
						191587, -- [1]
					},
					["NpcNames"] = {
					},
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
				}, -- [17]
				{
					["ConstructorCode"] = "function(self, unitId, unitframe, envTable)\n    \n    envTable.unstableaffliction = envTable.unstableaffliction or Plater.CreateIconGlow (self)\n    --envTable.unstableaffliction:Show() --envTable.unstableaffliction:Hide()\n    \n    \n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.unstableaffliction:Hide()\n    \n    \nend",
					["OptionsValues"] = {
					},
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    for i=1,40 do\n        local name, _, _, debuffType, duration, expirationTime, unitCaster, isStealable, nameplateShowPersonal, spellId, canApplyAura, isBossDebuff, nameplateShowAll, timeMod, value1, value2, value3 = UnitDebuff(unitId,i, \"player\")\n        \n        if name == \"Unstable Affliction\" then\n            local uaTimer = expirationTime - GetTime()\n            if uaTimer <= 4.8 then\n                envTable.unstableaffliction:Show()\n            else\n                envTable.unstableaffliction:Hide()\n            end\n            \n            break\n        end\n    end\n    \nend\n\n\n\n\n\n",
					["Time"] = 1604838095,
					["Temp_ConstructorCode"] = "function(self, unitId, unitframe, envTable)\n    \n    envTable.unstableaffliction = envTable.unstableaffliction or Plater.CreateIconGlow (self)\n    --envTable.unstableaffliction:Show() --envTable.unstableaffliction:Hide()\n    \n    \n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["Icon"] = 136228,
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.unstableaffliction:Hide()\n    \n    \nend",
					["Revision"] = 109,
					["Options"] = {
					},
					["Enabled"] = true,
					["Author"] = "Gwelican-Lightbringer",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend",
					["Desc"] = "UA_FLASH",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    for i=1,40 do\n        local name, _, _, debuffType, duration, expirationTime, unitCaster, isStealable, nameplateShowPersonal, spellId, canApplyAura, isBossDebuff, nameplateShowAll, timeMod, value1, value2, value3 = UnitDebuff(unitId,i, \"player\")\n        \n        if name == \"Unstable Affliction\" then\n            local uaTimer = expirationTime - GetTime()\n            if uaTimer <= 4.8 then\n                envTable.unstableaffliction:Show()\n            else\n                envTable.unstableaffliction:Hide()\n            end\n            \n            break\n        end\n    end\n    \nend\n\n\n\n\n\n",
					["Prio"] = 99,
					["Name"] = "Unstable Affliction",
					["PlaterCore"] = 1,
					["Temp_Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend",
					["SpellIds"] = {
						316099, -- [1]
					},
					["NpcNames"] = {
					},
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
				}, -- [18]
				{
					["ConstructorCode"] = "function(self, unitId, unitframe, envTable)\n    \n    envTable.moonfire = envTable.moonfire or Plater.CreateIconGlow (self)\n    --envTable.moonfire:Show() --envTable.moonfire:Hide()\n    \n    \n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.moonfire:Hide()\n    \n    \nend",
					["OptionsValues"] = {
					},
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    for i=1,40 do\n        local name, _, _, debuffType, duration, expirationTime, unitCaster, isStealable, nameplateShowPersonal, spellId, canApplyAura, isBossDebuff, nameplateShowAll, timeMod, value1, value2, value3 = UnitDebuff(unitId,i, \"player\")\n        \n        if name == \"Moonfire\" then\n            local moonTimer = expirationTime - GetTime()\n            if moonTimer <= 6.6 then\n                envTable.moonfire:Show()\n            else\n                envTable.moonfire:Hide()\n            end\n            \n            break\n        end\n    end\n    \nend\n\n\n\n\n\n",
					["Time"] = 1604852650,
					["Temp_ConstructorCode"] = "function(self, unitId, unitframe, envTable)\n    \n    envTable.moonfire = envTable.moonfire or Plater.CreateIconGlow (self)\n    --envTable.moonfire:Show() --envTable.moonfire:Hide()\n    \n    \n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["Icon"] = 136096,
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.moonfire:Hide()\n    \n    \nend",
					["Revision"] = 117,
					["Options"] = {
					},
					["Enabled"] = true,
					["Author"] = "Gwelican-Lightbringer",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["Desc"] = "Moonfire_FLASH",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    for i=1,40 do\n        local name, _, _, debuffType, duration, expirationTime, unitCaster, isStealable, nameplateShowPersonal, spellId, canApplyAura, isBossDebuff, nameplateShowAll, timeMod, value1, value2, value3 = UnitDebuff(unitId,i, \"player\")\n        \n        if name == \"Moonfire\" then\n            local moonTimer = expirationTime - GetTime()\n            if moonTimer <= 6.6 then\n                envTable.moonfire:Show()\n            else\n                envTable.moonfire:Hide()\n            end\n            \n            break\n        end\n    end\n    \nend\n\n\n\n\n\n",
					["Prio"] = 99,
					["Name"] = "Moonfire Flash",
					["PlaterCore"] = 1,
					["Temp_Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["SpellIds"] = {
						164812, -- [1]
					},
					["NpcNames"] = {
					},
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
				}, -- [19]
				{
					["ConstructorCode"] = "function(self, unitId, unitframe, envTable)\n    \n    envTable.purgethewicked = envTable.purgethewicked or Plater.CreateIconGlow (self)\n    --envTable.purgethewicked:Show() --envTable.purgethewicked:Hide()\n    \n    \n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.purgethewicked:Hide()\n    \n    \nend",
					["OptionsValues"] = {
					},
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    for i=1,40 do\n        local name, _, _, debuffType, duration, expirationTime, unitCaster, isStealable, nameplateShowPersonal, spellId, canApplyAura, isBossDebuff, nameplateShowAll, timeMod, value1, value2, value3 = UnitDebuff(unitId,i, \"player\")\n        \n        if name == \"Purge the Wicked\" then\n            local ptwTimer = expirationTime - GetTime()\n            if ptwTimer <= 6 then\n                envTable.purgethewicked:Show()\n            else\n                envTable.purgethewicked:Hide()\n            end\n            \n            break\n        end\n    end\n    \nend\n\n\n\n\n\n",
					["Time"] = 1604838057,
					["Temp_ConstructorCode"] = "function(self, unitId, unitframe, envTable)\n    \n    envTable.purgethewicked = envTable.purgethewicked or Plater.CreateIconGlow (self)\n    --envTable.purgethewicked:Show() --envTable.purgethewicked:Hide()\n    \n    \n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["Icon"] = 236216,
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.purgethewicked:Hide()\n    \n    \nend",
					["Revision"] = 111,
					["Options"] = {
					},
					["Enabled"] = true,
					["Author"] = "Gwelican-Lightbringer",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend",
					["Desc"] = "PTW_FLASH",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    for i=1,40 do\n        local name, _, _, debuffType, duration, expirationTime, unitCaster, isStealable, nameplateShowPersonal, spellId, canApplyAura, isBossDebuff, nameplateShowAll, timeMod, value1, value2, value3 = UnitDebuff(unitId,i, \"player\")\n        \n        if name == \"Purge the Wicked\" then\n            local ptwTimer = expirationTime - GetTime()\n            if ptwTimer <= 6 then\n                envTable.purgethewicked:Show()\n            else\n                envTable.purgethewicked:Hide()\n            end\n            \n            break\n        end\n    end\n    \nend\n\n\n\n\n\n",
					["Prio"] = 99,
					["Name"] = "Purge the Wicked",
					["PlaterCore"] = 1,
					["Temp_Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend",
					["SpellIds"] = {
						204197, -- [1]
					},
					["NpcNames"] = {
					},
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
				}, -- [20]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --insert code here\n    \n    --check for marks\n    function  envTable.CheckMark (unitId, unitFrame)\n        if (not GetRaidTargetIndex(unitId)) then\n            if (scriptTable.config.onlyInCombat) then\n                if (not UnitAffectingCombat(unitId)) then\n                    return\n                end                \n            end\n            \n            SetRaidTarget(unitId, 8)\n        end       \n    end\nend\n\n\n--163520 - forsworn squad-leader\n--163618 - zolramus necromancer - The Necrotic Wake\n--164506 - anciet captain - theater of pain\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["OptionsValues"] = {
					},
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --insert code here\n    envTable.CheckMark (unitId, unitFrame)\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --insert code here\n    envTable.CheckMark (unitId, unitFrame)\nend\n\n\n",
					["Time"] = 1606741276,
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["url"] = "",
					["Icon"] = "Interface\\Worldmap\\GlowSkull_64Grey",
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --insert code here\n    \n    --check for marks\n    function  envTable.CheckMark (unitId, unitFrame)\n        if (not GetRaidTargetIndex(unitId)) then\n            if (scriptTable.config.onlyInCombat) then\n                if (not UnitAffectingCombat(unitId)) then\n                    return\n                end                \n            end\n            \n            SetRaidTarget(unitId, 8)\n        end       \n    end\nend\n\n\n--163520 - forsworn squad-leader\n--163618 - zolramus necromancer - The Necrotic Wake\n--164506 - anciet captain - theater of pain\n\n\n",
					["Enabled"] = true,
					["Revision"] = 64,
					["semver"] = "",
					["Temp_Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --insert code here\n    envTable.CheckMark (unitId, unitFrame)\nend\n\n\n",
					["Author"] = "Aelerolor-Torghast",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --insert code here\n    envTable.CheckMark (unitId, unitFrame)\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["SpellIds"] = {
					},
					["Prio"] = 99,
					["Name"] = "Auto Set Skull",
					["PlaterCore"] = 1,
					["version"] = -1,
					["Desc"] = "Auto set skull marker",
					["Options"] = {
						{
							["Type"] = 5,
							["Key"] = "option1",
							["Value"] = "Auto set a raid target Skull on the unit.",
							["Name"] = "Option 1",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 6,
							["Key"] = "option2",
							["Value"] = 0,
							["Name"] = "Option 2",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 4,
							["Key"] = "onlyInCombat",
							["Value"] = false,
							["Name"] = "Only in Combat",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "Set the mark only if the unit is in combat.",
						}, -- [3]
					},
					["NpcNames"] = {
						"163520", -- [1]
						"163618", -- [2]
						"164506", -- [3]
					},
				}, -- [21]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \nend\n\n--[=[\n\n154564 - debug\n\n168098 - empowered coldheart agent\n156212 - coldheart agent\n\n\n\n--]=]",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    Plater.StopDotAnimation(unitFrame.healthBar, unitFrame.healthBar.MainTargetDotAnimation)\n    \n    --restore the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight)    \n    \nend\n\n\n\n\n",
					["OptionsValues"] = {
					},
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    --check if can change the nameplate color\n    if (scriptTable.config.changeNameplateColor) then\n        Plater.SetNameplateColor (unitFrame, scriptTable.config.nameplateColor)\n    end\n    \nend\n\n\n\n\n",
					["Time"] = 1604607993,
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\media\\skullbones_64",
					["Enabled"] = true,
					["Revision"] = 406,
					["semver"] = "",
					["Author"] = "Izimode-Azralon",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    Plater.StopDotAnimation(unitFrame.healthBar, unitFrame.healthBar.MainTargetDotAnimation)\n    \n    unitFrame.healthBar.MainTargetDotAnimation = Plater.PlayDotAnimation(unitFrame.healthBar, 2, scriptTable.config.dotsColor, 3, 4) \n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + scriptTable.config.nameplateSizeOffset)\n    \nend\n\n\n\n\n\n\n\n",
					["Options"] = {
						{
							["Type"] = 6,
							["Key"] = "option4",
							["Value"] = 0,
							["Name"] = "Blank Space",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 5,
							["Key"] = "option6",
							["Value"] = "Enter the npc name or npcId in the \"Add Trigger\" box and hit \"Add\".",
							["Name"] = "Option 6",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 6,
							["Key"] = "option4",
							["Value"] = 0,
							["Name"] = "Blank Space",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [3]
						{
							["Type"] = 4,
							["Key"] = "changeNameplateColor",
							["Value"] = true,
							["Name"] = "Change Nameplate Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "change to true to change the color",
						}, -- [4]
						{
							["Type"] = 1,
							["Key"] = "nameplateColor",
							["Value"] = {
								1, -- [1]
								0, -- [2]
								0.52549019607843, -- [3]
								1, -- [4]
							},
							["Name"] = "Nameplate Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "",
						}, -- [5]
						{
							["Type"] = 2,
							["Max"] = 6,
							["Desc"] = "increase the nameplate height by this value",
							["Min"] = 0,
							["Key"] = "nameplateSizeOffset",
							["Value"] = 0,
							["Fraction"] = false,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Nameplate Size Offset",
						}, -- [6]
						{
							["Type"] = 6,
							["Key"] = "option4",
							["Value"] = 0,
							["Name"] = "Blank Space",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [7]
						{
							["Type"] = 1,
							["Key"] = "dotsColor",
							["Value"] = {
								1, -- [1]
								0.71372549019608, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Name"] = "Dot Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "",
						}, -- [8]
						{
							["Type"] = 6,
							["Key"] = "option4",
							["Value"] = 0,
							["Name"] = "Blank Space",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [9]
					},
					["version"] = -1,
					["PlaterCore"] = 1,
					["Desc"] = "Highlight a nameplate of an important Add. Add the unit name or NpcID into the trigger box to add more.",
					["SpellIds"] = {
					},
					["Name"] = "Unit - Main Target [P]",
					["NpcNames"] = {
						"156212", -- [1]
						"168098", -- [2]
					},
				}, -- [22]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    envTable.EnergyAmount = Plater:CreateLabel (unitFrame, \"\", 16, \"silver\");\n    envTable.EnergyAmount:SetPoint (\"bottom\", unitFrame, \"top\", 0, 18);    \n    \n    envTable.EnergyAmount.fontsize = scriptTable.config.fontSize\n    envTable.EnergyAmount.fontcolor = scriptTable.config.fontColor\n    envTable.EnergyAmount.outline = scriptTable.config.outline\n    \n    \nend\n\n--[=[\n\n164406 = Shriekwing\n164407 = Sludgefist\n162100 = kryxis the voracious\n162099 = general kaal - sanguine depths\n162329 = Xav the Unfallen - threater of pain\n--]=]",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    envTable.EnergyAmount:Hide()\nend\n\n\n",
					["OptionsValues"] = {
					},
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    local currentPower = UnitPower(unitId)\n    \n    if (currentPower and currentPower > 0) then\n        local maxPower = UnitPowerMax (unitId)\n        local percent = floor (currentPower / maxPower * 100)\n        \n        envTable.EnergyAmount.text = \"\" .. percent;\n        \n        if (scriptTable.config.showLater) then\n            local alpha = (percent -80) * 5\n            alpha = alpha / 100\n            alpha = max(0, alpha)\n            envTable.EnergyAmount:SetAlpha(alpha)\n            \n        else\n            envTable.EnergyAmount:SetAlpha(1.0)\n        end\n        \n        \n    else\n        envTable.EnergyAmount.text = \"\"\n    end\nend\n\n\n\n\n\n\n\n\n",
					["Time"] = 1604357453,
					["url"] = "",
					["Icon"] = 136048,
					["Enabled"] = true,
					["Revision"] = 233,
					["semver"] = "",
					["Author"] = "Celian-Sylvanas",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    envTable.EnergyAmount:Show()\nend\n\n\n",
					["Options"] = {
						{
							["Type"] = 6,
							["Key"] = "option1",
							["Value"] = 0,
							["Name"] = "Option 1",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 5,
							["Key"] = "option3",
							["Value"] = "Show the power of the unit above the nameplate.",
							["Name"] = "script desc",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 5,
							["Key"] = "option3",
							["Value"] = "Add the unit name or unitId in the \"Add Trigger\" field and press \"Add\".",
							["Name"] = "add trigger",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [3]
						{
							["Type"] = 6,
							["Key"] = "option2",
							["Value"] = 0,
							["Name"] = "Option 2",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [4]
						{
							["Type"] = 4,
							["Key"] = "showLater",
							["Value"] = true,
							["Name"] = "Show at 80% of Energy",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "If enabled, the energy won't start showing until the unit has 80% energy.",
						}, -- [5]
						{
							["Type"] = 6,
							["Key"] = "option2",
							["Value"] = 0,
							["Name"] = "Option 2",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [6]
						{
							["Type"] = 2,
							["Max"] = 32,
							["Desc"] = "Text size.",
							["Min"] = 8,
							["Key"] = "fontSize",
							["Value"] = 16,
							["Fraction"] = false,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Text Size",
						}, -- [7]
						{
							["Type"] = 1,
							["Key"] = "fontColor",
							["Value"] = {
								0.80392156862745, -- [1]
								0.80392156862745, -- [2]
								0.80392156862745, -- [3]
								1, -- [4]
							},
							["Name"] = "Font Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "Color of the text.",
						}, -- [8]
						{
							["Type"] = 4,
							["Key"] = "outline",
							["Value"] = true,
							["Name"] = "Enable Text Outline",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "If enabled, the text uses outline.",
						}, -- [9]
					},
					["version"] = -1,
					["PlaterCore"] = 1,
					["Desc"] = "Show the energy amount above the nameplate.",
					["SpellIds"] = {
					},
					["Name"] = "Unit - Show Energy [Plater]",
					["NpcNames"] = {
						"164406", -- [1]
						"164407", -- [2]
						"162100", -- [3]
						"162099", -- [4]
						"162329", -- [5]
						"164558", -- [6]
					},
				}, -- [23]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.NameplateSizeOffset = 1.5\n    envTable.GlowAlpha = .7\n    envTable.ShowArrow = true\n    envTable.ArrowAlpha = 1    \n    --envTable.HealthBarColor = \"gold\"\n    \n    --custom frames\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (unitFrame.healthBar)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() \n    local hsize = 1\n    local wsize = 1\n    \n    if envTable.UnitType == \"minus\" then\n        hsize =Plater.db.profile.minor_height_scale\n        wsize = Plater.db.profile.minor_width_scale\n    elseif envTable.UnitType == \"pet\" then\n        hsize = Plater.db.profile.pet_height_scale\n        wsize = Plater.db.profile.pet_width_scale\n    end\n    \n    envTable.glowEffect:SetOffset (-26*wsize, 25*wsize, 10*hsize, -13*hsize)\n    \n    --creates the spark to show the cast progress inside the health bar\n    envTable.overlaySpark = envTable.overlaySpark or Plater:CreateImage (unitFrame.healthBar)\n    envTable.overlaySpark:SetBlendMode (\"ADD\")\n    envTable.overlaySpark.width = 16\n    envTable.overlaySpark.height = 32\n    envTable.overlaySpark.alpha = 1\n    envTable.overlaySpark.texture = [[Interface\\CastingBar\\UI-CastingBar-Spark]]\n    \n    envTable.topArrow = envTable.topArrow or Plater:CreateImage (unitFrame.healthBar)\n    envTable.topArrow:SetBlendMode (\"ADD\")\n    envTable.topArrow.width = 15\n    envTable.topArrow.height = 15\n    envTable.topArrow.alpha = envTable.ArrowAlpha\n    envTable.topArrow.texture = [[Interface\\BUTTONS\\Arrow-Down-Up]]\n    \n    --scale animation\n    envTable.smallScaleAnimation = envTable.smallScaleAnimation or Plater:CreateAnimationHub (unitFrame.healthBar)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 1, 0.075, 1, 1, 1.08, 1.08)    \n    --envTable.smallScaleAnimation:Play() --envTable.smallScaleAnimation:Stop()\n    \nend",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Hide()\n    \n    envTable.overlaySpark:Hide()\n    envTable.topArrow:Hide()\n    \n    Plater.RefreshNameplateColor (unitFrame)\n    \n    envTable.smallScaleAnimation:Stop()\n    \n    --decrease the nameplate size\n    Plater.SetNameplateSize (unitFrame, envTable.OriginalWidth, envTable.OriginalHeight)\n    \nend\n\n\n",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    envTable.overlaySpark:Show()\n    \n    if (envTable.ShowArrow) then\n        envTable.topArrow:Show()\n    end\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    envTable.smallScaleAnimation:Play()\n    \n    --increase the nameplate size\n    --increase the cast bar size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    envTable.OriginalHeight = nameplateHeight\n    local nameplateWidth = Plater.db.profile.plate_config.enemynpc.health_incombat [1]\n    envTable.OriginalWidth = nameplateWidth\n    Plater.SetNameplateSize (unitFrame, envTable.OriginalWidth, envTable.OriginalHeight*envTable.NameplateSizeOffset)\n    \n    envTable.overlaySpark.height = envTable.OriginalHeight + 60\n    \n    envTable.glowEffect.Texture:SetAlpha (envTable.GlowAlpha)\n    \n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["ScriptType"] = 2,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --update the health bar color coloring from yellow to red\n    -- Plater.SetNameplateColor (unitFrame, max (envTable._CastPercent/100, .66), abs (envTable._CastPercent/100 - 1), 0, 1)\n    --Plater.SetNameplateColor (unitFrame, envTable.HealthBarColor)\n    envTable.glowEffect.Texture:SetAlpha (envTable.GlowAlpha)\n    \n    --update the percent\n    envTable.overlaySpark:SetPoint (\"left\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100)-8, -2)\n    \n    envTable.topArrow:SetPoint (\"bottomleft\", unitFrame.healthBar, \"topleft\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100)-6, 2)\n    \n    --forces the script to update on a 60Hz base\n    self.ThrottleUpdate = 0.016\n    \n    \nend\n\n\n",
					["Time"] = 1604842615,
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Hide()\n    \n    envTable.overlaySpark:Hide()\n    envTable.topArrow:Hide()\n    \n    Plater.RefreshNameplateColor (unitFrame)\n    \n    envTable.smallScaleAnimation:Stop()\n    \n    --decrease the nameplate size\n    Plater.SetNameplateSize (unitFrame, envTable.OriginalWidth, envTable.OriginalHeight)\n    \nend\n\n\n",
					["url"] = "https://wago.io/1TlaFYtDO/17",
					["Icon"] = 2065634,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.NameplateSizeOffset = 1.5\n    envTable.GlowAlpha = .7\n    envTable.ShowArrow = true\n    envTable.ArrowAlpha = 1    \n    --envTable.HealthBarColor = \"gold\"\n    \n    --custom frames\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (unitFrame.healthBar)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() \n    local hsize = 1\n    local wsize = 1\n    \n    if envTable.UnitType == \"minus\" then\n        hsize =Plater.db.profile.minor_height_scale\n        wsize = Plater.db.profile.minor_width_scale\n    elseif envTable.UnitType == \"pet\" then\n        hsize = Plater.db.profile.pet_height_scale\n        wsize = Plater.db.profile.pet_width_scale\n    end\n    \n    envTable.glowEffect:SetOffset (-26*wsize, 25*wsize, 10*hsize, -13*hsize)\n    \n    --creates the spark to show the cast progress inside the health bar\n    envTable.overlaySpark = envTable.overlaySpark or Plater:CreateImage (unitFrame.healthBar)\n    envTable.overlaySpark:SetBlendMode (\"ADD\")\n    envTable.overlaySpark.width = 16\n    envTable.overlaySpark.height = 32\n    envTable.overlaySpark.alpha = 1\n    envTable.overlaySpark.texture = [[Interface\\CastingBar\\UI-CastingBar-Spark]]\n    \n    envTable.topArrow = envTable.topArrow or Plater:CreateImage (unitFrame.healthBar)\n    envTable.topArrow:SetBlendMode (\"ADD\")\n    envTable.topArrow.width = 15\n    envTable.topArrow.height = 15\n    envTable.topArrow.alpha = envTable.ArrowAlpha\n    envTable.topArrow.texture = [[Interface\\BUTTONS\\Arrow-Down-Up]]\n    \n    --scale animation\n    envTable.smallScaleAnimation = envTable.smallScaleAnimation or Plater:CreateAnimationHub (unitFrame.healthBar)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 1, 0.075, 1, 1, 1.08, 1.08)    \n    --envTable.smallScaleAnimation:Play() --envTable.smallScaleAnimation:Stop()\n    \nend",
					["Enabled"] = true,
					["Revision"] = 1124,
					["semver"] = "1.0.16",
					["Temp_Initialization"] = "					function (scriptTable)\n						--insert code here\n						\n					end\n				",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --update the health bar color coloring from yellow to red\n    -- Plater.SetNameplateColor (unitFrame, max (envTable._CastPercent/100, .66), abs (envTable._CastPercent/100 - 1), 0, 1)\n    --Plater.SetNameplateColor (unitFrame, envTable.HealthBarColor)\n    envTable.glowEffect.Texture:SetAlpha (envTable.GlowAlpha)\n    \n    --update the percent\n    envTable.overlaySpark:SetPoint (\"left\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100)-8, -2)\n    \n    envTable.topArrow:SetPoint (\"bottomleft\", unitFrame.healthBar, \"topleft\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100)-6, 2)\n    \n    --forces the script to update on a 60Hz base\n    self.ThrottleUpdate = 0.016\n    \n    \nend\n\n\n",
					["Author"] = "Bombad�o-Azralon",
					["Initialization"] = "					function (scriptTable)\n						--insert code here\n						\n					end\n				",
					["Desc"] = "Apply several animations when the explosion orb cast starts on a Mythic Dungeon with Explosion Affix",
					["SpellIds"] = {
						240446, -- [1]
						296080, -- [2]
						296522, -- [3]
						291613, -- [4]
						293861, -- [5]
						300129, -- [6]
						314467, -- [7]
						310766, -- [8]
						314309, -- [9]
						286907, -- [10]
						264757, -- [11]
						319643, -- [12]
						304101, -- [13]
						259711, -- [14]
						276292, -- [15]
						273995, -- [16]
						294324, -- [17]
						318532, -- [18]
						308018, -- [19]
						301177, -- [20]
						315932, -- [21]
						268027, -- [22]
						269313, -- [23]
						265511, -- [24]
						294349, -- [25]
						258199, -- [26]
					},
					["Prio"] = 99,
					["Name"] = "M+ Explosive [Plater]",
					["PlaterCore"] = 1,
					["version"] = 17,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    envTable.overlaySpark:Show()\n    \n    if (envTable.ShowArrow) then\n        envTable.topArrow:Show()\n    end\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    envTable.smallScaleAnimation:Play()\n    \n    --increase the nameplate size\n    --increase the cast bar size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    envTable.OriginalHeight = nameplateHeight\n    local nameplateWidth = Plater.db.profile.plate_config.enemynpc.health_incombat [1]\n    envTable.OriginalWidth = nameplateWidth\n    Plater.SetNameplateSize (unitFrame, envTable.OriginalWidth, envTable.OriginalHeight*envTable.NameplateSizeOffset)\n    \n    envTable.overlaySpark.height = envTable.OriginalHeight + 60\n    \n    envTable.glowEffect.Texture:SetAlpha (envTable.GlowAlpha)\n    \n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["Options"] = {
					},
					["NpcNames"] = {
					},
				}, -- [24]
				{
					["ConstructorCode"] = "function(self, unitId, unitframe, envTable)\n    \n    envTable.agony = envTable.agony or Plater.CreateIconGlow (self)\n    --envTable.agony:Show() --envTable.agony:Hide()\n    \n    \n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.agony:Hide()\n    \n    \nend",
					["OptionsValues"] = {
					},
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    for i=1,40 do\n        local name, _, _, debuffType, duration, expirationTime, unitCaster, isStealable, nameplateShowPersonal, spellId, canApplyAura, isBossDebuff, nameplateShowAll, timeMod, value1, value2, value3 = UnitDebuff(unitId,i, \"player\")\n        \n        if name == \"Agony\" then\n            local agoTimer = expirationTime - GetTime()\n            if agoTimer <= 5.4 then\n                envTable.agony:Show()\n            else\n                envTable.agony:Hide()\n            end\n            \n            break\n        end\n    end\n    \nend\n\n\n\n\n\n",
					["Time"] = 1604852033,
					["Temp_ConstructorCode"] = "function(self, unitId, unitframe, envTable)\n    \n    envTable.agony = envTable.agony or Plater.CreateIconGlow (self)\n    --envTable.agony:Show() --envTable.agony:Hide()\n    \n    \n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["Icon"] = 136139,
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.agony:Hide()\n    \n    \nend",
					["Revision"] = 105,
					["Options"] = {
					},
					["Enabled"] = true,
					["Author"] = "Gwelican-Lightbringer",
					["Initialization"] = "					function (scriptTable)\n						--insert code here\n						\n					end\n				",
					["Desc"] = "AGONY_FLASH",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    for i=1,40 do\n        local name, _, _, debuffType, duration, expirationTime, unitCaster, isStealable, nameplateShowPersonal, spellId, canApplyAura, isBossDebuff, nameplateShowAll, timeMod, value1, value2, value3 = UnitDebuff(unitId,i, \"player\")\n        \n        if name == \"Agony\" then\n            local agoTimer = expirationTime - GetTime()\n            if agoTimer <= 5.4 then\n                envTable.agony:Show()\n            else\n                envTable.agony:Hide()\n            end\n            \n            break\n        end\n    end\n    \nend\n\n\n\n\n\n",
					["Prio"] = 99,
					["Name"] = "Agony Flash",
					["PlaterCore"] = 1,
					["Temp_Initialization"] = "					function (scriptTable)\n						--insert code here\n						\n					end\n				",
					["SpellIds"] = {
						980, -- [1]
					},
					["NpcNames"] = {
					},
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
				}, -- [25]
				{
					["ConstructorCode"] = "function(self, unitId, unitframe, envTable)\n    \n    envTable.sunfire = envTable.sunfire or Plater.CreateIconGlow (self)\n    --envTable.sunfire:Show() --envTable.sunfire:Hide()\n    \n    \n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.sunfire:Hide()    \n    \n    \nend",
					["OptionsValues"] = {
					},
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["ScriptType"] = 1,
					["Time"] = 1604852729,
					["Temp_ConstructorCode"] = "function(self, unitId, unitframe, envTable)\n    \n    envTable.sunfire = envTable.sunfire or Plater.CreateIconGlow (self)\n    --envTable.sunfire:Show() --envTable.sunfire:Hide()\n    \n    \n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["Icon"] = 236216,
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.sunfire:Hide()    \n    \n    \nend",
					["Revision"] = 120,
					["Options"] = {
					},
					["Enabled"] = true,
					["Temp_Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["Author"] = "Gwelican-Lightbringer",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    for i=1,40 do\n        local name, _, _, debuffType, duration, expirationTime, unitCaster, isStealable, nameplateShowPersonal, spellId, canApplyAura, isBossDebuff, nameplateShowAll, timeMod, value1, value2, value3 = UnitDebuff(unitId,i, \"player\")\n        \n        if name == \"Sunfire\" then\n            local sunTimer = expirationTime - GetTime()\n            if sunTimer <= 5.4 then\n                envTable.sunfire:Show()\n            else\n                envTable.sunfire:Hide()\n            end\n            \n            break\n        end\n    end\n    \nend\n\n\n\n\n\n",
					["Prio"] = 99,
					["Name"] = "Sunfire Flash",
					["PlaterCore"] = 1,
					["SpellIds"] = {
						164815, -- [1]
					},
					["Desc"] = "Sunfire_FLASH",
					["NpcNames"] = {
					},
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    for i=1,40 do\n        local name, _, _, debuffType, duration, expirationTime, unitCaster, isStealable, nameplateShowPersonal, spellId, canApplyAura, isBossDebuff, nameplateShowAll, timeMod, value1, value2, value3 = UnitDebuff(unitId,i, \"player\")\n        \n        if name == \"Sunfire\" then\n            local sunTimer = expirationTime - GetTime()\n            if sunTimer <= 5.4 then\n                envTable.sunfire:Show()\n            else\n                envTable.sunfire:Hide()\n            end\n            \n            break\n        end\n    end\n    \nend\n\n\n\n\n\n",
				}, -- [26]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+40, self:GetHeight()+20, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:SetVertexColor(Plater:ParseColors(scriptTable.config.flashColor))\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, scriptTable.config.flashDuration/2, 0, 1)\n    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, scriptTable.config.flashDuration/2, 1, 0)\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (unitFrame, scriptTable.config.shakeDuration, scriptTable.config.shakeAmplitude, scriptTable.config.shakeFrequency, false, false, 0, 1, 0.05, 0.1, Plater.GetPoints (unitFrame))\n    \n    --update the config for the flash here so it wont need a /reload\n    fadeIn:SetDuration (scriptTable.config.flashDuration/2)\n    fadeOut:SetDuration (scriptTable.config.flashDuration/2)\n    \n    --update the config for the skake here so it wont need a /reload\n    envTable.FrameShake.OriginalAmplitude = scriptTable.config.shakeAmplitude\n    envTable.FrameShake.OriginalDuration = scriptTable.config.shakeDuration\n    envTable.FrameShake.OriginalFrequency = scriptTable.config.shakeFrequency\nend",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    Plater.StopDotAnimation(unitFrame.castBar, envTable.dotAnimation)    \n    \n    envTable.BackgroundFlash:Stop()\n    \n    unitFrame:StopFrameShake (envTable.FrameShake)    \n    \nend\n\n\n",
					["OptionsValues"] = {
					},
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    envTable.dotAnimation = Plater.PlayDotAnimation(unitFrame.castBar, 5, scriptTable.config.dotColor, scriptTable.config.xOffset, scriptTable.config.yOffset)\n    \n    \n    envTable.BackgroundFlash:Play()\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    unitFrame:PlayFrameShake (envTable.FrameShake)\n    \n    if (envTable._CanInterrupt) then\n        if (scriptTable.config.useCastbarColor) then\n            self:SetStatusBarColor (Plater:ParseColors (scriptTable.config.castBarColor))\n        end\n    end\n    \nend\n\n\n",
					["ScriptType"] = 2,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \nend\n\n\n",
					["Time"] = 1606060061,
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    Plater.StopDotAnimation(unitFrame.castBar, envTable.dotAnimation)    \n    \n    envTable.BackgroundFlash:Stop()\n    \n    unitFrame:StopFrameShake (envTable.FrameShake)    \n    \nend\n\n\n",
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar_darkorange",
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+40, self:GetHeight()+20, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:SetVertexColor(Plater:ParseColors(scriptTable.config.flashColor))\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, scriptTable.config.flashDuration/2, 0, 1)\n    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, scriptTable.config.flashDuration/2, 1, 0)\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (unitFrame, scriptTable.config.shakeDuration, scriptTable.config.shakeAmplitude, scriptTable.config.shakeFrequency, false, false, 0, 1, 0.05, 0.1, Plater.GetPoints (unitFrame))\n    \n    --update the config for the flash here so it wont need a /reload\n    fadeIn:SetDuration (scriptTable.config.flashDuration/2)\n    fadeOut:SetDuration (scriptTable.config.flashDuration/2)\n    \n    --update the config for the skake here so it wont need a /reload\n    envTable.FrameShake.OriginalAmplitude = scriptTable.config.shakeAmplitude\n    envTable.FrameShake.OriginalDuration = scriptTable.config.shakeDuration\n    envTable.FrameShake.OriginalFrequency = scriptTable.config.shakeFrequency\nend",
					["Enabled"] = true,
					["Revision"] = 696,
					["semver"] = "",
					["Temp_Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \nend\n\n\n",
					["Author"] = "Bombad�o-Azralon",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    envTable.dotAnimation = Plater.PlayDotAnimation(unitFrame.castBar, 5, scriptTable.config.dotColor, scriptTable.config.xOffset, scriptTable.config.yOffset)\n    \n    \n    envTable.BackgroundFlash:Play()\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    unitFrame:PlayFrameShake (envTable.FrameShake)\n    \n    if (envTable._CanInterrupt) then\n        if (scriptTable.config.useCastbarColor) then\n            self:SetStatusBarColor (Plater:ParseColors (scriptTable.config.castBarColor))\n        end\n    end\n    \nend\n\n\n",
					["SpellIds"] = {
						321247, -- [1]
						334522, -- [2]
						320232, -- [3]
						319962, -- [4]
						325879, -- [5]
						324427, -- [6]
						322999, -- [7]
						325360, -- [8]
						322903, -- [9]
						324103, -- [10]
						333294, -- [11]
						333540, -- [12]
						319521, -- [13]
						326021, -- [14]
						326450, -- [15]
						322711, -- [16]
						329104, -- [17]
						295000, -- [18]
						242391, -- [19]
						320197, -- [20]
						329608, -- [21]
					},
					["Prio"] = 99,
					["Name"] = "Cast - Very Important [Plater]",
					["PlaterCore"] = 1,
					["version"] = -1,
					["Desc"] = "Highlight a very important cast applying several effects into the Cast Bar. Add spell in the Add Trigger field.",
					["Options"] = {
						{
							["Type"] = 6,
							["Key"] = "option1",
							["Value"] = 0,
							["Name"] = "Option 1",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 5,
							["Key"] = "option2",
							["Value"] = "Plays a big animation when the cast start.",
							["Name"] = "Option 2",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 5,
							["Key"] = "option2",
							["Value"] = "Enter the spell name or spellID of the Spell in the Add Trigger box and hit \"Add\".",
							["Name"] = "Option 2",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [3]
						{
							["Type"] = 6,
							["Key"] = "option4",
							["Value"] = 0,
							["Name"] = "Option 4",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [4]
						{
							["Type"] = 5,
							["Key"] = "option2",
							["Value"] = "Flash:",
							["Name"] = "Flash",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [5]
						{
							["Type"] = 2,
							["Max"] = 1.2,
							["Desc"] = "How long is the flash played when the cast starts.",
							["Min"] = 0.1,
							["Key"] = "flashDuration",
							["Value"] = 0.8,
							["Fraction"] = true,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Flash Duration",
						}, -- [6]
						{
							["Type"] = 1,
							["Key"] = "flashColor",
							["Value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["Name"] = "Flash Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "Color of the Flash",
						}, -- [7]
						{
							["Type"] = 6,
							["Key"] = "option7",
							["Value"] = 0,
							["Name"] = "Option 7",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [8]
						{
							["Type"] = 5,
							["Key"] = "option2",
							["Value"] = "Shake:",
							["Name"] = "Shake",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [9]
						{
							["Type"] = 2,
							["Max"] = 0.5,
							["Desc"] = "When the cast starts, there's a small shake in the nameplate, this settings controls how long it takes.",
							["Min"] = 0.1,
							["Key"] = "shakeDuration",
							["Value"] = 0.2,
							["Fraction"] = true,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Shake Duration",
						}, -- [10]
						{
							["Type"] = 2,
							["Max"] = 10,
							["Desc"] = "How strong is the shake.",
							["Min"] = 1,
							["Key"] = "shakeAmplitude",
							["Value"] = 5,
							["Fraction"] = false,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Shake Amplitude",
						}, -- [11]
						{
							["Type"] = 2,
							["Max"] = 80,
							["Desc"] = "How fast the shake moves.",
							["Min"] = 1,
							["Key"] = "shakeFrequency",
							["Value"] = 40,
							["Fraction"] = false,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Shake Frequency",
						}, -- [12]
						{
							["Type"] = 6,
							["Key"] = "option13",
							["Value"] = 0,
							["Name"] = "Option 13",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [13]
						{
							["Type"] = 5,
							["Key"] = "option14",
							["Value"] = "Dot Animation:",
							["Name"] = "Dot Animation",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [14]
						{
							["Type"] = 1,
							["Key"] = "dotColor",
							["Value"] = {
								0.56470588235294, -- [1]
								0.56470588235294, -- [2]
								0.56470588235294, -- [3]
								1, -- [4]
							},
							["Name"] = "Dot Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "Adjust the color of the dots around the nameplate",
						}, -- [15]
						{
							["Type"] = 2,
							["Max"] = 20,
							["Desc"] = "Adjust the width of the dots to better fit in your nameplate.",
							["Min"] = -10,
							["Key"] = "xOffset",
							["Value"] = 8,
							["Fraction"] = false,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Dot X Offset",
						}, -- [16]
						{
							["Type"] = 2,
							["Max"] = 10,
							["Desc"] = "Adjust the height of the dots to better fit in your nameplate.",
							["Min"] = -10,
							["Key"] = "yOffset",
							["Value"] = 3,
							["Fraction"] = false,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Dot Y Offset",
						}, -- [17]
						{
							["Type"] = 6,
							["Key"] = "option18",
							["Value"] = 0,
							["Name"] = "blank",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [18]
						{
							["Type"] = 6,
							["Key"] = "option18",
							["Value"] = 0,
							["Name"] = "blank",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [19]
						{
							["Type"] = 6,
							["Key"] = "option18",
							["Value"] = 0,
							["Name"] = "blank",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [20]
						{
							["Type"] = 6,
							["Key"] = "option18",
							["Value"] = 0,
							["Name"] = "blank",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [21]
						{
							["Type"] = 6,
							["Key"] = "option18",
							["Value"] = 0,
							["Name"] = "blank",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [22]
						{
							["Type"] = 6,
							["Key"] = "option18",
							["Value"] = 0,
							["Name"] = "blank",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [23]
						{
							["Type"] = 5,
							["Key"] = "option19",
							["Value"] = "Cast Bar",
							["Name"] = "Option 19",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [24]
						{
							["Type"] = 4,
							["Key"] = "useCastbarColor",
							["Value"] = true,
							["Name"] = "Use Cast Bar Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "Use cast bar color.",
						}, -- [25]
						{
							["Type"] = 1,
							["Key"] = "castBarColor",
							["Value"] = {
								0.41176470588235, -- [1]
								1, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Name"] = "Cast Bar Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "Cast bar color.",
						}, -- [26]
					},
					["NpcNames"] = {
					},
				}, -- [27]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    --settings\n    envTable.NameplateSizeOffset = scriptTable.config.castBarHeight\n    envTable.ShowArrow = scriptTable.config.showArrow\n    envTable.ArrowAlpha = scriptTable.config.arrowAlpha\n    envTable.HealthBarColor = scriptTable.config.healthBarColor\n    \n    --creates the spark to show the cast progress inside the health bar\n    envTable.overlaySpark = envTable.overlaySpark or Plater:CreateImage (unitFrame.healthBar)\n    envTable.overlaySpark:SetBlendMode (\"ADD\")\n    envTable.overlaySpark.width = 16\n    envTable.overlaySpark.height = 36\n    envTable.overlaySpark.alpha = .9\n    envTable.overlaySpark.texture = [[Interface\\AddOns\\Plater\\images\\spark3]]\n    \n    envTable.topArrow = envTable.topArrow or Plater:CreateImage (unitFrame.healthBar)\n    envTable.topArrow:SetBlendMode (\"ADD\")\n    envTable.topArrow.width = scriptTable.config.arrowWidth\n    envTable.topArrow.height = scriptTable.config.arrowHeight\n    envTable.topArrow.alpha = envTable.ArrowAlpha\n    envTable.topArrow.texture = [[Interface\\BUTTONS\\Arrow-Down-Up]]\n    \n    --scale animation\n    envTable.smallScaleAnimation = envTable.smallScaleAnimation or Plater:CreateAnimationHub (unitFrame.healthBar)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 1, 0.075, 1, 1, 1.08, 1.08)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 2, 0.075, 1, 1, 0.95, 0.95)    \n    --envTable.smallScaleAnimation:Play() --envTable.smallScaleAnimation:Stop()\n    \nend\n\n\n\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    Plater.StopDotAnimation(unitFrame.healthBar, envTable.dotAnimation)\n    \n    envTable.overlaySpark:Hide()\n    envTable.topArrow:Hide()\n    \n    Plater.RefreshNameplateColor (unitFrame)\n    \n    envTable.smallScaleAnimation:Stop()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight)\nend\n\n\n",
					["OptionsValues"] = {
					},
					["ScriptType"] = 2,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    --update the percent\n    envTable.overlaySpark:SetPoint (\"left\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100)-9, 0)\n    \n    envTable.topArrow:SetPoint (\"bottomleft\", unitFrame.healthBar, \"topleft\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100) - 4, 2 )\n    \n    --forces the script to update on a 60Hz base\n    self.ThrottleUpdate = 0\n    \n\nend\n\n\n",
					["Time"] = 1604698647,
					["url"] = "",
					["Icon"] = 2175503,
					["Enabled"] = true,
					["Revision"] = 462,
					["semver"] = "",
					["Author"] = "Bombad�o-Azralon",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    envTable.overlaySpark:Show()\n    \n    if (envTable.ShowArrow) then\n        envTable.topArrow:Show()\n    end\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    envTable.smallScaleAnimation:Play()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \n    envTable.overlaySpark.height = nameplateHeight + 5\n    \n    envTable.dotAnimation = Plater.PlayDotAnimation(unitFrame.healthBar, 2, scriptTable.config.dotColor, scriptTable.config.xOffset, scriptTable.config.yOffset)\n    \n    self:SetStatusBarColor (Plater:ParseColors (scriptTable.config.castBarColor))\nend\n\n\n\n\n\n\n",
					["Options"] = {
						{
							["Type"] = 6,
							["Key"] = "option1",
							["Value"] = 0,
							["Name"] = "Option 1",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 5,
							["Key"] = "option2",
							["Value"] = "Plays a special animation showing the explosion time.",
							["Name"] = "Option 2",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 6,
							["Key"] = "option3",
							["Value"] = 0,
							["Name"] = "Option 3",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [3]
						{
							["Type"] = 2,
							["Max"] = 6,
							["Desc"] = "Increases the cast bar height by this value",
							["Min"] = 0,
							["Key"] = "castBarHeight",
							["Value"] = 3,
							["Fraction"] = false,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Cast Bar Height Mod",
						}, -- [4]
						{
							["Type"] = 1,
							["Key"] = "castBarColor",
							["Value"] = {
								1, -- [1]
								0.5843137254902, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Name"] = "Cast Bar Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "Changes the cast bar color to this one.",
						}, -- [5]
						{
							["Type"] = 6,
							["Key"] = "option7",
							["Value"] = 0,
							["Name"] = "Option 7",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [6]
						{
							["Type"] = 5,
							["Key"] = "option6",
							["Value"] = "Arrow:",
							["Name"] = "Arrow:",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [7]
						{
							["Type"] = 4,
							["Key"] = "showArrow",
							["Value"] = true,
							["Name"] = "Show Arrow",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "Show an arrow above the nameplate showing the cast bar progress.",
						}, -- [8]
						{
							["Type"] = 2,
							["Max"] = 1,
							["Desc"] = "Arrow alpha.",
							["Min"] = 0,
							["Key"] = "arrowAlpha",
							["Value"] = 0.5,
							["Fraction"] = true,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Arrow Alpha",
						}, -- [9]
						{
							["Type"] = 2,
							["Max"] = 12,
							["Desc"] = "Arrow Width.",
							["Min"] = 4,
							["Key"] = "arrowWidth",
							["Value"] = 8,
							["Fraction"] = false,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Arrow Width",
						}, -- [10]
						{
							["Type"] = 2,
							["Max"] = 12,
							["Desc"] = "Arrow Height.",
							["Min"] = 4,
							["Key"] = "arrowHeight",
							["Value"] = 8,
							["Fraction"] = false,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Arrow Height",
						}, -- [11]
						{
							["Type"] = 6,
							["Key"] = "option13",
							["Value"] = 0,
							["Name"] = "Option 13",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [12]
						{
							["Type"] = 5,
							["Key"] = "option12",
							["Value"] = "Dot Animation:",
							["Name"] = "Dot Animation:",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [13]
						{
							["Type"] = 1,
							["Key"] = "dotColor",
							["Value"] = {
								1, -- [1]
								0.6156862745098, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Name"] = "Dot Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "Adjust the color of the dot animation.",
						}, -- [14]
						{
							["Type"] = 2,
							["Max"] = 10,
							["Desc"] = "Dot X Offset",
							["Min"] = -10,
							["Key"] = "xOffset",
							["Value"] = 4,
							["Fraction"] = false,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Dot X Offset",
						}, -- [15]
						{
							["Type"] = 2,
							["Max"] = 10,
							["Desc"] = "Dot Y Offset",
							["Min"] = -10,
							["Key"] = "yOffset",
							["Value"] = 3,
							["Fraction"] = false,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Dot Y Offset",
						}, -- [16]
					},
					["version"] = -1,
					["PlaterCore"] = 1,
					["Desc"] = "Apply several animations when the explosion orb cast starts on a Mythic Dungeon with Explosion Affix",
					["SpellIds"] = {
						240446, -- [1]
					},
					["Name"] = "Explosion Affix M+ [Plater]",
					["NpcNames"] = {
					},
				}, -- [28]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    --settings\n    envTable.NameplateSizeOffset = scriptTable.config.castBarHeight\n    envTable.ShowArrow = scriptTable.config.showArrow\n    envTable.ArrowAlpha = scriptTable.config.arrowAlpha\n    envTable.HealthBarColor = scriptTable.config.healthBarColor\n    \n    --creates the spark to show the cast progress inside the health bar\n    envTable.overlaySpark = envTable.overlaySpark or Plater:CreateImage (unitFrame.healthBar)\n    envTable.overlaySpark:SetBlendMode (\"ADD\")\n    envTable.overlaySpark.width = 16\n    envTable.overlaySpark.height = 36\n    envTable.overlaySpark.alpha = .9\n    envTable.overlaySpark.texture = [[Interface\\AddOns\\Plater\\images\\spark3]]\n    \n    envTable.topArrow = envTable.topArrow or Plater:CreateImage (unitFrame.healthBar)\n    envTable.topArrow:SetBlendMode (\"ADD\")\n    envTable.topArrow.width = scriptTable.config.arrowWidth\n    envTable.topArrow.height = scriptTable.config.arrowHeight\n    envTable.topArrow.alpha = envTable.ArrowAlpha\n    envTable.topArrow.texture = [[Interface\\BUTTONS\\Arrow-Down-Up]]\n    \n    --scale animation\n    envTable.smallScaleAnimation = envTable.smallScaleAnimation or Plater:CreateAnimationHub (unitFrame.healthBar)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 1, 0.075, 1, 1, 1.08, 1.08)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 2, 0.075, 1, 1, 0.95, 0.95)    \n    --envTable.smallScaleAnimation:Play() --envTable.smallScaleAnimation:Stop()\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (unitFrame, scriptTable.config.shakeDuration, scriptTable.config.shakeAmplitude, scriptTable.config.shakeFrequency, false, false, 0, 1, 0.05, 0.1, Plater.GetPoints (unitFrame))    \n    \n    --update the config for the skake here so it wont need a /reload\n    envTable.FrameShake.OriginalAmplitude = scriptTable.config.shakeAmplitude\n    envTable.FrameShake.OriginalDuration = scriptTable.config.shakeDuration\n    envTable.FrameShake.OriginalFrequency = scriptTable.config.shakeFrequency\nend\n\n\n\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    Plater.StopDotAnimation(unitFrame.healthBar, envTable.dotAnimation)\n    \n    envTable.overlaySpark:Hide()\n    envTable.topArrow:Hide()\n    \n    Plater.RefreshNameplateColor (unitFrame)\n    \n    envTable.smallScaleAnimation:Stop()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight)\nend\n\n\n",
					["OptionsValues"] = {
					},
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    envTable.overlaySpark:Show()\n    \n    if (envTable.ShowArrow) then\n        envTable.topArrow:Show()\n    end\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    envTable.smallScaleAnimation:Play()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \n    envTable.overlaySpark.height = nameplateHeight + 5\n    \n    envTable.dotAnimation = Plater.PlayDotAnimation(unitFrame.healthBar, 2, scriptTable.config.dotColor, scriptTable.config.xOffset, scriptTable.config.yOffset)\n    \n    \nend",
					["ScriptType"] = 2,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    --update the percent\n    envTable.overlaySpark:SetPoint (\"left\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100)-9, 0)\n    \n    envTable.topArrow:SetPoint (\"bottomleft\", unitFrame.healthBar, \"topleft\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100) - 4, 2 )\n    \n    --forces the script to update on a 60Hz base\n    self.ThrottleUpdate = 0.016\n    \n    --update the health bar color coloring from yellow to red\n    --Plater.SetNameplateColor (unitFrame, max (envTable._CastPercent/100, .66), abs (envTable._CastPercent/100 - 1), 0, 1)\n    \n    Plater.SetNameplateColor (unitFrame, envTable.HealthBarColor)\nend\n\n\n",
					["Time"] = 1606060067,
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    Plater.StopDotAnimation(unitFrame.healthBar, envTable.dotAnimation)\n    \n    envTable.overlaySpark:Hide()\n    envTable.topArrow:Hide()\n    \n    Plater.RefreshNameplateColor (unitFrame)\n    \n    envTable.smallScaleAnimation:Stop()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight)\nend\n\n\n",
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar_red",
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    --settings\n    envTable.NameplateSizeOffset = scriptTable.config.castBarHeight\n    envTable.ShowArrow = scriptTable.config.showArrow\n    envTable.ArrowAlpha = scriptTable.config.arrowAlpha\n    envTable.HealthBarColor = scriptTable.config.healthBarColor\n    \n    --creates the spark to show the cast progress inside the health bar\n    envTable.overlaySpark = envTable.overlaySpark or Plater:CreateImage (unitFrame.healthBar)\n    envTable.overlaySpark:SetBlendMode (\"ADD\")\n    envTable.overlaySpark.width = 16\n    envTable.overlaySpark.height = 36\n    envTable.overlaySpark.alpha = .9\n    envTable.overlaySpark.texture = [[Interface\\AddOns\\Plater\\images\\spark3]]\n    \n    envTable.topArrow = envTable.topArrow or Plater:CreateImage (unitFrame.healthBar)\n    envTable.topArrow:SetBlendMode (\"ADD\")\n    envTable.topArrow.width = scriptTable.config.arrowWidth\n    envTable.topArrow.height = scriptTable.config.arrowHeight\n    envTable.topArrow.alpha = envTable.ArrowAlpha\n    envTable.topArrow.texture = [[Interface\\BUTTONS\\Arrow-Down-Up]]\n    \n    --scale animation\n    envTable.smallScaleAnimation = envTable.smallScaleAnimation or Plater:CreateAnimationHub (unitFrame.healthBar)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 1, 0.075, 1, 1, 1.08, 1.08)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 2, 0.075, 1, 1, 0.95, 0.95)    \n    --envTable.smallScaleAnimation:Play() --envTable.smallScaleAnimation:Stop()\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (unitFrame, scriptTable.config.shakeDuration, scriptTable.config.shakeAmplitude, scriptTable.config.shakeFrequency, false, false, 0, 1, 0.05, 0.1, Plater.GetPoints (unitFrame))    \n    \n    --update the config for the skake here so it wont need a /reload\n    envTable.FrameShake.OriginalAmplitude = scriptTable.config.shakeAmplitude\n    envTable.FrameShake.OriginalDuration = scriptTable.config.shakeDuration\n    envTable.FrameShake.OriginalFrequency = scriptTable.config.shakeFrequency\nend\n\n\n\n\n\n\n\n",
					["Enabled"] = true,
					["Revision"] = 516,
					["semver"] = "",
					["Temp_Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    --update the percent\n    envTable.overlaySpark:SetPoint (\"left\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100)-9, 0)\n    \n    envTable.topArrow:SetPoint (\"bottomleft\", unitFrame.healthBar, \"topleft\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100) - 4, 2 )\n    \n    --forces the script to update on a 60Hz base\n    self.ThrottleUpdate = 0.016\n    \n    --update the health bar color coloring from yellow to red\n    --Plater.SetNameplateColor (unitFrame, max (envTable._CastPercent/100, .66), abs (envTable._CastPercent/100 - 1), 0, 1)\n    \n    Plater.SetNameplateColor (unitFrame, envTable.HealthBarColor)\nend\n\n\n",
					["Author"] = "Bombad�o-Azralon",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    envTable.overlaySpark:Show()\n    \n    if (envTable.ShowArrow) then\n        envTable.topArrow:Show()\n    end\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    envTable.smallScaleAnimation:Play()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \n    envTable.overlaySpark.height = nameplateHeight + 5\n    \n    envTable.dotAnimation = Plater.PlayDotAnimation(unitFrame.healthBar, 2, scriptTable.config.dotColor, scriptTable.config.xOffset, scriptTable.config.yOffset)\n    \n    \nend",
					["SpellIds"] = {
						332329, -- [1]
						320103, -- [2]
						321406, -- [3]
						335817, -- [4]
						321061, -- [5]
						320141, -- [6]
						326171, -- [7]
					},
					["Prio"] = 99,
					["Name"] = "Cast - Ultra Important [P]",
					["PlaterCore"] = 1,
					["version"] = -1,
					["Desc"] = "Used on casts that make the mob explode or transform if the cast passes.",
					["Options"] = {
						{
							["Type"] = 6,
							["Key"] = "option1",
							["Value"] = 0,
							["Name"] = "Option 1",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 5,
							["Key"] = "option2",
							["Value"] = "Plays a special animation showing the explosion time.",
							["Name"] = "Option 2",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 6,
							["Key"] = "option3",
							["Value"] = 0,
							["Name"] = "Option 3",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [3]
						{
							["Type"] = 2,
							["Max"] = 6,
							["Desc"] = "Increases the health bar height by this value",
							["Min"] = 0,
							["Key"] = "castBarHeight",
							["Value"] = 3,
							["Fraction"] = false,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Health Bar Height Mod",
						}, -- [4]
						{
							["Type"] = 1,
							["Key"] = "healthBarColor",
							["Value"] = {
								1, -- [1]
								0.5843137254902, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Name"] = "Health Bar Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "Changes the health bar color to this one.",
						}, -- [5]
						{
							["Type"] = 6,
							["Key"] = "option7",
							["Value"] = 0,
							["Name"] = "Option 7",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [6]
						{
							["Type"] = 5,
							["Key"] = "option6",
							["Value"] = "Arrow:",
							["Name"] = "Arrow:",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [7]
						{
							["Type"] = 4,
							["Key"] = "showArrow",
							["Value"] = true,
							["Name"] = "Show Arrow",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "Show an arrow above the nameplate showing the cast bar progress.",
						}, -- [8]
						{
							["Type"] = 2,
							["Max"] = 1,
							["Desc"] = "Arrow alpha.",
							["Min"] = 0,
							["Key"] = "arrowAlpha",
							["Value"] = 0.5,
							["Fraction"] = true,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Arrow Alpha",
						}, -- [9]
						{
							["Type"] = 2,
							["Max"] = 12,
							["Desc"] = "Arrow Width.",
							["Min"] = 4,
							["Key"] = "arrowWidth",
							["Value"] = 8,
							["Fraction"] = false,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Arrow Width",
						}, -- [10]
						{
							["Type"] = 2,
							["Max"] = 12,
							["Desc"] = "Arrow Height.",
							["Min"] = 4,
							["Key"] = "arrowHeight",
							["Value"] = 8,
							["Fraction"] = false,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Arrow Height",
						}, -- [11]
						{
							["Type"] = 6,
							["Key"] = "option13",
							["Value"] = 0,
							["Name"] = "Option 13",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [12]
						{
							["Type"] = 5,
							["Key"] = "option12",
							["Value"] = "Dot Animation:",
							["Name"] = "Dot Animation:",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [13]
						{
							["Type"] = 1,
							["Key"] = "dotColor",
							["Value"] = {
								1, -- [1]
								0.6156862745098, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Name"] = "Dot Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "Adjust the color of the dot animation.",
						}, -- [14]
						{
							["Type"] = 2,
							["Max"] = 10,
							["Desc"] = "Dot X Offset",
							["Min"] = -10,
							["Key"] = "xOffset",
							["Value"] = 4,
							["Fraction"] = false,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Dot X Offset",
						}, -- [15]
						{
							["Type"] = 2,
							["Max"] = 10,
							["Desc"] = "Dot Y Offset",
							["Min"] = -10,
							["Key"] = "yOffset",
							["Value"] = 3,
							["Fraction"] = false,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Dot Y Offset",
						}, -- [16]
					},
					["NpcNames"] = {
					},
				}, -- [29]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --castbar color (when can be interrupted)\n    envTable.CastbarColor = scriptTable.config.castbarColor\n    \n    --flash duration\n    local CONFIG_BACKGROUND_FLASH_DURATION = scriptTable.config.flashDuration\n    \n    --add this value to the cast bar height\n    envTable.CastBarHeightAdd = scriptTable.config.castBarHeight\n    \n    --create a fast flash above the cast bar\n    envTable.FullBarFlash = envTable.FullBarFlash or Plater.CreateFlash (self, 0.05, 1, \"white\")\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (unitFrame, scriptTable.config.shakeDuration, scriptTable.config.shakeAmplitude, scriptTable.config.shakeFrequency, false, false, 0, 1, 0.05, 0.1, Plater.GetPoints (unitFrame))\n    \n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+60, self:GetHeight()+50, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    envTable.BackgroundFlash.fadeIn = envTable.BackgroundFlash.fadeIn or Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, .75)\n    envTable.BackgroundFlash.fadeIn:SetDuration(CONFIG_BACKGROUND_FLASH_DURATION/2)\n    \n    envTable.BackgroundFlash.fadeOut = envTable.BackgroundFlash.fadeOut or Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \n    envTable.BackgroundFlash.fadeOut:SetDuration(CONFIG_BACKGROUND_FLASH_DURATION/2)\n    \n    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()    \n    \n    \n    \n    \n    \nend\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\" or Plater.ZoneInstanceType == \"none\") then\n        return\n    end    \n    \n    unitFrame.castBar:SetHeight (envTable._DefaultHeight)\n    \n    --stop the camera shake\n    unitFrame:StopFrameShake (envTable.FrameShake)\n    \n    envTable.FullBarFlash:Stop()\n    envTable.BackgroundFlash:Stop()\n    \n    unitFrame.castBar.Spark:SetHeight(unitFrame.castBar:GetHeight())\n    \nend\n\n\n\n\n\n",
					["OptionsValues"] = {
					},
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\" or Plater.ZoneInstanceType == \"none\") then\n        return\n    end\n    \n    --play flash animations\n    envTable.FullBarFlash:Play()\n    \n    --envTable.currentHeight = unitFrame.castBar:GetHeight()\n    \n    --restoring the default size (not required since it already restore in the hide script)\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n    end\n    \n    --increase the cast bar size\n    local height = self:GetHeight()\n    envTable.OriginalHeight = height\n    \n    self:SetHeight (height + envTable.CastBarHeightAdd)\n    \n    Plater.SetCastBarBorderColor (self, 1, .2, .2, 0.4)\n    \n    unitFrame:PlayFrameShake (envTable.FrameShake)\n    \n    --set the color of the cast bar to dark orange (only if can be interrupted)\n    --Plater auto set this color to default when a new cast starts, no need to reset this value at OnHide.    \n    if (envTable._CanInterrupt) then\n        if (scriptTable.config.useCastbarColor) then\n            self:SetStatusBarColor (Plater:ParseColors (envTable.CastbarColor))\n        end\n    end\n    \n    envTable.BackgroundFlash:Play()\n    \n    unitFrame.castBar.Spark:SetHeight(unitFrame.castBar:GetHeight())\n    \nend\n\n\n\n\n\n\n\n\n",
					["ScriptType"] = 2,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \nend\n\n\n",
					["Time"] = 1606060127,
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\" or Plater.ZoneInstanceType == \"none\") then\n        return\n    end    \n    \n    unitFrame.castBar:SetHeight (envTable._DefaultHeight)\n    \n    --stop the camera shake\n    unitFrame:StopFrameShake (envTable.FrameShake)\n    \n    envTable.FullBarFlash:Stop()\n    envTable.BackgroundFlash:Stop()\n    \n    unitFrame.castBar.Spark:SetHeight(unitFrame.castBar:GetHeight())\n    \nend\n\n\n\n\n\n",
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar_orange",
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --castbar color (when can be interrupted)\n    envTable.CastbarColor = scriptTable.config.castbarColor\n    \n    --flash duration\n    local CONFIG_BACKGROUND_FLASH_DURATION = scriptTable.config.flashDuration\n    \n    --add this value to the cast bar height\n    envTable.CastBarHeightAdd = scriptTable.config.castBarHeight\n    \n    --create a fast flash above the cast bar\n    envTable.FullBarFlash = envTable.FullBarFlash or Plater.CreateFlash (self, 0.05, 1, \"white\")\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (unitFrame, scriptTable.config.shakeDuration, scriptTable.config.shakeAmplitude, scriptTable.config.shakeFrequency, false, false, 0, 1, 0.05, 0.1, Plater.GetPoints (unitFrame))\n    \n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+60, self:GetHeight()+50, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    envTable.BackgroundFlash.fadeIn = envTable.BackgroundFlash.fadeIn or Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, .75)\n    envTable.BackgroundFlash.fadeIn:SetDuration(CONFIG_BACKGROUND_FLASH_DURATION/2)\n    \n    envTable.BackgroundFlash.fadeOut = envTable.BackgroundFlash.fadeOut or Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \n    envTable.BackgroundFlash.fadeOut:SetDuration(CONFIG_BACKGROUND_FLASH_DURATION/2)\n    \n    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()    \n    \n    \n    \n    \n    \nend\n\n\n",
					["Enabled"] = true,
					["Revision"] = 974,
					["semver"] = "",
					["Temp_Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \nend\n\n\n",
					["Author"] = "Tercioo-Sylvanas",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\" or Plater.ZoneInstanceType == \"none\") then\n        return\n    end\n    \n    --play flash animations\n    envTable.FullBarFlash:Play()\n    \n    --envTable.currentHeight = unitFrame.castBar:GetHeight()\n    \n    --restoring the default size (not required since it already restore in the hide script)\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n    end\n    \n    --increase the cast bar size\n    local height = self:GetHeight()\n    envTable.OriginalHeight = height\n    \n    self:SetHeight (height + envTable.CastBarHeightAdd)\n    \n    Plater.SetCastBarBorderColor (self, 1, .2, .2, 0.4)\n    \n    unitFrame:PlayFrameShake (envTable.FrameShake)\n    \n    --set the color of the cast bar to dark orange (only if can be interrupted)\n    --Plater auto set this color to default when a new cast starts, no need to reset this value at OnHide.    \n    if (envTable._CanInterrupt) then\n        if (scriptTable.config.useCastbarColor) then\n            self:SetStatusBarColor (Plater:ParseColors (envTable.CastbarColor))\n        end\n    end\n    \n    envTable.BackgroundFlash:Play()\n    \n    unitFrame.castBar.Spark:SetHeight(unitFrame.castBar:GetHeight())\n    \nend\n\n\n\n\n\n\n\n\n",
					["SpellIds"] = {
						338353, -- [1]
						334748, -- [2]
						334749, -- [3]
						320784, -- [4]
						341352, -- [5]
						341520, -- [6]
						341522, -- [7]
						336005, -- [8]
						339777, -- [9]
						331933, -- [10]
						326617, -- [11]
						324914, -- [12]
						324776, -- [13]
						326046, -- [14]
						340634, -- [15]
						319070, -- [16]
						328295, -- [17]
						317936, -- [18]
						327413, -- [19]
						319654, -- [20]
						323821, -- [21]
						320772, -- [22]
						324293, -- [23]
						330562, -- [24]
						330868, -- [25]
						341902, -- [26]
						342139, -- [27]
						342675, -- [28]
						323190, -- [29]
						332836, -- [30]
						327648, -- [31]
						328217, -- [32]
						322938, -- [33]
						340544, -- [34]
						325876, -- [35]
						325700, -- [36]
						323552, -- [37]
						332666, -- [38]
						332612, -- [39]
						332706, -- [40]
						340026, -- [41]
						294171, -- [42]
						292910, -- [43]
						294165, -- [44]
						338871, -- [45]
						330813, -- [46]
						335694, -- [47]
						327461, -- [48]
						329787, -- [49]
						304946, -- [50]
						15245, -- [51]
						276754, -- [52]
						304831, -- [53]
						277036, -- [54]
						320657, -- [55]
						294362, -- [56]
						270248, -- [57]
						292926, -- [58]
					},
					["Prio"] = 99,
					["Name"] = "Cast - Big Alert [Plater]",
					["PlaterCore"] = 1,
					["version"] = -1,
					["Desc"] = "Flash, Bounce and Red Color the CastBar border when when an important cast is happening. Add spell in the Add Trigger field.",
					["Options"] = {
						{
							["Type"] = 6,
							["Key"] = "option1",
							["Value"] = 0,
							["Name"] = "Blank Line",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 5,
							["Key"] = "option2",
							["Value"] = "Produces a notable effect in the cast bar when a spell from the 'Triggers' starts to cast.",
							["Name"] = "Option 2",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 5,
							["Key"] = "option3",
							["Value"] = "Enter the spell name or spellID of the Spell in the Add Trigger box and hit \"Add\".",
							["Name"] = "Option 3",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [3]
						{
							["Type"] = 6,
							["Key"] = "option4",
							["Value"] = 0,
							["Name"] = "Blank Space",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [4]
						{
							["Type"] = 4,
							["Key"] = "useCastbarColor",
							["Value"] = true,
							["Name"] = "Cast Bar Color Enabled",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "When enabled, changes the cast bar color,",
						}, -- [5]
						{
							["Type"] = 1,
							["Key"] = "castbarColor",
							["Value"] = {
								1, -- [1]
								0.43137254901961, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Name"] = "Cast Bar Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "Color of the cast bar.",
						}, -- [6]
						{
							["Type"] = 6,
							["Key"] = "option7",
							["Value"] = 0,
							["Name"] = "Blank Line",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [7]
						{
							["Type"] = 2,
							["Max"] = 1,
							["Desc"] = "When the cast starts it flash rapidly, adjust how fast it flashes. Value is milliseconds.",
							["Min"] = 0.05,
							["Key"] = "flashDuration",
							["Value"] = 0.4,
							["Fraction"] = true,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Flash Duration",
						}, -- [8]
						{
							["Type"] = 2,
							["Max"] = 10,
							["Desc"] = "Increases the cast bar height by this value",
							["Min"] = 0,
							["Key"] = "castBarHeight",
							["Value"] = 5,
							["Fraction"] = false,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Cast Bar Height Mod",
						}, -- [9]
						{
							["Type"] = 2,
							["Max"] = 1,
							["Desc"] = "When the cast starts, there's a small shake in the nameplate, this settings controls how long it takes.",
							["Min"] = 0.1,
							["Key"] = "shakeDuration",
							["Value"] = 0.2,
							["Fraction"] = true,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Shake Duration",
						}, -- [10]
						{
							["Type"] = 2,
							["Max"] = 100,
							["Desc"] = "How strong is the shake.",
							["Min"] = 2,
							["Key"] = "shakeAmplitude",
							["Value"] = 8,
							["Fraction"] = false,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Shake Amplitude",
						}, -- [11]
						{
							["Type"] = 2,
							["Max"] = 80,
							["Desc"] = "How fast the shake moves.",
							["Min"] = 1,
							["Key"] = "shakeFrequency",
							["Value"] = 40,
							["Fraction"] = false,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Shake Frequency",
						}, -- [12]
					},
					["NpcNames"] = {
					},
				}, -- [30]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --insert code here\n    \n    envTable.npcInfo = {\n        [164427] = {secondCastBar = true, timer = 20, timerId = 321247, altCastId = \"1\", name = \"Boom!\"}, --reanimated warrior - plaguefall\n        \n        [164414] = {secondCastBar = true, timer = 20, timerId = 321247, altCastId = \"2\", name = \"Boom!\"}, --reanimated mage - plaguefall\n        \n        [164185] = {secondCastBar = true, timer = 20, timerId = 319941, altCastId = \"3\", remaining = 5, name = GetSpellInfo(319941)}, --Echelon - Halls of Atonement\n        \n        [164567] = {secondCastBar = true, altCastId = \"dromanswrath\", debuffTimer = 323059, name = GetSpellInfo(323059), spellIcon = 323059}, --Ingra Maloch -- tirna scythe\n        \n        [165408] = {secondCastBar = true, timer = 20, timerId = 322711, altCastId = \"4\", remaining = 5, name = GetSpellInfo(322711)}, --Halkias - Refracted Sinlight - Halls of Atonement\n        \n        \n        --[154564] = {secondCastBar = true, timerId = \"Test Bar\", altCastId = \"debugcast\", remaining = 5, name = GetSpellInfo(319941), spellIcon = 319941}, --debug \"Test (1)\" BW \"Test Bar\" DBM --DEBUG\n        --[154580] = {secondCastBar = true, altCastId = \"debugcast\", debuffTimer = 204242, name = GetSpellInfo(81297), spellIcon = 81297}, --debug \"Test (1)\" BW \"Test Bar\" DBM --DEBUG\n    }\n    \n    --set the castbar config\n    local config = {\n        iconTexture = \"\",\n        iconTexcoord = {0.1, 0.9, 0.1, 0.9},\n        iconAlpha = 1,\n        iconSize = 14,\n        \n        text = \"Boom!\",\n        textSize = 9,\n        \n        texture = [[Interface\\AddOns\\Plater\\images\\bar_background]],\n        color = \"silver\",\n        \n        isChanneling = false,\n        canInterrupt = false,\n        \n        height = 2,\n        width = Plater.db.profile.plate_config.enemynpc.health_incombat[1],\n        \n        spellNameAnchor = {side = 3, x = 0, y = -2},\n        timerAnchor = {side = 5, x = 0, y = -2},\n    }    \n    \n    function envTable.ShowAltCastBar(npcInfo, unitFrame, unitId, customTime, customStart)\n        --show the cast bar\n        if (npcInfo.timerId) then\n            local barObject = Plater.GetBossTimer(npcInfo.timerId)\n            if (barObject) then\n                if (npcInfo.remaining) then\n                    local timeLeft = barObject.timer + barObject.start - GetTime()\n                    if (timeLeft > npcInfo.remaining) then\n                        return\n                    end\n                end\n                \n                config.text = npcInfo.name\n                \n                if (npcInfo.spellIcon) then\n                    local _, _, iconTexture = GetSpellInfo(npcInfo.spellIcon)\n                    config.iconTexture = iconTexture\n                else\n                    config.iconTexture = \"\"\n                end\n                \n                Plater.SetAltCastBar(unitFrame.PlateFrame, config, barObject.timer, customStart or barObject.start, npcInfo.altCastId)\n            end\n        else\n            Plater.SetAltCastBar(unitFrame.PlateFrame, config, customTime or npcInfo.timer, customStart, npcInfo.altCastId)            \n        end\n        \n        DetailsFramework:TruncateText(unitFrame.castBar2.Text, unitFrame.castBar2:GetWidth() - 16)\n    end\nend",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --insert code here\n    Plater.ClearAltCastBar(unitFrame.PlateFrame)\nend",
					["OptionsValues"] = {
					},
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    local npcInfo = envTable.npcInfo[envTable._NpcID]\n    \n    if (npcInfo and npcInfo.secondCastBar) then\n        if (npcInfo.timerId) then\n            local barObject = Plater.GetBossTimer(npcInfo.timerId)\n            if (barObject) then\n                local altCastId = Plater.GetAltCastBarAltId(unitFrame.PlateFrame)\n                if (altCastId ~= npcInfo.altCastId or not unitFrame.castBar2:IsShown()) then\n                    envTable.ShowAltCastBar(npcInfo, unitFrame, unitId)\n                end\n            end \n            \n        elseif (npcInfo.debuffTimer) then\n            if (Plater.NameplateHasAura (unitFrame, npcInfo.debuffTimer)) then\n                \n                --get the debuff timeleft\n                local name = npcInfo.name\n                local _, _, _, _, duration, expirationTime = AuraUtil.FindAuraByName(name, unitId, \"DEBUFF\")\n                local startTime = expirationTime - duration\n                \n                if (not unitFrame.castBar2:IsShown() or unitFrame.castBar2.spellStartTime < startTime) then\n                    envTable.ShowAltCastBar(npcInfo, unitFrame, unitId, duration, startTime)\n                end\n                \n            else \n                if (unitFrame.castBar2:IsShown()) then\n                    local altCastId = Plater.GetAltCastBarAltId(unitFrame.PlateFrame)\n                    if (altCastId == npcInfo.altCastId) then\n                        Plater.ClearAltCastBar(unitFrame.PlateFrame)\n                    end                   \n                end                              \n            end\n        end\n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["Time"] = 1604354364,
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\Images\\countdown_bar_icon",
					["Enabled"] = true,
					["Revision"] = 206,
					["semver"] = "",
					["Author"] = "Aelerolor-Torghast",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    local npcInfo = envTable.npcInfo[envTable._NpcID]\n    \n    if (npcInfo and npcInfo.secondCastBar) then\n        if (npcInfo.debuffTimer) then\n            if (Plater.NameplateHasAura (unitFrame, npcInfo.debuffTimer)) then\n                \n                local name = npcInfo.name\n                local _, _, _, _, duration, expirationTime = AuraUtil.FindAuraByName(name, unitId, \"DEBUFF\")\n                \n                envTable.ShowAltCastBar(npcInfo, unitFrame, unitId, duration, expirationTime-duration)\n            else\n                if (unitFrame.castBar2:IsShown()) then\n                    local altCastId = Plater.GetAltCastBarAltId(unitFrame.PlateFrame)\n                    if (altCastId == npcInfo.altCastId) then\n                        Plater.ClearAltCastBar(unitFrame.PlateFrame)\n                    end                   \n                end                              \n            end\n        else\n            envTable.ShowAltCastBar(npcInfo, unitFrame, unitId)\n        end\n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["Options"] = {
					},
					["version"] = -1,
					["PlaterCore"] = 1,
					["Desc"] = "Some units has special events without a clear way to show. This script adds a second cast bar to inform the user about it.",
					["SpellIds"] = {
					},
					["Name"] = "Countdown",
					["NpcNames"] = {
						"164427", -- [1]
						"164414", -- [2]
						"164185", -- [3]
						"164567", -- [4]
						"165408", -- [5]
					},
				}, -- [31]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --insert code here\n    \n    envTable.lifePercent = {\n        --npcId         percent divisions\n        [154564] = {80, 30},   --debug\n        [164451] = {40}, --dessia the decapirator - theater of pain\n        [164463] = {40}, --Paceran the Virulent - theater of pain\n        [164461] = {40}, -- Sathel the Accursed - theater of pain\n        [165946]= {50}, -- ~mordretha - thather of pain\n        [164501] = {70, 40, 10}, --mistcaller - tina scythe\n        [164218] = {70, 40}, --Lord Chamberlain - Halls of Atonement\n    }\n    \n    function envTable.CreateMarker(unitFrame)\n        unitFrame.healthMarker = unitFrame.healthBar:CreateTexture(nil, \"overlay\")\n        unitFrame.healthMarker:SetColorTexture(1, 1, 1)\n        unitFrame.healthMarker:SetSize(1, unitFrame.healthBar:GetHeight())\n        \n        unitFrame.healthOverlay = unitFrame.healthBar:CreateTexture(nil, \"overlay\")\n        unitFrame.healthOverlay:SetColorTexture(1, 1, 1)\n        unitFrame.healthOverlay:SetSize(1, unitFrame.healthBar:GetHeight())\n    end\n    \n    function envTable.UpdateMarkers(unitFrame)\n        local markersTable = envTable.lifePercent[envTable._NpcID]\n        if (markersTable) then\n            local unitLifePercent = envTable._HealthPercent / 100\n            for i, percent in ipairs(markersTable) do\n                percent = percent / 100\n                if (unitLifePercent > percent) then\n                    if (not unitFrame.healthMarker) then\n                        envTable.CreateMarker(unitFrame)\n                    end\n                    \n                    unitFrame.healthMarker:Show()\n                    local width = unitFrame.healthBar:GetWidth()\n                    unitFrame.healthMarker:SetPoint(\"left\", unitFrame.healthBar, \"left\", width*percent, 0)\n                    \n                    local overlaySize = width * (unitLifePercent - percent)\n                    unitFrame.healthOverlay:SetWidth(overlaySize)\n                    unitFrame.healthOverlay:SetPoint(\"left\", unitFrame.healthMarker, \"right\", 0, 0)\n                    \n                    unitFrame.healthMarker:SetVertexColor(Plater:ParseColors(scriptTable.config.indicatorColor))\n                    unitFrame.healthMarker:SetAlpha(scriptTable.config.indicatorAlpha)\n                    \n                    unitFrame.healthOverlay:SetVertexColor(Plater:ParseColors(scriptTable.config.fillColor))\n                    unitFrame.healthOverlay:SetAlpha(scriptTable.config.fillAlpha)\n                    \n                    return\n                end\n            end --end for\n            \n            if (unitFrame.healthMarker and unitFrame.healthMarker:IsShown()) then\n                unitFrame.healthMarker:Hide()\n                unitFrame.healthOverlay:Hide()\n            end\n        end\n    end\nend      \n\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    if (unitFrame.healthMarker) then\n        unitFrame.healthMarker:Hide()\n        unitFrame.healthOverlay:Hide()\n    end\nend\n\n\n\n\n",
					["OptionsValues"] = {
					},
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --insert code here\n    envTable.UpdateMarkers(unitFrame)\nend\n\n\n",
					["Time"] = 1606506781,
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\health_indicator",
					["Enabled"] = true,
					["Revision"] = 109,
					["semver"] = "",
					["Author"] = "Aelerolor-Torghast",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --insert code here\n    envTable.UpdateMarkers(unitFrame)\nend\n\n\n",
					["Options"] = {
						{
							["Type"] = 5,
							["Key"] = "option1",
							["Value"] = "Add markers into the health bar to remind you about boss abilities at life percent.",
							["Name"] = "Option 1",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 6,
							["Key"] = "",
							["Value"] = 0,
							["Name"] = "blank line",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 1,
							["Key"] = "indicatorColor",
							["Value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["Name"] = "Vertical Line Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "Indicator color.",
						}, -- [3]
						{
							["Type"] = 2,
							["Max"] = 1,
							["Desc"] = "Indicator alpha.",
							["Min"] = 0.1,
							["Key"] = "indicatorAlpha",
							["Value"] = 0.79,
							["Fraction"] = true,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Vertical Line Alpha",
						}, -- [4]
						{
							["Type"] = 6,
							["Key"] = "",
							["Value"] = 0,
							["Name"] = "blank line",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [5]
						{
							["Type"] = 1,
							["Key"] = "fillColor",
							["Value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["Name"] = "Fill Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "Fill color.",
						}, -- [6]
						{
							["Type"] = 2,
							["Max"] = 1,
							["Desc"] = "Fill alpha.",
							["Min"] = 0,
							["Key"] = "fillAlpha",
							["Value"] = 0.2,
							["Fraction"] = true,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Fill Alpha",
						}, -- [7]
					},
					["version"] = -1,
					["PlaterCore"] = 1,
					["Desc"] = "Place a marker into the health bar to indicate when the unit will change phase or cast an important spell.",
					["SpellIds"] = {
					},
					["Name"] = "Unit - Health Markers [P]",
					["NpcNames"] = {
						"164451", -- [1]
						"164463", -- [2]
						"164461", -- [3]
						"165946", -- [4]
						"164501", -- [5]
						"164218", -- [6]
					},
				}, -- [32]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    envTable.movingArrow = envTable.movingArrow or Plater:CreateImage (self, [[Interface\\PETBATTLES\\PetBattle-StatIcons]], 16, self:GetHeight(), \"background\", {0, 15/32, 18/32, 30/32})\n    \n    --envTable.movingArrow.color = scriptTable.config.arrowColor\n    envTable.movingArrow:SetAlpha (scriptTable.config.arrowAlpha)\n    envTable.movingArrow:SetDesaturated (scriptTable.config.desaturateArrow)\n    \n    envTable.movingAnimation = envTable.movingAnimation or Plater:CreateAnimationHub (envTable.movingArrow, \n        function() \n            envTable.movingArrow:Show() \n            envTable.movingArrow:SetPoint(\"left\", 0, 0)\n        end, \n        function() envTable.movingArrow:Hide() end)\n    \n    envTable.movingAnimation:SetLooping (\"REPEAT\")\n    \n    envTable.arrowAnimation = envTable.arrowAnimation or Plater:CreateAnimation (envTable.movingAnimation, \"translation\", 1, 0.20, self:GetWidth()-16, 0)\n    \n    envTable.arrowAnimation:SetDuration(scriptTable.config.animSpeed)\nend\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    envTable.movingAnimation:Stop()\nend\n\n\n",
					["OptionsValues"] = {
					},
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    envTable.movingAnimation:Play()\nend\n\n\n",
					["ScriptType"] = 2,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \nend",
					["Time"] = 1606060041,
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    envTable.movingAnimation:Stop()\nend\n\n\n",
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar_frontal",
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    envTable.movingArrow = envTable.movingArrow or Plater:CreateImage (self, [[Interface\\PETBATTLES\\PetBattle-StatIcons]], 16, self:GetHeight(), \"background\", {0, 15/32, 18/32, 30/32})\n    \n    --envTable.movingArrow.color = scriptTable.config.arrowColor\n    envTable.movingArrow:SetAlpha (scriptTable.config.arrowAlpha)\n    envTable.movingArrow:SetDesaturated (scriptTable.config.desaturateArrow)\n    \n    envTable.movingAnimation = envTable.movingAnimation or Plater:CreateAnimationHub (envTable.movingArrow, \n        function() \n            envTable.movingArrow:Show() \n            envTable.movingArrow:SetPoint(\"left\", 0, 0)\n        end, \n        function() envTable.movingArrow:Hide() end)\n    \n    envTable.movingAnimation:SetLooping (\"REPEAT\")\n    \n    envTable.arrowAnimation = envTable.arrowAnimation or Plater:CreateAnimation (envTable.movingAnimation, \"translation\", 1, 0.20, self:GetWidth()-16, 0)\n    \n    envTable.arrowAnimation:SetDuration(scriptTable.config.animSpeed)\nend\n\n\n\n\n",
					["Enabled"] = true,
					["Revision"] = 463,
					["semver"] = "",
					["Temp_Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \nend",
					["Author"] = "Izimode-Azralon",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    envTable.movingAnimation:Play()\nend\n\n\n",
					["SpellIds"] = {
						323489, -- [1]
						323496, -- [2]
						319941, -- [3]
						319592, -- [4]
						334266, -- [5]
						325258, -- [6]
						334913, -- [7]
						326221, -- [8]
						322936, -- [9]
						323236, -- [10]
						321834, -- [11]
						336752, -- [12]
						325418, -- [13]
						324667, -- [14]
						327233, -- [15]
						324368, -- [16]
						324205, -- [17]
						323943, -- [18]
						319713, -- [19]
						320596, -- [20]
						320729, -- [21]
						323608, -- [22]
						330614, -- [23]
						320063, -- [24]
						332708, -- [25]
						334023, -- [26]
						317231, -- [27]
						317943, -- [28]
						320966, -- [29]
						334053, -- [30]
						328458, -- [31]
						321968, -- [32]
						331718, -- [33]
						325793, -- [34]
						330453, -- [35]
						326997, -- [36]
						334051, -- [37]
						292903, -- [38]
						330843, -- [39]
						294173, -- [40]
						189200, -- [41]
					},
					["Prio"] = 99,
					["Name"] = "Cast - Frontal Cone [Plater]",
					["PlaterCore"] = 1,
					["version"] = -1,
					["Desc"] = "Does an animation for casts that affect the frontal area of the enemy. Add spell in the Add Trigger field.",
					["Options"] = {
						{
							["Type"] = 6,
							["Key"] = "option1",
							["Value"] = 0,
							["Name"] = "Option 1",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 5,
							["Key"] = "option2",
							["Value"] = "Produces an effect to indicate the spell will hit players in front of the enemy.",
							["Name"] = "Option 2",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 5,
							["Key"] = "option4",
							["Value"] = "Enter the spell name or spellID of the Spell in the Add Trigger box and hit \"Add\".",
							["Name"] = "Option 4",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [3]
						{
							["Type"] = 6,
							["Key"] = "option3",
							["Value"] = 0,
							["Name"] = "Option 3",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [4]
						{
							["Type"] = 2,
							["Max"] = 1,
							["Desc"] = "Set the alpha of the moving arrow",
							["Min"] = 0,
							["Key"] = "arrowAlpha",
							["Value"] = 0.275,
							["Fraction"] = true,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Arrow Alpha",
						}, -- [5]
						{
							["Type"] = 2,
							["Max"] = 1,
							["Desc"] = "Time that takes for an arrow to travel from the to right.",
							["Min"] = 0,
							["Key"] = "animSpeed",
							["Value"] = 0.2,
							["Fraction"] = true,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Animation Speed",
						}, -- [6]
						{
							["Type"] = 4,
							["Key"] = "desaturateArrow",
							["Value"] = false,
							["Name"] = "Use White Arrow",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "If enabled, the arrow color will be desaturated.",
						}, -- [7]
					},
					["NpcNames"] = {
					},
				}, -- [33]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --castbar color (when can be interrupted)\n    envTable.CastbarColor = scriptTable.config.castbarColor\n    \n    --flash duration\n    local CONFIG_BACKGROUND_FLASH_DURATION = scriptTable.config.flashDuration\n    \n    --add this value to the cast bar height\n    envTable.CastBarHeightAdd = scriptTable.config.castBarHeight\n    \n    --create a fast flash above the cast bar\n    envTable.FullBarFlash = envTable.FullBarFlash or Plater.CreateFlash (self, 0.05, 1, \"white\")\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (unitFrame, scriptTable.config.shakeDuration, scriptTable.config.shakeAmplitude, scriptTable.config.shakeFrequency, false, false, 0, 1, 0.05, 0.1, Plater.GetPoints (unitFrame))\n    \n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+60, self:GetHeight()+50, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    envTable.BackgroundFlash.fadeIn = envTable.BackgroundFlash.fadeIn or Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, .75)\n    envTable.BackgroundFlash.fadeIn:SetDuration(CONFIG_BACKGROUND_FLASH_DURATION/2)\n    \n    envTable.BackgroundFlash.fadeOut = envTable.BackgroundFlash.fadeOut or Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \n    envTable.BackgroundFlash.fadeOut:SetDuration(CONFIG_BACKGROUND_FLASH_DURATION/2)\n    \n    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()    \n    \n    \n    \n    \n    \nend\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    if (not Plater.IsPlayerTank()) then\n        return\n    end\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end    \n    \n    unitFrame.castBar:SetHeight (envTable._DefaultHeight)\n    \n    --stop the camera shake\n    unitFrame:StopFrameShake (envTable.FrameShake)\n    \n    envTable.FullBarFlash:Stop()\n    envTable.BackgroundFlash:Stop()\n    \n    unitFrame.castBar.Spark:SetHeight(unitFrame.castBar:GetHeight())\n    \nend\n\n\n\n\n\n",
					["OptionsValues"] = {
					},
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    if (not Plater.IsPlayerTank()) then\n        return\n    end\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end\n    \n    --play flash animations\n    envTable.FullBarFlash:Play()\n    \n    --envTable.currentHeight = unitFrame.castBar:GetHeight()\n    \n    --restoring the default size (not required since it already restore in the hide script)\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n    end\n    \n    --increase the cast bar size\n    local height = self:GetHeight()\n    envTable.OriginalHeight = height\n    \n    self:SetHeight (height + envTable.CastBarHeightAdd)\n    \n    Plater.SetCastBarBorderColor (self, 1, .2, .2, 0.4)\n    \n    unitFrame:PlayFrameShake (envTable.FrameShake)\n    \n    --set the color of the cast bar to dark orange (only if can be interrupted)\n    --Plater auto set this color to default when a new cast starts, no need to reset this value at OnHide.    \n    if (envTable._CanInterrupt) then\n        if (scriptTable.config.useCastbarColor) then\n            self:SetStatusBarColor (Plater:ParseColors (envTable.CastbarColor))\n        end\n    end\n    \n    envTable.BackgroundFlash:Play()\n    \n    unitFrame.castBar.Spark:SetHeight(unitFrame.castBar:GetHeight())\n    \nend\n\n\n\n\n\n\n\n\n",
					["ScriptType"] = 2,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \nend\n\n\n",
					["Time"] = 1606060046,
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    if (not Plater.IsPlayerTank()) then\n        return\n    end\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end    \n    \n    unitFrame.castBar:SetHeight (envTable._DefaultHeight)\n    \n    --stop the camera shake\n    unitFrame:StopFrameShake (envTable.FrameShake)\n    \n    envTable.FullBarFlash:Stop()\n    envTable.BackgroundFlash:Stop()\n    \n    unitFrame.castBar.Spark:SetHeight(unitFrame.castBar:GetHeight())\n    \nend\n\n\n\n\n\n",
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar_tank",
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --castbar color (when can be interrupted)\n    envTable.CastbarColor = scriptTable.config.castbarColor\n    \n    --flash duration\n    local CONFIG_BACKGROUND_FLASH_DURATION = scriptTable.config.flashDuration\n    \n    --add this value to the cast bar height\n    envTable.CastBarHeightAdd = scriptTable.config.castBarHeight\n    \n    --create a fast flash above the cast bar\n    envTable.FullBarFlash = envTable.FullBarFlash or Plater.CreateFlash (self, 0.05, 1, \"white\")\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (unitFrame, scriptTable.config.shakeDuration, scriptTable.config.shakeAmplitude, scriptTable.config.shakeFrequency, false, false, 0, 1, 0.05, 0.1, Plater.GetPoints (unitFrame))\n    \n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+60, self:GetHeight()+50, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    envTable.BackgroundFlash.fadeIn = envTable.BackgroundFlash.fadeIn or Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, .75)\n    envTable.BackgroundFlash.fadeIn:SetDuration(CONFIG_BACKGROUND_FLASH_DURATION/2)\n    \n    envTable.BackgroundFlash.fadeOut = envTable.BackgroundFlash.fadeOut or Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \n    envTable.BackgroundFlash.fadeOut:SetDuration(CONFIG_BACKGROUND_FLASH_DURATION/2)\n    \n    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()    \n    \n    \n    \n    \n    \nend\n\n\n",
					["Enabled"] = true,
					["Revision"] = 835,
					["semver"] = "",
					["Temp_Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \nend\n\n\n",
					["Author"] = "Tercioo-Sylvanas",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    if (not Plater.IsPlayerTank()) then\n        return\n    end\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end\n    \n    --play flash animations\n    envTable.FullBarFlash:Play()\n    \n    --envTable.currentHeight = unitFrame.castBar:GetHeight()\n    \n    --restoring the default size (not required since it already restore in the hide script)\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n    end\n    \n    --increase the cast bar size\n    local height = self:GetHeight()\n    envTable.OriginalHeight = height\n    \n    self:SetHeight (height + envTable.CastBarHeightAdd)\n    \n    Plater.SetCastBarBorderColor (self, 1, .2, .2, 0.4)\n    \n    unitFrame:PlayFrameShake (envTable.FrameShake)\n    \n    --set the color of the cast bar to dark orange (only if can be interrupted)\n    --Plater auto set this color to default when a new cast starts, no need to reset this value at OnHide.    \n    if (envTable._CanInterrupt) then\n        if (scriptTable.config.useCastbarColor) then\n            self:SetStatusBarColor (Plater:ParseColors (envTable.CastbarColor))\n        end\n    end\n    \n    envTable.BackgroundFlash:Play()\n    \n    unitFrame.castBar.Spark:SetHeight(unitFrame.castBar:GetHeight())\n    \nend\n\n\n\n\n\n\n\n\n",
					["SpellIds"] = {
						321828, -- [1]
					},
					["Prio"] = 99,
					["Name"] = "Cast - Tank Interrupt [P]",
					["PlaterCore"] = 1,
					["version"] = -1,
					["Desc"] = "Cast alert for abilities which only the tank can interrupt.",
					["Options"] = {
						{
							["Type"] = 6,
							["Key"] = "option1",
							["Value"] = 0,
							["Name"] = "Blank Line",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 5,
							["Key"] = "option2",
							["Value"] = "Produces a notable effect in the cast bar when a spell from the 'Triggers' starts to cast.",
							["Name"] = "Option 2",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 5,
							["Key"] = "option3",
							["Value"] = "Enter the spell name or spellID of the Spell in the Add Trigger box and hit \"Add\".",
							["Name"] = "Option 3",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [3]
						{
							["Type"] = 6,
							["Key"] = "option4",
							["Value"] = 0,
							["Name"] = "Blank Space",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [4]
						{
							["Type"] = 4,
							["Key"] = "useCastbarColor",
							["Value"] = true,
							["Name"] = "Cast Bar Color Enabled",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "When enabled, changes the cast bar color,",
						}, -- [5]
						{
							["Type"] = 1,
							["Key"] = "castbarColor",
							["Value"] = {
								1, -- [1]
								0.43137254901961, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Name"] = "Cast Bar Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "Color of the cast bar.",
						}, -- [6]
						{
							["Type"] = 6,
							["Key"] = "option7",
							["Value"] = 0,
							["Name"] = "Blank Line",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [7]
						{
							["Type"] = 2,
							["Max"] = 1,
							["Desc"] = "When the cast starts it flash rapidly, adjust how fast it flashes. Value is milliseconds.",
							["Min"] = 0.05,
							["Key"] = "flashDuration",
							["Value"] = 0.2,
							["Fraction"] = true,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Flash Duration",
						}, -- [8]
						{
							["Type"] = 2,
							["Max"] = 10,
							["Desc"] = "Increases the cast bar height by this value",
							["Min"] = 0,
							["Key"] = "castBarHeight",
							["Value"] = 0,
							["Fraction"] = false,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Cast Bar Height Mod",
						}, -- [9]
						{
							["Type"] = 2,
							["Max"] = 1,
							["Desc"] = "When the cast starts, there's a small shake in the nameplate, this settings controls how long it takes.",
							["Min"] = 0.1,
							["Key"] = "shakeDuration",
							["Value"] = 0.1,
							["Fraction"] = true,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Shake Duration",
						}, -- [10]
						{
							["Type"] = 2,
							["Max"] = 200,
							["Desc"] = "How strong is the shake.",
							["Min"] = 10,
							["Key"] = "shakeAmplitude",
							["Value"] = 25,
							["Fraction"] = false,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Shake Amplitude",
						}, -- [11]
						{
							["Type"] = 2,
							["Max"] = 80,
							["Desc"] = "How fast the shake moves.",
							["Min"] = 1,
							["Key"] = "shakeFrequency",
							["Value"] = 30,
							["Fraction"] = false,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Shake Frequency",
						}, -- [12]
					},
					["NpcNames"] = {
					},
				}, -- [34]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.ChangeColor = true\n    envTable.ChangeTextSize = true\n    envTable.CastbarColor = \"orangered\"\n    \n    envTable.GlowOptions = {\n        glowType = \"ants\",\n        N = 7, -- number of lines. Defaul value is 8;\n        frequency = 0.25, -- frequency, set to negative to inverse direction of rotation. Default value is 0.125;\n        scale = 0.85, -- scale of particles\n        xOffset = 0,\n        yOffset = 0, -- offset of glow relative to region border;\n        key = \"\", -- key of glow, allows for multiple glows on one frame;\n    }\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    local CONFIG_BACKGROUND_FLASH_DURATION = 0.8 --0.8\n    local CONFIG_SHAKE_DURATION = 0.2 --0.2\n    local CONFIG_SHAKE_AMPLITUDE = 5 --5\n    \n    envTable.CastBarHeightAdd = 1.25\n    \n    --create a glow effect in the border of the cast bar\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateIconGlow (self)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() \n    \n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+40, self:GetHeight()+30, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\",0, 0)\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, 1)\n    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \n    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (unitFrame, CONFIG_SHAKE_DURATION, CONFIG_SHAKE_AMPLITUDE, 35, false, false, 0, 1, 0.05, 0.1, Plater.GetPoints (unitFrame))    \n    \n    \n    --update the config for the flash here so it wont need a /reload\n    fadeIn:SetDuration (CONFIG_BACKGROUND_FLASH_DURATION/2)\n    fadeOut:SetDuration (CONFIG_BACKGROUND_FLASH_DURATION/2)    \n    \n    --update the config for the skake here so it wont need a /reload\n    envTable.FrameShake.OriginalAmplitude = CONFIG_SHAKE_AMPLITUDE\n    envTable.FrameShake.OriginalDuration = CONFIG_SHAKE_DURATION  \n    \nend",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --restore the cast bar to its original height\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n        envTable.OriginalHeight = nil\n    end\n    \n    if (envTable.ChangeTextSize and envTable.OriginalText) then\n        Plater:SetFontSize (self.Text, envTable.OriginalText)\n        envTable.OriginalText = nil\n    end\n    \n    --stop the camera shake\n    envTable.glowEffect:Hide()\n    Plater.StopGlow(self, \"ants\")\n    envTable.BackgroundFlash:Stop()\n    unitFrame:StopFrameShake (envTable.FrameShake)    \n    \nend",
					["OptionsValues"] = {
					},
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    --set the color of the cast bar to dark orange (only if can be interrupted)\n    --Plater auto set this color to default when a new cast starts, no need to reset this value at OnHide.    \n    if (envTable._CanInterrupt and envTable.ChangeColor) then\n        self:SetStatusBarColor (Plater:ParseColors (envTable.CastbarColor))\n    end\n    \n    --restoring the default size (not required since it already restore in the hide script)\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n    end\n    \n    if (envTable.ChangeTextSize and envTable.OriginalText) then\n        Plater:SetFontSize (self.Text, envTable.OriginalText)\n    end\n    \n    --increase the cast bar size\n    local height = self:GetHeight()\n    envTable.OriginalHeight = height\n    \n    if (envTable.ChangeTextSize) then\n        local text = Plater:GetFontSize(self.Text)\n        envTable.OriginalText = text\n        Plater:SetFontSize (self.Text, math.ceil(text * envTable.CastBarHeightAdd))    \n    end\n    \n    self:SetHeight (math.ceil(height * envTable.CastBarHeightAdd))\n    \n    --play flash animations\n    Plater.StartGlow(self, \"white\", envTable.GlowOptions)\n    envTable.BackgroundFlash:Play()\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    unitFrame:PlayFrameShake (envTable.FrameShake)\n    \n    \nend",
					["ScriptType"] = 2,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["Time"] = 1606060032,
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --restore the cast bar to its original height\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n        envTable.OriginalHeight = nil\n    end\n    \n    if (envTable.ChangeTextSize and envTable.OriginalText) then\n        Plater:SetFontSize (self.Text, envTable.OriginalText)\n        envTable.OriginalText = nil\n    end\n    \n    --stop the camera shake\n    envTable.glowEffect:Hide()\n    Plater.StopGlow(self, \"ants\")\n    envTable.BackgroundFlash:Stop()\n    unitFrame:StopFrameShake (envTable.FrameShake)    \n    \nend",
					["url"] = "https://wago.io/8s7Mcrve2/25",
					["Icon"] = "INTERFACE\\ICONS\\Ability_Racial_OrbitalStrike",
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.ChangeColor = true\n    envTable.ChangeTextSize = true\n    envTable.CastbarColor = \"orangered\"\n    \n    envTable.GlowOptions = {\n        glowType = \"ants\",\n        N = 7, -- number of lines. Defaul value is 8;\n        frequency = 0.25, -- frequency, set to negative to inverse direction of rotation. Default value is 0.125;\n        scale = 0.85, -- scale of particles\n        xOffset = 0,\n        yOffset = 0, -- offset of glow relative to region border;\n        key = \"\", -- key of glow, allows for multiple glows on one frame;\n    }\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    local CONFIG_BACKGROUND_FLASH_DURATION = 0.8 --0.8\n    local CONFIG_SHAKE_DURATION = 0.2 --0.2\n    local CONFIG_SHAKE_AMPLITUDE = 5 --5\n    \n    envTable.CastBarHeightAdd = 1.25\n    \n    --create a glow effect in the border of the cast bar\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateIconGlow (self)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() \n    \n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+40, self:GetHeight()+30, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\",0, 0)\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, 1)\n    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \n    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (unitFrame, CONFIG_SHAKE_DURATION, CONFIG_SHAKE_AMPLITUDE, 35, false, false, 0, 1, 0.05, 0.1, Plater.GetPoints (unitFrame))    \n    \n    \n    --update the config for the flash here so it wont need a /reload\n    fadeIn:SetDuration (CONFIG_BACKGROUND_FLASH_DURATION/2)\n    fadeOut:SetDuration (CONFIG_BACKGROUND_FLASH_DURATION/2)    \n    \n    --update the config for the skake here so it wont need a /reload\n    envTable.FrameShake.OriginalAmplitude = CONFIG_SHAKE_AMPLITUDE\n    envTable.FrameShake.OriginalDuration = CONFIG_SHAKE_DURATION  \n    \nend",
					["Enabled"] = true,
					["Revision"] = 2417,
					["semver"] = "1.0.24",
					["Temp_Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["Author"] = "Tercioo-Sylvanas",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    --set the color of the cast bar to dark orange (only if can be interrupted)\n    --Plater auto set this color to default when a new cast starts, no need to reset this value at OnHide.    \n    if (envTable._CanInterrupt and envTable.ChangeColor) then\n        self:SetStatusBarColor (Plater:ParseColors (envTable.CastbarColor))\n    end\n    \n    --restoring the default size (not required since it already restore in the hide script)\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n    end\n    \n    if (envTable.ChangeTextSize and envTable.OriginalText) then\n        Plater:SetFontSize (self.Text, envTable.OriginalText)\n    end\n    \n    --increase the cast bar size\n    local height = self:GetHeight()\n    envTable.OriginalHeight = height\n    \n    if (envTable.ChangeTextSize) then\n        local text = Plater:GetFontSize(self.Text)\n        envTable.OriginalText = text\n        Plater:SetFontSize (self.Text, math.ceil(text * envTable.CastBarHeightAdd))    \n    end\n    \n    self:SetHeight (math.ceil(height * envTable.CastBarHeightAdd))\n    \n    --play flash animations\n    Plater.StartGlow(self, \"white\", envTable.GlowOptions)\n    envTable.BackgroundFlash:Play()\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    unitFrame:PlayFrameShake (envTable.FrameShake)\n    \n    \nend",
					["SpellIds"] = {
						258153, -- [1]
						258313, -- [2]
						274569, -- [3]
						278020, -- [4]
						261635, -- [5]
						272700, -- [6]
						268030, -- [7]
						265368, -- [8]
						264520, -- [9]
						265407, -- [10]
						278567, -- [11]
						278602, -- [12]
						258128, -- [13]
						257791, -- [14]
						258938, -- [15]
						265089, -- [16]
						272183, -- [17]
						256060, -- [18]
						257397, -- [19]
						269972, -- [20]
						270901, -- [21]
						270492, -- [22]
						263215, -- [23]
						268797, -- [24]
						262554, -- [25]
						253517, -- [26]
						255041, -- [27]
						252781, -- [28]
						250368, -- [29]
						258777, -- [30]
						278504, -- [31]
						266106, -- [32]
						257732, -- [33]
						268309, -- [34]
						269302, -- [35]
						263202, -- [36]
						257784, -- [37]
						278755, -- [38]
						272180, -- [39]
						263066, -- [40]
						267273, -- [41]
						265912, -- [42]
						274438, -- [43]
						268317, -- [44]
						268375, -- [45]
						276767, -- [46]
						264105, -- [47]
						265876, -- [48]
						270464, -- [49]
						278961, -- [50]
						265468, -- [51]
						256897, -- [52]
						280604, -- [53]
						268702, -- [54]
						255824, -- [55]
						253583, -- [56]
						250096, -- [57]
						278456, -- [58]
						262092, -- [59]
						257270, -- [60]
						267818, -- [61]
						265091, -- [62]
						262540, -- [63]
						263318, -- [64]
						263959, -- [65]
						257069, -- [66]
						256849, -- [67]
						267459, -- [68]
						253544, -- [69]
						268008, -- [70]
						267981, -- [71]
						272659, -- [72]
						264396, -- [73]
						257736, -- [74]
						264390, -- [75]
						255952, -- [76]
						257426, -- [77]
						274400, -- [78]
						272609, -- [79]
						269843, -- [80]
						269029, -- [81]
						272827, -- [82]
						269266, -- [83]
						263912, -- [84]
						264923, -- [85]
						258864, -- [86]
						256955, -- [87]
						265540, -- [88]
						260793, -- [89]
						270003, -- [90]
						270507, -- [91]
						257337, -- [92]
						268415, -- [93]
						275907, -- [94]
						268865, -- [95]
						260669, -- [96]
						260280, -- [97]
						253239, -- [98]
						265541, -- [99]
						250258, -- [100]
						256709, -- [101]
						277596, -- [102]
						276268, -- [103]
						265372, -- [104]
						263905, -- [105]
						265781, -- [106]
						257170, -- [107]
						268846, -- [108]
						270514, -- [109]
						258622, -- [110]
						256627, -- [111]
						257870, -- [112]
						258917, -- [113]
						263891, -- [114]
						268348, -- [115]
						272711, -- [116]
						271174, -- [117]
						268260, -- [118]
						269399, -- [119]
						268239, -- [120]
						264574, -- [121]
						261563, -- [122]
						257288, -- [123]
						257757, -- [124]
						267899, -- [125]
						255741, -- [126]
						260894, -- [127]
						263365, -- [128]
						260292, -- [129]
						263583, -- [130]
						272874, -- [131]
						264101, -- [132]
						264407, -- [133]
						271456, -- [134]
						262515, -- [135]
						275192, -- [136]
						256405, -- [137]
						270084, -- [138]
						257785, -- [139]
						267237, -- [140]
						266951, -- [141]
						267433, -- [142]
						255577, -- [143]
						255371, -- [144]
						270891, -- [145]
						267357, -- [146]
						258338, -- [147]
						257169, -- [148]
						270927, -- [149]
						260926, -- [150]
						264027, -- [151]
						267257, -- [152]
						253721, -- [153]
						265019, -- [154]
						260924, -- [155]
						263309, -- [156]
						266206, -- [157]
						260067, -- [158]
						274507, -- [159]
						276068, -- [160]
						263278, -- [161]
						258317, -- [162]
						256594, -- [163]
						268391, -- [164]
						268230, -- [165]
						260852, -- [166]
						267763, -- [167]
						268706, -- [168]
						264734, -- [169]
						270590, -- [170]
						290787, -- [171]
						275922, -- [172]
						269282, -- [173]
						274389, -- [174]
						258054, -- [175]
						259165, -- [176]
						269090, -- [177]
						277805, -- [178]
						282699, -- [179]
						278711, -- [180]
						268184, -- [181]
						268212, -- [182]
						257741, -- [183]
						266209, -- [184]
						270289, -- [185]
						267639, -- [186]
						268278, -- [187]
						258628, -- [188]
						266512, -- [189]
						260773, -- [190]
						269926, -- [191]
						268203, -- [192]
						256044, -- [193]
						257458, -- [194]
						300650, -- [195]
						300777, -- [196]
						300171, -- [197]
						299588, -- [198]
						299475, -- [199]
						299164, -- [200]
						298669, -- [201]
						300436, -- [202]
						297254, -- [203]
						301629, -- [204]
						284219, -- [205]
						285020, -- [206]
						283421, -- [207]
						294290, -- [208]
						291946, -- [209]
						291973, -- [210]
						297128, -- [211]
						293986, -- [212]
						295169, -- [213]
						293729, -- [214]
						298940, -- [215]
						296331, -- [216]
						298718, -- [217]
						295299, -- [218]
						300188, -- [219]
						265001, -- [220]
						294890, -- [221]
						314411, -- [222]
						314406, -- [223]
						298033, -- [224]
						305378, -- [225]
						320759, -- [226]
						300426, -- [227]
						297746, -- [228]
						315980, -- [229]
						304251, -- [230]
						308575, -- [231]
						309671, -- [232]
						308366, -- [233]
						306930, -- [234]
						309648, -- [235]
						309373, -- [236]
						301088, -- [237]
						297315, -- [238]
						306199, -- [239]
						256079, -- [240]
						311400, -- [241]
						311456, -- [242]
						308375, -- [243]
						308508, -- [244]
						305892, -- [245]
						303589, -- [246]
						306646, -- [247]
						306726, -- [248]
						296674, -- [249]
						299111, -- [250]
						302718, -- [251]
					},
					["Prio"] = 99,
					["Name"] = "M+ Important Spells [Plater]",
					["PlaterCore"] = 1,
					["version"] = 25,
					["Desc"] = "Flash, Bounce when an important cast is happening. Add spell in the Add Trigger field.",
					["Options"] = {
					},
					["NpcNames"] = {
					},
				}, -- [35]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --insert code here\n    \n    if (not unitFrame.spitefulTexture) then\n        unitFrame.spitefulTexture = unitFrame.healthBar:CreateTexture(nil, \"overlay\", nil, 6)\n        unitFrame.spitefulTexture:SetPoint('right', 0, 0)\n        unitFrame.spitefulTexture:SetSize(27, 14)\n        unitFrame.spitefulTexture:SetColorTexture(.3, .3, 1, .7)\n        \n        unitFrame.spitefulText = unitFrame.healthBar:CreateFontString(nil, \"overlay\", \"GameFontNormal\", 6)\n        DetailsFramework:SetFontFace (unitFrame.spitefulText, \"2002\")\n        unitFrame.spitefulText:SetPoint(\"right\", unitFrame.spitefulTexture, \"right\", -2, 0)\n        unitFrame.spitefulText:SetJustifyH(\"right\")\n        \n        unitFrame.spitefulTexture:Hide()\n        unitFrame.spitefulText:Hide()\n    end\n    \n    function envTable.UpdateSpitefulWidget(unitFrame)\n        \n        local r, g, b, a = Plater:ParseColors(scriptTable.config.bgColor)\n        unitFrame.spitefulTexture:SetColorTexture(r, g, b, a)\n        unitFrame.spitefulTexture:SetSize(scriptTable.config.bgWidth, unitFrame.healthBar:GetHeight())   \n        Plater:SetFontSize(unitFrame.spitefulText, scriptTable.config.textSize)\n        Plater:SetFontColor(unitFrame.spitefulText, scriptTable.config.textColor)\n        \n        local currentHealth = unitFrame.healthBar.CurrentHealth\n        local maxHealth = unitFrame.healthBar.CurrentHealthMax\n        \n        local healthPercent = currentHealth / maxHealth * 100\n        local timeToDie = format(\"%.1fs\", healthPercent / 8)\n        unitFrame.spitefulText:SetText(timeToDie)\n        \n        unitFrame.spitefulText:Show()\n        unitFrame.spitefulTexture:Show()\n        \n        if scriptTable.config.switchTargetName then\n            local plateFrame = unitFrame.PlateFrame\n            local target = UnitName(unitFrame.namePlateUnitToken .. \"target\") or UnitName(unitFrame.namePlateUnitToken)\n            if target and target ~= \"\" then\n                plateFrame.namePlateUnitName = target\n                Plater.UpdateUnitName (plateFrame)\n            end\n        end\n        \n        if scriptTable.config.useTargetingColor then\n            local targeted = UnitIsUnit(unitFrame.namePlateUnitToken .. \"target\", \"player\")\n            if targeted then\n                Plater.SetNameplateColor (unitFrame, scriptTable.config.targetingColor)\n            end\n        end\n    end\nend",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --insert code here\n    if (unitFrame.spitefulTexture) then\n        unitFrame.spitefulText:Hide()\n        unitFrame.spitefulTexture:Hide()    \n    end\nend\n\n\n\n\n\n",
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --insert code here\n    envTable.UpdateSpitefulWidget(unitFrame)\nend\n\n\n",
					["Time"] = 1609281290,
					["url"] = "",
					["Icon"] = 135945,
					["Enabled"] = true,
					["Revision"] = 132,
					["semver"] = "",
					["Author"] = "Symantec-Azralon",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["Desc"] = "Time to die Spiteful affix",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --insert code here\n    envTable.UpdateSpitefulWidget(unitFrame)\nend\n\n\n",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Options"] = {
						{
							["Type"] = 2,
							["Max"] = 50,
							["Desc"] = "",
							["Min"] = 10,
							["Fraction"] = false,
							["Value"] = 27,
							["Key"] = "bgWidth",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Width",
						}, -- [1]
						{
							["Type"] = 1,
							["Name"] = "Background Color",
							["Value"] = {
								0.5058823529411764, -- [1]
								0.07058823529411765, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["Key"] = "bgColor",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 6,
							["Name"] = "Option 5",
							["Value"] = 0,
							["Key"] = "option5",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [3]
						{
							["Type"] = 2,
							["Max"] = 24,
							["Desc"] = "",
							["Min"] = 7,
							["Fraction"] = false,
							["Value"] = 8,
							["Key"] = "textSize",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Text Size",
						}, -- [4]
						{
							["Type"] = 1,
							["Name"] = "Text Color",
							["Value"] = {
								1, -- [1]
								0.5843137254901961, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Key"] = "textColor",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "",
						}, -- [5]
						{
							["Type"] = 6,
							["Key"] = "option7",
							["Value"] = 0,
							["Name"] = "Option 7",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [6]
						{
							["Type"] = 4,
							["Key"] = "switchTargetName",
							["Value"] = false,
							["Name"] = "Show Target instead of Name",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "",
						}, -- [7]
						{
							["Type"] = 6,
							["Key"] = "option8",
							["Value"] = 0,
							["Name"] = "Option 8",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [8]
						{
							["Type"] = 4,
							["Key"] = "useTargetingColor",
							["Value"] = false,
							["Name"] = "Change Color if targeting You",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "",
						}, -- [9]
						{
							["Type"] = 1,
							["Key"] = "targetingColor",
							["Value"] = {
								0.5058823529411764, -- [1]
								0.07058823529411765, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["Name"] = "Color if targeting You",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "",
						}, -- [10]
					},
					["version"] = -1,
					["Name"] = "M+ Spiteful",
					["NpcNames"] = {
						"174773", -- [1]
					},
				}, -- [36]
			},
			["url"] = "https://wago.io/caMqMdpEF/7",
			["cast_statusbar_fadein_time"] = 0.0099999997764826,
			["indicator_raidmark_scale"] = 0.89999997615814,
			["aura2_y_offset"] = 12,
			["aura_timer_text_anchor"] = {
				["y"] = 4,
				["side"] = 10,
			},
			["buffs_on_aura2"] = true,
			["indicator_quest"] = false,
			["cast_statusbar_color_nointerrupt"] = {
				0.76078431372549, -- [1]
				0.047058823529412, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["npc_cache"] = {
				[156146] = {
					"Voidbound Shieldbearer", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[127485] = {
					"Bilge Rat Looter", -- [1]
					"Tol Dagor", -- [2]
				},
				[165872] = {
					"Flesh Crafter", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[124158] = {
					"Imonar the Soulhunter", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[108034] = {
					"Fal'dorei Reaver", -- [1]
					"The Ruins of Falanaar", -- [2]
				},
				[34190] = {
					"Hardened Iron Golem", -- [1]
					"Ulduar", -- [2]
				},
				[170480] = {
					"Atal'ai Deathwalker", -- [1]
					"De Other Side", -- [2]
				},
				[134137] = {
					"Temple Attendant", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[159219] = {
					"Umbral Seer", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[102404] = {
					"Stoneclaw Grubmaster", -- [1]
					"Neltharion's Lair", -- [2]
				},
				[127230] = {
					"Garothi Annihilator", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[127486] = {
					"Ashvane Officer", -- [1]
					"Tol Dagor", -- [2]
				},
				[169457] = {
					"Bargast", -- [1]
					"Castle Nathria", -- [2]
				},
				[108035] = {
					"Fal'dorei Spiderling", -- [1]
					"The Ruins of Falanaar", -- [2]
				},
				[112386] = {
					"Twirhp", -- [1]
					"Black Temple - Legion", -- [2]
				},
				[136186] = {
					"Tidesage Spiritualist", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[169458] = {
					"Hecutis", -- [1]
					"Castle Nathria", -- [2]
				},
				[101637] = {
					"Valarjar Aspirant", -- [1]
					"Halls of Valor", -- [2]
				},
				[134139] = {
					"Shrine Templar", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[127231] = {
					"Garothi Decimator", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[82698] = {
					"Night-Twisted Devout", -- [1]
					"Highmaul", -- [2]
				},
				[103685] = {
					"Tichondrius", -- [1]
					"The Nighthold", -- [2]
				},
				[34191] = {
					"Trash", -- [1]
					"Ulduar", -- [2]
				},
				[168949] = {
					"Risen Bonesoldier", -- [1]
					"De Other Side", -- [2]
				},
				[27977] = {
					"Krystallus", -- [1]
					"Halls of Stone", -- [2]
				},
				[159224] = {
					"Gryth'ax the Executioner", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[174069] = {
					"Hulking Gargon", -- [1]
					"Castle Nathria", -- [2]
				},
				[170486] = {
					"Atal'ai Devoted", -- [1]
					"De Other Side", -- [2]
				},
				[93961] = {
					"Worgen Tracker", -- [1]
					"The Maw of Nashal", -- [2]
				},
				[114692] = {
					"Leyline Spiderling", -- [1]
					"The Collapse - Suramar Scenario", -- [2]
				},
				[37007] = {
					"Deathbound Ward", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[61705] = {
					"Corrupted Flamecaller", -- [1]
					"Ragefire Chasm", -- [2]
				},
				[174070] = {
					"Kennel Overseer", -- [1]
					"Castle Nathria", -- [2]
				},
				[134144] = {
					"Living Current", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[100360] = {
					"Grasping Tentacle", -- [1]
					"Maw of Souls", -- [2]
				},
				[131585] = {
					"Enthralled Guard", -- [1]
					"Waycrest Manor", -- [2]
				},
				[164857] = {
					"Spriggan Mendbender", -- [1]
					"De Other Side", -- [2]
				},
				[34192] = {
					"Boomer XP-500", -- [1]
					"Ulduar", -- [2]
				},
				[174071] = {
					"Vicious Gargon", -- [1]
					"Castle Nathria", -- [2]
				},
				[170488] = {
					"Son of Hakkar", -- [1]
					"De Other Side", -- [2]
				},
				[93962] = {
					"Worgen Stalker", -- [1]
					"The Maw of Nashal", -- [2]
				},
				[135169] = {
					"Spirit Drain Totem", -- [1]
					"The Underrot", -- [2]
				},
				[131586] = {
					"Banquet Steward", -- [1]
					"Waycrest Manor", -- [2]
				},
				[127490] = {
					"Knight Captain Valyri", -- [1]
					"Tol Dagor", -- [2]
				},
				[103176] = {
					"Mo'arg Crusher", -- [1]
					"Darkheart Thicket", -- [2]
				},
				[8904] = {
					"Shadowforge Senator", -- [1]
					"Blackrock Depths", -- [2]
				},
				[131587] = {
					"Bewitched Captain", -- [1]
					"Waycrest Manor", -- [2]
				},
				[170490] = {
					"Atal'ai High Priest", -- [1]
					"De Other Side", -- [2]
				},
				[36880] = {
					"Decaying Colossus", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[127235] = {
					"Garothi Demolisher", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[166396] = {
					"Noble Skirmisher", -- [1]
					"Sanguine Depths", -- [2]
				},
				[100362] = {
					"Grasping Tentacle", -- [1]
					"Maw of Souls", -- [2]
				},
				[173051] = {
					"Suppressor Xelors", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[34193] = {
					"Clockwork Sapper", -- [1]
					"Ulduar", -- [2]
				},
				[101386] = {
					"Rothoof Defiler", -- [1]
					"Ursocs Lair", -- [2]
				},
				[118022] = {
					"Infernal Chaosbringer", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[164862] = {
					"Weald Shimmermoth", -- [1]
					"De Other Side", -- [2]
				},
				[27978] = {
					"Sjonnir The Ironshaper", -- [1]
					"Halls of Stone", -- [2]
				},
				[134150] = {
					"Runecarver Sorn", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[139269] = {
					"Gloom Horror", -- [1]
					"Waycrest Manor", -- [2]
				},
				[156161] = {
					"Inquisitor Gnshal", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[80400] = {
					"Iron Assembly Warden", -- [1]
					"Blackrock Foundry", -- [2]
				},
				[85775] = {
					"Grom'kar Deadeye", -- [1]
					"Iron Docks", -- [2]
				},
				[123398] = {
					"Garothi Annihilator", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[124166] = {
					"Torment of Khaz'goroth", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[138247] = {
					"Irontide Marauder", -- [1]
					"Siege of Boralus", -- [2]
				},
				[112393] = {
					"Astrylian", -- [1]
					"Black Temple - Legion", -- [2]
				},
				[163841] = {
					"Amalgamation of Flesh", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[101388] = {
					"Rothoof Shadowstalker", -- [1]
					"Ursocs Lair", -- [2]
				},
				[162306] = {
					"Aqir Drone", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[173568] = {
					"Anima Crazed Worker", -- [1]
					"Castle Nathria", -- [2]
				},
				[157700] = {
					"Agustus Moulaine", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[163331] = {
					"Stone Legion Nightblade", -- [1]
					"Revendreth Scenario", -- [2]
				},
				[164355] = {
					"Manifestation of Pride", -- [1]
					"Revendreth Scenario", -- [2]
				},
				[117769] = {
					"Felborne Spellbreaker", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[36626] = {
					"Festergut", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[126983] = {
					"Harlan Sweete", -- [1]
					"Freehold", -- [2]
				},
				[162309] = {
					"Kul'tharok", -- [1]
					"Theater of Pain", -- [2]
				},
				[96015] = {
					"Inquisitor Tormentorum", -- [1]
					"Vault of the Wardens", -- [2]
				},
				[169476] = {
					"Highway Serf", -- [1]
					"Halls of Atonement", -- [2]
				},
				[101390] = {
					"Arch-Desecrator Malithar", -- [1]
					"Ursocs Lair", -- [2]
				},
				[162310] = {
					"Hunter", -- [1]
					"Vision of Ysera Scenario", -- [2]
				},
				[134157] = {
					"Shadow-Borne Warrior", -- [1]
					"Kings' Rest", -- [2]
				},
				[93968] = {
					"Shadowfel Warden", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[155656] = {
					"Misha", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[86290] = {
					"Underbelly Vagrant", -- [1]
					"Highmaul", -- [2]
				},
				[153097] = {
					"Voidbound Shaman", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[27979] = {
					"Forged Iron Trogg", -- [1]
					"Halls of Stone", -- [2]
				},
				[75285] = {
					"Twilight Storm Mender", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[155657] = {
					"Huffer", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[16167] = {
					"Bony Construct", -- [1]
					"Naxxramas", -- [2]
				},
				[162312] = {
					"Druid", -- [1]
					"Vision of Ysera Scenario", -- [2]
				},
				[36627] = {
					"Rotface", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[12264] = {
					"Shazzrah", -- [1]
					"Molten Core", -- [2]
				},
				[122890] = {
					"Fanatical Pyromancer", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[37011] = {
					"The Damned", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[127497] = {
					"Ashvane Warden", -- [1]
					"Tol Dagor", -- [2]
				},
				[74518] = {
					"Executioner Gore", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[162313] = {
					"Mage", -- [1]
					"Vision of Ysera Scenario", -- [2]
				},
				[75286] = {
					"Twilight Disciple", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[164873] = {
					"Runestag Elderhorn", -- [1]
					"De Other Side", -- [2]
				},
				[34196] = {
					"Rune Etched Sentry", -- [1]
					"Ulduar", -- [2]
				},
				[159755] = {
					"The Grand Malleare", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[168457] = {
					"Stonewall Gargon", -- [1]
					"Sanguine Depths", -- [2]
				},
				[168969] = {
					"Gushing Slime", -- [1]
					"Plaguefall", -- [2]
				},
				[137233] = {
					"Plague Toad", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[8905] = {
					"Warbringer Construct", -- [1]
					"Blackrock Depths", -- [2]
				},
				[164363] = {
					"Undying Stonefiend", -- [1]
					"Halls of Atonement", -- [2]
				},
				[9033] = {
					"General Angerforge", -- [1]
					"Blackrock Depths", -- [2]
				},
				[129802] = {
					"Earthrager", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[166411] = {
					"Forsworn Usurper", -- [1]
					"Spires of Ascension", -- [2]
				},
				[85781] = {
					"Grom'kar Grunt", -- [1]
					"Iron Docks", -- [2]
				},
				[37012] = {
					"Ancient Skeletal Soldier", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[94995] = {
					"Graggra", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[13448] = {
					"Sergeant Yazra Bloodsnarl", -- [1]
					"Alterac Valley", -- [2]
				},
				[162317] = {
					"Gorechop", -- [1]
					"Theater of Pain", -- [2]
				},
				[112655] = {
					"Celestial Acolyte", -- [1]
					"The Nighthold", -- [2]
				},
				[129547] = {
					"Blacktooth Knuckleduster", -- [1]
					"Freehold", -- [2]
				},
				[97043] = {
					"Seacursed Slaver", -- [1]
					"Maw of Souls", -- [2]
				},
				[162318] = {
					"Monk", -- [1]
					"Vision of Ysera Scenario", -- [2]
				},
				[139284] = {
					"Plague Doctor", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[19598] = {
					"Mutate Fleshlasher", -- [1]
					"Tempest Keep: The Botanica", -- [2]
				},
				[174092] = {
					"Nathrian Gargon Rider", -- [1]
					"Castle Nathria", -- [2]
				},
				[162319] = {
					"Paladin", -- [1]
					"Vision of Ysera Scenario", -- [2]
				},
				[14024] = {
					"Corrupted Blue Whelp", -- [1]
					"Blackwing Lair", -- [2]
				},
				[129548] = {
					"Blacktooth Brute", -- [1]
					"Freehold", -- [2]
				},
				[174093] = {
					"Nathrian Ranger", -- [1]
					"Castle Nathria", -- [2]
				},
				[162320] = {
					"Shaman", -- [1]
					"Vision of Ysera Scenario", -- [2]
				},
				[150547] = {
					"Scrapbone Grunter", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[127757] = {
					"Reanimated Honor Guard", -- [1]
					"Atal'Dazar", -- [2]
				},
				[75034] = {
					"Twilight Tormentor", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[163857] = {
					"Plaguebound Devoted", -- [1]
					"Plaguefall", -- [2]
				},
				[139799] = {
					"Ironhull Apprentice", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[117264] = {
					"Maiden of Valor", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[34198] = {
					"Iron Mender", -- [1]
					"Ulduar", -- [2]
				},
				[117776] = {
					"Shadow Council Warlock", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[50834] = {
					"Rethilgore", -- [1]
					"Shadowfang Keep", -- [2]
				},
				[118800] = {
					"Felskorn Gladiator", -- [1]
					"Legion Ship - Vertical - Stormheim", -- [2]
				},
				[139800] = {
					"Galecaller Apprentice", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[120080] = {
					"Garadrath", -- [1]
					"Legion Ship - Vertical - HighMountain", -- [2]
				},
				[95766] = {
					"Crazed Razorbeak", -- [1]
					"Darkheart Thicket", -- [2]
				},
				[112402] = {
					"Oku", -- [1]
					"Black Temple - Legion", -- [2]
				},
				[26125] = {
					"Seuchenhüter", -- [1]
					"Warsong Gulch", -- [2]
				},
				[135706] = {
					"Bilge Rat Looter", -- [1]
					"Tol Dagor", -- [2]
				},
				[129550] = {
					"Bilge Rat Padfoot", -- [1]
					"Freehold", -- [2]
				},
				[93719] = {
					"Fel Commander Azgalor", -- [1]
					"Broken Shore Scenario", -- [2]
				},
				[94231] = {
					"Wild Pyromaniac", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[127503] = {
					"Overseer Korgus", -- [1]
					"Tol Dagor", -- [2]
				},
				[86809] = {
					"Grom'kar Incinerator", -- [1]
					"Iron Docks", -- [2]
				},
				[3875] = {
					"Haunted Servitor", -- [1]
					"Shadowfang Keep", -- [2]
				},
				[33431] = {
					"Forest Swarmer", -- [1]
					"Ulduar", -- [2]
				},
				[37782] = {
					"Flesh-eating Insect", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[167956] = {
					"Dark Acolyte", -- [1]
					"Sanguine Depths", -- [2]
				},
				[80411] = {
					"Iron Marksman", -- [1]
					"Blackrock Foundry", -- [2]
				},
				[34199] = {
					"Lightning Charged Iron Dwarf", -- [1]
					"Ulduar", -- [2]
				},
				[162326] = {
					"Priest", -- [1]
					"Vision of Ysera Scenario", -- [2]
				},
				[134173] = {
					"Animated Droplet", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[163862] = {
					"Defender of Many Eyes", -- [1]
					"Plaguefall", -- [2]
				},
				[152089] = {
					"Thrall", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[132126] = {
					"Gilded Priestess", -- [1]
					"Atal'Dazar", -- [2]
				},
				[123921] = {
					"Garothi Decimator", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[162327] = {
					"Rogue", -- [1]
					"Vision of Ysera Scenario", -- [2]
				},
				[166934] = {
					"Lor the Loyal", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[134686] = {
					"Mature Krolusk", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[159768] = {
					"Deresh of the Nothingness", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[16168] = {
					"Stoneskin Gargoyle", -- [1]
					"Naxxramas", -- [2]
				},
				[113172] = {
					"Duskwatch Rune Scribe", -- [1]
					"The Arcway - Suramar Scenario", -- [2]
				},
				[165911] = {
					"Loyal Creation", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[162328] = {
					"Warlock", -- [1]
					"Vision of Ysera Scenario", -- [2]
				},
				[151579] = {
					"Shield Generator", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[102679] = {
					"Ysondre", -- [1]
					"The Emerald Nightmare", -- [2]
				},
				[136735] = {
					"Ashvane Marine", -- [1]
					"Tol Dagor", -- [2]
				},
				[162329] = {
					"Xav the Unfallen", -- [1]
					"Theater of Pain", -- [2]
				},
				[95769] = {
					"Mindshattered Screecher", -- [1]
					"Darkheart Thicket", -- [2]
				},
				[112405] = {
					"Vhell", -- [1]
					"Black Temple - Legion", -- [2]
				},
				[120851] = {
					"Hippogryph Lord Varah", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[131617] = {
					"Groundskeeper Lilith", -- [1]
					"Waycrest Manor", -- [2]
				},
				[129553] = {
					"Dinomancer Kish'o", -- [1]
					"Atal'Dazar", -- [2]
				},
				[4278] = {
					"Commander Springvale", -- [1]
					"Shadowfang Keep", -- [2]
				},
				[165913] = {
					"Ghastly Parishioner", -- [1]
					"Halls of Atonement", -- [2]
				},
				[162330] = {
					"Demon Hunter", -- [1]
					"Vision of Ysera Scenario", -- [2]
				},
				[118804] = {
					"Domatrax", -- [1]
					"Cathedral of Eternal Night", -- [2]
				},
				[162331] = {
					"Corrupted Neuron", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[8906] = {
					"Ragereaver Golem", -- [1]
					"Blackrock Depths", -- [2]
				},
				[112406] = {
					"Merciless Gladiator Saifu", -- [1]
					"Black Temple - Legion", -- [2]
				},
				[167962] = {
					"Defunct Dental Drill", -- [1]
					"De Other Side", -- [2]
				},
				[168986] = {
					"Skeletal Raptor", -- [1]
					"De Other Side", -- [2]
				},
				[169498] = {
					"Plague Bomb", -- [1]
					"Plaguefall", -- [2]
				},
				[109591] = {
					"Felguard Legionnaire", -- [1]
					"Broken Shore Scenario", -- [2]
				},
				[134691] = {
					"Static-charged Dervish", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[167963] = {
					"Headless Client", -- [1]
					"De Other Side", -- [2]
				},
				[102681] = {
					"Taerar", -- [1]
					"The Emerald Nightmare", -- [2]
				},
				[37144] = {
					"Skybreaker Marksman", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[153119] = {
					"Lesser Void Elemental", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[95771] = {
					"Dreadsoul Ruiner", -- [1]
					"Darkheart Thicket", -- [2]
				},
				[104217] = {
					"Talixae Flamewreath", -- [1]
					"Court of Stars", -- [2]
				},
				[135204] = {
					"Spectral Hex Priest", -- [1]
					"Kings' Rest", -- [2]
				},
				[168988] = {
					"Overgrowth", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[109336] = {
					"Felbound Wrathlord", -- [1]
					"Battle of Exodar", -- [2]
				},
				[109592] = {
					"Felguard Legionnaire", -- [1]
					"Broken Shore Scenario", -- [2]
				},
				[110616] = {
					"Dark Worshipper", -- [1]
					"Broken Shore Scenario", -- [2]
				},
				[102682] = {
					"Lethon", -- [1]
					"The Emerald Nightmare", -- [2]
				},
				[27982] = {
					"Forged Iron Dwarf", -- [1]
					"Halls of Stone", -- [2]
				},
				[95772] = {
					"Frenzied Nightclaw", -- [1]
					"Darkheart Thicket", -- [2]
				},
				[96028] = {
					"Wrath of Azshara", -- [1]
					"Eye of Azshara", -- [2]
				},
				[167966] = {
					"Experimental Sludge", -- [1]
					"De Other Side", -- [2]
				},
				[24207] = {
					"Army of the Dead", -- [1]
					"Waycrest Manor", -- [2]
				},
				[14185] = {
					"Najak Hexxen", -- [1]
					"Alterac Valley", -- [2]
				},
				[101403] = {
					"Shade of Xavius", -- [1]
					"Ursocs Lair", -- [2]
				},
				[118807] = {
					"Felskorn Footsoldier", -- [1]
					"Legion Ship - Vertical - Stormheim", -- [2]
				},
				[37017] = {
					"Skybreaker Assassin", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[165408] = {
					"Halkias", -- [1]
					"Halls of Atonement", -- [2]
				},
				[112153] = {
					"Dire Shaman", -- [1]
					"The Emerald Nightmare", -- [2]
				},
				[159266] = {
					"Portal Master", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[14601] = {
					"Ebonroc", -- [1]
					"Blackwing Lair", -- [2]
				},
				[168992] = {
					"Risen Cultist", -- [1]
					"De Other Side", -- [2]
				},
				[122135] = {
					"Shatug", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[118808] = {
					"Felskorn Runeworker", -- [1]
					"Legion Ship - Vertical - Stormheim", -- [2]
				},
				[160291] = {
					"Ashwalker Assassin", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[165410] = {
					"High Adjudicator Aleez", -- [1]
					"Halls of Atonement", -- [2]
				},
				[138281] = {
					"Faceless Corruptor", -- [1]
					"The Underrot", -- [2]
				},
				[112410] = {
					"Dreadpaw", -- [1]
					"Black Temple - Legion", -- [2]
				},
				[113178] = {
					"Archivist's Tome", -- [1]
					"The Arcway - Suramar Scenario", -- [2]
				},
				[130582] = {
					"Despondent Scallywag", -- [1]
					"Tol Dagor", -- [2]
				},
				[99358] = {
					"Rotheart Dryad", -- [1]
					"Darkheart Thicket", -- [2]
				},
				[154663] = {
					"Gnome-Eating Droplet", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[112411] = {
					"Psillych", -- [1]
					"The Collapse - Suramar Scenario", -- [2]
				},
				[33819] = {
					"Twilight Frost Mage", -- [1]
					"Ulduar", -- [2]
				},
				[129559] = {
					"Cutwater Duelist", -- [1]
					"Freehold", -- [2]
				},
				[11658] = {
					"Molten Giant", -- [1]
					"Molten Core", -- [2]
				},
				[42649] = {
					"Drakonid Chainwielder", -- [1]
					"Blackwing Descent", -- [2]
				},
				[134701] = {
					"Blood Effigy", -- [1]
					"The Underrot", -- [2]
				},
				[63508] = {
					"Xuen", -- [1]
					"Isle of Conquest", -- [2]
				},
				[78116] = {
					"Элементаль воды", -- [1]
					"Deepwind Gorge", -- [2]
				},
				[15977] = {
					"Poisonous Skitterer", -- [1]
					"Naxxramas", -- [2]
				},
				[99359] = {
					"Rotheart Keeper", -- [1]
					"Darkheart Thicket", -- [2]
				},
				[11946] = {
					"Drek'Thar", -- [1]
					"Alterac Valley", -- [2]
				},
				[112412] = {
					"Psillych Spiderling", -- [1]
					"The Collapse - Suramar Scenario", -- [2]
				},
				[112668] = {
					"Infernal Imp", -- [1]
					"Court of Stars", -- [2]
				},
				[153130] = {
					"Greater Void Elemental", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[125977] = {
					"Reanimation Totem", -- [1]
					"Atal'Dazar", -- [2]
				},
				[89890] = {
					"Fel Lord Zakuun", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[119579] = {
					"Fel Commander Erixtol", -- [1]
					"Legion Ship - Vertical - HighMountain", -- [2]
				},
				[99360] = {
					"Vilethorn Blossom", -- [1]
					"Darkheart Thicket", -- [2]
				},
				[12458] = {
					"Blackwing Taskmaster", -- [1]
					"Blackwing Lair", -- [2]
				},
				[33820] = {
					"Twilight Pyromancer", -- [1]
					"Ulduar", -- [2]
				},
				[21137] = {
					"Infinite Assassin", -- [1]
					"Opening of the Dark Portal", -- [2]
				},
				[80677] = {
					"Iron Journeyman", -- [1]
					"Blackrock Foundry", -- [2]
				},
				[159275] = {
					"Portal Keeper", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[163882] = {
					"Decaying Flesh Giant", -- [1]
					"Plaguefall", -- [2]
				},
				[8907] = {
					"Wrath Hammer Construct", -- [1]
					"Blackrock Depths", -- [2]
				},
				[112414] = {
					"Darragh", -- [1]
					"Black Temple - Legion", -- [2]
				},
				[131123] = {
					"Enchanted Tiki Mask", -- [1]
					"Atal'Dazar", -- [2]
				},
				[80422] = {
					"Iron Marksman", -- [1]
					"Blackrock Foundry", -- [2]
				},
				[152623] = {
					"Underhold Grunt", -- [1]
					"Siege of Orgrimmar - Coup Scenario", -- [2]
				},
				[95779] = {
					"Festerhide Grizzly", -- [1]
					"Darkheart Thicket", -- [2]
				},
				[112415] = {
					"Vulajin", -- [1]
					"Black Temple - Legion", -- [2]
				},
				[112671] = {
					"Duskwatch Battle-Magus", -- [1]
					"The Nighthold", -- [2]
				},
				[9547] = {
					"Guzzling Patron", -- [1]
					"Blackrock Depths", -- [2]
				},
				[19218] = {
					"Gatewatcher Gyro-Kill", -- [1]
					"Tempest Keep: The Mechanar", -- [2]
				},
				[145970] = {
					"Razorshell Turtle", -- [1]
					"Siege of Orgrimmar - Coup Scenario", -- [2]
				},
				[106785] = {
					"Bitterbrine Slave", -- [1]
					"Eye of Azshara", -- [2]
				},
				[27984] = {
					"Dark Rune Stormcaller", -- [1]
					"Halls of Stone", -- [2]
				},
				[14186] = {
					"Ravak Grimtotem", -- [1]
					"Alterac Valley", -- [2]
				},
				[149555] = {
					"Abomination", -- [1]
					"Deepwind Gorge", -- [2]
				},
				[101667] = {
					"Shielded Anchor", -- [1]
					"Broken Shore Scenario", -- [2]
				},
				[14282] = {
					"Frost Wolf Bloodhound", -- [1]
					"Alterac Valley", -- [2]
				},
				[110369] = {
					"Shardback Skitterer", -- [1]
					"The Collapse - Suramar Scenario", -- [2]
				},
				[61463] = {
					"Slagmaw", -- [1]
					"Ragefire Chasm", -- [2]
				},
				[37021] = {
					"Skybreaker Vicar", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[103459] = {
					"Rockback Snapper", -- [1]
					"Neltharion's Lair", -- [2]
				},
				[112417] = {
					"Ancestral Shaman", -- [1]
					"Ursocs Lair", -- [2]
				},
				[33822] = {
					"Twilight Guardian", -- [1]
					"Ulduar", -- [2]
				},
				[21138] = {
					"Infinite Executioner", -- [1]
					"Opening of the Dark Portal", -- [2]
				},
				[110370] = {
					"Shardmaiden", -- [1]
					"The Collapse - Suramar Scenario", -- [2]
				},
				[47131] = {
					"Frantic Geist", -- [1]
					"Shadowfang Keep", -- [2]
				},
				[106787] = {
					"Bitterbrine Slave", -- [1]
					"Eye of Azshara", -- [2]
				},
				[136249] = {
					"Guardian Elemental", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[153141] = {
					"Endless Hunger Totem", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[99365] = {
					"Taintheart Stalker", -- [1]
					"Darkheart Thicket", -- [2]
				},
				[112162] = {
					"Grisly Trapper", -- [1]
					"The Emerald Nightmare", -- [2]
				},
				[163891] = {
					"Rotmarrow Slime", -- [1]
					"Plaguefall", -- [2]
				},
				[136250] = {
					"Hoodoo Hexer", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[114210] = {
					"Doomguard", -- [1]
					"Black Rook Hold [Scenario]", -- [2]
				},
				[110371] = {
					"Shardback Spiderling", -- [1]
					"The Collapse - Suramar Scenario", -- [2]
				},
				[163892] = {
					"Rotting Slimeclaw", -- [1]
					"Plaguefall", -- [2]
				},
				[32927] = {
					"Runemaster Molgeim", -- [1]
					"Ulduar", -- [2]
				},
				[157238] = {
					"Prophet Skitra", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[99366] = {
					"Taintheart Summoner", -- [1]
					"Darkheart Thicket", -- [2]
				},
				[120097] = {
					"Twisted Nether-Mage", -- [1]
					"Legion Ship - Vertical - HighMountain", -- [2]
				},
				[158774] = {
					"Broken Citizen", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[33823] = {
					"Twilight Slayer", -- [1]
					"Ulduar", -- [2]
				},
				[19219] = {
					"Mechano-Lord Capacitus", -- [1]
					"Tempest Keep: The Mechanar", -- [2]
				},
				[114211] = {
					"Fel Hound", -- [1]
					"Black Rook Hold [Scenario]", -- [2]
				},
				[163894] = {
					"Blighted Spinebreaker", -- [1]
					"Plaguefall", -- [2]
				},
				[90409] = {
					"Gorebound Felcaster", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[165430] = {
					"Malignant Spawn", -- [1]
					"Plaguefall", -- [2]
				},
				[111652] = {
					"Fel Annihilator", -- [1]
					"Battle of Exodar", -- [2]
				},
				[27985] = {
					"Iron Golem Custodian", -- [1]
					"Halls of Stone", -- [2]
				},
				[112676] = {
					"Nobleborn Warpcaster", -- [1]
					"The Nighthold", -- [2]
				},
				[114212] = {
					"Felguard", -- [1]
					"Black Rook Hold [Scenario]", -- [2]
				},
				[110373] = {
					"Fal'dorei Slicer", -- [1]
					"The Collapse - Suramar Scenario", -- [2]
				},
				[135231] = {
					"Spectral Brute", -- [1]
					"Kings' Rest", -- [2]
				},
				[90410] = {
					"Felfire Crusher", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[164920] = {
					"Drust Soulcleaver", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[12459] = {
					"Blackwing Warlock", -- [1]
					"Blackwing Lair", -- [2]
				},
				[33824] = {
					"Twilight Shadowblade", -- [1]
					"Ulduar", -- [2]
				},
				[164921] = {
					"Drust Harvester", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[81197] = {
					"Iron Raider", -- [1]
					"Blackrock Foundry", -- [2]
				},
				[110374] = {
					"Fal'dorei Weaver", -- [1]
					"The Collapse - Suramar Scenario", -- [2]
				},
				[151613] = {
					"Anti-Personnel Squirrel", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[102696] = {
					"Felslag Imp", -- [1]
					"Broken Shore Scenario", -- [2]
				},
				[111398] = {
					"Nightmare Amalgamation", -- [1]
					"The Emerald Nightmare", -- [2]
				},
				[165946] = {
					"Mordretha, the Endless Empress", -- [1]
					"Theater of Pain", -- [2]
				},
				[120100] = {
					"Eredar Summoner", -- [1]
					"Legion Ship - Vertical - HighMountain", -- [2]
				},
				[135234] = {
					"Diseased Mastiff", -- [1]
					"Waycrest Manor", -- [2]
				},
				[158781] = {
					"Shredded Psyche", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[102185] = {
					"First Mate DeGauza", -- [1]
					"Azsuna", -- [2]
				},
				[135235] = {
					"Spectral Beastmaster", -- [1]
					"Kings' Rest", -- [2]
				},
				[120101] = {
					"Dark Ritualist", -- [1]
					"Legion Ship - Vertical - HighMountain", -- [2]
				},
				[100394] = {
					"Felguard Lookout", -- [1]
					"Niskara", -- [2]
				},
				[117286] = {
					"Felwing Terror", -- [1]
					"Legion Ship - Vertical - HighMountain", -- [2]
				},
				[19220] = {
					"Pathaleon the Calculator", -- [1]
					"Tempest Keep: The Mechanar", -- [2]
				},
				[167485] = {
					"Starving Mawrat", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[47134] = {
					"Corpse Eater", -- [1]
					"Shadowfang Keep", -- [2]
				},
				[164414] = {
					"Reanimated Mage", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[164926] = {
					"Drust Boughbreaker", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[19668] = {
					"Shadowfiend", -- [1]
					"Deepwind Gorge", -- [2]
				},
				[120102] = {
					"Infernal Crusher", -- [1]
					"Legion Ship - Vertical - HighMountain", -- [2]
				},
				[167998] = {
					"Portal Guardian", -- [1]
					"Theater of Pain", -- [2]
				},
				[101163] = {
					"Cursed Guardian", -- [1]
					"Karazhan Catacombs", -- [2]
				},
				[110377] = {
					"Fal'dorei Webspinner", -- [1]
					"The Collapse - Suramar Scenario", -- [2]
				},
				[135239] = {
					"Spectral Witch Doctor", -- [1]
					"Kings' Rest", -- [2]
				},
				[32930] = {
					"Kologarn", -- [1]
					"Ulduar", -- [2]
				},
				[75058] = {
					"Twilight Aquamancer", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[159298] = {
					"Gilded Cloudstrider", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[135240] = {
					"Soul Essence", -- [1]
					"Waycrest Manor", -- [2]
				},
				[21140] = {
					"Rift Lord", -- [1]
					"Opening of the Dark Portal", -- [2]
				},
				[109354] = {
					"Rakeeshi Sorcerer", -- [1]
					"Battle of Exodar", -- [2]
				},
				[118056] = {
					"Tricky Hellion", -- [1]
					"Legion Ship - Vertical - Stormheim", -- [2]
				},
				[47135] = {
					"Fetid Ghoul", -- [1]
					"Shadowfang Keep", -- [2]
				},
				[99629] = {
					"Bitterbrine Scavenger", -- [1]
					"Eye of Azshara", -- [2]
				},
				[168002] = {
					"Empowered Mawsworn Shackler", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[157253] = {
					"Ka'zir", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[159301] = {
					"General Kaal", -- [1]
					"Revendreth Scenario", -- [2]
				},
				[37026] = {
					"Skybreaker Sorcerer", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[157254] = {
					"Tek'ris", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[99630] = {
					"Bitterbrine Scavenger", -- [1]
					"Eye of Azshara", -- [2]
				},
				[128551] = {
					"Irontide Mastiff", -- [1]
					"Freehold", -- [2]
				},
				[33699] = {
					"Storm Tempered Keeper", -- [1]
					"Ulduar", -- [2]
				},
				[157255] = {
					"Aqir Drone", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[130087] = {
					"Irontide Raider", -- [1]
					"Tol Dagor", -- [2]
				},
				[158279] = {
					"Haywire Clockwork Rocket Bot", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[167493] = {
					"Venomous Sniper", -- [1]
					"Plaguefall", -- [2]
				},
				[135245] = {
					"Bilge Rat Demolisher", -- [1]
					"Siege of Boralus", -- [2]
				},
				[102702] = {
					"Wrathguard Dreadblade", -- [1]
					"Broken Shore Scenario", -- [2]
				},
				[157256] = {
					"Aqir Darter", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[95280] = {
					"Kaz'rogal", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[12076] = {
					"Lava Elemental", -- [1]
					"Molten Core", -- [2]
				},
				[93233] = {
					"Lord Aram'el", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[101679] = {
					"Dreadsoul Poisoner", -- [1]
					"Darkheart Thicket", -- [2]
				},
				[110381] = {
					"Fal'dorei Silkwitch", -- [1]
					"The Collapse - Suramar Scenario", -- [2]
				},
				[168007] = {
					"Empowered Mawsworn Soulbinder", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[135759] = {
					"Earthwall Totem", -- [1]
					"Kings' Rest", -- [2]
				},
				[111405] = {
					"Shadow Pounder", -- [1]
					"The Emerald Nightmare", -- [2]
				},
				[3108] = {
					"Encrusted Surf Crawler", -- [1]
					"Broken Shore Scenario", -- [2]
				},
				[12460] = {
					"Death Talon Wyrmguard", -- [1]
					"Blackwing Lair", -- [2]
				},
				[33572] = {
					"Steelforged Defender", -- [1]
					"Ulduar", -- [2]
				},
				[113197] = {
					"Understone Drudge", -- [1]
					"Neltharion's Lair", -- [2]
				},
				[102192] = {
					"Dread Sharpshooter", -- [1]
					"Azsuna", -- [2]
				},
				[47137] = {
					"Mindless Horror", -- [1]
					"Shadowfang Keep", -- [2]
				},
				[131666] = {
					"Coven Thornshaper", -- [1]
					"Waycrest Manor", -- [2]
				},
				[95282] = {
					"Azgalor", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[158284] = {
					"Craggle Wobbletop", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[8909] = {
					"Fireguard", -- [1]
					"Blackrock Depths", -- [2]
				},
				[159308] = {
					"Zealous Adherent", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[163915] = {
					"Hatchling Nest", -- [1]
					"Plaguefall", -- [2]
				},
				[164427] = {
					"Reanimated Warrior", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[173641] = {
					"Nathrian Gargon", -- [1]
					"Castle Nathria", -- [2]
				},
				[158285] = {
					"Tinkered Shieldbot", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[134739] = {
					"Purification Construct", -- [1]
					"Kings' Rest", -- [2]
				},
				[127019] = {
					"Training Dummy", -- [1]
					"Freehold", -- [2]
				},
				[32933] = {
					"Left Arm", -- [1]
					"Ulduar", -- [2]
				},
				[111151] = {
					"Midnight Siphoner", -- [1]
					"The Nighthold", -- [2]
				},
				[103217] = {
					"Crystalline Scorpid", -- [1]
					"The Nighthold", -- [2]
				},
				[158286] = {
					"Reprogrammed Warbot", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[155215] = {
					"Faeleaf Lasher", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[131669] = {
					"Jagged Hound", -- [1]
					"Waycrest Manor", -- [2]
				},
				[152656] = {
					"Deadsoul Stalker", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[170572] = {
					"Atal'ai Hoodoo Hexxer", -- [1]
					"De Other Side", -- [2]
				},
				[102194] = {
					"Dread Crewman", -- [1]
					"Azsuna", -- [2]
				},
				[47138] = {
					"Pustulant Monstrosity", -- [1]
					"Shadowfang Keep", -- [2]
				},
				[131670] = {
					"Heartsbane Vinetwister", -- [1]
					"Waycrest Manor", -- [2]
				},
				[90677] = {
					"Wrathguard Dreadblade", -- [1]
					"Broken Shore Scenario", -- [2]
				},
				[13996] = {
					"Blackwing Technician", -- [1]
					"Blackwing Lair", -- [2]
				},
				[99891] = {
					"Storm Drake", -- [1]
					"Halls of Valor", -- [2]
				},
				[135254] = {
					"Irontide Raider", -- [1]
					"Tol Dagor", -- [2]
				},
				[110385] = {
					"Fal'dorei Broodlord", -- [1]
					"The Collapse - Suramar Scenario", -- [2]
				},
				[86071] = {
					"Rokkaa", -- [1]
					"Highmaul", -- [2]
				},
				[32934] = {
					"Right Arm", -- [1]
					"Ulduar", -- [2]
				},
				[134232] = {
					"Hired Assassin", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[155219] = {
					"Gormling Spitter", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[110386] = {
					"Spellwyrm", -- [1]
					"The Collapse - Suramar Scenario", -- [2]
				},
				[86072] = {
					"Oro", -- [1]
					"Highmaul", -- [2]
				},
				[152661] = {
					"Mawsworn Ward", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[157268] = {
					"Crawling Corruption", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[17879] = {
					"Chrono Lord Deja", -- [1]
					"Opening of the Dark Portal", -- [2]
				},
				[135258] = {
					"Irontide Marauder", -- [1]
					"Siege of Boralus", -- [2]
				},
				[113202] = {
					"Runebound Wyrm", -- [1]
					"The Arcway - Suramar Scenario", -- [2]
				},
				[151127] = {
					"Lord of Torment", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[86073] = {
					"Lokk", -- [1]
					"Highmaul", -- [2]
				},
				[160341] = {
					"Sewer Beastling", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[103477] = {
					"Cursed Guardian", -- [1]
					"Karazhan Catacombs", -- [2]
				},
				[91704] = {
					"Anchoring Crystal", -- [1]
					"Broken Shore Scenario", -- [2]
				},
				[151128] = {
					"Lord of Locks", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[112691] = {
					"Greathorn Stag", -- [1]
					"FW Horde Garrison Level 1", -- [2]
				},
				[131677] = {
					"Heartsbane Runeweaver", -- [1]
					"Waycrest Manor", -- [2]
				},
				[11661] = {
					"Flamewaker", -- [1]
					"Molten Core", -- [2]
				},
				[94008] = {
					"Dark Devourer", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[47140] = {
					"Sorcerous Skeleton", -- [1]
					"Shadowfang Keep", -- [2]
				},
				[86330] = {
					"Breaker Ritualist", -- [1]
					"Highmaul", -- [2]
				},
				[19735] = {
					"Tempest-Forge Destroyer", -- [1]
					"Tempest Keep: The Mechanar", -- [2]
				},
				[11981] = {
					"Flamegor", -- [1]
					"Blackwing Lair", -- [2]
				},
				[104246] = {
					"Duskwatch Guard", -- [1]
					"Court of Stars", -- [2]
				},
				[168022] = {
					"Slime Tentacle", -- [1]
					"Plaguefall", -- [2]
				},
				[121138] = {
					"Tormented Fragment", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[109877] = {
					"Argent Rider", -- [1]
					"Death Knight Campaign - Light's Hope Chapel", -- [2]
				},
				[159321] = {
					"Khateph", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[135263] = {
					"Ashvane Spotter", -- [1]
					"Siege of Boralus", -- [2]
				},
				[94777] = {
					"Morkronn", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[111413] = {
					"Dark Devourers", -- [1]
					"The Emerald Nightmare", -- [2]
				},
				[119859] = {
					"Hellfire Infernal", -- [1]
					"Legion Ship - Vertical - HighMountain", -- [2]
				},
				[12461] = {
					"Death Talon Overseer", -- [1]
					"Blackwing Lair", -- [2]
				},
				[120371] = {
					"Helblaze Imp", -- [1]
					"Cathedral of Eternal Night", -- [2]
				},
				[104247] = {
					"Duskwatch Arcanist", -- [1]
					"Court of Stars", -- [2]
				},
				[12557] = {
					"Grethok the Controller", -- [1]
					"Blackwing Lair", -- [2]
				},
				[97081] = {
					"King Bjorn", -- [1]
					"Halls of Valor", -- [2]
				},
				[102200] = {
					"Ariden", -- [1]
					"Karazhan Catacombs", -- [2]
				},
				[47141] = {
					"Dread Scryer", -- [1]
					"Shadowfang Keep", -- [2]
				},
				[152669] = {
					"Void Globule", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[103224] = {
					"Volatile Scorpid", -- [1]
					"The Nighthold", -- [2]
				},
				[119860] = {
					"Fel-touched Pyromage", -- [1]
					"Legion Ship - Vertical - HighMountain", -- [2]
				},
				[8910] = {
					"Blazing Fireguard", -- [1]
					"Blackrock Depths", -- [2]
				},
				[173145] = {
					"Gorging Mite", -- [1]
					"Castle Nathria", -- [2]
				},
				[138338] = {
					"Reanimated Guardian", -- [1]
					"The Underrot", -- [2]
				},
				[98362] = {
					"Troubled Soul", -- [1]
					"Black Rook Hold", -- [2]
				},
				[173146] = {
					"Winged Ravager", -- [1]
					"Castle Nathria", -- [2]
				},
				[103225] = {
					"Acidmaw Scorpid", -- [1]
					"The Nighthold", -- [2]
				},
				[131685] = {
					"Runic Disciple", -- [1]
					"Waycrest Manor", -- [2]
				},
				[109112] = {
					"Rakeeshi Honor Guard", -- [1]
					"Battle of Exodar", -- [2]
				},
				[97083] = {
					"King Ranulf", -- [1]
					"Halls of Valor", -- [2]
				},
				[98363] = {
					"Grasping Tentacle", -- [1]
					"Maw of Souls", -- [2]
				},
				[19608] = {
					"Frayer Wildling", -- [1]
					"Tempest Keep: The Botanica", -- [2]
				},
				[115767] = {
					"Mistress Sassz'ine", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[120374] = {
					"Felguard Destroyer", -- [1]
					"Cathedral of Eternal Night", -- [2]
				},
				[5048] = {
					"Deviate Adder", -- [1]
					"Wailing Caverns", -- [2]
				},
				[76865] = {
					"Beastlord Darmac", -- [1]
					"Blackrock Foundry", -- [2]
				},
				[137830] = {
					"Pallid Gorger", -- [1]
					"Waycrest Manor", -- [2]
				},
				[32938] = {
					"Flash Freeze", -- [1]
					"Ulduar", -- [2]
				},
				[90686] = {
					"Felstalker Dreadhound", -- [1]
					"Broken Shore Scenario", -- [2]
				},
				[123702] = {
					"Feltouched Skitterer", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[99644] = {
					"Felguard Annihilator", -- [1]
					"Vault of the Wardens", -- [2]
				},
				[104251] = {
					"Duskwatch Sentry", -- [1]
					"Court of Stars", -- [2]
				},
				[121399] = {
					"Inquisitor Sebilus", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[132713] = {
					"Mogul Razdunk", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[174175] = {
					"Loyal Stoneborn", -- [1]
					"Halls of Atonement", -- [2]
				},
				[109882] = {
					"Argent Sentry", -- [1]
					"Death Knight Campaign - Light's Hope Chapel", -- [2]
				},
				[118840] = {
					"Lord Commander Alexius", -- [1]
					"Legion Ship - Vertical - Stormheim", -- [2]
				},
				[164450] = {
					"Dealer Xy'exa", -- [1]
					"De Other Side", -- [2]
				},
				[136297] = {
					"Forgotten Denizen", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[99645] = {
					"Shadowmoon Technician", -- [1]
					"Vault of the Wardens", -- [2]
				},
				[10990] = {
					"Alterac Ram", -- [1]
					"Alterac Valley", -- [2]
				},
				[151654] = {
					"Deuce Mecha-Buffer", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[96574] = {
					"Stormforged Sentinel", -- [1]
					"Halls of Valor", -- [2]
				},
				[121400] = {
					"Accusator Gnazh", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[101437] = {
					"Burning Geode", -- [1]
					"Neltharion's Lair", -- [2]
				},
				[134251] = {
					"Seneschal M'bara", -- [1]
					"Kings' Rest", -- [2]
				},
				[94271] = {
					"Skyfire Engineer", -- [1]
					"The Maw of Nashal", -- [2]
				},
				[90432] = {
					"Felfire Flamebelcher", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[127799] = {
					"Dazar'ai Honor Guard", -- [1]
					"Atal'Dazar", -- [2]
				},
				[151144] = {
					"Burzum", -- [1]
					"Waycrest Manor", -- [2]
				},
				[112955] = {
					"Shadescale Wyrm", -- [1]
					"The Nighthold", -- [2]
				},
				[97087] = {
					"Valarjar Champion", -- [1]
					"Halls of Valor", -- [2]
				},
				[11662] = {
					"Flamewaker Priest", -- [1]
					"Molten Core", -- [2]
				},
				[126776] = {
					"Slobbering Fiend", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[151657] = {
					"Bomb Tonk", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[111164] = {
					"Twilight Stardancer", -- [1]
					"The Nighthold", -- [2]
				},
				[74565] = {
					"Subjugator Kor'ul", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[161895] = {
					"Thing From Beyond", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[11982] = {
					"Magmadar", -- [1]
					"Molten Core", -- [2]
				},
				[151658] = {
					"Strider Tonk", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[112956] = {
					"Shimmering Manaspine", -- [1]
					"The Nighthold", -- [2]
				},
				[164967] = {
					"Doctor Ickus", -- [1]
					"Plaguefall", -- [2]
				},
				[106302] = {
					"Restless Tombguard", -- [1]
					"Shield's Rest", -- [2]
				},
				[98368] = {
					"Ghostly Protector", -- [1]
					"Black Rook Hold", -- [2]
				},
				[103231] = {
					"Grim Inquisitor", -- [1]
					"Darkheart Thicket", -- [2]
				},
				[111933] = {
					"Venomous Spiderling", -- [1]
					"The Emerald Nightmare", -- [2]
				},
				[91970] = {
					"Felguard Invader", -- [1]
					"Broken Shore Scenario", -- [2]
				},
				[153196] = {
					"Scrapbone Grunter", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[158315] = {
					"Eye of Chaos", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[94018] = {
					"Shadow Burster", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[47145] = {
					"Spitebone Guardian", -- [1]
					"Shadowfang Keep", -- [2]
				},
				[90435] = {
					"Kormrok", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[111166] = {
					"Resolute Courtesan", -- [1]
					"The Nighthold", -- [2]
				},
				[99649] = {
					"Dreadlord Mendacius", -- [1]
					"Vault of the Wardens", -- [2]
				},
				[8911] = {
					"Fireguard Destroyer", -- [1]
					"Blackrock Depths", -- [2]
				},
				[163947] = {
					"Psychophage", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[148591] = {
					"Prison Groundsman", -- [1]
					"Tol Dagor Scenario", -- [2]
				},
				[105536] = {
					"Akaari Shadowgore", -- [1]
					"Artifact - Acquisition - Subtlety", -- [2]
				},
				[106304] = {
					"Corrupted Wisp", -- [1]
					"The Emerald Nightmare", -- [2]
				},
				[94275] = {
					"Skyfire Powder Monkey", -- [1]
					"The Maw of Nashal", -- [2]
				},
				[148592] = {
					"Prison Groundsman", -- [1]
					"Tol Dagor Scenario", -- [2]
				},
				[141938] = {
					"Ashvane Sniper", -- [1]
					"Siege of Boralus", -- [2]
				},
				[164461] = {
					"Sathel the Accursed", -- [1]
					"Theater of Pain", -- [2]
				},
				[105537] = {
					"Shadowgore Bloodmaiden", -- [1]
					"Artifact - Acquisition - Subtlety", -- [2]
				},
				[141939] = {
					"Ashvane Spotter", -- [1]
					"Siege of Boralus", -- [2]
				},
				[167533] = {
					"Advent Nevermore", -- [1]
					"Theater of Pain", -- [2]
				},
				[47146] = {
					"Spitebone Flayer", -- [1]
					"Shadowfang Keep", -- [2]
				},
				[74569] = {
					"Restorative Waters", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[128060] = {
					"Priestess of Delirium", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[99651] = {
					"Faceless Voidcaster", -- [1]
					"Vault of the Wardens", -- [2]
				},
				[167534] = {
					"Rek the Hardened", -- [1]
					"Theater of Pain", -- [2]
				},
				[164463] = {
					"Paceran the Virulent", -- [1]
					"Theater of Pain", -- [2]
				},
				[105538] = {
					"Shadowgore Darkcaster", -- [1]
					"Artifact - Acquisition - Subtlety", -- [2]
				},
				[81224] = {
					"Bladespire Sorcerer", -- [1]
					"Highmaul", -- [2]
				},
				[164464] = {
					"Xira the Underhanded", -- [1]
					"Theater of Pain", -- [2]
				},
				[157810] = {
					"Mawsworn Endbringer", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[162417] = {
					"Anubisath Sentinel", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[95813] = {
					"Weaponlord Mehlkhior", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[167536] = {
					"Harugia the Bloodthirsty", -- [1]
					"Theater of Pain", -- [2]
				},
				[33838] = {
					"Enslaved Fire Elemental", -- [1]
					"Ulduar", -- [2]
				},
				[33966] = {
					"Crusher Tentacle", -- [1]
					"Ulduar", -- [2]
				},
				[105539] = {
					"Shadowgore Stalker", -- [1]
					"Artifact - Acquisition - Subtlety", -- [2]
				},
				[111170] = {
					"Astral Farseer", -- [1]
					"The Nighthold", -- [2]
				},
				[157300] = {
					"Tunk", -- [1]
					"Darkmaul Citadel", -- [2]
				},
				[157812] = {
					"Billibub Cogspinner", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[167538] = {
					"Dokigg the Brutalizer", -- [1]
					"Theater of Pain", -- [2]
				},
				[129598] = {
					"Freehold Pack Mule", -- [1]
					"Freehold", -- [2]
				},
				[157813] = {
					"Sprite Jumpsprocket", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[109891] = {
					"Blood Knight", -- [1]
					"Death Knight Campaign - Light's Hope Chapel", -- [2]
				},
				[126527] = {
					"Fel Portal", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[37038] = {
					"Vengeful Fleshreaper", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[18587] = {
					"Frayer", -- [1]
					"Tempest Keep: The Botanica", -- [2]
				},
				[150136] = {
					"Faceless Render", -- [1]
					"Uldir Scenario", -- [2]
				},
				[162933] = {
					"Thought Harvester", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[75852] = {
					"Corrupted Healing Totem", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[129599] = {
					"Cutwater Knife Juggler", -- [1]
					"Freehold", -- [2]
				},
				[105541] = {
					"Eye of Xirus", -- [1]
					"Artifact - Acquisition - Subtlety", -- [2]
				},
				[109892] = {
					"Argus Purifier", -- [1]
					"Death Knight Campaign - Light's Hope Chapel", -- [2]
				},
				[154744] = {
					"Toxic Monstrosity", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[99655] = {
					"Void-Touched Juggernaut", -- [1]
					"Vault of the Wardens", -- [2]
				},
				[11983] = {
					"Firemaw", -- [1]
					"Blackwing Lair", -- [2]
				},
				[104262] = {
					"Burning Ember", -- [1]
					"The Nighthold", -- [2]
				},
				[20059] = {
					"Sunseeker Netherbinder", -- [1]
					"Tempest Keep: The Mechanar", -- [2]
				},
				[129600] = {
					"Bilge Rat Brinescale", -- [1]
					"Freehold", -- [2]
				},
				[76877] = {
					"Gruul", -- [1]
					"Blackrock Foundry", -- [2]
				},
				[109893] = {
					"Silver Hand Knight", -- [1]
					"Death Knight Campaign - Light's Hope Chapel", -- [2]
				},
				[114244] = {
					"Eredar Mageslayer", -- [1]
					"Black Rook Hold [Scenario]", -- [2]
				},
				[152699] = {
					"Voidbound Berserker", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[12463] = {
					"Death Talon Flamescale", -- [1]
					"Blackwing Lair", -- [2]
				},
				[112709] = {
					"Promenade Guard", -- [1]
					"The Nighthold", -- [2]
				},
				[156795] = {
					"SI:7 Informant", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[34224] = {
					"Ice Turret", -- [1]
					"Ulduar", -- [2]
				},
				[109894] = {
					"Sunwalker Brave", -- [1]
					"Death Knight Campaign - Light's Hope Chapel", -- [2]
				},
				[114245] = {
					"Eredar Mageslayer", -- [1]
					"Black Rook Hold [Scenario]", -- [2]
				},
				[127810] = {
					"Slobbering Fiend", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[99657] = {
					"Deranged Mindflayer", -- [1]
					"Vault of the Wardens", -- [2]
				},
				[138369] = {
					"Footbomb Hooligan", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[108359] = {
					"Volatile Scorpid", -- [1]
					"The Nighthold", -- [2]
				},
				[168058] = {
					"Infused Quill-feather", -- [1]
					"Sanguine Depths", -- [2]
				},
				[100937] = {
					"Dark Rider", -- [1]
					"Karazhan Catacombs", -- [2]
				},
				[109895] = {
					"Silver Highguard", -- [1]
					"Death Knight Campaign - Light's Hope Chapel", -- [2]
				},
				[94283] = {
					"Shadow Infuser", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[13359] = {
					"Frostwolf Bowman", -- [1]
					"Alterac Valley", -- [2]
				},
				[152703] = {
					"Walkie Shockie X1", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[33329] = {
					"Heart of the Deconstructor", -- [1]
					"Ulduar", -- [2]
				},
				[166524] = {
					"Deathwalker", -- [1]
					"Theater of Pain", -- [2]
				},
				[108360] = {
					"Acidmaw Scorpid", -- [1]
					"The Nighthold", -- [2]
				},
				[96587] = {
					"Felsworn Infester", -- [1]
					"Vault of the Wardens", -- [2]
				},
				[100938] = {
					"Dark Rider", -- [1]
					"Karazhan Catacombs", -- [2]
				},
				[94284] = {
					"Fiery Enkindler", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[150146] = {
					"Scrapbone Shaman", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[108361] = {
					"Crystalline Scorpid", -- [1]
					"The Nighthold", -- [2]
				},
				[168574] = {
					"Pestilent Harvester", -- [1]
					"Plaguefall", -- [2]
				},
				[161408] = {
					"Malicious Growth", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[157825] = {
					"Crazed Tormenter", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[127045] = {
					"Antoran Champion", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[86607] = {
					"Iron Flame Technician", -- [1]
					"Highmaul", -- [2]
				},
				[75090] = {
					"Deep Terror", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[163457] = {
					"Forsworn Vanguard", -- [1]
					"Spires of Ascension", -- [2]
				},
				[152708] = {
					"Mawsworn Seeker", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[42800] = {
					"Golem Sentry", -- [1]
					"Blackwing Descent", -- [2]
				},
				[163458] = {
					"Forsworn Castigator", -- [1]
					"Spires of Ascension", -- [2]
				},
				[163459] = {
					"Forsworn Mender", -- [1]
					"Spires of Ascension", -- [2]
				},
				[168578] = {
					"Fungalmancer", -- [1]
					"Plaguefall", -- [2]
				},
				[136330] = {
					"Soul Thorns", -- [1]
					"Waycrest Manor", -- [2]
				},
				[154758] = {
					"Toxic Monstrosity", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[168579] = {
					"Fen Hatchling", -- [1]
					"Plaguefall", -- [2]
				},
				[86609] = {
					"Iron Warmaster", -- [1]
					"Highmaul", -- [2]
				},
				[174210] = {
					"Blighted Sludge-Spewer", -- [1]
					"Theater of Pain", -- [2]
				},
				[134284] = {
					"Fallen Deathspeaker", -- [1]
					"The Underrot", -- [2]
				},
				[168580] = {
					"Plagueborer", -- [1]
					"Plaguefall", -- [2]
				},
				[11664] = {
					"Flamewaker Elite", -- [1]
					"Molten Core", -- [2]
				},
				[150154] = {
					"Saurolisk Bonenipper", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[104270] = {
					"Guardian Construct", -- [1]
					"Court of Stars", -- [2]
				},
				[152202] = {
					"Rowa Bloodstrike", -- [1]
					"Siege of Orgrimmar - Coup Scenario", -- [2]
				},
				[160904] = {
					"Image of Absolution", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[161416] = {
					"Aqir Shadowcrafter", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[98384] = {
					"Razormouth", -- [1]
					"Neltharion's Lair", -- [2]
				},
				[86611] = {
					"Mind Fungus", -- [1]
					"Highmaul", -- [2]
				},
				[83028] = {
					"Grom'kar Deadeye", -- [1]
					"Iron Docks", -- [2]
				},
				[12464] = {
					"Death Talon Seether", -- [1]
					"Blackwing Lair", -- [2]
				},
				[120651] = {
					"Explosives", -- [1]
					"The Underrot", -- [2]
				},
				[112973] = {
					"Duskwatch Weaver", -- [1]
					"The Nighthold", -- [2]
				},
				[173191] = {
					"Soulstalker V'lara", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[86612] = {
					"Spore Shooter", -- [1]
					"Highmaul", -- [2]
				},
				[107855] = {
					"Vindictive Spirit", -- [1]
					"The Ruins of Falanaar", -- [2]
				},
				[8913] = {
					"Twilight Emissary", -- [1]
					"Blackrock Depths", -- [2]
				},
				[104272] = {
					"Impling Pursuer", -- [1]
					"Niskara", -- [2]
				},
				[104528] = {
					"High Botanist Tel'arn", -- [1]
					"The Nighthold", -- [2]
				},
				[131731] = {
					"Sown Lasher", -- [1]
					"Waycrest Manor", -- [2]
				},
				[152718] = {
					"Alleria Windrunner", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[165515] = {
					"Depraved Darkblade", -- [1]
					"Halls of Atonement", -- [2]
				},
				[113998] = {
					"Mightstone Breaker", -- [1]
					"Neltharion's Lair", -- [2]
				},
				[155790] = {
					"Mawsworn Acolyte", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[172682] = {
					"Splinterbark Nightmare", -- [1]
					"9.0 Bastion Arena - Path of Ascension", -- [2]
				},
				[156814] = {
					"Gor'groth", -- [1]
					"Darkmaul Citadel", -- [2]
				},
				[150160] = {
					"Scrapbone Bully", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[33717] = {
					"Azure Consort", -- [1]
					"Ulduar", -- [2]
				},
				[19166] = {
					"Tempest-Forge Patroller", -- [1]
					"Tempest Keep: The Mechanar", -- [2]
				},
				[130635] = {
					"Stonefury", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[19486] = {
					"Sunseeker Chemist", -- [1]
					"Tempest Keep: The Botanica", -- [2]
				},
				[82519] = {
					"Highmaul Conscript", -- [1]
					"Highmaul", -- [2]
				},
				[157328] = {
					"Darkmaul Channeler", -- [1]
					"Darkmaul Citadel", -- [2]
				},
				[104274] = {
					"Baalgar the Watchful", -- [1]
					"Court of Stars", -- [2]
				},
				[155793] = {
					"Skeletal Remains", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[152722] = {
					"Fallen Voidspeaker", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[102227] = {
					"Dread Harpooner", -- [1]
					"Azsuna", -- [2]
				},
				[168591] = {
					"Ravenous Dreadbat", -- [1]
					"Sanguine Depths", -- [2]
				},
				[98900] = {
					"Wyrmtongue Trickster", -- [1]
					"Black Rook Hold", -- [2]
				},
				[3637] = {
					"Deviate Guardian", -- [1]
					"Wailing Caverns", -- [2]
				},
				[37813] = {
					"Deathbringer Saurfang", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[3653] = {
					"Kresh", -- [1]
					"Wailing Caverns", -- [2]
				},
				[3669] = {
					"Lord Cobrahn", -- [1]
					"Wailing Caverns", -- [2]
				},
				[165521] = {
					"Lady Inerva Darkvein", -- [1]
					"Castle Nathria", -- [2]
				},
				[97365] = {
					"Seacursed Mistmender", -- [1]
					"Maw of Souls", -- [2]
				},
				[150165] = {
					"Slime Elemental", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[90199] = {
					"Gorefiend", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[156820] = {
					"Dod", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[172177] = {
					"Echthra", -- [1]
					"9.0 Bastion Arena - Path of Ascension", -- [2]
				},
				[168594] = {
					"Chamber Sentinel", -- [1]
					"Sanguine Depths", -- [2]
				},
				[156821] = {
					"Darkmaul Shadowcaller", -- [1]
					"Darkmaul Citadel", -- [2]
				},
				[169618] = {
					"Umbrawing Glimmerfly", -- [1]
					"Spires of Ascension", -- [2]
				},
				[172690] = {
					"Faerie", -- [1]
					"9.0 Bastion Arena - Path of Ascension", -- [2]
				},
				[136347] = {
					"Tidesage Initiate", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[173714] = {
					"Mistveil Nightblossom", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[3877] = {
					"Wailing Guardsman", -- [1]
					"Shadowfang Keep", -- [2]
				},
				[150168] = {
					"Toxic Monstrosity", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[33719] = {
					"Emerald Consort", -- [1]
					"Ulduar", -- [2]
				},
				[172179] = {
					"Crawler", -- [1]
					"9.0 Bastion Arena - Path of Ascension", -- [2]
				},
				[164501] = {
					"Mistcaller", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[19167] = {
					"Bloodwarder Slayer", -- [1]
					"Tempest Keep: The Mechanar", -- [2]
				},
				[11665] = {
					"Lava Annihilator", -- [1]
					"Molten Core", -- [2]
				},
				[150169] = {
					"Toxic Lurker", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[77404] = {
					"The Butcher", -- [1]
					"Highmaul", -- [2]
				},
				[94808] = {
					"Hellfire Guardian", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[115795] = {
					"Abyss Stalker", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[95832] = {
					"Valarjar Shieldmaiden", -- [1]
					"Halls of Valor", -- [2]
				},
				[104278] = {
					"Felbound Enforcer", -- [1]
					"Court of Stars", -- [2]
				},
				[104534] = {
					"D'zorykx the Trapper", -- [1]
					"The Nighthold", -- [2]
				},
				[156825] = {
					"Darkmaul Centurion", -- [1]
					"Darkmaul Citadel", -- [2]
				},
				[60849] = {
					"Jade Serpent Statue", -- [1]
					"Twin Peaks", -- [2]
				},
				[122450] = {
					"Garothi Worldbreaker", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[130896] = {
					"Blackout Barrel", -- [1]
					"Freehold", -- [2]
				},
				[139422] = {
					"Scaled Krolusk Tamer", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[94809] = {
					"Knight-Captain Brimley", -- [1]
					"The Maw of Nashal", -- [2]
				},
				[153755] = {
					"Naeno Megacrash", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[12465] = {
					"Death Talon Wyrmkin", -- [1]
					"Blackwing Lair", -- [2]
				},
				[95833] = {
					"Hyrja", -- [1]
					"Halls of Valor", -- [2]
				},
				[33720] = {
					"Obsidian Consort", -- [1]
					"Ulduar", -- [2]
				},
				[140447] = {
					"Demolishing Terror", -- [1]
					"Siege of Boralus", -- [2]
				},
				[153244] = {
					"Oblivion Elemental", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[102232] = {
					"Rockbound Trapper", -- [1]
					"Neltharion's Lair", -- [2]
				},
				[135329] = {
					"Matron Bryndle", -- [1]
					"Waycrest Manor", -- [2]
				},
				[164506] = {
					"Ancient Captain", -- [1]
					"Theater of Pain", -- [2]
				},
				[136353] = {
					"Colossal Tentacle", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[157340] = {
					"Skeletal Remains", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[8914] = {
					"Twilight Bodyguard", -- [1]
					"Blackrock Depths", -- [2]
				},
				[17952] = {
					"Darkwater Crocolisk", -- [1]
					"Opening of the Dark Portal", -- [2]
				},
				[9042] = {
					"Verek", -- [1]
					"Blackrock Depths", -- [2]
				},
				[105304] = {
					"Dominator Tentacle", -- [1]
					"The Emerald Nightmare", -- [2]
				},
				[127315] = {
					"Reanimation Totem", -- [1]
					"Atal'Dazar", -- [2]
				},
				[123476] = {
					"Hulking Demolisher", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[161437] = {
					"Explosive Scarab", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[103769] = {
					"Xavius", -- [1]
					"The Emerald Nightmare", -- [2]
				},
				[120405] = {
					"Dreadwing", -- [1]
					"Cathedral of Eternal Night", -- [2]
				},
				[113239] = {
					"Gibbering Felspawn", -- [1]
					"Black Rook Hold [Scenario]", -- [2]
				},
				[19168] = {
					"Sunseeker Astromage", -- [1]
					"Tempest Keep: The Mechanar", -- [2]
				},
				[153760] = {
					"Enthralled Footman", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[158367] = {
					"Basher Tentacle", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[122965] = {
					"Vol'kaal", -- [1]
					"Atal'Dazar", -- [2]
				},
				[164510] = {
					"Shambling Arbalest", -- [1]
					"Theater of Pain", -- [2]
				},
				[123477] = {
					"Antoran Doomguard", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[99675] = {
					"Enormous Stone Quilen", -- [1]
					"Vault of the Wardens", -- [2]
				},
				[135846] = {
					"Sand-Crusted Striker", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[170654] = {
					"Kalisthene", -- [1]
					"9.0 Bastion Arena - Path of Ascension", -- [2]
				},
				[123478] = {
					"Antoran Felguard", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[99676] = {
					"Mogu'shan Secret-Keeper", -- [1]
					"Vault of the Wardens", -- [2]
				},
				[33722] = {
					"Storm Tempered Keeper", -- [1]
					"Ulduar", -- [2]
				},
				[34234] = {
					"Runeforged Sentry", -- [1]
					"Ulduar", -- [2]
				},
				[158371] = {
					"Zardeth of the Black Claw", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[155812] = {
					"Mawsworn Ritualist", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[112474] = {
					"Corrupted Totem", -- [1]
					"The Emerald Nightmare", -- [2]
				},
				[129366] = {
					"Bilge Rat Buccaneer", -- [1]
					"Siege of Boralus", -- [2]
				},
				[157349] = {
					"Void Boar", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[158373] = {
					"Roberto Pupellyverbos", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[163492] = {
					"Rabid Wolf", -- [1]
					"Redridge - 9xp Bastion", -- [2]
				},
				[122968] = {
					"Yazma", -- [1]
					"Atal'Dazar", -- [2]
				},
				[139946] = {
					"Heart Guardian", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[123480] = {
					"Antoran Champion", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[89] = {
					"Infernal", -- [1]
					"Waycrest Manor", -- [2]
				},
				[170147] = {
					"Volatile Memory", -- [1]
					"De Other Side", -- [2]
				},
				[120153] = {
					"Eonic Defender", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[171171] = {
					"Mawsworn Archer", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[134828] = {
					"Aqualing", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[164517] = {
					"Tred'ova", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[97119] = {
					"Shroud Hound", -- [1]
					"Maw of Souls", -- [2]
				},
				[11666] = {
					"Firewalker", -- [1]
					"Molten Core", -- [2]
				},
				[158375] = {
					"Corruptor Tentacle", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[114267] = {
					"Ley Spider Egg", -- [1]
					"The Collapse - Suramar Scenario", -- [2]
				},
				[168101] = {
					"Empowered Deadsoul Shade", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[165030] = {
					"Lady Inerva Darkvein", -- [1]
					"Castle Nathria Scenario", -- [2]
				},
				[95072] = {
					"Greater Earth Elemental", -- [1]
					"Warsong Gulch", -- [2]
				},
				[78948] = {
					"Tectus", -- [1]
					"Highmaul", -- [2]
				},
				[158376] = {
					"Psychus", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[171173] = {
					"Mawsworn Shadestalker", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[12018] = {
					"Majordomo Executus", -- [1]
					"Molten Core", -- [2]
				},
				[168102] = {
					"Empowered Deadsoul Echo", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[139949] = {
					"Plague Doctor", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[122970] = {
					"Shadowblade Stalker", -- [1]
					"Atal'Dazar", -- [2]
				},
				[82532] = {
					"Krush", -- [1]
					"Highmaul", -- [2]
				},
				[157354] = {
					"Vexiona", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[168104] = {
					"Empowered Flameforge Master", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[96609] = {
					"Gildedfur Stag", -- [1]
					"Halls of Valor", -- [2]
				},
				[117596] = {
					"Razorjaw Gladiator", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[106335] = {
					"Restless Tombguard", -- [1]
					"Shield's Rest", -- [2]
				},
				[168105] = {
					"Empowered Mawsworn Flametender", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[86372] = {
					"Melded Berserker", -- [1]
					"The Everbloom", -- [2]
				},
				[82533] = {
					"Smash", -- [1]
					"Highmaul", -- [2]
				},
				[150190] = {
					"HK-8 Aerial Oppression Unit", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[95842] = {
					"Valarjar Thundercaller", -- [1]
					"Halls of Valor", -- [2]
				},
				[104288] = {
					"Trilliax", -- [1]
					"The Nighthold", -- [2]
				},
				[168106] = {
					"Empowered Mawsworn Guard", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[129370] = {
					"Irontide Waveshaper", -- [1]
					"Siege of Boralus", -- [2]
				},
				[159405] = {
					"Aqir Scarab", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[122972] = {
					"Dazar'ai Augur", -- [1]
					"Atal'Dazar", -- [2]
				},
				[94563] = {
					"Gorebound Fanatic", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[82534] = {
					"Spike", -- [1]
					"Highmaul", -- [2]
				},
				[95843] = {
					"King Haldor", -- [1]
					"Halls of Valor", -- [2]
				},
				[163501] = {
					"Forsworn Skirmisher", -- [1]
					"Spires of Ascension", -- [2]
				},
				[168108] = {
					"Empowered Lumbering Creation", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[129371] = {
					"Riptide Shredder", -- [1]
					"Siege of Boralus", -- [2]
				},
				[122973] = {
					"Dazar'ai Confessor", -- [1]
					"Atal'Dazar", -- [2]
				},
				[94820] = {
					"Worgen Stalker", -- [1]
					"The Maw of Nashal", -- [2]
				},
				[120158] = {
					"Volatile Corruption", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[171181] = {
					"Territorial Bladebeak", -- [1]
					"De Other Side", -- [2]
				},
				[163503] = {
					"Etherdiver", -- [1]
					"Spires of Ascension", -- [2]
				},
				[160432] = {
					"Kyrian Combat Trainer", -- [1]
					"9.0 Bastion Arena - Path of Ascension", -- [2]
				},
				[28384] = {
					"Lesser Air Elemental", -- [1]
					"Halls of Stone", -- [2]
				},
				[150195] = {
					"Gnome-Eating Slime", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[122718] = {
					"Felblade Shocktrooper", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[168111] = {
					"Empowered Imperial Curator", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[16803] = {
					"Death Knight Understudy", -- [1]
					"Naxxramas", -- [2]
				},
				[129373] = {
					"Dockhound Packmaster", -- [1]
					"Siege of Boralus", -- [2]
				},
				[141495] = {
					"Kul Tiran Footman", -- [1]
					"Siege of Boralus", -- [2]
				},
				[130653] = {
					"Wanton Sapper", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[130909] = {
					"Fetid Maggot", -- [1]
					"The Underrot", -- [2]
				},
				[155828] = {
					"Runecarved Colossus", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[94822] = {
					"Abigail the Huntress", -- [1]
					"The Maw of Nashal", -- [2]
				},
				[84841] = {
					"Iron Dockworker", -- [1]
					"Blackrock Foundry", -- [2]
				},
				[134331] = {
					"King Rahu'ai", -- [1]
					"Kings' Rest", -- [2]
				},
				[98406] = {
					"Embershard Scorpion", -- [1]
					"Neltharion's Lair", -- [2]
				},
				[168627] = {
					"Plaguebinder", -- [1]
					"Plaguefall", -- [2]
				},
				[157366] = {
					"Void Hunter", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[128095] = {
					"Sister of the Lash", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[150712] = {
					"Trixie Tazer", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[155831] = {
					"Mawsworn Soulbinder", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[33983] = {
					"Constrictor Tentacle", -- [1]
					"Ulduar", -- [2]
				},
				[11667] = {
					"Flameguard", -- [1]
					"Molten Core", -- [2]
				},
				[171188] = {
					"Plaguebound Devoted", -- [1]
					"Plaguefall", -- [2]
				},
				[106341] = {
					"Disturbed Tracker", -- [1]
					"Shield's Rest", -- [2]
				},
				[11859] = {
					"Doomguard", -- [1]
					"Warsong Gulch", -- [2]
				},
				[137405] = {
					"Gripping Terror", -- [1]
					"Siege of Boralus", -- [2]
				},
				[16146] = {
					"Death Knight", -- [1]
					"Naxxramas", -- [2]
				},
				[130400] = {
					"Irontide Crusher", -- [1]
					"Freehold", -- [2]
				},
				[101991] = {
					"Nightmare Dweller", -- [1]
					"Darkheart Thicket", -- [2]
				},
				[159417] = {
					"Demented Knife-Twister", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[165560] = {
					"Gormling Larva", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[12435] = {
					"Razorgore the Untamed", -- [1]
					"Blackwing Lair", -- [2]
				},
				[12467] = {
					"Death Talon Captain", -- [1]
					"Blackwing Lair", -- [2]
				},
				[104295] = {
					"Blazing Imp", -- [1]
					"Court of Stars", -- [2]
				},
				[112741] = {
					"Wrathguard Decimator", -- [1]
					"Assault on Violet Hold", -- [2]
				},
				[122467] = {
					"Asara, Mother of Night", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[102248] = {
					"Ravenous Hunter", -- [1]
					"Azsuna", -- [2]
				},
				[152253] = {
					"The Tarragrue", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[74351] = {
					"Twilight Disciple", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[8916] = {
					"Arena Spectator", -- [1]
					"Blackrock Depths", -- [2]
				},
				[17892] = {
					"Infinite Chronomancer", -- [1]
					"Opening of the Dark Portal", -- [2]
				},
				[92523] = {
					"Vazeel'fazag", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[122468] = {
					"Noura, Mother of Flames", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[106344] = {
					"Disturbed Worg", -- [1]
					"Shield's Rest", -- [2]
				},
				[111975] = {
					"Shadowfeather", -- [1]
					"The Emerald Nightmare", -- [2]
				},
				[167612] = {
					"Stoneborn Reaver", -- [1]
					"Halls of Atonement", -- [2]
				},
				[33985] = {
					"Corruptor Tentacle", -- [1]
					"Ulduar", -- [2]
				},
				[166589] = {
					"Animated Weapon", -- [1]
					"Sanguine Depths", -- [2]
				},
				[122469] = {
					"Diima, Mother of Gloom", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[135365] = {
					"Matron Alma", -- [1]
					"Waycrest Manor", -- [2]
				},
				[74353] = {
					"Twilight Aquamancer", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[135366] = {
					"Blacktooth Arsonist", -- [1]
					"Tol Dagor", -- [2]
				},
				[113512] = {
					"Putrid Sludge", -- [1]
					"The Nighthold", -- [2]
				},
				[166079] = {
					"Brittlebone Crossbowman", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[130404] = {
					"Vermin Trapper", -- [1]
					"Freehold", -- [2]
				},
				[101995] = {
					"Festerface", -- [1]
					"Assault on Violet Hold", -- [2]
				},
				[163520] = {
					"Forsworn Squad-Leader", -- [1]
					"Spires of Ascension", -- [2]
				},
				[136391] = {
					"Heart Guardian", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[2630] = {
					"Earthbind Totem", -- [1]
					"Isle of Conquest", -- [2]
				},
				[131785] = {
					"Buzzing Drone", -- [1]
					"Tol Dagor", -- [2]
				},
				[130661] = {
					"Venture Co. Earthshaper", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[102252] = {
					"Dread Lookout", -- [1]
					"Azsuna", -- [2]
				},
				[144071] = {
					"Irontide Waveshaper", -- [1]
					"Siege of Boralus", -- [2]
				},
				[111210] = {
					"Searing Infernal", -- [1]
					"The Nighthold", -- [2]
				},
				[104300] = {
					"Shadow Mistress", -- [1]
					"Court of Stars", -- [2]
				},
				[92527] = {
					"Dag'gorath", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[165059] = {
					"Crimson Protector", -- [1]
					"Castle Nathria Scenario", -- [2]
				},
				[93295] = {
					"Darkcaster Adept", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[133835] = {
					"Feral Bloodswarmer", -- [1]
					"The Underrot", -- [2]
				},
				[18405] = {
					"Tempest-Forge Peacekeeper", -- [1]
					"Tempest Keep: The Botanica", -- [2]
				},
				[122984] = {
					"Dazar'ai Colossus", -- [1]
					"Atal'Dazar", -- [2]
				},
				[98926] = {
					"Shadow Hunter", -- [1]
					"Vault of the Wardens", -- [2]
				},
				[133836] = {
					"Reanimated Guardian", -- [1]
					"The Underrot", -- [2]
				},
				[5755] = {
					"Deviate Viper", -- [1]
					"Wailing Caverns", -- [2]
				},
				[165061] = {
					"Crimson Assassin", -- [1]
					"Castle Nathria Scenario", -- [2]
				},
				[11668] = {
					"Firelord", -- [1]
					"Molten Core", -- [2]
				},
				[110700] = {
					"Felbound Sycophant", -- [1]
					"Battle of Exodar", -- [2]
				},
				[164550] = {
					"Slithering Ooze", -- [1]
					"Plaguefall", -- [2]
				},
				[94832] = {
					"Gorebound Assassin", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[111980] = {
					"Nightmother", -- [1]
					"The Emerald Nightmare", -- [2]
				},
				[11988] = {
					"Golemagg the Incinerator", -- [1]
					"Molten Core", -- [2]
				},
				[100207] = {
					"Mist Warder", -- [1]
					"Tideskorn Harbor", -- [2]
				},
				[125545] = {
					"Blazing Imp", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[16243] = {
					"Plague Slime", -- [1]
					"Naxxramas", -- [2]
				},
				[167111] = {
					"Spinemaw Staghorn", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[164552] = {
					"Rotmarrow Slime", -- [1]
					"Plaguefall", -- [2]
				},
				[169159] = {
					"Unstable Canister", -- [1]
					"Plaguefall", -- [2]
				},
				[12468] = {
					"Death Talon Hatcher", -- [1]
					"Blackwing Lair", -- [2]
				},
				[33988] = {
					"Immortal Guardian", -- [1]
					"Ulduar", -- [2]
				},
				[93298] = {
					"Shadowheart Fiend", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[158411] = {
					"Unstable Servant", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[167113] = {
					"Spinemaw Acidgullet", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[77942] = {
					"Primal Storm Elemental", -- [1]
					"Isle of Conquest", -- [2]
				},
				[165066] = {
					"Huntsman Altimor", -- [1]
					"Castle Nathria", -- [2]
				},
				[150222] = {
					"Gunker", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[164555] = {
					"Millificent Manastorm", -- [1]
					"De Other Side", -- [2]
				},
				[13140] = {
					"Commander Dardosh", -- [1]
					"Alterac Valley", -- [2]
				},
				[162508] = {
					"Anubisath Sentinel", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[77687] = {
					"Grom'kar Man-at-Arms", -- [1]
					"Blackrock Foundry", -- [2]
				},
				[144081] = {
					"Training Dummy", -- [1]
					"Silvershard Mines", -- [2]
				},
				[95603] = {
					"Mystic Aaran", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[167116] = {
					"Spinemaw Reaver", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[75640] = {
					"Blindlight Murloc", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[18982] = {
					"Sable Jaguar", -- [1]
					"Opening of the Dark Portal", -- [2]
				},
				[144082] = {
					"Training Dummy", -- [1]
					"Rated Eye of the Storm", -- [2]
				},
				[137940] = {
					"Safety Shark", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[167117] = {
					"Spinemaw Larva", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[82039] = {
					"Rockspine Stinger", -- [1]
					"The Everbloom", -- [2]
				},
				[164558] = {
					"Hakkar the Soulflayer", -- [1]
					"De Other Side", -- [2]
				},
				[90997] = {
					"Mightstone Breaker", -- [1]
					"Neltharion's Lair", -- [2]
				},
				[157904] = {
					"Aqir Scarab", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[75641] = {
					"Blindlight Bilefin", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[125549] = {
					"Hungering Stalker", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[105330] = {
					"Rampant Felstalker", -- [1]
					"Nordrassil", -- [2]
				},
				[81272] = {
					"Gorian Runemaster", -- [1]
					"Highmaul", -- [2]
				},
				[93813] = {
					"Contracted Engineer", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[106354] = {
					"Automated Crusher", -- [1]
					"Shield's Rest", -- [2]
				},
				[144085] = {
					"Training Dummy", -- [1]
					"Rated Eye of the Storm", -- [2]
				},
				[99188] = {
					"Waterlogged Soul Guard", -- [1]
					"Maw of Souls", -- [2]
				},
				[33350] = {
					"Mimiron", -- [1]
					"Ulduar", -- [2]
				},
				[166608] = {
					"Mueh'zala", -- [1]
					"De Other Side", -- [2]
				},
				[99956] = {
					"Fel-Infused Fury", -- [1]
					"Vault of the Wardens", -- [2]
				},
				[75642] = {
					"Blindlight Bilefin", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[3654] = {
					"Mutanus the Devourer", -- [1]
					"Wailing Caverns", -- [2]
				},
				[42180] = {
					"Toxitron", -- [1]
					"Blackwing Descent", -- [2]
				},
				[3670] = {
					"Lord Pythas", -- [1]
					"Wailing Caverns", -- [2]
				},
				[121711] = {
					"Bilespray Lasher", -- [1]
					"Cathedral of Eternal Night", -- [2]
				},
				[14772] = {
					"East Frostwolf Warmaster", -- [1]
					"Alterac Valley", -- [2]
				},
				[114289] = {
					"Skeletal Sorcerer", -- [1]
					"Maw of Souls", -- [2]
				},
				[164562] = {
					"Depraved Houndmaster", -- [1]
					"Halls of Atonement", -- [2]
				},
				[74363] = {
					"Twilight Shadow", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[78714] = {
					"Kargath Bladefist", -- [1]
					"Highmaul", -- [2]
				},
				[75643] = {
					"Blindlight Murloc", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[164563] = {
					"Vicious Gargon", -- [1]
					"Halls of Atonement", -- [2]
				},
				[93303] = {
					"Slavering Hound", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[36678] = {
					"Professor Putricide", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[165076] = {
					"Gluttonous Tick", -- [1]
					"Sanguine Depths", -- [2]
				},
				[91000] = {
					"Vileshard Hulk", -- [1]
					"Neltharion's Lair", -- [2]
				},
				[133852] = {
					"Living Rot", -- [1]
					"The Underrot", -- [2]
				},
				[134364] = {
					"Faithless Tender", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[18983] = {
					"Blackfang Tarantula", -- [1]
					"Opening of the Dark Portal", -- [2]
				},
				[11669] = {
					"Flame Imp", -- [1]
					"Molten Core", -- [2]
				},
				[126832] = {
					"Skycap'n Kragg", -- [1]
					"Freehold", -- [2]
				},
				[91001] = {
					"Tarspitter Lurker", -- [1]
					"Neltharion's Lair", -- [2]
				},
				[12053] = {
					"Frostwolf Guardian", -- [1]
					"Alterac Valley", -- [2]
				},
				[164567] = {
					"Ingra Maloch", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[84859] = {
					"Iron Cleaver", -- [1]
					"Blackrock Foundry", -- [2]
				},
				[102263] = {
					"Skorpyron", -- [1]
					"The Nighthold", -- [2]
				},
				[135903] = {
					"Manifestation of the Deep", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[99192] = {
					"Shade of Xavius", -- [1]
					"Darkheart Thicket", -- [2]
				},
				[170199] = {
					"Harnessed Specter", -- [1]
					"Castle Nathria", -- [2]
				},
				[99704] = {
					"Shadowmoon Warlock", -- [1]
					"Vault of the Wardens", -- [2]
				},
				[100216] = {
					"Hatecoil Wrangler", -- [1]
					"Eye of Azshara", -- [2]
				},
				[113013] = {
					"Felsworn Shadowblade", -- [1]
					"The Nighthold", -- [2]
				},
				[84860] = {
					"Iron Earthbinder", -- [1]
					"Blackrock Foundry", -- [2]
				},
				[133345] = {
					"Feckless Assistant", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[101752] = {
					"Felblade Defender", -- [1]
					"Niskara", -- [2]
				},
				[138464] = {
					"Ashvane Deckhand", -- [1]
					"Siege of Boralus", -- [2]
				},
				[168153] = {
					"Plagueroc", -- [1]
					"Plaguefall", -- [2]
				},
				[98681] = {
					"Rook Spinner", -- [1]
					"Black Rook Hold", -- [2]
				},
				[111222] = {
					"Demonic Essence", -- [1]
					"The Nighthold", -- [2]
				},
				[91003] = {
					"Rokmora", -- [1]
					"Neltharion's Lair", -- [2]
				},
				[8886] = {
					"Deviate Python", -- [1]
					"Wailing Caverns", -- [2]
				},
				[138465] = {
					"Ashvane Cannoneer", -- [1]
					"Siege of Boralus", -- [2]
				},
				[36808] = {
					"Deathspeaker Zealot", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[98426] = {
					"Unstable Ooze", -- [1]
					"The Arcway", -- [2]
				},
				[119157] = {
					"Felguard", -- [1]
					"Cathedral of Eternal Night", -- [2]
				},
				[91004] = {
					"Ularogg Cragshaper", -- [1]
					"Neltharion's Lair", -- [2]
				},
				[160990] = {
					"Image of Absolution", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[161502] = {
					"Ravenous Fleshfiend", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[93308] = {
					"Portal Guardian", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[91005] = {
					"Naraxas", -- [1]
					"Neltharion's Lair", -- [2]
				},
				[120182] = {
					"Tormented Priestess", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[105338] = {
					"Lurking Stalker", -- [1]
					"Artifact - Acquisition - Subtlety", -- [2]
				},
				[111225] = {
					"Chaos Mage Beleron", -- [1]
					"The Nighthold", -- [2]
				},
				[91006] = {
					"Rockback Gnasher", -- [1]
					"Neltharion's Lair", -- [2]
				},
				[95613] = {
					"Binder Hallaani", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[131817] = {
					"Cragmaw the Infested", -- [1]
					"The Underrot", -- [2]
				},
				[169696] = {
					"Mire Soldier", -- [1]
					"Plaguefall", -- [2]
				},
				[121975] = {
					"Aggramar", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[14773] = {
					"Iceblood Warmaster", -- [1]
					"Alterac Valley", -- [2]
				},
				[98173] = {
					"Mystic Ssa'veh", -- [1]
					"Eye of Azshara", -- [2]
				},
				[131818] = {
					"Marked Sister", -- [1]
					"Waycrest Manor", -- [2]
				},
				[111226] = {
					"Summoner Xiv", -- [1]
					"The Nighthold", -- [2]
				},
				[91007] = {
					"Dargrul", -- [1]
					"Neltharion's Lair", -- [2]
				},
				[78978] = {
					"Darkshard Gnasher", -- [1]
					"Blackrock Foundry", -- [2]
				},
				[95614] = {
					"Binder Eloah", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[131819] = {
					"Coven Diviner", -- [1]
					"Waycrest Manor", -- [2]
				},
				[162020] = {
					"Priestess of Elune", -- [1]
					"Vision of Ysera Scenario", -- [2]
				},
				[158437] = {
					"Fallen Taskmaster", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[102269] = {
					"Felstalker Ravener", -- [1]
					"Assault on Violet Hold", -- [2]
				},
				[102781] = {
					"Fel Bat Pup", -- [1]
					"Black Rook Hold", -- [2]
				},
				[111227] = {
					"Felweaver Pharamere", -- [1]
					"The Nighthold", -- [2]
				},
				[91008] = {
					"Rockbound Pelter", -- [1]
					"Neltharion's Lair", -- [2]
				},
				[162021] = {
					"Temple Archer", -- [1]
					"Vision of Ysera Scenario", -- [2]
				},
				[91520] = {
					"Adjunct Kuroh", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[75396] = {
					"Deep Terror", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[120697] = {
					"Worshiper of Elune", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[131821] = {
					"Faceless Maiden", -- [1]
					"Waycrest Manor", -- [2]
				},
				[161510] = {
					"Mindrend Tentacle", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[150249] = {
					"Pistonhead Scrapper", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[102270] = {
					"Eredar Invader", -- [1]
					"Assault on Violet Hold", -- [2]
				},
				[152809] = {
					"Alx'kov the Infested", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[119930] = {
					"Dreadwing", -- [1]
					"Cathedral of Eternal Night", -- [2]
				},
				[133870] = {
					"Diseased Lasher", -- [1]
					"The Underrot", -- [2]
				},
				[163559] = {
					"Royal Servant", -- [1]
					"Revendreth Scenario", -- [2]
				},
				[135406] = {
					"Animated Gold", -- [1]
					"Kings' Rest", -- [2]
				},
				[131823] = {
					"Sister Malady", -- [1]
					"Waycrest Manor", -- [2]
				},
				[92801] = {
					"Winged Nightmare", -- [1]
					"Broken Shore Scenario", -- [2]
				},
				[150251] = {
					"Pistonhead Mechanic", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[36811] = {
					"Deathspeaker Attendant", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[131824] = {
					"Sister Solena", -- [1]
					"Waycrest Manor", -- [2]
				},
				[173798] = {
					"Rat of Unusual Size", -- [1]
					"Castle Nathria", -- [2]
				},
				[91522] = {
					"Protector Bajunt", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[131825] = {
					"Sister Briar", -- [1]
					"Waycrest Manor", -- [2]
				},
				[133361] = {
					"Wasting Servant", -- [1]
					"Waycrest Manor", -- [2]
				},
				[150253] = {
					"Weaponized Crawler", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[102272] = {
					"Felguard Destroyer", -- [1]
					"Assault on Violet Hold", -- [2]
				},
				[168681] = {
					"Forsworn Helion", -- [1]
					"Spires of Ascension", -- [2]
				},
				[173800] = {
					"Sewer Rat", -- [1]
					"Castle Nathria", -- [2]
				},
				[120188] = {
					"Wailing Soul", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[172265] = {
					"Remnant of Fury", -- [1]
					"Sanguine Depths", -- [2]
				},
				[137458] = {
					"Rotting Spore", -- [1]
					"The Underrot", -- [2]
				},
				[102273] = {
					"Doomguard Infiltrator", -- [1]
					"Assault on Violet Hold", -- [2]
				},
				[417] = {
					"Flaadrom", -- [1]
					"Warsong Gulch", -- [2]
				},
				[112255] = {
					"Sludgerax", -- [1]
					"The Nighthold", -- [2]
				},
				[134389] = {
					"Venomous Ophidian", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[98435] = {
					"Unstable Oozeling", -- [1]
					"The Arcway", -- [2]
				},
				[160495] = {
					"Maniacal Soulbinder", -- [1]
					"Theater of Pain", -- [2]
				},
				[134390] = {
					"Sand-crusted Striker", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[156913] = {
					"Decaying Corpse", -- [1]
					"Darkmaul Citadel", -- [2]
				},
				[113536] = {
					"Emberhusk Dominator", -- [1]
					"Neltharion's Lair", -- [2]
				},
				[126333] = {
					"Felseeker Ritualist", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[126845] = {
					"Captain Jolly", -- [1]
					"Freehold", -- [2]
				},
				[120191] = {
					"Eternal Soulguard", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[91782] = {
					"Hatecoil Crusher", -- [1]
					"Eye of Azshara", -- [2]
				},
				[92038] = {
					"Salivating Bloodthirster", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[113537] = {
					"Emberhusk Dominator", -- [1]
					"Neltharion's Lair", -- [2]
				},
				[93830] = {
					"Iron Dragoon", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[98693] = {
					"Shackled Servitor", -- [1]
					"Maw of Souls", -- [2]
				},
				[98949] = {
					"Smashspite the Hateful", -- [1]
					"Black Rook Hold", -- [2]
				},
				[158452] = {
					"Mindtwist Tendril", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[138489] = {
					"Shadow of Zul", -- [1]
					"Kings' Rest", -- [2]
				},
				[92039] = {
					"Bleeding Grunt", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[18155] = {
					"Bloodfalcon", -- [1]
					"Tempest Keep: The Botanica", -- [2]
				},
				[102277] = {
					"Deadeye Decoy", -- [1]
					"Darkheart Thicket", -- [2]
				},
				[156406] = {
					"Voidbound Honor Guard", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[165108] = {
					"Illusionary Clone", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[91784] = {
					"Warlord Parjesh", -- [1]
					"Eye of Azshara", -- [2]
				},
				[96647] = {
					"Earlnoc the Beastbreaker", -- [1]
					"Halls of Valor", -- [2]
				},
				[121473] = {
					"Coercitor Nixa", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[11671] = {
					"Core Hound", -- [1]
					"Molten Core", -- [2]
				},
				[142587] = {
					"Devouring Maggot", -- [1]
					"Waycrest Manor", -- [2]
				},
				[126848] = {
					"Captain Eudora", -- [1]
					"Freehold", -- [2]
				},
				[162039] = {
					"Wicked Oppressor", -- [1]
					"Sanguine Depths", -- [2]
				},
				[120194] = {
					"Ghostly Acolyte", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[91785] = {
					"Wandering Shellback", -- [1]
					"Eye of Azshara", -- [2]
				},
				[92041] = {
					"Bleeding Darkcaster", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[117123] = {
					"Tidescale Legionnaire", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[165111] = {
					"Drust Spiteclaw", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[93065] = {
					"Ysera", -- [1]
					"The Temple of Elune", -- [2]
				},
				[162040] = {
					"Grand Overseer", -- [1]
					"Sanguine Depths", -- [2]
				},
				[118915] = {
					"Brutish Destroyer", -- [1]
					"Legion Ship - Vertical - Stormheim", -- [2]
				},
				[90506] = {
					"Felfire Imp", -- [1]
					"Broken Shore Scenario", -- [2]
				},
				[74382] = {
					"Twilight Shadowmage", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[119939] = {
					"Ghastly Bonewarden", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[112261] = {
					"Dreadsoul Corruptor", -- [1]
					"The Emerald Nightmare", -- [2]
				},
				[92554] = {
					"Mek'barash", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[125570] = {
					"Riftworld Assistant", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[127106] = {
					"Irontide Officer", -- [1]
					"Freehold", -- [2]
				},
				[137473] = {
					"Guard Captain Atu", -- [1]
					"Kings' Rest", -- [2]
				},
				[8920] = {
					"Weapon Technician", -- [1]
					"Blackrock Depths", -- [2]
				},
				[80526] = {
					"Stubborn Ironhoof", -- [1]
					"Blackrock Foundry", -- [2]
				},
				[101257] = {
					"The Conservator", -- [1]
					"Karazhan Catacombs", -- [2]
				},
				[133379] = {
					"Adderis", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[172282] = {
					"Web Wrap", -- [1]
					"Plaguefall", -- [2]
				},
				[94859] = {
					"Armored Skullsmasher", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[101002] = {
					"Krosus", -- [1]
					"The Nighthold", -- [2]
				},
				[125828] = {
					"Malavestros", -- [1]
					"Atal'Dazar", -- [2]
				},
				[105609] = {
					"Akaari Shadowgore", -- [1]
					"Artifact - Acquisition - Subtlety", -- [2]
				},
				[130435] = {
					"Addled Thug", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[171772] = {
					"Mistveil Defender", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[94604] = {
					"Gorebound Corruptor", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[162047] = {
					"Insatiable Brute", -- [1]
					"Sanguine Depths", -- [2]
				},
				[137989] = {
					"Embalming Fluid", -- [1]
					"Kings' Rest", -- [2]
				},
				[91789] = {
					"Lady Hatecoil", -- [1]
					"Eye of Azshara", -- [2]
				},
				[131847] = {
					"Waycrest Reveler", -- [1]
					"Waycrest Manor", -- [2]
				},
				[5053] = {
					"Deviate Crocolisk", -- [1]
					"Wailing Caverns", -- [2]
				},
				[76945] = {
					"Ironcrusher", -- [1]
					"Blackrock Foundry", -- [2]
				},
				[130436] = {
					"Off-Duty Laborer", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[140038] = {
					"Abyssal Eel", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[94861] = {
					"Grim Ambusher", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[157442] = {
					"Gaze of Madness", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[133384] = {
					"Merektha", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[150276] = {
					"Heavy Scrapbot", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[91790] = {
					"Mak'rana Siltwalker", -- [1]
					"Eye of Azshara", -- [2]
				},
				[147205] = {
					"Warden Amical", -- [1]
					"Tol Dagor Scenario", -- [2]
				},
				[151812] = {
					"Detect-o-Bot", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[131849] = {
					"Crazed Marksman", -- [1]
					"Waycrest Manor", -- [2]
				},
				[105611] = {
					"Inconceivable Horror", -- [1]
					"The Emerald Nightmare", -- [2]
				},
				[130437] = {
					"Mine Rat", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[110474] = {
					"Rakeeshi Sorcerer", -- [1]
					"Battle of Exodar", -- [2]
				},
				[155908] = {
					"Deathspeaker", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[152325] = {
					"Rebecca Laughlin", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[174336] = {
					"Kennel Overseer", -- [1]
					"Castle Nathria", -- [2]
				},
				[95630] = {
					"Construct Peacekeeper", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[95886] = {
					"Ash'Golm", -- [1]
					"Vault of the Wardens", -- [2]
				},
				[151814] = {
					"Deadsoul Shade", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[152326] = {
					"Kyra Boucher", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[97678] = {
					"Aranasi Broodmother", -- [1]
					"Vault of the Wardens", -- [2]
				},
				[127111] = {
					"Irontide Oarsman", -- [1]
					"Freehold", -- [2]
				},
				[94607] = {
					"Gorebound Cauterizer", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[127879] = {
					"Shieldbearer of Zul", -- [1]
					"Atal'Dazar", -- [2]
				},
				[174338] = {
					"Stinky Feedhauler", -- [1]
					"Castle Nathria", -- [2]
				},
				[120201] = {
					"Spectral Guardian", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[91792] = {
					"Stormwake Hydra", -- [1]
					"Eye of Azshara", -- [2]
				},
				[151816] = {
					"Deadsoul Scavenger", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[131853] = {
					"Huntmaster Grath", -- [1]
					"Waycrest Manor", -- [2]
				},
				[157447] = {
					"Fanatical Cultist", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[133389] = {
					"Galvazzt", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[151817] = {
					"Deadsoul Devil", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[137485] = {
					"Bloodsworn Agent", -- [1]
					"Kings' Rest", -- [2]
				},
				[75157] = {
					"Aku'mai the Venomous", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[91793] = {
					"Seaspray Crab", -- [1]
					"Eye of Azshara", -- [2]
				},
				[19949] = {
					"Sapling", -- [1]
					"Tempest Keep: The Botanica", -- [2]
				},
				[151818] = {
					"Deadsoul Miscreation", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[113036] = {
					"Fel Lord Razzar", -- [1]
					"Broken Shore Scenario", -- [2]
				},
				[157449] = {
					"Sinister Soulcarver", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[162056] = {
					"Rockbound Sprite", -- [1]
					"Sanguine Depths", -- [2]
				},
				[102287] = {
					"Emberhusk Dominator", -- [1]
					"Neltharion's Lair", -- [2]
				},
				[33236] = {
					"Steelforged Defender", -- [1]
					"Ulduar", -- [2]
				},
				[162057] = {
					"Chamber Sentinel", -- [1]
					"Sanguine Depths", -- [2]
				},
				[128649] = {
					"Sergeant Bainbridge", -- [1]
					"Siege of Boralus", -- [2]
				},
				[113037] = {
					"Fel Lord Darakk", -- [1]
					"Broken Shore Scenario", -- [2]
				},
				[136976] = {
					"T'zala", -- [1]
					"Kings' Rest", -- [2]
				},
				[162058] = {
					"Ventunax", -- [1]
					"Spires of Ascension", -- [2]
				},
				[134417] = {
					"Deepsea Ritualist", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[131858] = {
					"Thornguard", -- [1]
					"Waycrest Manor", -- [2]
				},
				[157452] = {
					"Nightmare Antigen", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[162059] = {
					"Kin-Tara", -- [1]
					"Spires of Ascension", -- [2]
				},
				[8889] = {
					"Anvilrage Overseer", -- [1]
					"Blackrock Depths", -- [2]
				},
				[128650] = {
					"Chopper Redhook", -- [1]
					"Siege of Boralus", -- [2]
				},
				[100497] = {
					"Ursoc", -- [1]
					"The Emerald Nightmare", -- [2]
				},
				[9017] = {
					"Lord Incendius", -- [1]
					"Blackrock Depths", -- [2]
				},
				[80534] = {
					"Ornery Ironhoof", -- [1]
					"Blackrock Foundry", -- [2]
				},
				[13176] = {
					"Smith Regzar", -- [1]
					"Alterac Valley", -- [2]
				},
				[162060] = {
					"Oryphrion", -- [1]
					"Spires of Ascension", -- [2]
				},
				[36948] = {
					"Muradin Bronzebeard", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[3343] = {
					"Grelkor", -- [1]
					"Alterac Valley", -- [2]
				},
				[123532] = {
					"Dark Keeper", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[33237] = {
					"Ulduar Colossus", -- [1]
					"Ulduar", -- [2]
				},
				[162061] = {
					"Devos", -- [1]
					"Spires of Ascension", -- [2]
				},
				[91540] = {
					"Illusionary Outcast", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[128651] = {
					"Hadal Darkfathom", -- [1]
					"Siege of Boralus", -- [2]
				},
				[92564] = {
					"Mo'arg Painbringer", -- [1]
					"Broken Shore Scenario", -- [2]
				},
				[34133] = {
					"Champion of Hodir", -- [1]
					"Ulduar", -- [2]
				},
				[97171] = {
					"Hatecoil Arcanist", -- [1]
					"Eye of Azshara", -- [2]
				},
				[105617] = {
					"Eredar Chaosbringer", -- [1]
					"The Arcway", -- [2]
				},
				[163086] = {
					"Rancid Gasbag", -- [1]
					"Theater of Pain", -- [2]
				},
				[168717] = {
					"Forsworn Justicar", -- [1]
					"Spires of Ascension", -- [2]
				},
				[98963] = {
					"Blazing Imp", -- [1]
					"Vault of the Wardens", -- [2]
				},
				[119950] = {
					"Brimstone Infernal", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[95636] = {
					"Sargerei Adjutant", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[91797] = {
					"King Deepbeard", -- [1]
					"Eye of Azshara", -- [2]
				},
				[168718] = {
					"Forsworn Warden", -- [1]
					"Spires of Ascension", -- [2]
				},
				[136470] = {
					"Refreshment Vendor", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[97172] = {
					"Saltsea Droplet", -- [1]
					"Eye of Azshara", -- [2]
				},
				[153874] = {
					"Mawsworn Sentry", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[134423] = {
					"Abyss Dweller", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[78233] = {
					"Darkshard Crystalback", -- [1]
					"Blackrock Foundry", -- [2]
				},
				[33110] = {
					"Dark Rune Acolyte", -- [1]
					"Ulduar", -- [2]
				},
				[14456] = {
					"Blackwing Guardsman", -- [1]
					"Blackwing Lair", -- [2]
				},
				[133912] = {
					"Bloodsworn Defiler", -- [1]
					"The Underrot", -- [2]
				},
				[120463] = {
					"Undersea Custodian", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[120719] = {
					"Lunar Priestess", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[113041] = {
					"Infected Diemetradon", -- [1]
					"The Emerald Nightmare", -- [2]
				},
				[165137] = {
					"Zolramus Gatekeeper", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[97173] = {
					"Restless Tides", -- [1]
					"Eye of Azshara", -- [2]
				},
				[76954] = {
					"Pahboo-Ra", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[14776] = {
					"Tower Point Warmaster", -- [1]
					"Alterac Valley", -- [2]
				},
				[106643] = {
					"Elisande", -- [1]
					"The Nighthold", -- [2]
				},
				[110994] = {
					"Screeching Felspawn", -- [1]
					"Battle of Exodar", -- [2]
				},
				[165138] = {
					"Blight Bag", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[173840] = {
					"Plaguebound Devoted", -- [1]
					"Plaguefall", -- [2]
				},
				[119952] = {
					"Felguard Destroyer", -- [1]
					"Cathedral of Eternal Night", -- [2]
				},
				[87448] = {
					"Ironworker", -- [1]
					"Blackrock Foundry", -- [2]
				},
				[17839] = {
					"Rift Lord", -- [1]
					"Opening of the Dark Portal", -- [2]
				},
				[120720] = {
					"Lunar Guard", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[156949] = {
					"Armsmaster Terenson", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[101269] = {
					"High Inquisitor Qormaladon", -- [1]
					"Niskara", -- [2]
				},
				[153878] = {
					"Mawsworn Archer", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[150295] = {
					"Tank Buster MK1", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[102293] = {
					"Dread Admiral Eliza", -- [1]
					"Azsuna", -- [2]
				},
				[36950] = {
					"Skybreaker Marine", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[78491] = {
					"Brackenspore", -- [1]
					"Highmaul", -- [2]
				},
				[153879] = {
					"Deadsoul Shadow", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[3887] = {
					"Baron Silverlaine", -- [1]
					"Shadowfang Keep", -- [2]
				},
				[120721] = {
					"Lunar Archer", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[113043] = {
					"Abyss Watcher", -- [1]
					"The Nighthold", -- [2]
				},
				[34135] = {
					"Winter Rumbler", -- [1]
					"Ulduar", -- [2]
				},
				[113555] = {
					"Xalian Felblaze", -- [1]
					"Black Rook Hold [Scenario]", -- [2]
				},
				[11673] = {
					"Ancient Core Hound", -- [1]
					"Molten Core", -- [2]
				},
				[150297] = {
					"Mechagon Renormalizer", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[81819] = {
					"Everbloom Naturalist", -- [1]
					"The Everbloom", -- [2]
				},
				[118930] = {
					"Ixallon the Soulbreaker", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[111508] = {
					"Darkfire Felwing", -- [1]
					"Vault of the Wardens", -- [2]
				},
				[95640] = {
					"Sargerei Soul Cleaver", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[12057] = {
					"Garr", -- [1]
					"Molten Core", -- [2]
				},
				[96664] = {
					"Valarjar Runecarver", -- [1]
					"Halls of Valor", -- [2]
				},
				[12121] = {
					"Drakan", -- [1]
					"Alterac Valley", -- [2]
				},
				[130192] = {
					"Hulking Demolisher", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[81820] = {
					"Everbloom Mender", -- [1]
					"The Everbloom", -- [2]
				},
				[69791] = {
					"Øxzes-Hyjal", -- [1]
					"Twin Peaks", -- [2]
				},
				[94617] = {
					"Glynevere", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[94873] = {
					"Felfire Flamebelcher", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[169751] = {
					"Ashen Wasp", -- [1]
					"Theater of Pain", -- [2]
				},
				[99480] = {
					"Dakarr", -- [1]
					"Tideskorn Harbor", -- [2]
				},
				[171799] = {
					"Depths Warden", -- [1]
					"Sanguine Depths", -- [2]
				},
				[157467] = {
					"Void Ascendant", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[151325] = {
					"Alarm-o-Bot", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[172312] = {
					"Spinemaw Gorger", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[94618] = {
					"Cattwen", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[169753] = {
					"Famished Tick", -- [1]
					"Sanguine Depths", -- [2]
				},
				[153885] = {
					"Deadsoul Shambler", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[8890] = {
					"Anvilrage Warden", -- [1]
					"Blackrock Depths", -- [2]
				},
				[8922] = {
					"Bloodhound Mastiff", -- [1]
					"Blackrock Depths", -- [2]
				},
				[100249] = {
					"Channeler Varisz", -- [1]
					"Eye of Azshara", -- [2]
				},
				[144160] = {
					"Chopper Redhook", -- [1]
					"Siege of Boralus", -- [2]
				},
				[32857] = {
					"Stormcaller Brundir", -- [1]
					"Ulduar", -- [2]
				},
				[135971] = {
					"Faithless Conscript", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[98970] = {
					"Latosius", -- [1]
					"Black Rook Hold", -- [2]
				},
				[145185] = {
					"Gnomercy 4.U.", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[138019] = {
					"Kul Tiran Vanguard", -- [1]
					"Siege of Boralus", -- [2]
				},
				[100250] = {
					"Binder Ashioi", -- [1]
					"Eye of Azshara", -- [2]
				},
				[38104] = {
					"Plagued Zombie", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[34137] = {
					"Winter Jormungar", -- [1]
					"Ulduar", -- [2]
				},
				[98203] = {
					"Ivanyr", -- [1]
					"The Arcway", -- [2]
				},
				[127124] = {
					"Freehold Barhand", -- [1]
					"Freehold", -- [2]
				},
				[90525] = {
					"Eredar Chaos Guard", -- [1]
					"Broken Shore Scenario", -- [2]
				},
				[153377] = {
					"Goop", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[4958] = {
					"Haunting Spirit", -- [1]
					"Shadowfang Keep", -- [2]
				},
				[150818] = {
					"Disturbed Blood Globule", -- [1]
					"Uldir Scenario", -- [2]
				},
				[171805] = {
					"Research Scribe", -- [1]
					"Sanguine Depths", -- [2]
				},
				[113048] = {
					"Corrupted Deer", -- [1]
					"The Emerald Nightmare", -- [2]
				},
				[151331] = {
					"Cellblock Sentinel", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[127381] = {
					"Silt Crab", -- [1]
					"Tol Dagor", -- [2]
				},
				[119959] = {
					"Fel Champion Gargath", -- [1]
					"Legion Ship - Vertical - HighMountain", -- [2]
				},
				[33754] = {
					"Dark Rune Thunderer", -- [1]
					"Ulduar", -- [2]
				},
				[21104] = {
					"Rift Keeper", -- [1]
					"Opening of the Dark Portal", -- [2]
				},
				[125590] = {
					"Antoran Felguard", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[157475] = {
					"Synthesis Growth", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[58964] = {
					"Брагголоне", -- [1]
					"Waycrest Manor", -- [2]
				},
				[14777] = {
					"West Frostwolf Warmaster", -- [1]
					"Alterac Valley", -- [2]
				},
				[98205] = {
					"Corstilax", -- [1]
					"The Arcway", -- [2]
				},
				[98973] = {
					"Skeletal Warrior", -- [1]
					"Maw of Souls", -- [2]
				},
				[161571] = {
					"Anubisath Sentinel", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[163619] = {
					"Zolramus Bonecarver", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[97182] = {
					"Night Watch Mariner", -- [1]
					"Maw of Souls", -- [2]
				},
				[163620] = {
					"Rotspew", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[144169] = {
					"Ashvane Commander", -- [1]
					"Siege of Boralus", -- [2]
				},
				[75172] = {
					"Deep Terror", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[91808] = {
					"Serpentrix", -- [1]
					"Eye of Azshara", -- [2]
				},
				[33755] = {
					"Dark Rune Ravager", -- [1]
					"Ulduar", -- [2]
				},
				[144170] = {
					"Ashvane Sniper", -- [1]
					"Siege of Boralus", -- [2]
				},
				[113307] = {
					"Chronowraith", -- [1]
					"The Nighthold", -- [2]
				},
				[34267] = {
					"Parts Recovery Technician", -- [1]
					"Ulduar", -- [2]
				},
				[137516] = {
					"Ashvane Invader", -- [1]
					"Siege of Boralus", -- [2]
				},
				[81315] = {
					"Iron Crack-Shot", -- [1]
					"Blackrock Foundry", -- [2]
				},
				[98207] = {
					"Nal'tira", -- [1]
					"The Arcway", -- [2]
				},
				[19505] = {
					"Sunseeker Channeler", -- [1]
					"Tempest Keep: The Botanica", -- [2]
				},
				[111004] = {
					"Gelatinized Decay", -- [1]
					"The Emerald Nightmare", -- [2]
				},
				[19633] = {
					"Bloodwarder Mender", -- [1]
					"Tempest Keep: The Botanica", -- [2]
				},
				[137517] = {
					"Ashvane Destroyer", -- [1]
					"Siege of Boralus", -- [2]
				},
				[163111] = {
					"Magistrate Solomon", -- [1]
					"Redridge - 9xp Bastion", -- [2]
				},
				[163623] = {
					"Rotspew Leftovers", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[135470] = {
					"Aka'ali the Conqueror", -- [1]
					"Kings' Rest", -- [2]
				},
				[113052] = {
					"Dreadguard", -- [1]
					"The Nighthold", -- [2]
				},
				[121498] = {
					"Twilight Soul", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[109725] = {
					"Felguard", -- [1]
					"Battle of Exodar", -- [2]
				},
				[133935] = {
					"Animated Guardian", -- [1]
					"Kings' Rest", -- [2]
				},
				[77477] = {
					"Marak the Blooded", -- [1]
					"Blackrock Foundry", -- [2]
				},
				[122778] = {
					"Annihilator", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[152875] = {
					"Massive Crusher", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[71079] = {
					"Small Illusionary Guardian", -- [1]
					"Proving Grounds", -- [2]
				},
				[135472] = {
					"Zanazal the Wise", -- [1]
					"Kings' Rest", -- [2]
				},
				[113053] = {
					"Mother Sepestra", -- [1]
					"Broken Shore Scenario", -- [2]
				},
				[97185] = {
					"The Grimewalker", -- [1]
					"Maw of Souls", -- [2]
				},
				[93858] = {
					"Hulking Berserker", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[137521] = {
					"Irontide Powdershot", -- [1]
					"Siege of Boralus", -- [2]
				},
				[8891] = {
					"Anvilrage Guardsman", -- [1]
					"Blackrock Depths", -- [2]
				},
				[135474] = {
					"Thistle Acolyte", -- [1]
					"Waycrest Manor", -- [2]
				},
				[81318] = {
					"Iron Gunnery Sergeant", -- [1]
					"Blackrock Foundry", -- [2]
				},
				[175401] = {
					"Warden of Souls", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[102305] = {
					"Dreadguard", -- [1]
					"Azsuna", -- [2]
				},
				[135475] = {
					"Kula the Butcher", -- [1]
					"Kings' Rest", -- [2]
				},
				[168747] = {
					"Venomfang", -- [1]
					"Plaguefall", -- [2]
				},
				[157486] = {
					"Horrific Hemorrhage", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[79015] = {
					"Ko'ragh", -- [1]
					"Highmaul", -- [2]
				},
				[120477] = {
					"Deep Stalker", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[124828] = {
					"Argus the Unmaker", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[18994] = {
					"Infinite Executioner", -- [1]
					"Opening of the Dark Portal", -- [2]
				},
				[80551] = {
					"Shard of Tectus", -- [1]
					"Highmaul", -- [2]
				},
				[34269] = {
					"XR-949 Salvagebot", -- [1]
					"Ulduar", -- [2]
				},
				[155952] = {
					"Suffer", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[135989] = {
					"Shieldbearer of Zul", -- [1]
					"Atal'Dazar", -- [2]
				},
				[133430] = {
					"Venture Co. Mastermind", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[100259] = {
					"Illusory Stalker", -- [1]
					"Tideskorn Harbor", -- [2]
				},
				[155953] = {
					"C'Thuffer", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[105122] = {
					"Stormweaver Ingrida", -- [1]
					"Shield's Rest", -- [2]
				},
				[133943] = {
					"Minion of Zul", -- [1]
					"Kings' Rest", -- [2]
				},
				[36829] = {
					"Deathspeaker High Priest", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[133432] = {
					"Venture Co. Alchemist", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[133944] = {
					"Aspix", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[87719] = {
					"Ogron Hauler", -- [1]
					"Blackrock Foundry", -- [2]
				},
				[34014] = {
					"Sanctum Sentry", -- [1]
					"Ulduar", -- [2]
				},
				[163122] = {
					"Brittlebone Warrior", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[122783] = {
					"Blazing Imp", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[1860] = {
					"Hathnos", -- [1]
					"Deepwind Gorge", -- [2]
				},
				[169265] = {
					"Creepy Crawler", -- [1]
					"Plaguefall", -- [2]
				},
				[162099] = {
					"General Kaal", -- [1]
					"Sanguine Depths", -- [2]
				},
				[112290] = {
					"Horrid Eagle", -- [1]
					"The Emerald Nightmare", -- [2]
				},
				[113058] = {
					"Fel Lord Volak", -- [1]
					"Broken Shore Scenario", -- [2]
				},
				[96934] = {
					"Valarjar Trapper", -- [1]
					"Halls of Valor", -- [2]
				},
				[105636] = {
					"Understone Drudge", -- [1]
					"Neltharion's Lair", -- [2]
				},
				[18419] = {
					"Bloodwarder Greenkeeper", -- [1]
					"Tempest Keep: The Botanica", -- [2]
				},
				[61528] = {
					"Lava Guard Gordoth", -- [1]
					"Ragefire Chasm", -- [2]
				},
				[129788] = {
					"Irontide Bonesaw", -- [1]
					"Freehold", -- [2]
				},
				[133436] = {
					"Venture Co. Skyscorcher", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[62982] = {
					"Mindbender", -- [1]
					"Twin Peaks", -- [2]
				},
				[164371] = {
					"Forsworn Looter", -- [1]
					"Spires of Ascension", -- [2]
				},
				[31216] = {
					"Wutzwutz-Hyjal", -- [1]
					"Twin Peaks", -- [2]
				},
				[112803] = {
					"Astrologer Jarin", -- [1]
					"The Nighthold", -- [2]
				},
				[117154] = {
					"Razorjaw Acolyte", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[120366] = {
					"Hellblaze Temptress", -- [1]
					"Cathedral of Eternal Night", -- [2]
				},
				[34271] = {
					"XD-175 Compactobot", -- [1]
					"Ulduar", -- [2]
				},
				[162102] = {
					"Grand Proctor Beryllia", -- [1]
					"Sanguine Depths", -- [2]
				},
				[162311] = {
					"Death Knight", -- [1]
					"Vision of Ysera Scenario", -- [2]
				},
				[163126] = {
					"Brittlebone Mage", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[151353] = {
					"Mawrat", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[102566] = {
					"Grimhorn the Enslaver", -- [1]
					"Vault of the Wardens", -- [2]
				},
				[37004] = {
					"Skybreaker Dreadblade", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[112675] = {
					"Duskwatch Sentinel", -- [1]
					"The Nighthold", -- [2]
				},
				[153401] = {
					"K'thir Dominator", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[91305] = {
					"Fel Iron Summoner", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[131112] = {
					"Cutwater Striker", -- [1]
					"Tol Dagor", -- [2]
				},
				[120482] = {
					"Tidescale Seacaller", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[11947] = {
					"Captain Galvangar", -- [1]
					"Alterac Valley", -- [2]
				},
				[16154] = {
					"Risen Squire", -- [1]
					"Naxxramas", -- [2]
				},
				[20083] = {
					"Summoned Bloodwarder Mender", -- [1]
					"Tempest Keep: The Botanica", -- [2]
				},
				[17994] = {
					"Bloodwarder Falconer", -- [1]
					"Tempest Keep: The Botanica", -- [2]
				},
				[120060] = {
					"Felstone Wrathguard", -- [1]
					"Legion Ship - Vertical - HighMountain", -- [2]
				},
				[95885] = {
					"Tirathon Saltheril", -- [1]
					"Vault of the Wardens", -- [2]
				},
				[164929] = {
					"Tirnenn Villager", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[163128] = {
					"Zolramus Sorcerer", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[93506] = {
					"Skyfire Gryphon Rider", -- [1]
					"The Maw of Nashal", -- [2]
				},
				[157807] = {
					"Mawsworn Soulweaver", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[98728] = {
					"Acidic Bile", -- [1]
					"The Arcway", -- [2]
				},
				[162305] = {
					"Aqir Heartpiercer", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[123929] = {
					"Garothi Demolisher", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[151659] = {
					"Rocket Tonk", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[120227] = {
					"Ruby Warden", -- [1]
					"The Ruby Sanctum", -- [2]
				},
				[90114] = {
					"Iron Dragoon", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[164451] = {
					"Dessia the Decapitator", -- [1]
					"Theater of Pain", -- [2]
				},
				[92330] = {
					"Soul of Socrethar", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[5762] = {
					"Deviate Moccasin", -- [1]
					"Wailing Caverns", -- [2]
				},
				[80557] = {
					"Mote of Tectus", -- [1]
					"Highmaul", -- [2]
				},
				[105383] = {
					"Corruptor Tentacle", -- [1]
					"The Emerald Nightmare", -- [2]
				},
				[152199] = {
					"Magister Hathorel", -- [1]
					"Siege of Orgrimmar - Coup Scenario", -- [2]
				},
				[103758] = {
					"Star Augur Etraeus", -- [1]
					"The Nighthold", -- [2]
				},
				[162038] = {
					"Regal Mistdancer", -- [1]
					"Sanguine Depths", -- [2]
				},
				[111355] = {
					"Taintheart Tormenter", -- [1]
					"The Emerald Nightmare", -- [2]
				},
				[131445] = {
					"Block Warden", -- [1]
					"Tol Dagor", -- [2]
				},
				[134158] = {
					"Shadow-Borne Champion", -- [1]
					"Kings' Rest", -- [2]
				},
				[76906] = {
					"Operator Thogar", -- [1]
					"Blackrock Foundry", -- [2]
				},
				[129526] = {
					"Bilge Rat Swabby", -- [1]
					"Freehold", -- [2]
				},
				[168418] = {
					"Forsworn Inquisitor", -- [1]
					"Spires of Ascension", -- [2]
				},
				[120228] = {
					"Ruby Drake", -- [1]
					"The Ruby Sanctum", -- [2]
				},
				[100376] = {
					"Dakarr", -- [1]
					"Tideskorn Harbor", -- [2]
				},
				[161251] = {
					"Cultist Sycophant", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[156642] = {
					"Enthralled Laborer", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[94812] = {
					"7th Legion Paratrooper", -- [1]
					"The Maw of Nashal", -- [2]
				},
				[135192] = {
					"Honored Raptor", -- [1]
					"Kings' Rest", -- [2]
				},
				[13179] = {
					"Wing Commander Guse", -- [1]
					"Alterac Valley", -- [2]
				},
				[125429] = {
					"Paraxis Inquisitor", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[77231] = {
					"Enforcer Sorka", -- [1]
					"Blackrock Foundry", -- [2]
				},
				[122532] = {
					"Ember of Taeshalach", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[18420] = {
					"Sunseeker Geomancer", -- [1]
					"Tempest Keep: The Botanica", -- [2]
				},
				[32865] = {
					"Thorim", -- [1]
					"Ulduar", -- [2]
				},
				[119205] = {
					"Moontalon", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[165919] = {
					"Skeletal Marauder", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[118518] = {
					"Priestess Lunaspyre", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[105721] = {
					"Nightmare Ichor", -- [1]
					"The Emerald Nightmare", -- [2]
				},
				[112039] = {
					"Screeching Spiderling", -- [1]
					"The Emerald Nightmare", -- [2]
				},
				[33567] = {
					"Deathsworn Zealot", -- [1]
					"Ulduar", -- [2]
				},
				[172064] = {
					"Unstable Larva", -- [1]
					"Plaguefall", -- [2]
				},
				[172128] = {
					"Hero", -- [1]
					"Vision of Ysera Scenario", -- [2]
				},
				[85245] = {
					"Night-Twisted Ritualist", -- [1]
					"Highmaul", -- [2]
				},
				[129699] = {
					"Ludwig Von Tortollan", -- [1]
					"Freehold", -- [2]
				},
				[34273] = {
					"XB-488 Disposalbot", -- [1]
					"Ulduar", -- [2]
				},
				[161244] = {
					"Blood of the Corruptor", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[77232] = {
					"Twilight Disciple", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[157811] = {
					"Lilliam Sparkspindle", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[94970] = {
					"Skyfire Gryphon Rider", -- [1]
					"The Maw of Nashal", -- [2]
				},
				[19508] = {
					"Sunseeker Herbalist", -- [1]
					"Tempest Keep: The Botanica", -- [2]
				},
				[136005] = {
					"Rowdy Reveler", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[173016] = {
					"Corpse Collector", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[137029] = {
					"Ordnance Specialist", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[136160] = {
					"King Dazar", -- [1]
					"Kings' Rest", -- [2]
				},
				[111093] = {
					"Stitchwork", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[130655] = {
					"Bobby Howlis", -- [1]
					"Tol Dagor", -- [2]
				},
				[152538] = {
					"Dark Ranger Zanra", -- [1]
					"Siege of Orgrimmar - Coup Scenario", -- [2]
				},
				[80048] = {
					"Vul'gor", -- [1]
					"Highmaul", -- [2]
				},
				[136006] = {
					"Rowdy Reveler", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[152898] = {
					"Deadsoul Chorus", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[5055] = {
					"Deviate Lasher", -- [1]
					"Wailing Caverns", -- [2]
				},
				[15954] = {
					"Noth the Plaguebringer", -- [1]
					"Naxxramas", -- [2]
				},
				[110376] = {
					"Leyline Spiderling", -- [1]
					"The Collapse - Suramar Scenario", -- [2]
				},
				[111860] = {
					"Bo'lan the Marked", -- [1]
					"The Emerald Nightmare", -- [2]
				},
				[101514] = {
					"Eredar Portal-Lord", -- [1]
					"Niskara", -- [2]
				},
				[36961] = {
					"Skybreaker Sergeant", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[98732] = {
					"Plagued Rat", -- [1]
					"The Arcway", -- [2]
				},
				[37217] = {
					"Precious", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[10364] = {
					"Yaelika Farclaw", -- [1]
					"Alterac Valley", -- [2]
				},
				[167610] = {
					"Stonefiend Anklebiter", -- [1]
					"Halls of Atonement", -- [2]
				},
				[120231] = {
					"Ruby Protector", -- [1]
					"The Ruby Sanctum", -- [2]
				},
				[167892] = {
					"Tormented Soul", -- [1]
					"Halls of Atonement", -- [2]
				},
				[105322] = {
					"Deathglare Tentacle", -- [1]
					"The Emerald Nightmare", -- [2]
				},
				[33890] = {
					"Brain of Yogg-Saron", -- [1]
					"Ulduar", -- [2]
				},
				[156000] = {
					"Lyani Shadestalker", -- [1]
					"Siege of Orgrimmar - Coup Scenario", -- [2]
				},
				[113321] = {
					"Shambling Hungerer", -- [1]
					"The Nighthold", -- [2]
				},
				[97197] = {
					"Valarjar Purifier", -- [1]
					"Halls of Valor", -- [2]
				},
				[33430] = {
					"Guardian Lasher", -- [1]
					"Ulduar", -- [2]
				},
				[107763] = {
					"Withered Creeper", -- [1]
					"The Ruins of Falanaar", -- [2]
				},
				[157605] = {
					"Burrowing Appendage", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[129640] = {
					"Snarling Dockhound", -- [1]
					"Siege of Boralus", -- [2]
				},
				[131402] = {
					"Underrot Tick", -- [1]
					"The Underrot", -- [2]
				},
				[98733] = {
					"Withered Fiend", -- [1]
					"The Arcway", -- [2]
				},
				[94894] = {
					"Keen-Eyed Gronnstalker", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[107435] = {
					"Suspicious Noble", -- [1]
					"Court of Stars", -- [2]
				},
				[162115] = {
					"Koda Steelclaw", -- [1]
					"Vision of Ysera Scenario", -- [2]
				},
				[111370] = {
					"Creature in the Shadows", -- [1]
					"The Emerald Nightmare", -- [2]
				},
				[112445] = {
					"<Away> Johnny Awesome", -- [1]
					"Black Temple - Legion", -- [2]
				},
				[133593] = {
					"Expert Technician", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[92335] = {
					"Lyrathos Darkgrove", -- [1]
					"Neltharion's Lair", -- [2]
				},
				[152390] = {
					"Unruly Experiment", -- [1]
					"Siege of Orgrimmar - Coup Scenario", -- [2]
				},
				[3674] = {
					"Skum", -- [1]
					"Wailing Caverns", -- [2]
				},
				[94576] = {
					"Skyfire Gryphon", -- [1]
					"The Maw of Nashal", -- [2]
				},
				[101549] = {
					"Arcane Minion", -- [1]
					"Black Rook Hold", -- [2]
				},
				[133963] = {
					"Test Subject", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[129601] = {
					"Cutwater Harpooner", -- [1]
					"Freehold", -- [2]
				},
				[18421] = {
					"Sunseeker Researcher", -- [1]
					"Tempest Keep: The Botanica", -- [2]
				},
				[32867] = {
					"Steelbreaker", -- [1]
					"Ulduar", -- [2]
				},
				[90544] = {
					"Krosus", -- [1]
					"Broken Shore Scenario", -- [2]
				},
				[134616] = {
					"Krolusk Pup", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[33432] = {
					"Leviathan Mk II", -- [1]
					"Ulduar", -- [2]
				},
				[162117] = {
					"Tyrande Whisperwind", -- [1]
					"Vision of Ysera Scenario", -- [2]
				},
				[120233] = {
					"Ruby Flamescale", -- [1]
					"The Ruby Sanctum", -- [2]
				},
				[110771] = {
					"Volatile Wraith", -- [1]
					"The Collapse - Suramar Scenario", -- [2]
				},
				[94779] = {
					"Sovokk", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[5775] = {
					"Verdan the Everliving", -- [1]
					"Wailing Caverns", -- [2]
				},
				[164380] = {
					"Forsworn Vandal", -- [1]
					"Spires of Ascension", -- [2]
				},
				[165189] = {
					"Kermi", -- [1]
					"Twin Peaks", -- [2]
				},
				[37023] = {
					"Plague Scientist", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[165251] = {
					"Illusionary Vulpin", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[93616] = {
					"Dreadstalker", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[96756] = {
					"Ymiron, the Fallen King", -- [1]
					"Maw of Souls", -- [2]
				},
				[94802] = {
					"Voidscribe Aathalos", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[19509] = {
					"Sunseeker Harvester", -- [1]
					"Tempest Keep: The Botanica", -- [2]
				},
				[111856] = {
					"Guardian Gorroc", -- [1]
					"The Emerald Nightmare", -- [2]
				},
				[152905] = {
					"Tower Sentinel", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[156884] = {
					"Essence of Vita", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[119978] = {
					"Fulminating Lasher", -- [1]
					"Cathedral of Eternal Night", -- [2]
				},
				[138061] = {
					"Venture Co. Longshoreman", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[95920] = {
					"Animated Storm", -- [1]
					"Eye of Azshara", -- [2]
				},
				[134990] = {
					"Charged Dust Devil", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[100527] = {
					"Dreadfire Imp", -- [1]
					"Darkheart Thicket", -- [2]
				},
				[130027] = {
					"Ashvane Marine", -- [1]
					"Tol Dagor", -- [2]
				},
				[109229] = {
					"Nightfallen Construct", -- [1]
					"The Ruins of Falanaar", -- [2]
				},
				[97200] = {
					"Seacursed Soulkeeper", -- [1]
					"Maw of Souls", -- [2]
				},
				[91543] = {
					"Corrupted Talonpriest", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[150159] = {
					"King Gobbamak", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[161229] = {
					"Aqir Venomweaver", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[134991] = {
					"Sandfury Stonefist", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[16244] = {
					"Infectious Ghoul", -- [1]
					"Naxxramas", -- [2]
				},
				[36612] = {
					"Lord Marrowgar", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[170690] = {
					"Diseased Horror", -- [1]
					"Theater of Pain", -- [2]
				},
				[119923] = {
					"Helblaze Soulmender", -- [1]
					"Cathedral of Eternal Night", -- [2]
				},
				[41570] = {
					"Magmaw", -- [1]
					"Blackwing Descent", -- [2]
				},
				[120235] = {
					"Vyrastrasza", -- [1]
					"The Ruby Sanctum", -- [2]
				},
				[77182] = {
					"Oregorger", -- [1]
					"Blackrock Foundry", -- [2]
				},
				[83892] = {
					"Life Warden Gola", -- [1]
					"The Everbloom", -- [2]
				},
				[121003] = {
					"Rez the Tombwatcher", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[152396] = {
					"Guardian of Azeroth", -- [1]
					"Warsong Gulch", -- [2]
				},
				[162763] = {
					"Soulforged Bonereaver", -- [1]
					"Theater of Pain", -- [2]
				},
				[74989] = {
					"Twilight Disciple", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[71080] = {
					"Small Illusionary Slayer", -- [1]
					"Proving Grounds", -- [2]
				},
				[138064] = {
					"Posh Vacationer", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[109075] = {
					"Parasitic Lasher", -- [1]
					"The Nighthold", -- [2]
				},
				[118700] = {
					"Felblight Stalker", -- [1]
					"Cathedral of Eternal Night", -- [2]
				},
				[169157] = {
					"Mudlump", -- [1]
					"Castle Nathria", -- [2]
				},
				[111022] = {
					"The Demon Within", -- [1]
					"The Nighthold", -- [2]
				},
				[104688] = {
					"Voidling", -- [1]
					"The Nighthold", -- [2]
				},
				[103344] = {
					"Oakheart", -- [1]
					"Darkheart Thicket", -- [2]
				},
				[162018] = {
					"Temple Guard", -- [1]
					"Vision of Ysera Scenario", -- [2]
				},
				[8893] = {
					"Anvilrage Soldier", -- [1]
					"Blackrock Depths", -- [2]
				},
				[13020] = {
					"Vaelastrasz the Corrupt", -- [1]
					"Blackwing Lair", -- [2]
				},
				[134994] = {
					"Spectral Headhunter", -- [1]
					"Kings' Rest", -- [2]
				},
				[164171] = {
					"Honored Duelist", -- [1]
					"Revendreth Scenario", -- [2]
				},
				[130024] = {
					"Soggy Shiprat", -- [1]
					"Freehold", -- [2]
				},
				[109947] = {
					"Corrupted Soul", -- [1]
					"The Temple of Elune", -- [2]
				},
				[80822] = {
					"Night-Twisted Berserker", -- [1]
					"Highmaul", -- [2]
				},
				[113132] = {
					"Burning Terrorhound", -- [1]
					"Broken Shore Scenario", -- [2]
				},
				[138066] = {
					"Posh Vacationer", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[173044] = {
					"Stitching Assistant", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[18422] = {
					"Sunseeker Botanist", -- [1]
					"Tempest Keep: The Botanica", -- [2]
				},
				[85240] = {
					"Night-Twisted Soothsayer", -- [1]
					"Highmaul", -- [2]
				},
				[150250] = {
					"Pistonhead Blaster", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[96640] = {
					"Valarjar Marksman", -- [1]
					"Halls of Valor", -- [2]
				},
				[47232] = {
					"Ghostly Cook", -- [1]
					"Shadowfang Keep", -- [2]
				},
				[82528] = {
					"Gorian Arcanist", -- [1]
					"Highmaul", -- [2]
				},
				[133972] = {
					"Heavy Cannon", -- [1]
					"Tol Dagor", -- [2]
				},
				[92144] = {
					"Dia Darkwhisper", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[83894] = {
					"Dulhu", -- [1]
					"The Everbloom", -- [2]
				},
				[135765] = {
					"Torrent Totem", -- [1]
					"Kings' Rest", -- [2]
				},
				[104881] = {
					"Spellblade Aluriel", -- [1]
					"The Nighthold", -- [2]
				},
				[165197] = {
					"Skeletal Monstrosity", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[105393] = {
					"Il'gynoth", -- [1]
					"The Emerald Nightmare", -- [2]
				},
				[164804] = {
					"Droman Oulfarran", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[138068] = {
					"Posh Vacationer", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[8898] = {
					"Anvilrage Marshal", -- [1]
					"Blackrock Depths", -- [2]
				},
				[169055] = {
					"Marrow Scraper", -- [1]
					"Theater of Pain", -- [2]
				},
				[19510] = {
					"Bloodwarder Centurion", -- [1]
					"Tempest Keep: The Mechanar", -- [2]
				},
				[121985] = {
					"Flame of Taeshalach", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[165415] = {
					"Toiling Groundskeeper", -- [1]
					"Halls of Atonement", -- [2]
				},
				[102788] = {
					"Felspite Dominator", -- [1]
					"Black Rook Hold", -- [2]
				},
				[12056] = {
					"Baron Geddon", -- [1]
					"Molten Core", -- [2]
				},
				[136264] = {
					"Half-Finished Mummy", -- [1]
					"Kings' Rest", -- [2]
				},
				[171341] = {
					"Bladebeak Hatchling", -- [1]
					"De Other Side", -- [2]
				},
				[19958] = {
					"White Seedling", -- [1]
					"Tempest Keep: The Botanica", -- [2]
				},
				[100531] = {
					"Bloodtainted Fury", -- [1]
					"Darkheart Thicket", -- [2]
				},
				[175550] = {
					"Volatile Faerie", -- [1]
					"9.0 Bastion Arena - Path of Ascension", -- [2]
				},
				[158146] = {
					"Fallen Riftwalker", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[120449] = {
					"Defensive Countermeasure", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[133463] = {
					"Venture Co. War Machine", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[105906] = {
					"Eye of Il'gynoth", -- [1]
					"The Emerald Nightmare", -- [2]
				},
				[171342] = {
					"Juvenile Runestag", -- [1]
					"De Other Side", -- [2]
				},
				[118703] = {
					"Felborne Botanist", -- [1]
					"Cathedral of Eternal Night", -- [2]
				},
				[129879] = {
					"Irontide Cleaver", -- [1]
					"Siege of Boralus", -- [2]
				},
				[137468] = {
					"Varg", -- [1]
					"Waycrest Manor", -- [2]
				},
				[125569] = {
					"Riftworld Assistant", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[141565] = {
					"Kul Tiran Footman", -- [1]
					"Siege of Boralus", -- [2]
				},
				[98081] = {
					"Bellowing Idol", -- [1]
					"Neltharion's Lair", -- [2]
				},
				[78832] = {
					"Grom'kar Man-at-Arms", -- [1]
					"Blackrock Foundry", -- [2]
				},
				[171343] = {
					"Bladebeak Matriarch", -- [1]
					"De Other Side", -- [2]
				},
				[148797] = {
					"Magus of the Dead", -- [1]
					"Waycrest Manor", -- [2]
				},
				[100532] = {
					"Bloodtainted Burster", -- [1]
					"Darkheart Thicket", -- [2]
				},
				[91787] = {
					"Cove Seagull", -- [1]
					"Eye of Azshara", -- [2]
				},
				[161746] = {
					"Ossirat", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[113585] = {
					"Arcway Reclaimer", -- [1]
					"The Arcway - Suramar Scenario", -- [2]
				},
				[158035] = {
					"Magister Umbric", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[150142] = {
					"Scrapbone Trashtosser", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[102706] = {
					"Grinning Shadowstalker", -- [1]
					"Broken Shore Scenario", -- [2]
				},
				[118704] = {
					"Dul'zak", -- [1]
					"Cathedral of Eternal Night", -- [2]
				},
				[110770] = {
					"Lady Liadrin", -- [1]
					"Death Knight Campaign - Light's Hope Chapel", -- [2]
				},
				[163524] = {
					"Kyrian Dark-Praetor", -- [1]
					"Spires of Ascension", -- [2]
				},
				[137478] = {
					"Queen Wasi", -- [1]
					"Kings' Rest", -- [2]
				},
				[120550] = {
					"Wrathguard Invader", -- [1]
					"Cathedral of Eternal Night", -- [2]
				},
				[75410] = {
					"Guardian of the Deep", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[76946] = {
					"Faultline", -- [1]
					"Blackrock Foundry", -- [2]
				},
				[97677] = {
					"Barbed Spiderling", -- [1]
					"Vault of the Wardens", -- [2]
				},
				[104372] = {
					"Eredar Portal-Lord", -- [1]
					"Niskara", -- [2]
				},
				[17975] = {
					"High Botanist Freywinn", -- [1]
					"Tempest Keep: The Botanica", -- [2]
				},
				[156501] = {
					"Ravnyr", -- [1]
					"Darkmaul Citadel", -- [2]
				},
				[131850] = {
					"Maddened Survivalist", -- [1]
					"Waycrest Manor", -- [2]
				},
				[168968] = {
					"Plaguebound Fallen", -- [1]
					"Plaguefall", -- [2]
				},
				[153942] = {
					"Annihilator Lak'hal", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[126847] = {
					"Captain Raoul", -- [1]
					"Freehold", -- [2]
				},
				[169912] = {
					"Enraged Mask", -- [1]
					"De Other Side", -- [2]
				},
				[61408] = {
					"Adarogg", -- [1]
					"Ragefire Chasm", -- [2]
				},
				[90296] = {
					"Soulbound Construct", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[61644] = {
					"Dark Shaman Researcher", -- [1]
					"Ragefire Chasm", -- [2]
				},
				[3864] = {
					"Fel Steed", -- [1]
					"Shadowfang Keep", -- [2]
				},
				[94697] = {
					"Siegeworks Technician", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[153943] = {
					"Decimator Shiq'voth", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[102375] = {
					"Runecarver Slave", -- [1]
					"Maw of Souls", -- [2]
				},
				[163157] = {
					"Amarth", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[104373] = {
					"Icy Gaze of Qormaladon", -- [1]
					"Niskara", -- [2]
				},
				[89834] = {
					"Ancient Tome", -- [1]
					"Eye of Azshara", -- [2]
				},
				[140123] = {
					"Weaponmaster Halu", -- [1]
					"Kings' Rest", -- [2]
				},
				[95888] = {
					"Cordana Felsong", -- [1]
					"Vault of the Wardens", -- [2]
				},
				[144300] = {
					"Mechagon Citizen", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[172981] = {
					"Kyrian Stitchwerk", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[84767] = {
					"Twisted Abomination", -- [1]
					"The Everbloom", -- [2]
				},
				[156023] = {
					"Miniature Soulmass", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[118706] = {
					"Necrotic Spiderling", -- [1]
					"Cathedral of Eternal Night", -- [2]
				},
				[19511] = {
					"Nethervine Inciter", -- [1]
					"Tempest Keep: The Botanica", -- [2]
				},
				[135761] = {
					"Thundering Totem", -- [1]
					"Kings' Rest", -- [2]
				},
				[136541] = {
					"Bile Oozeling", -- [1]
					"Waycrest Manor", -- [2]
				},
				[112867] = {
					"Maiev Shadowsong", -- [1]
					"Black Temple - Legion", -- [2]
				},
				[113038] = {
					"Fel Lord Kurrz", -- [1]
					"Broken Shore Scenario", -- [2]
				},
				[162647] = {
					"Willing Sacrifice", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[3636] = {
					"Deviate Ravager", -- [1]
					"Wailing Caverns", -- [2]
				},
				[104374] = {
					"Fiery Gaze of Qormaladon", -- [1]
					"Niskara", -- [2]
				},
				[16156] = {
					"Dark Touched Warrior", -- [1]
					"Naxxramas", -- [2]
				},
				[47143] = {
					"Spitebone Skeleton", -- [1]
					"Shadowfang Keep", -- [2]
				},
				[113332] = {
					"Mana Hunter", -- [1]
					"The Arcway - Suramar Scenario", -- [2]
				},
				[153015] = {
					"Bound Soul", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[158041] = {
					"N'Zoth the Corruptor", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[170838] = {
					"Unyielding Contender", -- [1]
					"Theater of Pain", -- [2]
				},
				[93881] = {
					"Contracted Engineer", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[135007] = {
					"Orb Guardian", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[102583] = {
					"Fel Scorcher", -- [1]
					"Vault of the Wardens", -- [2]
				},
				[91796] = {
					"Skrog Wavecrasher", -- [1]
					"Eye of Azshara", -- [2]
				},
				[157634] = {
					"Flameforge Enforcer", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[138254] = {
					"Irontide Powdershot", -- [1]
					"Siege of Boralus", -- [2]
				},
				[168246] = {
					"Reanimated Crossbowman", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[85225] = {
					"Gorian Sorcerer", -- [1]
					"Highmaul", -- [2]
				},
				[128652] = {
					"Viq'Goth", -- [1]
					"Siege of Boralus", -- [2]
				},
				[33768] = {
					"Rubble", -- [1]
					"Ulduar", -- [2]
				},
				[121011] = {
					"Tidescale Witch", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[98770] = {
					"Wrathguard Felblade", -- [1]
					"The Arcway", -- [2]
				},
				[104676] = {
					"Waning Time Particle", -- [1]
					"The Nighthold", -- [2]
				},
				[131863] = {
					"Raal the Gluttonous", -- [1]
					"Waycrest Manor", -- [2]
				},
				[131864] = {
					"Gorak Tul", -- [1]
					"Waycrest Manor", -- [2]
				},
				[169905] = {
					"Risen Warlord", -- [1]
					"De Other Side", -- [2]
				},
				[126642] = {
					"Sandyback Crab", -- [1]
					"Siege of Boralus", -- [2]
				},
				[150293] = {
					"Mechagon Prowler", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[102584] = {
					"Malignant Defiler", -- [1]
					"Vault of the Wardens", -- [2]
				},
				[111070] = {
					"Soul Fragment of Azzinoth", -- [1]
					"The Nighthold", -- [2]
				},
				[95638] = {
					"Sargerei Bannerman", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[105876] = {
					"Enchanted Broodling", -- [1]
					"The Arcway", -- [2]
				},
				[53006] = {
					"Spirit Link Totem", -- [1]
					"Warsong Gulch", -- [2]
				},
				[95674] = {
					"Fenryr", -- [1]
					"Halls of Valor", -- [2]
				},
				[113168] = {
					"Duskwatch Ley-Warden", -- [1]
					"The Arcway - Suramar Scenario", -- [2]
				},
				[122963] = {
					"Rezan", -- [1]
					"Atal'Dazar", -- [2]
				},
				[17976] = {
					"Commander Sarannis", -- [1]
					"Tempest Keep: The Botanica", -- [2]
				},
				[153882] = {
					"Deadsoul Spirit", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[92961] = {
					"Gorebound Brute", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[80409] = {
					"Markog Aba'dir", -- [1]
					"Blackrock Foundry", -- [2]
				},
				[152498] = {
					"Dark Ranger", -- [1]
					"Siege of Orgrimmar - Coup Scenario", -- [2]
				},
				[167965] = {
					"Lubricator", -- [1]
					"De Other Side", -- [2]
				},
				[129529] = {
					"Blacktooth Scrapper", -- [1]
					"Freehold", -- [2]
				},
				[93156] = {
					"Eredar Faithbreaker", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[164188] = {
					"Horrific Figment", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[61666] = {
					"Corrupted Houndmaster", -- [1]
					"Ragefire Chasm", -- [2]
				},
				[94724] = {
					"Bryanda", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[16165] = {
					"Necro Knight", -- [1]
					"Naxxramas", -- [2]
				},
				[87229] = {
					"Iron Blood Mage", -- [1]
					"Highmaul", -- [2]
				},
				[128435] = {
					"Toxic Saurid", -- [1]
					"Atal'Dazar", -- [2]
				},
				[157614] = {
					"Tentacle of Drest'agath", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[132532] = {
					"Kul Tiran Marksman", -- [1]
					"Siege of Boralus", -- [2]
				},
				[164189] = {
					"Horrific Figment", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[160606] = {
					"Glimmerhoof Cloudstrider", -- [1]
					"Theater of Pain", -- [2]
				},
				[37116] = {
					"Skybreaker Sorcerer", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[137511] = {
					"Bilge Rat Cutthroat", -- [1]
					"Siege of Boralus", -- [2]
				},
				[130522] = {
					"Freehold Shipmate", -- [1]
					"Freehold", -- [2]
				},
				[13218] = {
					"Grunnda Wolfheart", -- [1]
					"Alterac Valley", -- [2]
				},
				[77504] = {
					"Slag Behemoth", -- [1]
					"Blackrock Foundry", -- [2]
				},
				[92387] = {
					"Drums of War", -- [1]
					"Neltharion's Lair", -- [2]
				},
				[19512] = {
					"Nethervine Reaper", -- [1]
					"Tempest Keep: The Botanica", -- [2]
				},
				[164702] = {
					"Carrion Worm", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[136549] = {
					"Ashvane Cannoneer", -- [1]
					"Siege of Boralus", -- [2]
				},
				[107449] = {
					"Observant Inquisitor", -- [1]
					"Court of Stars", -- [2]
				},
				[119990] = {
					"Fenryr", -- [1]
					"Halls of Valor", -- [2]
				},
				[95676] = {
					"Odyn", -- [1]
					"Halls of Valor", -- [2]
				},
				[116407] = {
					"Harjatan", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[91521] = {
					"Vindicator Bramu", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[164191] = {
					"Noble Courtier", -- [1]
					"Revendreth Scenario", -- [2]
				},
				[122773] = {
					"Decimator", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[156866] = {
					"Ra-den", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[5056] = {
					"Deviate Dreadfang", -- [1]
					"Wailing Caverns", -- [2]
				},
				[98206] = {
					"General Xakal", -- [1]
					"The Arcway", -- [2]
				},
				[164266] = {
					"Domina Venomblade", -- [1]
					"Plaguefall", -- [2]
				},
				[139425] = {
					"Crazed Incubator", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[139110] = {
					"Spark Channeler", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[36969] = {
					"Skybreaker Rifleman", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[16193] = {
					"Skeletal Smith", -- [1]
					"Naxxramas", -- [2]
				},
				[120473] = {
					"Tidescale Combatant", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[33528] = {
					"Guardian of Life", -- [1]
					"Ulduar", -- [2]
				},
				[12122] = {
					"Duros", -- [1]
					"Alterac Valley", -- [2]
				},
				[98208] = {
					"Advisor Vandros", -- [1]
					"The Arcway", -- [2]
				},
				[173189] = {
					"Nathrian Hawkeye", -- [1]
					"Castle Nathria", -- [2]
				},
				[154567] = {
					"Purity's Cleansing", -- [1]
					"9.0 Bastion Arena - Path of Ascension", -- [2]
				},
				[92350] = {
					"Understone Drudge", -- [1]
					"Neltharion's Lair", -- [2]
				},
				[164705] = {
					"Pestilence Slime", -- [1]
					"Plaguefall", -- [2]
				},
				[111563] = {
					"Duskwatch Guard", -- [1]
					"Court of Stars", -- [2]
				},
				[157608] = {
					"Faceless Willbreaker", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[169893] = {
					"Nefarious Darkspeaker", -- [1]
					"Theater of Pain", -- [2]
				},
				[130485] = {
					"Mechanized Peacekeeper", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[159510] = {
					"Eye of the Depths", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[118712] = {
					"Felstrider Enforcer", -- [1]
					"Cathedral of Eternal Night", -- [2]
				},
				[34922] = {
					"Overlord Agmar", -- [1]
					"Isle of Conquest", -- [2]
				},
				[144231] = {
					"Rowdy Reveler", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[100749] = {
					"Mistress Torvis", -- [1]
					"Niskara", -- [2]
				},
				[135241] = {
					"Bilge Rat Pillager", -- [1]
					"Siege of Boralus", -- [2]
				},
				[133482] = {
					"Crawler Mine", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[110617] = {
					"Shadowsworn Harbinger", -- [1]
					"Broken Shore Scenario", -- [2]
				},
				[120793] = {
					"Mephistroth", -- [1]
					"Cathedral of Eternal Night", -- [2]
				},
				[113012] = {
					"Felsworn Chaos-Mage", -- [1]
					"The Nighthold", -- [2]
				},
				[104636] = {
					"Cenarius", -- [1]
					"The Emerald Nightmare", -- [2]
				},
				[164707] = {
					"Congealed Slime", -- [1]
					"Plaguefall", -- [2]
				},
				[161124] = {
					"Urg'roth, Breaker of Heroes", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[89024] = {
					"Hatecoil Fathom-Stalker", -- [1]
					"Eye of Azshara", -- [2]
				},
				[105660] = {
					"Akaari Shadowgore", -- [1]
					"Artifact - Acquisition - Subtlety", -- [2]
				},
				[158565] = {
					"Naros", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[87521] = {
					"Iron Slag-Shaper", -- [1]
					"Blackrock Foundry", -- [2]
				},
				[61412] = {
					"Dark Shaman Koranthal", -- [1]
					"Ragefire Chasm", -- [2]
				},
				[131436] = {
					"Chosen Blood Matron", -- [1]
					"The Underrot", -- [2]
				},
				[21148] = {
					"Rift Keeper", -- [1]
					"Opening of the Dark Portal", -- [2]
				},
				[106786] = {
					"Bitterbrine Slave", -- [1]
					"Eye of Azshara", -- [2]
				},
				[144296] = {
					"Spider Tank", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[134058] = {
					"Galecaller Faye", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[33515] = {
					"Auriaya", -- [1]
					"Ulduar", -- [2]
				},
				[19507] = {
					"Sunseeker Gene-Splicer", -- [1]
					"Tempest Keep: The Botanica", -- [2]
				},
				[98280] = {
					"Risen Arcanist", -- [1]
					"Black Rook Hold", -- [2]
				},
				[105596] = {
					"Chaos Guard", -- [1]
					"Artifact - Acquisition - Subtlety", -- [2]
				},
				[100850] = {
					"Ariden", -- [1]
					"Karazhan Catacombs", -- [2]
				},
				[75658] = {
					"Blindlight Murloc", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[89025] = {
					"Hatecoil Spitespeaker", -- [1]
					"Eye of Azshara", -- [2]
				},
				[14465] = {
					"Alliance Battle Standard", -- [1]
					"The Battle for Gilneas", -- [2]
				},
				[158567] = {
					"Tormented Kor'kron Annihilator", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[20078] = {
					"Summoned Bloodwarder Reservist", -- [1]
					"Tempest Keep: The Botanica", -- [2]
				},
				[118714] = {
					"Hellblaze Temptress", -- [1]
					"Cathedral of Eternal Night", -- [2]
				},
				[19513] = {
					"Mutate Fear-Shrieker", -- [1]
					"Tempest Keep: The Botanica", -- [2]
				},
				[14401] = {
					"Master Elemental Shaper Krixix", -- [1]
					"Blackwing Lair", -- [2]
				},
				[165222] = {
					"Zolramus Bonemender", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[91103] = {
					"Felfire Demolisher", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[158056] = {
					"Rat", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[16061] = {
					"Instructor Razuvious", -- [1]
					"Naxxramas", -- [2]
				},
				[86329] = {
					"Breaker Ritualist", -- [1]
					"Highmaul", -- [2]
				},
				[8892] = {
					"Anvilrage Footman", -- [1]
					"Blackrock Depths", -- [2]
				},
				[129208] = {
					"Dread Captain Lockwood", -- [1]
					"Siege of Boralus", -- [2]
				},
				[163058] = {
					"Mistveil Defender", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[159320] = {
					"Amahtet", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[112409] = {
					"Muffinmon", -- [1]
					"Black Temple - Legion", -- [2]
				},
				[108033] = {
					"Fal'dorei Web Walker", -- [1]
					"The Ruins of Falanaar", -- [2]
				},
				[162664] = {
					"Aqir Swarmer", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[17835] = {
					"Infinite Assassin", -- [1]
					"Opening of the Dark Portal", -- [2]
				},
				[118715] = {
					"Reanimated Templar", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[32876] = {
					"Dark Rune Champion", -- [1]
					"Ulduar", -- [2]
				},
				[154016] = {
					"Prisonbreak Soulmender", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[152939] = {
					"Boundless Corruption", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[153451] = {
					"Kosarus the Fallen", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[90516] = {
					"Mo'arg Painbringer", -- [1]
					"Broken Shore Scenario", -- [2]
				},
				[136100] = {
					"Sunken Denizen", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[154014] = {
					"Imprisoned Cabalist", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[33772] = {
					"Faceless Horror", -- [1]
					"Ulduar", -- [2]
				},
				[154015] = {
					"Escaped Ritualist", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[92610] = {
					"Understone Drummer", -- [1]
					"Neltharion's Lair", -- [2]
				},
				[171500] = {
					"Shuffling Corpse", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[164362] = {
					"Slimy Morsel", -- [1]
					"Plaguefall", -- [2]
				},
				[96455] = {
					"Swirling Storms", -- [1]
					"Shield's Rest", -- [2]
				},
				[112804] = {
					"Trained Shadescale", -- [1]
					"The Nighthold", -- [2]
				},
				[118460] = {
					"Engine of Souls", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[102336] = {
					"Portal Keeper", -- [1]
					"Assault on Violet Hold", -- [2]
				},
				[162715] = {
					"Fanatical Cultist", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[164714] = {
					"Forsworn Appraiser", -- [1]
					"Spires of Ascension", -- [2]
				},
				[98370] = {
					"Ghostly Councilor", -- [1]
					"Black Rook Hold", -- [2]
				},
				[173464] = {
					"Deplina", -- [1]
					"Castle Nathria", -- [2]
				},
				[91331] = {
					"Archimonde", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[8895] = {
					"Anvilrage Officer", -- [1]
					"Blackrock Depths", -- [2]
				},
				[75463] = {
					"Deep Terror", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[120234] = {
					"Ruby Defender", -- [1]
					"The Ruby Sanctum", -- [2]
				},
				[17978] = {
					"Thorngrin the Tender", -- [1]
					"Tempest Keep: The Botanica", -- [2]
				},
				[156523] = {
					"Maut", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[118642] = {
					"Dreadwing", -- [1]
					"Cathedral of Eternal Night", -- [2]
				},
				[61658] = {
					"Mature Flame Hound", -- [1]
					"Ragefire Chasm", -- [2]
				},
				[173339] = {
					"Plaguebelcher", -- [1]
					"Plaguefall", -- [2]
				},
				[138063] = {
					"Posh Vacationer", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[158478] = {
					"Corruption Tumor", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[102337] = {
					"Portal Guardian", -- [1]
					"Assault on Violet Hold", -- [2]
				},
				[32877] = {
					"Dark Rune Warbringer", -- [1]
					"Ulduar", -- [2]
				},
				[141566] = {
					"Scrimshaw Gutter", -- [1]
					"Siege of Boralus", -- [2]
				},
				[111295] = {
					"Domesticated Manasaber", -- [1]
					"The Nighthold", -- [2]
				},
				[162116] = {
					"Lyanis Moonfall", -- [1]
					"Vision of Ysera Scenario", -- [2]
				},
				[91332] = {
					"Stoneclaw Hunter", -- [1]
					"Neltharion's Lair", -- [2]
				},
				[83893] = {
					"Earthshaper Telu", -- [1]
					"The Everbloom", -- [2]
				},
				[95939] = {
					"Skrog Tidestomper", -- [1]
					"Eye of Azshara", -- [2]
				},
				[97202] = {
					"Olmyr the Enlightened", -- [1]
					"Halls of Valor", -- [2]
				},
				[156015] = {
					"Writhing Soulmass", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[27965] = {
					"Dark Rune Shaper", -- [1]
					"Halls of Stone", -- [2]
				},
				[19557] = {
					"Greater Frayer", -- [1]
					"Tempest Keep: The Botanica", -- [2]
				},
				[97219] = {
					"Solsten", -- [1]
					"Halls of Valor", -- [2]
				},
				[74476] = {
					"Domina", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[134005] = {
					"Shalebiter", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[118462] = {
					"Soul Queen Dejahna", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[118718] = {
					"Book of Eternal Winter", -- [1]
					"Cathedral of Eternal Night", -- [2]
				},
				[91783] = {
					"Hatecoil Stormweaver", -- [1]
					"Eye of Azshara", -- [2]
				},
				[163836] = {
					"Psychophage", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[94916] = {
					"Fel Touched Seer", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[119742] = {
					"Felguard Invader", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[27960] = {
					"Dark Rune Warrior", -- [1]
					"Halls of Stone", -- [2]
				},
				[61245] = {
					"Capacitor Totem", -- [1]
					"Warsong Gulch", -- [2]
				},
				[112320] = {
					"Haunting Nightmare", -- [1]
					"The Emerald Nightmare", -- [2]
				},
				[19962] = {
					"Blue Seedling", -- [1]
					"Tempest Keep: The Botanica", -- [2]
				},
				[160112] = {
					"Stone Legion Nightblade", -- [1]
					"Revendreth Scenario", -- [2]
				},
				[140149] = {
					"Released Crawg", -- [1]
					"Twin Peaks", -- [2]
				},
				[163621] = {
					"Goregrind", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[121790] = {
					"Fleetlord Dominator", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[162046] = {
					"Famished Tick", -- [1]
					"Sanguine Depths", -- [2]
				},
				[169875] = {
					"Shackled Soul", -- [1]
					"Theater of Pain", -- [2]
				},
				[34918] = {
					"Kor'kron Guard", -- [1]
					"Isle of Conquest", -- [2]
				},
				[81864] = {
					"Dreadpetal", -- [1]
					"The Everbloom", -- [2]
				},
				[32878] = {
					"Dark Rune Evoker", -- [1]
					"Ulduar", -- [2]
				},
				[98756] = {
					"Arcane Anomaly", -- [1]
					"The Arcway", -- [2]
				},
				[33134] = {
					"Sara", -- [1]
					"Ulduar", -- [2]
				},
				[10367] = {
					"Shrye Ragefist", -- [1]
					"Alterac Valley", -- [2]
				},
				[137591] = {
					"Healing Tide Totem", -- [1]
					"Kings' Rest", -- [2]
				},
				[78001] = {
					"Cloudburst Totem", -- [1]
					"Warsong Gulch", -- [2]
				},
				[81114] = {
					"Gronnling Laborer", -- [1]
					"Blackrock Foundry", -- [2]
				},
				[171887] = {
					"Slimy Smorgasbord", -- [1]
					"Plaguefall", -- [2]
				},
				[71062] = {
					"Large Illusionary Slayer", -- [1]
					"Proving Grounds", -- [2]
				},
				[113089] = {
					"Defiled Keeper", -- [1]
					"The Emerald Nightmare", -- [2]
				},
				[118705] = {
					"Nal'asha", -- [1]
					"Cathedral of Eternal Night", -- [2]
				},
				[113088] = {
					"Corrupted Feeler", -- [1]
					"The Emerald Nightmare", -- [2]
				},
				[137625] = {
					"Demolishing Terror", -- [1]
					"Siege of Boralus", -- [2]
				},
				[129369] = {
					"Irontide Raider", -- [1]
					"Siege of Boralus", -- [2]
				},
				[171376] = {
					"Head Custodian Javlin", -- [1]
					"Sanguine Depths", -- [2]
				},
				[101074] = {
					"Hatespawn Whelpling", -- [1]
					"Darkheart Thicket", -- [2]
				},
				[93068] = {
					"Xhul'horac", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[9545] = {
					"Grim Patron", -- [1]
					"Blackrock Depths", -- [2]
				},
				[116944] = {
					"Mephistroth", -- [1]
					"Cathedral of Eternal Night", -- [2]
				},
				[111554] = {
					"Felblaze Trickster", -- [1]
					"The Nighthold", -- [2]
				},
				[21818] = {
					"Infinite Whelp", -- [1]
					"Opening of the Dark Portal", -- [2]
				},
				[81283] = {
					"Grom'kar Footsoldier", -- [1]
					"Iron Docks", -- [2]
				},
				[94185] = {
					"Vanguard Akkelion", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[159633] = {
					"Cultist Executioner", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[129214] = {
					"Coin-Operated Crowd Pummeler", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[144248] = {
					"Head Machinist Sparkflux", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[161140] = {
					"Bwemba", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[166933] = {
					"Ventun the Ravenous", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[32873] = {
					"Ancient Rune Giant", -- [1]
					"Ulduar", -- [2]
				},
				[165067] = {
					"Margore", -- [1]
					"Castle Nathria", -- [2]
				},
				[157584] = {
					"Flameforge Master", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[27971] = {
					"Unrelenting Construct", -- [1]
					"Halls of Stone", -- [2]
				},
				[156022] = {
					"Bubbling Soulmass", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[144249] = {
					"Omega Buster", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[37230] = {
					"Spire Frostwyrm", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[8896] = {
					"Shadowforge Peasant", -- [1]
					"Blackrock Depths", -- [2]
				},
				[47132] = {
					"Dark Creeper", -- [1]
					"Shadowfang Keep", -- [2]
				},
				[134012] = {
					"Taskmaster Askari", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[100818] = {
					"Bellowing Idol", -- [1]
					"Neltharion's Lair", -- [2]
				},
				[99200] = {
					"Dresaron", -- [1]
					"Darkheart Thicket", -- [2]
				},
				[108740] = {
					"Velimar", -- [1]
					"Court of Stars", -- [2]
				},
				[113091] = {
					"Tainted Plainstrider", -- [1]
					"The Emerald Nightmare", -- [2]
				},
				[17977] = {
					"Warp Splinter", -- [1]
					"Tempest Keep: The Botanica", -- [2]
				},
				[105915] = {
					"Nightborne Reclaimer", -- [1]
					"The Arcway", -- [2]
				},
				[164218] = {
					"Lord Chamberlain", -- [1]
					"Halls of Atonement", -- [2]
				},
				[101414] = {
					"Saltscale Skulker", -- [1]
					"Eye of Azshara", -- [2]
				},
				[97991] = {
					"Misthunter Basilisk", -- [1]
					"Tideskorn Harbor", -- [2]
				},
				[168843] = {
					"Klotos", -- [1]
					"Spires of Ascension", -- [2]
				},
				[144232] = {
					"Rowdy Reveler", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[98759] = {
					"Vicious Manafang", -- [1]
					"The Arcway", -- [2]
				},
				[139626] = {
					"Dredged Sailor", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[98677] = {
					"Rook Spiderling", -- [1]
					"Black Rook Hold", -- [2]
				},
				[27961] = {
					"Dark Rune Worker", -- [1]
					"Halls of Stone", -- [2]
				},
				[155216] = {
					"Faeleaf Warden", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[164177] = {
					"Royal Nightcloak", -- [1]
					"Revendreth Scenario", -- [2]
				},
				[120770] = {
					"Felguard Destroyer", -- [1]
					"Cathedral of Eternal Night", -- [2]
				},
				[168310] = {
					"Plagueroc", -- [1]
					"Plaguefall", -- [2]
				},
				[113092] = {
					"Swarming Dread", -- [1]
					"The Emerald Nightmare", -- [2]
				},
				[163690] = {
					"Shath'Yar Scribe", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[171184] = {
					"Mythresh, Sky's Talons", -- [1]
					"De Other Side", -- [2]
				},
				[8983] = {
					"Golem Lord Argelmach", -- [1]
					"Blackrock Depths", -- [2]
				},
				[120779] = {
					"Helblaze Felbringer", -- [1]
					"Cathedral of Eternal Night", -- [2]
				},
				[97992] = {
					"Veteran Harpooner", -- [1]
					"Tideskorn Harbor", -- [2]
				},
				[118723] = {
					"Gazerax", -- [1]
					"Cathedral of Eternal Night", -- [2]
				},
				[121021] = {
					"Shadowsworn Invader", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[12051] = {
					"Frostwolf Legionnaire", -- [1]
					"Alterac Valley", -- [2]
				},
				[33136] = {
					"Guardian of Yogg-Saron", -- [1]
					"Ulduar", -- [2]
				},
				[165905] = {
					"Son of Hakkar", -- [1]
					"De Other Side", -- [2]
				},
				[166264] = {
					"Spare Parts", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[150396] = {
					"Aerial Unit R-21/X", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[128434] = {
					"Feasting Skyscreamer", -- [1]
					"Atal'Dazar", -- [2]
				},
				[159610] = {
					"Agitated Etherwyrm", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[135552] = {
					"Deathtouched Slaver", -- [1]
					"Waycrest Manor", -- [2]
				},
				[113093] = {
					"Infected Gazelle", -- [1]
					"The Emerald Nightmare", -- [2]
				},
				[132481] = {
					"Kul Tiran Vanguard", -- [1]
					"Siege of Boralus", -- [2]
				},
				[97170] = {
					"Hatecoil Wavebinder", -- [1]
					"Eye of Azshara", -- [2]
				},
				[118719] = {
					"Wyrmtongue Scavenger", -- [1]
					"Cathedral of Eternal Night", -- [2]
				},
				[150397] = {
					"King Mechagon", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[97993] = {
					"Veteran Enforcer", -- [1]
					"Tideskorn Harbor", -- [2]
				},
				[131009] = {
					"Spirit of Gold", -- [1]
					"Atal'Dazar", -- [2]
				},
				[172408] = {
					"Alderyn", -- [1]
					"9.0 Bastion Arena - Path of Ascension", -- [2]
				},
				[95642] = {
					"Korvos", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[144246] = {
					"K.U.-J.0.", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[168326] = {
					"Shattered Visage", -- [1]
					"De Other Side", -- [2]
				},
				[166266] = {
					"Spare Parts", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[158588] = {
					"Gamon", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[120516] = {
					"Razorjaw Swiftfin", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[102191] = {
					"Dreadhound", -- [1]
					"Azsuna", -- [2]
				},
				[172409] = {
					"Myn'ir", -- [1]
					"9.0 Bastion Arena - Path of Ascension", -- [2]
				},
				[9024] = {
					"Pyromancer Loregrain", -- [1]
					"Blackrock Depths", -- [2]
				},
				[9056] = {
					"Fineous Darkvire", -- [1]
					"Blackrock Depths", -- [2]
				},
				[27966] = {
					"Dark Rune Controller", -- [1]
					"Halls of Stone", -- [2]
				},
				[117957] = {
					"Tormented Soul", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[107459] = {
					"Venomous Spiderling", -- [1]
					"The Emerald Nightmare", -- [2]
				},
				[97994] = {
					"Elder Runecarver", -- [1]
					"Tideskorn Harbor", -- [2]
				},
				[163708] = {
					"Umbral Gatekeeper", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[172410] = {
					"Nuuminuuru", -- [1]
					"9.0 Bastion Arena - Path of Ascension", -- [2]
				},
				[111047] = {
					"Parasitic Shadow Demon", -- [1]
					"The Nighthold", -- [2]
				},
				[111303] = {
					"Nightborne Sage", -- [1]
					"The Nighthold", -- [2]
				},
				[115905] = {
					"Fel Soul", -- [1]
					"The Nighthold", -- [2]
				},
				[162051] = {
					"Frenzied Ghoul", -- [1]
					"Sanguine Depths", -- [2]
				},
				[93985] = {
					"Corrupted Talonpriest", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[95947] = {
					"Mak'rana Hardshell", -- [1]
					"Eye of Azshara", -- [2]
				},
				[113090] = {
					"Corrupted Gatewarden", -- [1]
					"The Emerald Nightmare", -- [2]
				},
				[169330] = {
					"Mucky Grunt", -- [1]
					"Revendreth Scenario", -- [2]
				},
				[91781] = {
					"Hatecoil Warrior", -- [1]
					"Eye of Azshara", -- [2]
				},
				[75980] = {
					"Blindlight Razorjaw", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[136076] = {
					"Agitated Nimbus", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[165556] = {
					"Fleeting Manifestation", -- [1]
					"Sanguine Depths", -- [2]
				},
				[128967] = {
					"Ashvane Sniper", -- [1]
					"Siege of Boralus", -- [2]
				},
				[93931] = {
					"Gorebound Felcaster", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[128455] = {
					"T'lonja", -- [1]
					"Atal'Dazar", -- [2]
				},
				[172412] = {
					"Craven Corinth", -- [1]
					"9.0 Bastion Arena - Path of Ascension", -- [2]
				},
				[137474] = {
					"King Timalji", -- [1]
					"Kings' Rest", -- [2]
				},
				[94924] = {
					"Iron Peon", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[151773] = {
					"Junkyard D.0.G.", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[27962] = {
					"Dark Rune Elementalist", -- [1]
					"Halls of Stone", -- [2]
				},
				[118729] = {
					"Fallen Priestess", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[162692] = {
					"Amarth", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[167806] = {
					"Animated Sin", -- [1]
					"Halls of Atonement", -- [2]
				},
				[168318] = {
					"Forsworn Goliath", -- [1]
					"Spires of Ascension", -- [2]
				},
				[166275] = {
					"Mistveil Shaper", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[74446] = {
					"Ghamoo-Ra", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[173949] = {
					"Nathrian Soldier", -- [1]
					"Castle Nathria", -- [2]
				},
				[114288] = {
					"Skeletal Warrior", -- [1]
					"Maw of Souls", -- [2]
				},
				[118724] = {
					"Helblaze Felbringer", -- [1]
					"Cathedral of Eternal Night", -- [2]
				},
				[85711] = {
					"Aquatic Technician", -- [1]
					"Blackrock Foundry", -- [2]
				},
				[163712] = {
					"Dying Voidspawn", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[32882] = {
					"Jormungar Behemoth", -- [1]
					"Ulduar", -- [2]
				},
				[86275] = {
					"Gorian Enforcer", -- [1]
					"Highmaul", -- [2]
				},
				[126918] = {
					"Irontide Crackshot", -- [1]
					"Freehold", -- [2]
				},
				[78801] = {
					"Darkshard Acidback", -- [1]
					"Blackrock Foundry", -- [2]
				},
				[129989] = {
					"Irontide Powdershot", -- [1]
					"Siege of Boralus", -- [2]
				},
				[162689] = {
					"Surgeon Stitchflesh", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[112329] = {
					"Kariel", -- [1]
					"Black Temple - Legion", -- [2]
				},
				[135048] = {
					"Gorestained Piglet", -- [1]
					"Waycrest Manor", -- [2]
				},
				[134024] = {
					"Devouring Maggot", -- [1]
					"Waycrest Manor", -- [2]
				},
				[164737] = {
					"Brood Ambusher", -- [1]
					"Plaguefall", -- [2]
				},
				[110699] = {
					"Rakeeshi Brute", -- [1]
					"Battle of Exodar", -- [2]
				},
				[157571] = {
					"Mawsworn Flametender", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[150958] = {
					"Mawsworn Guard", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[125547] = {
					"Feltouched Skitterer", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[90316] = {
					"Shadow-Lord Iskar", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[118728] = {
					"Ghastly Bonewarden", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[87411] = {
					"Workshop Guardian", -- [1]
					"Blackrock Foundry", -- [2]
				},
				[17980] = {
					"Laj", -- [1]
					"Tempest Keep: The Botanica", -- [2]
				},
				[112326] = {
					"Akama", -- [1]
					"Black Temple - Legion", -- [2]
				},
				[157572] = {
					"Mawsworn Firecaller", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[98810] = {
					"Wrathguard Bladelord", -- [1]
					"Black Rook Hold", -- [2]
				},
				[162691] = {
					"Blightbone", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[171384] = {
					"Research Scribe", -- [1]
					"Sanguine Depths", -- [2]
				},
				[2225] = {
					"Zora Guthrek", -- [1]
					"Alterac Valley", -- [2]
				},
				[135562] = {
					"Venomous Ophidian", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[117193] = {
					"Agronox", -- [1]
					"Cathedral of Eternal Night", -- [2]
				},
				[132491] = {
					"Kul Tiran Marksman", -- [1]
					"Siege of Boralus", -- [2]
				},
				[173953] = {
					"Loyal Gargon", -- [1]
					"Castle Nathria", -- [2]
				},
				[93391] = {
					"Captured Prisoner", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[170882] = {
					"Bone Magus", -- [1]
					"Theater of Pain", -- [2]
				},
				[160632] = {
					"Vulpin Stalker", -- [1]
					"Theater of Pain", -- [2]
				},
				[126919] = {
					"Irontide Stormcaller", -- [1]
					"Freehold", -- [2]
				},
				[102298] = {
					"Dread Squallshaper", -- [1]
					"Azsuna", -- [2]
				},
				[166262] = {
					"Decaying Corpse", -- [1]
					"Darkmaul Citadel", -- [2]
				},
				[150292] = {
					"Mechagon Cavalry", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[169859] = {
					"Observer Zelgar", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[166276] = {
					"Mistveil Guardian", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[162693] = {
					"Nalthor the Rimebinder", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[33651] = {
					"VX-001", -- [1]
					"Ulduar", -- [2]
				},
				[120777] = {
					"Guardian Sentry", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[132051] = {
					"Blood Tick", -- [1]
					"The Underrot", -- [2]
				},
				[117194] = {
					"Thrashbite the Scornful", -- [1]
					"Cathedral of Eternal Night", -- [2]
				},
				[159425] = {
					"Occult Shadowmender", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[101326] = {
					"Honored Ancestor", -- [1]
					"Halls of Valor", -- [2]
				},
				[93392] = {
					"Captured Prisoner", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[110028] = {
					"Withered Shambler", -- [1]
					"The Collapse - Suramar Scenario", -- [2]
				},
				[102094] = {
					"Risen Swordsman", -- [1]
					"Black Rook Hold", -- [2]
				},
				[118730] = {
					"Soul Residue", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[108197] = {
					"Withered Leyhunter", -- [1]
					"The Ruins of Falanaar", -- [2]
				},
				[168837] = {
					"Stealthling", -- [1]
					"Plaguefall", -- [2]
				},
				[173444] = {
					"Caramain", -- [1]
					"Castle Nathria", -- [2]
				},
				[169861] = {
					"Ickor Bileflesh", -- [1]
					"Plaguefall", -- [2]
				},
				[27963] = {
					"Dark Rune Theurgist", -- [1]
					"Halls of Stone", -- [2]
				},
				[135052] = {
					"Blight Toad", -- [1]
					"Waycrest Manor", -- [2]
				},
				[120522] = {
					"Ruby Lorekeeper", -- [1]
					"The Ruby Sanctum", -- [2]
				},
				[120778] = {
					"Wrathguard Invader", -- [1]
					"Cathedral of Eternal Night", -- [2]
				},
				[116939] = {
					"Fallen Avatar", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[129367] = {
					"Bilge Rat Tempest", -- [1]
					"Siege of Boralus", -- [2]
				},
				[173445] = {
					"Sindrel", -- [1]
					"Castle Nathria", -- [2]
				},
				[133007] = {
					"Unbound Abomination", -- [1]
					"The Underrot", -- [2]
				},
				[137614] = {
					"Demolishing Terror", -- [1]
					"Siege of Boralus", -- [2]
				},
				[110029] = {
					"Unfettered Arcana", -- [1]
					"The Collapse - Suramar Scenario", -- [2]
				},
				[102095] = {
					"Risen Lancer", -- [1]
					"Black Rook Hold", -- [2]
				},
				[102351] = {
					"Mana Wyrm", -- [1]
					"The Arcway", -- [2]
				},
				[144244] = {
					"The Platinum Pummeler", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[95940] = {
					"Bitterbrine Scavenger", -- [1]
					"Eye of Azshara", -- [2]
				},
				[173446] = {
					"Hargitas", -- [1]
					"Castle Nathria", -- [2]
				},
				[137103] = {
					"Blood Visage", -- [1]
					"The Underrot", -- [2]
				},
				[98243] = {
					"Soul-Torn Champion", -- [1]
					"Black Rook Hold", -- [2]
				},
				[105921] = {
					"Nightborne Spellsword", -- [1]
					"The Arcway", -- [2]
				},
				[112333] = {
					"Jesibelle", -- [1]
					"Black Temple - Legion", -- [2]
				},
				[128969] = {
					"Ashvane Commander", -- [1]
					"Siege of Boralus", -- [2]
				},
				[86185] = {
					"Night-Twisted Supplicant", -- [1]
					"Highmaul", -- [2]
				},
				[163966] = {
					"Dread Siphonist", -- [1]
					"Revendreth Scenario", -- [2]
				},
				[172938] = {
					"Coalesced Anima", -- [1]
					"9.0 Bastion Arena - Path of Ascension", -- [2]
				},
				[118717] = {
					"Helblaze Imp", -- [1]
					"Cathedral of Eternal Night", -- [2]
				},
				[156818] = {
					"Wrathion", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[162103] = {
					"Executor Tarvold", -- [1]
					"Sanguine Depths", -- [2]
				},
				[89811] = {
					"Subjugated Murloc", -- [1]
					"Eye of Azshara", -- [2]
				},
				[134514] = {
					"Abyssal Cultist", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[162534] = {
					"Anubisath Sentinel", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[111054] = {
					"Nightorb", -- [1]
					"The Nighthold", -- [2]
				},
				[173448] = {
					"Dragost", -- [1]
					"Castle Nathria", -- [2]
				},
				[121004] = {
					"Razorjaw Myrmidon", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[158092] = {
					"Fallen Heartpiercer", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[8897] = {
					"Doomforge Craftsman", -- [1]
					"Blackrock Depths", -- [2]
				},
				[105580] = {
					"Soulkeeper", -- [1]
					"Artifact - Acquisition - Subtlety", -- [2]
				},
				[102335] = {
					"Portal Guardian", -- [1]
					"Assault on Violet Hold", -- [2]
				},
				[130488] = {
					"Mech Jockey", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[168001] = {
					"Empowered Flameforge Enforcer", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[13152] = {
					"Commander Malgor", -- [1]
					"Alterac Valley", -- [2]
				},
				[134388] = {
					"A Knot of Snakes", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[113166] = {
					"Duskwatch Arcblade", -- [1]
					"The Arcway - Suramar Scenario", -- [2]
				},
				[167731] = {
					"Separation Assistant", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[36724] = {
					"Servant of the Throne", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[118713] = {
					"Felstrider Orbcaster", -- [1]
					"Cathedral of Eternal Night", -- [2]
				},
				[32885] = {
					"Captured Mercenary Soldier", -- [1]
					"Ulduar", -- [2]
				},
				[61678] = {
					"Corrupted Reaver", -- [1]
					"Ragefire Chasm", -- [2]
				},
				[165260] = {
					"Oozing Leftovers", -- [1]
					"Theater of Pain", -- [2]
				},
				[122477] = {
					"F'harg", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[98706] = {
					"Commander Shemdah'sohn", -- [1]
					"Black Rook Hold", -- [2]
				},
				[33525] = {
					"Mangrove Ent", -- [1]
					"Ulduar", -- [2]
				},
				[112335] = {
					"Scarab Lord Ahzesh", -- [1]
					"Black Temple - Legion", -- [2]
				},
				[93023] = {
					"Siegemaster Mar'tak", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[129227] = {
					"Azerokk", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[168844] = {
					"Lakesis", -- [1]
					"Spires of Ascension", -- [2]
				},
				[80599] = {
					"Night-Twisted Earthwarper", -- [1]
					"Highmaul", -- [2]
				},
				[157583] = {
					"Forge Keeper", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[32874] = {
					"Iron Ring Guard", -- [1]
					"Ulduar", -- [2]
				},
				[116569] = {
					"Razorjaw Wavemender", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[46962] = {
					"Baron Ashbury", -- [1]
					"Shadowfang Keep", -- [2]
				},
				[3840] = {
					"Druid of the Fang", -- [1]
					"Wailing Caverns", -- [2]
				},
				[100539] = {
					"Taintheart Deadeye", -- [1]
					"Darkheart Thicket", -- [2]
				},
				[168845] = {
					"Astronos", -- [1]
					"Spires of Ascension", -- [2]
				},
				[110776] = {
					"Felbound Imp", -- [1]
					"Battle of Exodar", -- [2]
				},
				[19710] = {
					"Gatewatcher Iron-Hand", -- [1]
					"Tempest Keep: The Mechanar", -- [2]
				},
				[27964] = {
					"Dark Rune Scholar", -- [1]
					"Halls of Stone", -- [2]
				},
				[127233] = {
					"Flameweaver", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[88509] = {
					"Blackrock Flamecaster", -- [1]
					"Iron Docks", -- [2]
				},
				[159632] = {
					"Cultist Shadowblade", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[104619] = {
					"Destromath", -- [1]
					"Nordrassil", -- [2]
				},
				[102295] = {
					"Emberhusk Dominator", -- [1]
					"Neltharion's Lair", -- [2]
				},
				[101075] = {
					"Wormspeaker Devout", -- [1]
					"Neltharion's Lair", -- [2]
				},
				[129996] = {
					"Irontide Cleaver", -- [1]
					"Siege of Boralus", -- [2]
				},
				[105682] = {
					"Felguard Destroyer", -- [1]
					"The Arcway", -- [2]
				},
				[152333] = {
					"Dark Ranger Lenara", -- [1]
					"Siege of Orgrimmar - Coup Scenario", -- [2]
				},
				[36725] = {
					"Nerub'ar Broodkeeper", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[20478] = {
					"Arcane Servant", -- [1]
					"Tempest Keep: The Mechanar", -- [2]
				},
				[32886] = {
					"Dark Rune Acolyte", -- [1]
					"Ulduar", -- [2]
				},
				[100248] = {
					"Ritualist Lesha", -- [1]
					"Eye of Azshara", -- [2]
				},
				[8894] = {
					"Anvilrage Medic", -- [1]
					"Blackrock Depths", -- [2]
				},
				[104275] = {
					"Imacu'tya", -- [1]
					"Court of Stars", -- [2]
				},
				[3625] = {
					"Rarck", -- [1]
					"Alterac Valley", -- [2]
				},
				[33526] = {
					"Ironroot Lasher", -- [1]
					"Ulduar", -- [2]
				},
				[112337] = {
					"Nisstyr", -- [1]
					"Black Temple - Legion", -- [2]
				},
				[20990] = {
					"Bloodwarder Physician", -- [1]
					"Tempest Keep: The Mechanar", -- [2]
				},
				[88279] = {
					"Twisted Guardian", -- [1]
					"The Everbloom", -- [2]
				},
				[116691] = {
					"Belac", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[3673] = {
					"Lord Serpentis", -- [1]
					"Wailing Caverns", -- [2]
				},
				[164185] = {
					"Echelon", -- [1]
					"Halls of Atonement", -- [2]
				},
				[159578] = {
					"Exposed Synapse", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[134041] = {
					"Infected Peasant", -- [1]
					"Waycrest Manor", -- [2]
				},
				[46963] = {
					"Lord Walden", -- [1]
					"Shadowfang Keep", -- [2]
				},
				[113148] = {
					"Fel Hound", -- [1]
					"Black Rook Hold [Scenario]", -- [2]
				},
				[168337] = {
					"Moldovaak", -- [1]
					"Castle Nathria", -- [2]
				},
				[32872] = {
					"Runic Colossus", -- [1]
					"Ulduar", -- [2]
				},
				[97720] = {
					"Blightshard Skitter", -- [1]
					"Neltharion's Lair", -- [2]
				},
				[163089] = {
					"Disgusting Refuse", -- [1]
					"Theater of Pain", -- [2]
				},
				[99541] = {
					"Risen Skulker", -- [1]
					"Warsong Gulch", -- [2]
				},
				[162133] = {
					"General Kaal", -- [1]
					"Sanguine Depths", -- [2]
				},
				[32871] = {
					"Algalon the Observer", -- [1]
					"Ulduar", -- [2]
				},
				[116689] = {
					"Atrigan", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[121040] = {
					"Revitalized Ghoul", -- [1]
					"The Lost Glacier", -- [2]
				},
				[113106] = {
					"Sickly Cougar", -- [1]
					"The Emerald Nightmare", -- [2]
				},
				[112118] = {
					"Tainted Bloodpetal", -- [1]
					"The Emerald Nightmare", -- [2]
				},
				[139097] = {
					"Sandswept Marksman", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[137626] = {
					"Demolishing Terror", -- [1]
					"Siege of Boralus", -- [2]
				},
				[74380] = {
					"Twilight Storm Mender", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[3680] = {
					"Serpentbloom Snake", -- [1]
					"Wailing Caverns", -- [2]
				},
				[78237] = {
					"Phemos", -- [1]
					"Highmaul", -- [2]
				},
				[3640] = {
					"Evolving Ectoplasm", -- [1]
					"Wailing Caverns", -- [2]
				},
				[33716] = {
					"Ruby Consort", -- [1]
					"Ulduar", -- [2]
				},
				[161173] = {
					"Abyssal Watcher", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[3873] = {
					"Tormented Officer", -- [1]
					"Shadowfang Keep", -- [2]
				},
				[137627] = {
					"Constricting Terror", -- [1]
					"Siege of Boralus", -- [2]
				},
				[33527] = {
					"Nature's Blade", -- [1]
					"Ulduar", -- [2]
				},
				[170234] = {
					"Oppressive Banner", -- [1]
					"Theater of Pain", -- [2]
				},
				[112595] = {
					"Shal'dorei Archmage", -- [1]
					"The Nighthold", -- [2]
				},
				[129231] = {
					"Rixxa Fluxflame", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[47231] = {
					"Shadowy Attendant", -- [1]
					"Shadowfang Keep", -- [2]
				},
				[170850] = {
					"Raging Bloodhorn", -- [1]
					"Theater of Pain", -- [2]
				},
				[105591] = {
					"Nightmare Horror", -- [1]
					"The Emerald Nightmare", -- [2]
				},
				[134418] = {
					"Drowned Depthbringer", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[162049] = {
					"Vestige of Doubt", -- [1]
					"Sanguine Depths", -- [2]
				},
				[46964] = {
					"Lord Godfrey", -- [1]
					"Shadowfang Keep", -- [2]
				},
				[126928] = {
					"Irontide Corsair", -- [1]
					"Freehold", -- [2]
				},
				[98366] = {
					"Ghostly Retainer", -- [1]
					"Black Rook Hold", -- [2]
				},
				[97084] = {
					"King Tor", -- [1]
					"Halls of Valor", -- [2]
				},
				[95675] = {
					"God-King Skovald", -- [1]
					"Halls of Valor", -- [2]
				},
				[122971] = {
					"Dazar'ai Juggernaut", -- [1]
					"Atal'Dazar", -- [2]
				},
				[79068] = {
					"Iron Grunt", -- [1]
					"Highmaul", -- [2]
				},
				[94224] = {
					"Petrifying Totem", -- [1]
					"Neltharion's Lair", -- [2]
				},
				[129602] = {
					"Irontide Enforcer", -- [1]
					"Freehold", -- [2]
				},
				[112596] = {
					"Duskwatch Warden", -- [1]
					"The Nighthold", -- [2]
				},
				[129232] = {
					"Mogul Razdunk", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[104918] = {
					"Vigilant Duskwatch", -- [1]
					"Court of Stars", -- [2]
				},
				[103605] = {
					"Shroudseeker", -- [1]
					"Maw of Souls", -- [2]
				},
				[173973] = {
					"Nathrian Tracker", -- [1]
					"Castle Nathria", -- [2]
				},
				[154010] = {
					"Rotting Prisoner", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[171455] = {
					"Stonewall Gargon", -- [1]
					"Sanguine Depths", -- [2]
				},
				[93913] = {
					"Fel Scorcher", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[36855] = {
					"Lady Deathwhisper", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[134993] = {
					"Mchimba the Embalmer", -- [1]
					"Kings' Rest", -- [2]
				},
				[170323] = {
					"General Grashaal", -- [1]
					"Revendreth Scenario", -- [2]
				},
				[152987] = {
					"Faceless Willbreaker", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[157594] = {
					"Lesser Void Elemental", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[154011] = {
					"Armed Prisoner", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[87515] = {
					"Iron Flame Binder", -- [1]
					"Blackrock Foundry", -- [2]
				},
				[87771] = {
					"Slagshop Worker", -- [1]
					"Blackrock Foundry", -- [2]
				},
				[16017] = {
					"Patchwork Golem", -- [1]
					"Naxxramas", -- [2]
				},
				[157365] = {
					"Crackling Stalker", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[144286] = {
					"Asset Manager", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[152988] = {
					"Faceless Shadowcaller", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[112251] = {
					"Putrid Sludge", -- [1]
					"The Nighthold", -- [2]
				},
				[81117] = {
					"Karnor the Cruel", -- [1]
					"Blackrock Foundry", -- [2]
				},
				[154524] = {
					"K'thir Mindcarver", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[102104] = {
					"Enslaved Shieldmaiden", -- [1]
					"Maw of Souls", -- [2]
				},
				[171333] = {
					"Atal'ai Devoted", -- [1]
					"De Other Side", -- [2]
				},
				[98521] = {
					"Lord Etheldrin Ravencrest", -- [1]
					"Black Rook Hold", -- [2]
				},
				[95408] = {
					"Anetheron", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[99033] = {
					"Helarjar Mistcaller", -- [1]
					"Maw of Souls", -- [2]
				},
				[74719] = {
					"Blindlight Rotmouth", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[153532] = {
					"Aqir Mindhunter", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[99801] = {
					"Destructor Tentacle", -- [1]
					"Maw of Souls", -- [2]
				},
				[100526] = {
					"Tormented Bloodseeker", -- [1]
					"Darkheart Thicket", -- [2]
				},
				[96584] = {
					"Immoliant Fury", -- [1]
					"Vault of the Wardens", -- [2]
				},
				[119977] = {
					"Stranglevine Lasher", -- [1]
					"Cathedral of Eternal Night", -- [2]
				},
				[152328] = {
					"Frederick Stover", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[13153] = {
					"Commander Mulfort", -- [1]
					"Alterac Valley", -- [2]
				},
				[102300] = {
					"Raging Current", -- [1]
					"Azsuna", -- [2]
				},
				[166299] = {
					"Mistveil Tender", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[162716] = {
					"Spellbound Ritualist", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[81985] = {
					"Everbloom Tender", -- [1]
					"The Everbloom", -- [2]
				},
				[11672] = {
					"Core Rager", -- [1]
					"Molten Core", -- [2]
				},
				[131492] = {
					"Devout Blood Priest", -- [1]
					"The Underrot", -- [2]
				},
				[101476] = {
					"Molten Charskin", -- [1]
					"Neltharion's Lair", -- [2]
				},
				[173466] = {
					"Fara", -- [1]
					"Castle Nathria", -- [2]
				},
				[74720] = {
					"Blindlight Murloc", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[95451] = {
					"Genn Greymane", -- [1]
					"The Maw of Nashal", -- [2]
				},
				[162717] = {
					"Sinister Soulcarver", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[140902] = {
					"Vog'rish, the Ascended", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[120789] = {
					"Lieutenant Silvermight", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[95861] = {
					"Hatecoil Oracle", -- [1]
					"Eye of Azshara", -- [2]
				},
				[156575] = {
					"Dark Inquisitor Xanesh", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[151649] = {
					"Defense Bot Mk I", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[111528] = {
					"Deathroot Ancient", -- [1]
					"The Emerald Nightmare", -- [2]
				},
				[166301] = {
					"Mistveil Stalker", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[162718] = {
					"Iron-Willed Enforcer", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[115844] = {
					"Goroth", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[33670] = {
					"Aerial Command Unit", -- [1]
					"Ulduar", -- [2]
				},
				[131318] = {
					"Elder Leaxa", -- [1]
					"The Underrot", -- [2]
				},
				[82399] = {
					"Ogron Earthshaker", -- [1]
					"Highmaul", -- [2]
				},
				[120229] = {
					"Ruby Whelp", -- [1]
					"The Ruby Sanctum", -- [2]
				},
				[74721] = {
					"Blindlight Bilefin", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[166302] = {
					"Corpse Harvester", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[162719] = {
					"Void Ascendant", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[104154] = {
					"Gul'dan", -- [1]
					"The Nighthold", -- [2]
				},
				[90284] = {
					"Iron Reaver", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[164255] = {
					"Globgrog", -- [1]
					"Plaguefall", -- [2]
				},
				[156577] = {
					"Therum Deepforge", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[173469] = {
					"Kullan", -- [1]
					"Castle Nathria", -- [2]
				},
				[91646] = {
					"Grim Collaborator", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[154018] = {
					"Prisonbreak Mauler", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[157439] = {
					"Fury of N'Zoth", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[171422] = {
					"Arch-Suppressor Laguas", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[106059] = {
					"Warp Shade", -- [1]
					"The Arcway", -- [2]
				},
				[17881] = {
					"Aeonus", -- [1]
					"Opening of the Dark Portal", -- [2]
				},
				[144293] = {
					"Waste Processing Unit", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[152995] = {
					"Warden of Souls", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[157602] = {
					"Drest'agath", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[166304] = {
					"Mistveil Stinger", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[99804] = {
					"Valarjar Falconer", -- [1]
					"Halls of Valor", -- [2]
				},
				[61657] = {
					"Adolescent Flame Hound", -- [1]
					"Ragefire Chasm", -- [2]
				},
				[118716] = {
					"Bilespray Lasher", -- [1]
					"Cathedral of Eternal Night", -- [2]
				},
				[37016] = {
					"Skybreaker Luminary", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[144294] = {
					"Mechagon Tinkerer", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[81270] = {
					"Gorian Guardsman", -- [1]
					"Highmaul", -- [2]
				},
				[157603] = {
					"Void Globule", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[163366] = {
					"Magus of the Dead", -- [1]
					"The Battle for Gilneas", -- [2]
				},
				[114137] = {
					"Balaadur", -- [1]
					"Black Rook Hold [Scenario]", -- [2]
				},
				[162100] = {
					"Kryxis the Voracious", -- [1]
					"Sanguine Depths", -- [2]
				},
				[163746] = {
					"Walkie Shockie X1", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[106546] = {
					"Astral Spark", -- [1]
					"The Arcway", -- [2]
				},
				[144295] = {
					"Mechagon Mechanic", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[59764] = {
					"Healing Tide Totem", -- [1]
					"Warsong Gulch", -- [2]
				},
				[157604] = {
					"Crawling Corruption", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[118690] = {
					"Wrathguard Invader", -- [1]
					"Cathedral of Eternal Night", -- [2]
				},
				[87520] = {
					"Animated Slag", -- [1]
					"Blackrock Foundry", -- [2]
				},
				[100991] = {
					"Strangling Roots", -- [1]
					"Darkheart Thicket", -- [2]
				},
				[99307] = {
					"Skjal", -- [1]
					"Maw of Souls", -- [2]
				},
				[121048] = {
					"Revitalized Monstrosity", -- [1]
					"The Lost Glacier", -- [2]
				},
				[152486] = {
					"Underhold Elite Guard", -- [1]
					"Siege of Orgrimmar - Coup Scenario", -- [2]
				},
				[101839] = {
					"Risen Companion", -- [1]
					"Black Rook Hold", -- [2]
				},
				[113626] = {
					"Venomous Spiderling", -- [1]
					"The Emerald Nightmare", -- [2]
				},
				[168005] = {
					"Empowered Deadsoul Shambler", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[97097] = {
					"Helarjar Champion", -- [1]
					"Maw of Souls", -- [2]
				},
				[19221] = {
					"Nethermancer Sepethrea", -- [1]
					"Tempest Keep: The Mechanar", -- [2]
				},
				[173360] = {
					"Plaguebelcher", -- [1]
					"Plaguefall", -- [2]
				},
				[122578] = {
					"Kin'garoth", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[155094] = {
					"Mechagon Trooper", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[96677] = {
					"Steeljaw Grizzly", -- [1]
					"Halls of Valor", -- [2]
				},
				[9041] = {
					"Warder Stilgiss", -- [1]
					"Blackrock Depths", -- [2]
				},
				[74980] = {
					"Twilight Storm Mender", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[134060] = {
					"Lord Stormsong", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[163121] = {
					"Stitched Vanguard", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[112603] = {
					"Terrace Grove-Tender", -- [1]
					"The Nighthold", -- [2]
				},
				[164261] = {
					"Hungering Destroyer", -- [1]
					"Castle Nathria", -- [2]
				},
				[144298] = {
					"Defense Bot Mk III", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[126764] = {
					"Bladesworn Ravager", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[157607] = {
					"Faceless Shadowcaller", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[165597] = {
					"Patchwerk Soldier", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[131383] = {
					"Sporecaller Zancha", -- [1]
					"The Underrot", -- [2]
				},
				[154129] = {
					"Burning Emberguard", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[102701] = {
					"Mo'arg Painbringer", -- [1]
					"Broken Shore Scenario", -- [2]
				},
				[127192] = {
					"Constellar Designate", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[144299] = {
					"Workshop Defender", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[167994] = {
					"Ossified Conscript", -- [1]
					"Theater of Pain", -- [2]
				},
				[19713] = {
					"Mechanar Wrecker", -- [1]
					"Tempest Keep: The Mechanar", -- [2]
				},
				[100713] = {
					"Rockbait Fisher", -- [1]
					"Neltharion's Lair", -- [2]
				},
				[155951] = {
					"Ruffer", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[97163] = {
					"Cursed Falke", -- [1]
					"Maw of Souls", -- [2]
				},
				[19969] = {
					"Green Seedling", -- [1]
					"Tempest Keep: The Botanica", -- [2]
				},
				[96480] = {
					"Viletongue Belcher", -- [1]
					"Vault of the Wardens", -- [2]
				},
				[12098] = {
					"Sulfuron Harbinger", -- [1]
					"Molten Core", -- [2]
				},
				[98691] = {
					"Risen Scout", -- [1]
					"Black Rook Hold", -- [2]
				},
				[157609] = {
					"K'thir Mindcarver", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[120220] = {
					"Ruby Keeper", -- [1]
					"The Ruby Sanctum", -- [2]
				},
				[134063] = {
					"Brother Ironhull", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[94663] = {
					"Grand Corruptor U'rogg", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[20481] = {
					"Raging Flames", -- [1]
					"Tempest Keep: The Mechanar", -- [2]
				},
				[160169] = {
					"Honored Duelist", -- [1]
					"Revendreth Scenario", -- [2]
				},
				[144301] = {
					"Living Waste", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[153003] = {
					"Soul Fragment", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[157610] = {
					"K'thir Dominator", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[105630] = {
					"Eye of Gul'dan", -- [1]
					"The Nighthold", -- [2]
				},
				[162729] = {
					"Patchwerk Soldier", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[155945] = {
					"Gherus the Chained", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[104415] = {
					"Chronomatic Anomaly", -- [1]
					"The Nighthold", -- [2]
				},
				[163622] = {
					"Goregrind Bits", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[105629] = {
					"Wyrmtongue Scavenger", -- [1]
					"The Arcway", -- [2]
				},
				[42362] = {
					"Drakonid Drudge", -- [1]
					"Blackwing Descent", -- [2]
				},
				[93154] = {
					"Gorebound Crone", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[71077] = {
					"Small Illusionary Amber-Weaver", -- [1]
					"Proving Grounds", -- [2]
				},
				[130521] = {
					"Freehold Deckhand", -- [1]
					"Freehold", -- [2]
				},
				[160249] = {
					"Spike Tentacle", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[102368] = {
					"Felguard Destroyer", -- [1]
					"Assault on Violet Hold", -- [2]
				},
				[168361] = {
					"Fen Hornet", -- [1]
					"Plaguefall", -- [2]
				},
				[144303] = {
					"G.U.A.R.D.", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[132530] = {
					"Kul Tiran Vanguard", -- [1]
					"Siege of Boralus", -- [2]
				},
				[157612] = {
					"Eye of Drest'agath", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[74983] = {
					"Twilight Disciple", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[8899] = {
					"Doomforge Dragoon", -- [1]
					"Blackrock Depths", -- [2]
				},
				[87780] = {
					"Slagshop Brute", -- [1]
					"Blackrock Foundry", -- [2]
				},
				[151333] = {
					"Sentinel Shard", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[164267] = {
					"Margrave Stradama", -- [1]
					"Plaguefall", -- [2]
				},
				[137484] = {
					"King A'akul", -- [1]
					"Kings' Rest", -- [2]
				},
				[13154] = {
					"Commander Louis Philips", -- [1]
					"Alterac Valley", -- [2]
				},
				[157613] = {
					"Maw of Drest'agath", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[154030] = {
					"Oddly Large Mawrat", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[105952] = {
					"Withered Manawraith", -- [1]
					"The Arcway", -- [2]
				},
				[150959] = {
					"Mawsworn Interceptor", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[167967] = {
					"Sentient Oil", -- [1]
					"De Other Side", -- [2]
				},
				[135975] = {
					"Off-Duty Laborer", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[111071] = {
					"Pulsauron", -- [1]
					"The Nighthold", -- [2]
				},
				[94947] = {
					"Fel-Starved Trainee", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[74728] = {
					"Twilight Lord Bathiel", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[74984] = {
					"Blindlight Murloc", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[105651] = {
					"Dreadborne Seer", -- [1]
					"The Arcway", -- [2]
				},
				[80071] = {
					"Bladespire Sorcerer", -- [1]
					"Highmaul", -- [2]
				},
				[98696] = {
					"Illysanna Ravencrest", -- [1]
					"Black Rook Hold", -- [2]
				},
				[90269] = {
					"Tyrant Velhari", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[106352] = {
					"Ancient Mechano-Tank", -- [1]
					"Shield's Rest", -- [2]
				},
				[161198] = {
					"Warpweaver Dushar", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[130011] = {
					"Irontide Buccaneer", -- [1]
					"Freehold", -- [2]
				},
				[33113] = {
					"Flame Leviathan", -- [1]
					"Ulduar", -- [2]
				},
				[134069] = {
					"Vol'zith the Whisperer", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[126558] = {
					"Antoran Felguard", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[98275] = {
					"Risen Archer", -- [1]
					"Black Rook Hold", -- [2]
				},
				[168365] = {
					"Fungret Shroomtender", -- [1]
					"Plaguefall", -- [2]
				},
				[136483] = {
					"Ashvane Deckhand", -- [1]
					"Siege of Boralus", -- [2]
				},
				[173484] = {
					"Conjured Manifestation", -- [1]
					"Castle Nathria", -- [2]
				},
				[74729] = {
					"Voidwalker Minion", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[69792] = {
					"Øxzes-Hyjal", -- [1]
					"Twin Peaks", -- [2]
				},
				[110486] = {
					"Huk'roth the Huntmaster", -- [1]
					"Battle of Exodar", -- [2]
				},
				[102446] = {
					"Fel Lord Betrug", -- [1]
					"Assault on Violet Hold", -- [2]
				},
				[127119] = {
					"Freehold Deckhand", -- [1]
					"Freehold", -- [2]
				},
				[147891] = {
					"Proudmoore Infantry", -- [1]
					"Tol Dagor Scenario", -- [2]
				},
				[168878] = {
					"Rigged Plagueborer", -- [1]
					"Plaguefall", -- [2]
				},
				[159514] = {
					"Blood of Ny'alotha", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[130012] = {
					"Irontide Ravager", -- [1]
					"Freehold", -- [2]
				},
				[170414] = {
					"Howling Spectre", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[94806] = {
					"Fel Hellweaver", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[122590] = {
					"Shadow of Varimathras", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[173720] = {
					"Mistveil Gorgegullet", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[147892] = {
					"Proudmoore Defender", -- [1]
					"Tol Dagor Scenario", -- [2]
				},
				[94693] = {
					"Siegeworks Technician", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[153011] = {
					"Binder Baritas", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[99300] = {
					"Water Elemental", -- [1]
					"Eye of Azshara", -- [2]
				},
				[110484] = {
					"Felstalker", -- [1]
					"Battle of Exodar", -- [2]
				},
				[170927] = {
					"Erupting Ooze", -- [1]
					"Plaguefall", -- [2]
				},
				[34197] = {
					"Chamber Overseer", -- [1]
					"Ulduar", -- [2]
				},
				[151476] = {
					"Blastatron X-80", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[147893] = {
					"Proudmoore Sentry", -- [1]
					"Tol Dagor Scenario", -- [2]
				},
				[100836] = {
					"Herald Xarbizuld", -- [1]
					"Niskara", -- [2]
				},
				[157461] = {
					"Mycelial Cyst", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[74716] = {
					"Aqua Guardian", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[105699] = {
					"Mana Saber", -- [1]
					"Court of Stars", -- [2]
				},
				[98965] = {
					"Kur'talos Ravencrest", -- [1]
					"Black Rook Hold", -- [2]
				},
				[150965] = {
					"Mawsworn Shackler", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[122847] = {
					"Umbral Priestess", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[98533] = {
					"Foul Mother", -- [1]
					"Vault of the Wardens", -- [2]
				},
				[144311] = {
					"Orb Guardian", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[136984] = {
					"Reban", -- [1]
					"Kings' Rest", -- [2]
				},
				[157620] = {
					"Prophet Skitra", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[34134] = {
					"Winter Revenant", -- [1]
					"Ulduar", -- [2]
				},
				[108003] = {
					"Verstok Darkbough", -- [1]
					"The Ruins of Falanaar", -- [2]
				},
				[112354] = {
					"Nulil", -- [1]
					"Black Temple - Legion", -- [2]
				},
				[123402] = {
					"Garothi Decimator", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[92391] = {
					"Gorebound Bloodletter", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[168882] = {
					"Fleeting Manifestation", -- [1]
					"Sanguine Depths", -- [2]
				},
				[129758] = {
					"Irontide Grenadier", -- [1]
					"Freehold", -- [2]
				},
				[153526] = {
					"Aqir Swarmer", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[97510] = {
					"Soulbound Destructor", -- [1]
					"Broken Shore Scenario", -- [2]
				},
				[91541] = {
					"Shadowfel Warden", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[95834] = {
					"Valarjar Mystic", -- [1]
					"Halls of Valor", -- [2]
				},
				[123533] = {
					"Tarneth", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[160181] = {
					"Royal Arcanist", -- [1]
					"Revendreth Scenario", -- [2]
				},
				[111075] = {
					"Chaotoid", -- [1]
					"The Nighthold", -- [2]
				},
				[111331] = {
					"Lurking Horror", -- [1]
					"The Emerald Nightmare", -- [2]
				},
				[153527] = {
					"Aqir Swarmleader", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[74988] = {
					"Executioner Gore", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[104592] = {
					"Nightmare Tentacle", -- [1]
					"The Emerald Nightmare", -- [2]
				},
				[120545] = {
					"Incubated Egg", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[8921] = {
					"Bloodhound", -- [1]
					"Blackrock Depths", -- [2]
				},
				[160182] = {
					"Void Initiate", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[91539] = {
					"Fel Raven", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[93288] = {
					"Ðom", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[150254] = {
					"Scraphound", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[168420] = {
					"Forsworn Champion", -- [1]
					"Spires of Ascension", -- [2]
				},
				[157451] = {
					"Iron-Willed Enforcer", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[96657] = {
					"Blade Dancer Illianna", -- [1]
					"Vault of the Wardens", -- [2]
				},
				[95632] = {
					"Sargerei Enforcer", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[160183] = {
					"Void Fanatic", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[91794] = {
					"Saltscale Lurker", -- [1]
					"Eye of Azshara", -- [2]
				},
				[137487] = {
					"Skeletal Hunting Raptor", -- [1]
					"Kings' Rest", -- [2]
				},
				[157450] = {
					"Spellbound Ritualist", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[27969] = {
					"Dark Rune Giant", -- [1]
					"Halls of Stone", -- [2]
				},
				[19843] = {
					"Nethervine Trickster", -- [1]
					"Tempest Keep: The Botanica", -- [2]
				},
				[106545] = {
					"Empowered Eye of Gul'dan", -- [1]
					"The Nighthold", -- [2]
				},
				[164861] = {
					"Spriggan Barkbinder", -- [1]
					"De Other Side", -- [2]
				},
				[156089] = {
					"Aqir Venomweaver", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[12099] = {
					"Firesworn", -- [1]
					"Molten Core", -- [2]
				},
				[137486] = {
					"Queen Patlaa", -- [1]
					"Kings' Rest", -- [2]
				},
				[129928] = {
					"Irontide Powdershot", -- [1]
					"Siege of Boralus", -- [2]
				},
				[165529] = {
					"Depraved Collector", -- [1]
					"Halls of Atonement", -- [2]
				},
				[162744] = {
					"Nekthara the Mangler", -- [1]
					"Theater of Pain", -- [2]
				},
				[12259] = {
					"Gehennas", -- [1]
					"Molten Core", -- [2]
				},
				[122850] = {
					"Umbral Guard", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[3671] = {
					"Lady Anacondra", -- [1]
					"Wailing Caverns", -- [2]
				},
				[98792] = {
					"Wyrmtongue Scavenger", -- [1]
					"Black Rook Hold", -- [2]
				},
				[111333] = {
					"Taintheart Trickster", -- [1]
					"The Emerald Nightmare", -- [2]
				},
				[153531] = {
					"Aqir Bonecrusher", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[32908] = {
					"Captured Mercenary Captain", -- [1]
					"Ulduar", -- [2]
				},
				[119858] = {
					"Felwing Terror", -- [1]
					"Legion Ship - Vertical - HighMountain", -- [2]
				},
				[163618] = {
					"Zolramus Necromancer", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[36873] = {
					"High Priestess Silthera", -- [1]
					"Well of Eternity", -- [2]
				},
				[163077] = {
					"Azules", -- [1]
					"Spires of Ascension", -- [2]
				},
				[152508] = {
					"Dusky Tremorbeast", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[151815] = {
					"Deadsoul Echo", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[93162] = {
					"Umbral Supplicant", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[105703] = {
					"Mana Wyrm", -- [1]
					"Court of Stars", -- [2]
				},
				[101389] = {
					"Corrupted Defender", -- [1]
					"Ursocs Lair", -- [2]
				},
				[171448] = {
					"Dreadful Huntmaster", -- [1]
					"Sanguine Depths", -- [2]
				},
				[122851] = {
					"Umbral Archer", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[113113] = {
					"Essence of Nightmare", -- [1]
					"The Emerald Nightmare", -- [2]
				},
				[159305] = {
					"Maddened Conscript", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[75155] = {
					"Aku'mai the Devourer", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[12118] = {
					"Lucifron", -- [1]
					"Molten Core", -- [2]
				},
				[158140] = {
					"Frenzied Rat", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[8900] = {
					"Doomforge Arcanasmith", -- [1]
					"Blackrock Depths", -- [2]
				},
				[112358] = {
					"Scarab Lord Hamlet", -- [1]
					"Black Temple - Legion", -- [2]
				},
				[100748] = {
					"Felmaw Devourer", -- [1]
					"Niskara", -- [2]
				},
				[121060] = {
					"Revitalized Skeleton", -- [1]
					"The Lost Glacier", -- [2]
				},
				[90998] = {
					"Blightshard Shaper", -- [1]
					"Neltharion's Lair", -- [2]
				},
				[153022] = {
					"Snang", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[165414] = {
					"Depraved Obliterator", -- [1]
					"Halls of Atonement", -- [2]
				},
				[105704] = {
					"Arcane Manifestation", -- [1]
					"Court of Stars", -- [2]
				},
				[80423] = {
					"Thunderlord Beast-Tender", -- [1]
					"Blackrock Foundry", -- [2]
				},
				[163260] = {
					"Vicious Ghoul", -- [1]
					"Redridge - 9xp Bastion", -- [2]
				},
				[102282] = {
					"Lord Malgath", -- [1]
					"Assault on Violet Hold", -- [2]
				},
				[161286] = {
					"Dark Ritualist", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[168891] = {
					"Rigged Plagueborer", -- [1]
					"Plaguefall", -- [2]
				},
				[136643] = {
					"Azerite Extractor", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[5763] = {
					"Nightmare Ectoplasm", -- [1]
					"Wailing Caverns", -- [2]
				},
				[19712] = {
					"Mechanar Driller", -- [1]
					"Tempest Keep: The Mechanar", -- [2]
				},
				[92950] = {
					"Skyfire Marine", -- [1]
					"The Maw of Nashal", -- [2]
				},
				[102672] = {
					"Nythendra", -- [1]
					"The Emerald Nightmare", -- [2]
				},
				[98954] = {
					"Felsworn Myrmidon", -- [1]
					"Vault of the Wardens", -- [2]
				},
				[71921] = {
					"Волк", -- [1]
					"Deepwind Gorge", -- [2]
				},
				[162764] = {
					"Twisted Appendage", -- [1]
					"Warsong Gulch", -- [2]
				},
				[19231] = {
					"Mechanar Crusher", -- [1]
					"Tempest Keep: The Mechanar", -- [2]
				},
				[97259] = {
					"Blazing Hydra Spawn", -- [1]
					"Eye of Azshara", -- [2]
				},
				[105705] = {
					"Bound Energy", -- [1]
					"Court of Stars", -- [2]
				},
				[12119] = {
					"Flamewaker Protector", -- [1]
					"Molten Core", -- [2]
				},
				[138493] = {
					"Minion of Zul", -- [1]
					"Kings' Rest", -- [2]
				},
				[168107] = {
					"Empowered Mawsworn Interceptor", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[95887] = {
					"Glazer", -- [1]
					"Vault of the Wardens", -- [2]
				},
				[100529] = {
					"Hatespawn Slime", -- [1]
					"Darkheart Thicket", -- [2]
				},
				[91786] = {
					"Gritslime Snail", -- [1]
					"Eye of Azshara", -- [2]
				},
				[19716] = {
					"Mechanar Tinkerer", -- [1]
					"Tempest Keep: The Mechanar", -- [2]
				},
				[27970] = {
					"Raging Construct", -- [1]
					"Halls of Stone", -- [2]
				},
				[162041] = {
					"Grubby Dirtcruncher", -- [1]
					"Sanguine Depths", -- [2]
				},
				[112360] = {
					"Guard", -- [1]
					"Black Temple - Legion", -- [2]
				},
				[164578] = {
					"Stitchflesh's Creation", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[131527] = {
					"Lord Waycrest", -- [1]
					"Waycrest Manor", -- [2]
				},
				[113128] = {
					"Withered Skulker", -- [1]
					"The Nighthold", -- [2]
				},
				[112260] = {
					"Dreadsoul Defiler", -- [1]
					"The Emerald Nightmare", -- [2]
				},
				[97260] = {
					"Arcane Hydra Spawn", -- [1]
					"Eye of Azshara", -- [2]
				},
				[105706] = {
					"Priestess of Misery", -- [1]
					"The Arcway", -- [2]
				},
				[155824] = {
					"Lumbering Creation", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[134599] = {
					"Imbued Stormcaller", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[94189] = {
					"Living Felblaze", -- [1]
					"Broken Shore Scenario", -- [2]
				},
				[117782] = {
					"Eredar Bloodmage", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[111081] = {
					"Fulminant", -- [1]
					"The Nighthold", -- [2]
				},
				[161217] = {
					"Aqir Skitterer", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[165824] = {
					"Nar'zudah", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[10404] = {
					"Pustulating Horror", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[82900] = {
					"Gorian Enforcer", -- [1]
					"Highmaul", -- [2]
				},
				[134600] = {
					"Sandswept Marksman", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[92142] = {
					"Blademaster Jubei'thos", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[112718] = {
					"Sidereal Familiar", -- [1]
					"The Nighthold", -- [2]
				},
				[172991] = {
					"Drust Soulcleaver", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[161218] = {
					"Aqir Crusher", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[102370] = {
					"Eredar Invader", -- [1]
					"Assault on Violet Hold", -- [2]
				},
				[98919] = {
					"Seacursed Swiftblade", -- [1]
					"Maw of Souls", -- [2]
				},
				[37148] = {
					"Skybreaker Summoner", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[109041] = {
					"Naturalist Tel'arn", -- [1]
					"The Nighthold", -- [2]
				},
				[94190] = {
					"Burning Sentry", -- [1]
					"Broken Shore Scenario", -- [2]
				},
				[119016] = {
					"Wyrmtongue Tinkerer", -- [1]
					"Legion Ship - Vertical - Stormheim", -- [2]
				},
				[152517] = {
					"Deadsoul Lifetaker", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[98425] = {
					"Unstable Amalgamation", -- [1]
					"The Arcway", -- [2]
				},
				[153541] = {
					"Slavemaster Ul'rok", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[150143] = {
					"Scrapbone Grinder", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[129050] = {
					"Antoran Felguard", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[134602] = {
					"Shrouded Fang", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[120808] = {
					"Lylth the Silent", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[36807] = {
					"Deathspeaker Disciple", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[113130] = {
					"Burning Sentry", -- [1]
					"Broken Shore Scenario", -- [2]
				},
				[92911] = {
					"Hulking Berserker", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[162325] = {
					"Warrior", -- [1]
					"Vision of Ysera Scenario", -- [2]
				},
				[113103] = {
					"Corrupted Swoop", -- [1]
					"The Emerald Nightmare", -- [2]
				},
				[3870] = {
					"Stone Sleeper", -- [1]
					"Shadowfang Keep", -- [2]
				},
				[110375] = {
					"Webbed Victim", -- [1]
					"The Collapse - Suramar Scenario", -- [2]
				},
				[94191] = {
					"Burning Terrorhound", -- [1]
					"Broken Shore Scenario", -- [2]
				},
				[98542] = {
					"Amalgam of Souls", -- [1]
					"Black Rook Hold", -- [2]
				},
				[136139] = {
					"Mechanized Peacekeeper", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[153031] = {
					"Elite Battlemage", -- [1]
					"Siege of Orgrimmar - Coup Scenario", -- [2]
				},
				[32845] = {
					"Hodir", -- [1]
					"Ulduar", -- [2]
				},
				[416] = {
					"Рипталу", -- [1]
					"Isle of Conquest", -- [2]
				},
				[138187] = {
					"Grotesque Horror", -- [1]
					"The Underrot", -- [2]
				},
				[112363] = {
					"Spoogledorf", -- [1]
					"Black Temple - Legion", -- [2]
				},
				[167876] = {
					"Inquisitor Sigar", -- [1]
					"Halls of Atonement", -- [2]
				},
				[173142] = {
					"Dread Feaster", -- [1]
					"Castle Nathria", -- [2]
				},
				[113131] = {
					"Living Felblaze", -- [1]
					"Broken Shore Scenario", -- [2]
				},
				[137969] = {
					"Interment Construct", -- [1]
					"Kings' Rest", -- [2]
				},
				[98177] = {
					"Glayvianna Soulrender", -- [1]
					"Vault of the Wardens", -- [2]
				},
				[74722] = {
					"Razorshell Snapjaw", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[120099] = {
					"Fel-crazed Magus", -- [1]
					"Legion Ship - Vertical - HighMountain", -- [2]
				},
				[159303] = {
					"Monstrous Behemoth", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[15975] = {
					"Carrion Spinner", -- [1]
					"Naxxramas", -- [2]
				},
				[152009] = {
					"Malfunctioning Scrapbot", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[152521] = {
					"Gunaz", -- [1]
					"Siege of Orgrimmar - Coup Scenario", -- [2]
				},
				[94960] = {
					"Hymdall", -- [1]
					"Halls of Valor", -- [2]
				},
				[173655] = {
					"Mistveil Matriarch", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[111852] = {
					"Rothos", -- [1]
					"The Emerald Nightmare", -- [2]
				},
				[16067] = {
					"Deathcharger Steed", -- [1]
					"Naxxramas", -- [2]
				},
				[112364] = {
					"Kesak", -- [1]
					"Black Temple - Legion", -- [2]
				},
				[5756] = {
					"Deviate Venomwing", -- [1]
					"Wailing Caverns", -- [2]
				},
				[16163] = {
					"Death Knight Cavalier", -- [1]
					"Naxxramas", -- [2]
				},
				[12100] = {
					"Lava Reaver", -- [1]
					"Molten Core", -- [2]
				},
				[92913] = {
					"Gorebound Berserker", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[97264] = {
					"Hatecoil Shellbreaker", -- [1]
					"Eye of Azshara", -- [2]
				},
				[164406] = {
					"Shriekwing", -- [1]
					"Castle Nathria", -- [2]
				},
				[155830] = {
					"Mawsworn Disciple", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[77557] = {
					"Admiral Gar'an", -- [1]
					"Blackrock Foundry", -- [2]
				},
				[12420] = {
					"Blackwing Mage", -- [1]
					"Blackwing Lair", -- [2]
				},
				[33271] = {
					"General Vezax", -- [1]
					"Ulduar", -- [2]
				},
				[152523] = {
					"Mukuta", -- [1]
					"Siege of Orgrimmar - Coup Scenario", -- [2]
				},
				[99868] = {
					"Fenryr", -- [1]
					"Halls of Valor", -- [2]
				},
				[169927] = {
					"Putrid Butcher", -- [1]
					"Theater of Pain", -- [2]
				},
				[97068] = {
					"Storm Drake", -- [1]
					"Halls of Valor", -- [2]
				},
				[102253] = {
					"Understone Demolisher", -- [1]
					"Neltharion's Lair", -- [2]
				},
				[112365] = {
					"Butchie", -- [1]
					"Black Temple - Legion", -- [2]
				},
				[92146] = {
					"Gurtogg Bloodboil", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[164556] = {
					"Millhouse Manastorm", -- [1]
					"De Other Side", -- [2]
				},
				[109038] = {
					"Solarist Tel'arn", -- [1]
					"The Nighthold", -- [2]
				},
				[105746] = {
					"Helarjar Berserker", -- [1]
					"Maw of Souls", -- [2]
				},
				[130025] = {
					"Irontide Thug", -- [1]
					"Tol Dagor", -- [2]
				},
				[12457] = {
					"Blackwing Spellbinder", -- [1]
					"Blackwing Lair", -- [2]
				},
				[174197] = {
					"Battlefield Ritualist", -- [1]
					"Theater of Pain", -- [2]
				},
				[85748] = {
					"Iron Mauler", -- [1]
					"Blackrock Foundry", -- [2]
				},
				[131812] = {
					"Heartsbane Soulcharmer", -- [1]
					"Waycrest Manor", -- [2]
				},
				[168393] = {
					"Plaguebelcher", -- [1]
					"Plaguefall", -- [2]
				},
				[32875] = {
					"Iron Honor Guard", -- [1]
					"Ulduar", -- [2]
				},
				[105540] = {
					"Soulkeeper", -- [1]
					"Artifact - Acquisition - Subtlety", -- [2]
				},
				[152612] = {
					"Subjugator Klontzas", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[94710] = {
					"Storm Drake Hunter", -- [1]
					"Shield's Rest", -- [2]
				},
				[8901] = {
					"Anvilrage Reservist", -- [1]
					"Blackrock Depths", -- [2]
				},
				[120556] = {
					"Dreadwing", -- [1]
					"Cathedral of Eternal Night", -- [2]
				},
				[92538] = {
					"Tarspitter Grub", -- [1]
					"Neltharion's Lair", -- [2]
				},
				[168394] = {
					"Slimy Morsel", -- [1]
					"Plaguefall", -- [2]
				},
				[96754] = {
					"Harbaron", -- [1]
					"Maw of Souls", -- [2]
				},
				[113057] = {
					"Fel Lord Durkan", -- [1]
					"Broken Shore Scenario", -- [2]
				},
				[130026] = {
					"Bilge Rat Seaspeaker", -- [1]
					"Tol Dagor", -- [2]
				},
				[158157] = {
					"Overlord Mathias Shaw", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[105968] = {
					"Spectral Windshaper", -- [1]
					"Shield's Rest", -- [2]
				},
				[13284] = {
					"Frostwolf Shaman", -- [1]
					"Alterac Valley", -- [2]
				},
				[36868] = {
					"Enslaved Son of Arkkoroc", -- [1]
					"Well of Eternity", -- [2]
				},
				[104273] = {
					"Jazshariu", -- [1]
					"Court of Stars", -- [2]
				},
				[168907] = {
					"Slime Tentacle", -- [1]
					"Plaguefall", -- [2]
				},
				[127723] = {
					"Imperator Deconix", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[12416] = {
					"Blackwing Legionnaire", -- [1]
					"Blackwing Lair", -- [2]
				},
				[158158] = {
					"Forge-Guard Hurrul", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[16018] = {
					"Bile Retcher", -- [1]
					"Naxxramas", -- [2]
				},
				[134612] = {
					"Grasping Tentacles", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[168572] = {
					"Fungi Stormer", -- [1]
					"Plaguefall", -- [2]
				},
				[168396] = {
					"Plaguebelcher", -- [1]
					"Plaguefall", -- [2]
				},
				[109040] = {
					"Arcanist Tel'arn", -- [1]
					"The Nighthold", -- [2]
				},
				[50561] = {
					"Bloodthirsty Ghoul", -- [1]
					"Shadowfang Keep", -- [2]
				},
				[153552] = {
					"Weeping Wraith", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[1423] = {
					"Stormwind Guard", -- [1]
					"Artifact - Stormwind", -- [2]
				},
				[163506] = {
					"Forsworn Stealthclaw", -- [1]
					"Spires of Ascension", -- [2]
				},
				[112678] = {
					"Shal'dorei Naturalist", -- [1]
					"The Nighthold", -- [2]
				},
				[113699] = {
					"Forgotten Spirit", -- [1]
					"The Arcway", -- [2]
				},
				[105542] = {
					"Xirus", -- [1]
					"Artifact - Acquisition - Subtlety", -- [2]
				},
				[106087] = {
					"Elerethe Renferal", -- [1]
					"The Emerald Nightmare", -- [2]
				},
				[127724] = {
					"Fanatical Pyromancer", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[150139] = {
					"K'thxx the Void Hunter", -- [1]
					"Uldir Scenario", -- [2]
				},
				[27972] = {
					"Lightning Construct", -- [1]
					"Halls of Stone", -- [2]
				},
				[36805] = {
					"Deathspeaker Servant", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[112368] = {
					"Anenga", -- [1]
					"Black Temple - Legion", -- [2]
				},
				[91967] = {
					"Infernal Siegebreaker", -- [1]
					"Broken Shore Scenario", -- [2]
				},
				[168398] = {
					"Slimy Morsel", -- [1]
					"Plaguefall", -- [2]
				},
				[164815] = {
					"Zolramus Siphoner", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[90485] = {
					"Felfire Artillery", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[130028] = {
					"Ashvane Priest", -- [1]
					"Tol Dagor", -- [2]
				},
				[167615] = {
					"Depraved Darkblade", -- [1]
					"Halls of Atonement", -- [2]
				},
				[164557] = {
					"Shard of Halkias", -- [1]
					"Halls of Atonement", -- [2]
				},
				[155090] = {
					"Anodized Coilbearer", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[171557] = {
					"Shade of Bargast", -- [1]
					"Castle Nathria", -- [2]
				},
				[118289] = {
					"Maiden of Vigilance", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[132056] = {
					"Venture Co. Skyscorcher", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[127725] = {
					"Felblade Shocktrooper", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[161745] = {
					"Hepthys", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[94285] = {
					"Fel Extractor", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[99828] = {
					"Trained Hawk", -- [1]
					"Halls of Valor", -- [2]
				},
				[112369] = {
					"Wodyn", -- [1]
					"Black Temple - Legion", -- [2]
				},
				[95602] = {
					"Mystic Velruun", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[131545] = {
					"Lady Waycrest", -- [1]
					"Waycrest Manor", -- [2]
				},
				[129517] = {
					"Reanimated Raptor", -- [1]
					"Atal'Dazar", -- [2]
				},
				[105203] = {
					"Felguard Invader", -- [1]
					"Broken Shore Scenario", -- [2]
				},
				[97269] = {
					"Hatecoil Crestrider", -- [1]
					"Eye of Azshara", -- [2]
				},
				[105715] = {
					"Watchful Inquisitor", -- [1]
					"Court of Stars", -- [2]
				},
				[19865] = {
					"Mutate Horror", -- [1]
					"Tempest Keep: The Botanica", -- [2]
				},
				[134617] = {
					"Krolusk Hatchling", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[20988] = {
					"Sunseeker Engineer", -- [1]
					"Tempest Keep: The Mechanar", -- [2]
				},
				[86264] = {
					"Everbloom Wasp", -- [1]
					"The Everbloom", -- [2]
				},
				[111090] = {
					"Bloatstench", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[136665] = {
					"Ashvane Spotter", -- [1]
					"Tol Dagor", -- [2]
				},
				[74747] = {
					"Deep Terror", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[111858] = {
					"Guardian Rurson", -- [1]
					"The Emerald Nightmare", -- [2]
				},
				[108058] = {
					"Stormwind City Patroller", -- [1]
					"Artifact - Stormwind", -- [2]
				},
				[10981] = {
					"Frost Wolf", -- [1]
					"Alterac Valley", -- [2]
				},
				[131667] = {
					"Soulbound Goliath", -- [1]
					"Waycrest Manor", -- [2]
				},
				[21139] = {
					"Infinite Vanquisher", -- [1]
					"Opening of the Dark Portal", -- [2]
				},
				[90660] = {
					"Burning Hellion", -- [1]
					"Darkheart Thicket", -- [2]
				},
				[110954] = {
					"Leystalker Dro", -- [1]
					"The Collapse - Suramar Scenario", -- [2]
				},
				[92526] = {
					"Zerik'shekor", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[85241] = {
					"Night-Twisted Brute", -- [1]
					"Highmaul", -- [2]
				},
				[107114] = {
					"Tormenting Orb", -- [1]
					"Vault of the Wardens", -- [2]
				},
				[171474] = {
					"Finger Food", -- [1]
					"Plaguefall", -- [2]
				},
				[93615] = {
					"Felborne Overfiend", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[36998] = {
					"Skybreaker Protector", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[170483] = {
					"Atal'ai Deathwalker's Spirit", -- [1]
					"De Other Side", -- [2]
				},
				[76037] = {
					"Twilight Storm Mender", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[118374] = {
					"Captain Yathae Moonstrike", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[112665] = {
					"Nighthold Protector", -- [1]
					"The Nighthold", -- [2]
				},
				[11502] = {
					"Ragnaros", -- [1]
					"Molten Core", -- [2]
				},
				[18404] = {
					"Bloodwarder Steward", -- [1]
					"Tempest Keep: The Botanica", -- [2]
				},
				[96247] = {
					"Vileshard Crawler", -- [1]
					"Neltharion's Lair", -- [2]
				},
				[36844] = {
					"Risen Deathspeaker Servant", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[96759] = {
					"Helya", -- [1]
					"Maw of Souls", -- [2]
				},
				[34183] = {
					"Arachnopod Destroyer", -- [1]
					"Ulduar", -- [2]
				},
				[134338] = {
					"Tidesage Enforcer", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[79643] = {
					"Frostwing Screecher", -- [1]
					"FW Horde Garrison Level 1", -- [2]
				},
				[37025] = {
					"Stinky", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[119072] = {
					"The Desolate Host", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[102683] = {
					"Emeriss", -- [1]
					"The Emerald Nightmare", -- [2]
				},
				[103271] = {
					"Kraxa", -- [1]
					"Neltharion's Lair", -- [2]
				},
				[111092] = {
					"Biletongue", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[167607] = {
					"Stoneborn Slasher", -- [1]
					"Halls of Atonement", -- [2]
				},
				[82733] = {
					"Night-Twisted Shadowsworn", -- [1]
					"Highmaul", -- [2]
				},
				[27973] = {
					"Crystalline Shardling", -- [1]
					"Halls of Stone", -- [2]
				},
				[11663] = {
					"Flamewaker Healer", -- [1]
					"Molten Core", -- [2]
				},
				[112372] = {
					"Wheatizzle", -- [1]
					"Black Temple - Legion", -- [2]
				},
				[159764] = {
					"Jesh'ra", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[16164] = {
					"Shade of Naxxramas", -- [1]
					"Naxxramas", -- [2]
				},
				[12101] = {
					"Lava Surger", -- [1]
					"Molten Core", -- [2]
				},
				[162303] = {
					"Aqir Swarmkeeper", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[102246] = {
					"Anub'esset", -- [1]
					"Assault on Violet Hold", -- [2]
				},
				[85243] = {
					"Void Aberration", -- [1]
					"Highmaul", -- [2]
				},
				[122969] = {
					"Zanchuli Witch-Doctor", -- [1]
					"Atal'Dazar", -- [2]
				},
				[155098] = {
					"Rexxar", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[112739] = {
					"Shadowy Overfiend", -- [1]
					"Assault on Violet Hold", -- [2]
				},
				[32904] = {
					"Dark Rune Commoner", -- [1]
					"Ulduar", -- [2]
				},
				[152539] = {
					"Dark Ranger Thandel", -- [1]
					"Siege of Orgrimmar - Coup Scenario", -- [2]
				},
				[161241] = {
					"Voidweaver Mal'thir", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[33288] = {
					"Yogg-Saron", -- [1]
					"Ulduar", -- [2]
				},
				[174550] = {
					"Myskia", -- [1]
					"Revendreth Scenario", -- [2]
				},
				[108059] = {
					"Stormwind City Guard", -- [1]
					"Artifact - Stormwind", -- [2]
				},
				[112373] = {
					"Jarud", -- [1]
					"Black Temple - Legion", -- [2]
				},
				[134174] = {
					"Shadow-Borne Witch Doctor", -- [1]
					"Kings' Rest", -- [2]
				},
				[167611] = {
					"Stoneborn Eviscerator", -- [1]
					"Halls of Atonement", -- [2]
				},
				[152540] = {
					"Lyani Shadestalker", -- [1]
					"Siege of Orgrimmar - Coup Scenario", -- [2]
				},
				[34184] = {
					"Clockwork Mechanic", -- [1]
					"Ulduar", -- [2]
				},
				[161243] = {
					"Samh'rek, Beckoner of Chaos", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[113191] = {
					"Duskwatch Archivist", -- [1]
					"The Arcway - Suramar Scenario", -- [2]
				},
				[129372] = {
					"Blacktar Bomber", -- [1]
					"Siege of Boralus", -- [2]
				},
				[9554] = {
					"Hammered Patron", -- [1]
					"Blackrock Depths", -- [2]
				},
				[134056] = {
					"Aqu'sirr", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[133663] = {
					"Fanatical Headhunter", -- [1]
					"The Underrot", -- [2]
				},
				[111094] = {
					"Fetid Scraps", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[111350] = {
					"Skittering Shadows", -- [1]
					"The Emerald Nightmare", -- [2]
				},
				[168109] = {
					"Empowered Mawsworn Ritualist", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[37027] = {
					"Skybreaker Hierophant", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[8902] = {
					"Shadowforge Citizen", -- [1]
					"Blackrock Depths", -- [2]
				},
				[152282] = {
					"Underhold Elite Guard", -- [1]
					"Siege of Orgrimmar - Coup Scenario", -- [2]
				},
				[167898] = {
					"Manifestation of Envy", -- [1]
					"Halls of Atonement", -- [2]
				},
				[96611] = {
					"Angerhoof Bull", -- [1]
					"Halls of Valor", -- [2]
				},
				[109604] = {
					"Felguard Legionnaire", -- [1]
					"Broken Shore Scenario", -- [2]
				},
				[113398] = {
					"Bloodtainted Fury", -- [1]
					"Darkheart Thicket", -- [2]
				},
				[152874] = {
					"Vez'okk the Lightless", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[105720] = {
					"Understone Drudge", -- [1]
					"Neltharion's Lair", -- [2]
				},
				[167964] = {
					"4.RF-4.RF", -- [1]
					"De Other Side", -- [2]
				},
				[14025] = {
					"Corrupted Bronze Whelp", -- [1]
					"Blackwing Lair", -- [2]
				},
				[170071] = {
					"Mawsworn Shadestalker", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[92514] = {
					"Shao'ghun", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[111095] = {
					"Vile Creeper", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[157150] = {
					"Thomas Westmill", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[141282] = {
					"Kul Tiran Footman", -- [1]
					"Siege of Boralus", -- [2]
				},
				[101639] = {
					"Valarjar Shieldmaiden", -- [1]
					"Halls of Valor", -- [2]
				},
				[120309] = {
					"Feral Ghoul", -- [1]
					"The Lost Glacier", -- [2]
				},
				[96608] = {
					"Ebonclaw Worg", -- [1]
					"Halls of Valor", -- [2]
				},
				[16145] = {
					"Death Knight Captain", -- [1]
					"Naxxramas", -- [2]
				},
				[94816] = {
					"Togdrov", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[34057] = {
					"Assault Bot", -- [1]
					"Ulduar", -- [2]
				},
				[171172] = {
					"Mawsworn Shackler", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[141283] = {
					"Kul Tiran Halberd", -- [1]
					"Siege of Boralus", -- [2]
				},
				[85246] = {
					"Greater Void Aberration", -- [1]
					"Highmaul", -- [2]
				},
				[99678] = {
					"Lingering Corruption", -- [1]
					"Vault of the Wardens", -- [2]
				},
				[134629] = {
					"Scaled Krolusk Rider", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[136214] = {
					"Windspeaker Heldis", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[152033] = {
					"Inconspicuous Plant", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[122967] = {
					"Priestess Alun'za", -- [1]
					"Atal'Dazar", -- [2]
				},
				[152704] = {
					"Crawling Corruption", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[141284] = {
					"Kul Tiran Wavetender", -- [1]
					"Siege of Boralus", -- [2]
				},
				[27974] = {
					"Eroded Shardling", -- [1]
					"Halls of Stone", -- [2]
				},
				[110383] = {
					"Hungering Husk", -- [1]
					"The Collapse - Suramar Scenario", -- [2]
				},
				[12017] = {
					"Broodlord Lashlayer", -- [1]
					"Blackwing Lair", -- [2]
				},
				[61672] = {
					"Dark Shaman Acolyte", -- [1]
					"Ragefire Chasm", -- [2]
				},
				[14023] = {
					"Corrupted Green Whelp", -- [1]
					"Blackwing Lair", -- [2]
				},
				[156641] = {
					"Enthralled Weaponsmith", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[158136] = {
					"Inquisitor Darkspeak", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[141285] = {
					"Kul Tiran Marksman", -- [1]
					"Siege of Boralus", -- [2]
				},
				[100364] = {
					"Spirit of Vengeance", -- [1]
					"Vault of the Wardens", -- [2]
				},
				[97788] = {
					"Storm Drake", -- [1]
					"Halls of Valor", -- [2]
				},
				[165010] = {
					"Congealed Slime", -- [1]
					"Plaguefall", -- [2]
				},
				[102395] = {
					"Infiltrator Assassin", -- [1]
					"Assault on Violet Hold", -- [2]
				},
				[32906] = {
					"Freya", -- [1]
					"Ulduar", -- [2]
				},
				[127477] = {
					"Saltwater Snapper", -- [1]
					"Tol Dagor", -- [2]
				},
				[156794] = {
					"SI:7 Light-Hunter", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[135167] = {
					"Spectral Berserker", -- [1]
					"Kings' Rest", -- [2]
				},
				[154083] = {
					"Trained Wolf", -- [1]
					"Siege of Orgrimmar - Coup Scenario", -- [2]
				},
				[158690] = {
					"Cultist Tormenter", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[75522] = {
					"Bloodtail Grouper", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[160061] = {
					"Crawling Corruption", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[108794] = {
					"Shroudseeker's Shadow", -- [1]
					"Maw of Souls", -- [2]
				},
				[113145] = {
					"Doomguard", -- [1]
					"Black Rook Hold [Scenario]", -- [2]
				},
				[27983] = {
					"Dark Rune Protector", -- [1]
					"Halls of Stone", -- [2]
				},
				[105301] = {
					"Expedient Elemental", -- [1]
					"The Nighthold", -- [2]
				},
				[104277] = {
					"Legion Hound", -- [1]
					"Court of Stars", -- [2]
				},
				[155221] = {
					"Faeleaf Tender", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[135699] = {
					"Ashvane Jailer", -- [1]
					"Tol Dagor", -- [2]
				},
				[135322] = {
					"The Golden Serpent", -- [1]
					"Kings' Rest", -- [2]
				},
				[102430] = {
					"Tarspitter Slug", -- [1]
					"Neltharion's Lair", -- [2]
				},
				[98813] = {
					"Bloodscent Felhound", -- [1]
					"Black Rook Hold", -- [2]
				},
				[111354] = {
					"Taintheart Befouler", -- [1]
					"The Emerald Nightmare", -- [2]
				},
				[5761] = {
					"Deviate Shambler", -- [1]
					"Wailing Caverns", -- [2]
				},
				[168886] = {
					"Virulax Blightweaver", -- [1]
					"Plaguefall", -- [2]
				},
				[108027] = {
					"Webmistress Shinaris", -- [1]
					"The Ruins of Falanaar", -- [2]
				},
				[10982] = {
					"Whitewhisker Vermin", -- [1]
					"Alterac Valley", -- [2]
				},
				[105299] = {
					"Recursive Elemental", -- [1]
					"The Nighthold", -- [2]
				},
				[17993] = {
					"Bloodwarder Protector", -- [1]
					"Tempest Keep: The Botanica", -- [2]
				},
				[104956] = {
					"Warlord Volund", -- [1]
					"Shield's Rest", -- [2]
				},
				[19919] = {
					"Thorn Lasher", -- [1]
					"Tempest Keep: The Botanica", -- [2]
				},
				[94804] = {
					"Shambling Hulk", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[122104] = {
					"Portal Keeper Hasabel", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[167955] = {
					"Sanguine Cadet", -- [1]
					"Sanguine Depths", -- [2]
				},
				[133685] = {
					"Befouled Spirit", -- [1]
					"The Underrot", -- [2]
				},
				[102397] = {
					"Wrathlord Bulwark", -- [1]
					"Assault on Violet Hold", -- [2]
				},
				[152324] = {
					"Aldwin Laughlin", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[127479] = {
					"The Sand Queen", -- [1]
					"Tol Dagor", -- [2]
				},
				[157158] = {
					"Cultist Slavedriver", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[118801] = {
					"Imp", -- [1]
					"Cathedral of Eternal Night", -- [2]
				},
				[33818] = {
					"Twilight Adherent", -- [1]
					"Ulduar", -- [2]
				},
				[91648] = {
					"Somber Guardian", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[136934] = {
					"Weapons Tester", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[105294] = {
					"Rothoof Shadowstalker", -- [1]
					"Ursocs Lair", -- [2]
				},
				[76036] = {
					"Twilight Shadow", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[129527] = {
					"Bilge Rat Buccaneer", -- [1]
					"Freehold", -- [2]
				},
				[110618] = {
					"Anchoring Crystal", -- [1]
					"Broken Shore Scenario", -- [2]
				},
				[86326] = {
					"Breaker Ritualist", -- [1]
					"Highmaul", -- [2]
				},
				[110384] = {
					"Felbound Infernal", -- [1]
					"Battle of Exodar", -- [2]
				},
				[100936] = {
					"Dark Rider", -- [1]
					"Karazhan Catacombs", -- [2]
				},
				[93952] = {
					"Fel Raven", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[102398] = {
					"Blazing Infernal", -- [1]
					"Assault on Violet Hold", -- [2]
				},
				[110844] = {
					"Lapillia", -- [1]
					"The Collapse - Suramar Scenario", -- [2]
				},
				[127480] = {
					"Stinging Parasite", -- [1]
					"Tol Dagor", -- [2]
				},
				[153065] = {
					"Voidbound Ravager", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[87841] = {
					"Grom'kar Firemender", -- [1]
					"Blackrock Foundry", -- [2]
				},
				[27975] = {
					"Maiden of Grief", -- [1]
					"Halls of Stone", -- [2]
				},
				[122367] = {
					"Admiral Svirax", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[94737] = {
					"7th Legion Battlemage", -- [1]
					"The Maw of Nashal", -- [2]
				},
				[151653] = {
					"Void Tentacle", -- [1]
					"Uldir Scenario", -- [2]
				},
				[96512] = {
					"Archdruid Glaidalis", -- [1]
					"Darkheart Thicket", -- [2]
				},
				[168934] = {
					"Enraged Spirit", -- [1]
					"De Other Side", -- [2]
				},
				[136083] = {
					"Forgotten Denizen", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[129552] = {
					"Monzumi", -- [1]
					"Atal'Dazar", -- [2]
				},
				[154128] = {
					"Blazing Elemental", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[113413] = {
					"Infernal Siegebreaker", -- [1]
					"Black Rook Hold [Scenario]", -- [2]
				},
				[118523] = {
					"Huntress Kasparian", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[126969] = {
					"Trothak", -- [1]
					"Freehold", -- [2]
				},
				[37003] = {
					"Skybreaker Vindicator", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[156650] = {
					"Dark Manifestation", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[150137] = {
					"Faceless Subduer", -- [1]
					"Uldir Scenario", -- [2]
				},
				[12422] = {
					"Death Talon Dragonspawn", -- [1]
					"Blackwing Lair", -- [2]
				},
				[141806] = {
					"Malfunctioning Construct", -- [1]
					"Kings' Rest", -- [2]
				},
				[175123] = {
					"Warden Arkoban", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[157809] = {
					"Mawsworn Darkcaster", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[108542] = {
					"Skittering Spiderling", -- [1]
					"The Emerald Nightmare", -- [2]
				},
				[76038] = {
					"Twilight Shadowmage", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[113149] = {
					"Felguard", -- [1]
					"Black Rook Hold [Scenario]", -- [2]
				},
				[136688] = {
					"Fanatical Driller", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[94733] = {
					"Felfire Demolisher", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[37022] = {
					"Blighted Abomination", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[154131] = {
					"Molten Fury", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[101384] = {
					"Blightborn Sludge", -- [1]
					"Ursocs Lair", -- [2]
				},
				[102400] = {
					"Eredar Shadow Mender", -- [1]
					"Assault on Violet Hold", -- [2]
				},
				[110846] = {
					"Cove Raven", -- [1]
					"The Maw of Nashal", -- [2]
				},
				[127482] = {
					"Sewer Vicejaw", -- [1]
					"Tol Dagor", -- [2]
				},
				[27981] = {
					"Malformed Ooze", -- [1]
					"Halls of Stone", -- [2]
				},
				[135049] = {
					"Dreadwing Raven", -- [1]
					"Waycrest Manor", -- [2]
				},
				[137713] = {
					"Big Money Crab", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[101438] = {
					"Vileshard Chunk", -- [1]
					"Neltharion's Lair", -- [2]
				},
				[104215] = {
					"Patrol Captain Gerdo", -- [1]
					"Court of Stars", -- [2]
				},
				[112638] = {
					"Astral Defender", -- [1]
					"The Nighthold", -- [2]
				},
				[76039] = {
					"Twilight Aquamancer", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[156653] = {
					"Coagulated Horror", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[114712] = {
					"Runecarver Slave", -- [1]
					"Maw of Souls", -- [2]
				},
				[118834] = {
					"Fel Portal Guardian", -- [1]
					"Cathedral of Eternal Night", -- [2]
				},
				[170474] = {
					"Brood Assassin", -- [1]
					"Plaguefall", -- [2]
				},
				[136295] = {
					"Sunken Denizen", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[93955] = {
					"Delusional Zealot", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[118838] = {
					"Eredar Soul-Summoner", -- [1]
					"Legion Ship - Vertical - Stormheim", -- [2]
				},
				[156142] = {
					"Seeker of Souls", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[127488] = {
					"Ashvane Flamecaster", -- [1]
					"Tol Dagor", -- [2]
				},
				[155226] = {
					"Verdant Keeper", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[33293] = {
					"XT-002 Deconstructor", -- [1]
					"Ulduar", -- [2]
				},
				[47136] = {
					"Unstable Ravager", -- [1]
					"Shadowfang Keep", -- [2]
				},
				[112692] = {
					"Greathorn Doe", -- [1]
					"FW Horde Garrison Level 1", -- [2]
				},
				[135764] = {
					"Explosive Totem", -- [1]
					"Kings' Rest", -- [2]
				},
				[100354] = {
					"Grasping Tentacle", -- [1]
					"Maw of Souls", -- [2]
				},
				[156143] = {
					"Voidcrazed Hulk", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[125436] = {
					"Thu'raya, Mother of the Cosmos", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[165357] = {
					"Pestilence Slime", -- [1]
					"Plaguefall", -- [2]
				},
				[137204] = {
					"Hoodoo Hexer", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[137716] = {
					"Bottom Feeder", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[34069] = {
					"Molten Colossus", -- [1]
					"Ulduar", -- [2]
				},
				[13798] = {
					"Jotek", -- [1]
					"Alterac Valley", -- [2]
				},
				[104218] = {
					"Advisor Melandrus", -- [1]
					"Court of Stars", -- [2]
				},
				[21136] = {
					"Infinite Chronomancer", -- [1]
					"Opening of the Dark Portal", -- [2]
				},
				[127484] = {
					"Jes Howlis", -- [1]
					"Tol Dagor", -- [2]
				},
				[74505] = {
					"Thruk", -- [1]
					"Blackfathom Deeps", -- [2]
				},
				[158327] = {
					"Crackling Shard", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[11659] = {
					"Molten Destroyer", -- [1]
					"Molten Core", -- [2]
				},
				[14022] = {
					"Corrupted Red Whelp", -- [1]
					"Blackwing Lair", -- [2]
				},
				[90378] = {
					"Kilrogg Deadeye", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[161293] = {
					"Neglected Guild Bank", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[156145] = {
					"Burrowing Appendage", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[168942] = {
					"Death Speaker", -- [1]
					"De Other Side", -- [2]
				},
				[92933] = {
					"7th Legion Dragoon", -- [1]
					"The Maw of Nashal", -- [2]
				},
				[138255] = {
					"Ashvane Spotter", -- [1]
					"Siege of Boralus", -- [2]
				},
				[113920] = {
					"Flail of Il'gynoth", -- [1]
					"The Emerald Nightmare", -- [2]
				},
				[122366] = {
					"Varimathras", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[123680] = {
					"Dark Keeper Aedis", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
			},
			["indicator_anchor"] = {
				["x"] = 3.2999954223633,
				["side"] = 7,
			},
			["minor_height_scale"] = 0.99999994039536,
			["aura_padding"] = 2,
			["aura_width2"] = 22,
			["aura_stack_size"] = 13,
			["range_check_power_bar_alpha"] = 0.84999996423721,
			["range_check_health_bar_alpha"] = 0.84999996423721,
			["aura_height2"] = 15,
			["hook_data_trash"] = {
				{
					["OptionsValues"] = {
					},
					["LastHookEdited"] = "",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    local auraContainers = {unitFrame.BuffFrame.PlaterBuffList}\n    \n    if (Plater.db.profile.buffs_on_aura2) then\n        auraContainers [2] = unitFrame.BuffFrame2.PlaterBuffList\n    end\n    \n    for containerID = 1, #auraContainers do\n        \n        local auraContainer = auraContainers [containerID]\n        local aurasShown = {}\n        local aurasDuplicated = {}\n        \n        --build the list of auras shown in the buff frame and check for each aura priority\n        --also check if the consolidate (stack) auras with the same name is enabled\n        for index, auraIcon in ipairs (auraContainer) do\n            if (auraIcon:IsShown()) then\n                if (envTable.consolidadeRepeatedAuras) then\n                    --is this aura already shown?\n                    local iconShownIndex = aurasDuplicated [auraIcon.SpellName]\n                    if (iconShownIndex) then\n                        --get the table with information about the shown icon\n                        local auraShownTable = aurasShown [iconShownIndex]\n                        --get the icon already in the table\n                        local icon = auraShownTable[1]\n                        --increase the amount of stacks\n                        auraShownTable[3] = auraShownTable[3] + 1\n                        \n                        --check if the remaining time of the icon already added in the table is lower than the current\n                        if (auraIcon.RemainingTime > icon.RemainingTime) then\n                            --replace the icon for the icon with bigger duration\n                            auraShownTable[1] = auraIcon\n                            icon:Hide()\n                        else\n                            auraIcon:Hide()\n                        end\n                    else    \n                        local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\n                        tinsert (aurasShown, {auraIcon, priority, 1}) --icon frame, priority, stack amount\n                        aurasDuplicated [auraIcon.SpellName] = #aurasShown\n                    end\n                else\n                    --not stacking similar auras\n                    local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\n                    tinsert (aurasShown, {auraIcon, priority})\n                    \n                end           \n            end\n        end\n        \n        --sort auras by priority\n        table.sort (aurasShown, DetailsFramework.SortOrder2)\n        \n        local growDirection\n        if (containerID == 1) then --debuff container\n            growDirection = Plater.db.profile.aura_grow_direction\n            --force to grow to right if it is anchored to center\n            if (growDirection == 2) then\n                growDirection = 3\n            end\n            -- \"Left\", \"Center\", \"Right\" - 1  2  3\n            \n        elseif (containerID == 2) then --buff container\n            growDirection = Plater.db.profile.aura2_grow_direction\n            --force to grow to left if it is anchored to center\n            if (growDirection == 2) then\n                growDirection = 1\n            end\n            \n        end\n        \n        local padding = envTable.padding\n        local framersPerRow = envTable.maxAurasPerRow + 1\n        local horizontalLength = (-padding or 0)\n        \n        --first icon is where the row starts\n        local firstIcon = aurasShown[1] and aurasShown[1][1]\n        \n        if (firstIcon) then\n            local anchorPoint = firstIcon:GetParent() --anchor point is the BuffFrame\n            anchorPoint:SetSize (1, 1)\n            \n            --> left to right\n            if (growDirection == 3) then\n                --> iterate among all aura icons\n                for i = 1, #aurasShown do\n                    local auraIcon = aurasShown [i][1]\n                    auraIcon:ClearAllPoints()\n                    \n                    if (i == 1) then\n                        auraIcon:SetPoint (\"bottomleft\", anchorPoint, \"bottomleft\", 0, 0)\n                    elseif (i % framersPerRow == 0) then\n                        auraIcon:SetPoint (\"bottomleft\", firstIcon, \"topleft\", 0, envTable.rowPadding or 0)\n                        framersPerRow = framersPerRow + framersPerRow\n                    else\n                        auraIcon:SetPoint (\"topleft\", aurasShown [i-1][1], \"topright\", padding, 0)\n                    end\n                    \n                    local stacks = aurasShown[i][3]\n                    if (stacks and stacks > 1) then\n                        auraIcon.StackText:SetText (stacks)\n                        auraIcon.StackText:Show()\n                    end\n                    \n                    horizontalLength = horizontalLength + auraIcon:GetWidth() + padding\n                end\n                \n                --right to left\n            elseif (growDirection == 1) then\n                --> iterate among all aura icons\n                for i = 1, #aurasShown do\n                    local auraIcon = aurasShown [i][1]\n                    auraIcon:ClearAllPoints()\n                    \n                    if (i == 1) then\n                        auraIcon:SetPoint (\"bottomright\", anchorPoint, \"bottomright\", 0, 0)\n                    elseif (i % framersPerRow == 0) then\n                        auraIcon:SetPoint (\"bottomright\", firstIcon, \"topright\", 0, envTable.rowPadding or 0)\n                        framersPerRow = framersPerRow + framersPerRow\n                    else\n                        auraIcon:SetPoint (\"topright\", aurasShown [i-1][1], \"topleft\", -padding, 0)\n                    end\n                    \n                    local stacks = aurasShown[i][3]\n                    if (stacks and stacks > 1) then\n                        auraIcon.StackText:SetText (stacks)\n                        auraIcon.StackText:Show()\n                    end\n                    \n                    horizontalLength = horizontalLength + auraIcon:GetWidth() + padding\n                end                    \n            end\n            \n            --set the size of the buff frame\n            anchorPoint:SetWidth (horizontalLength)\n            anchorPoint:SetHeight (firstIcon:GetHeight())\n            \n        end\n    end\nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --ATTENTION: after enabling this script, you may have to adjust the anchor point at the Buff Settings tab\n    \n    --space between each aura icon\n    envTable.padding = 2\n    \n    --space between each row of icons\n    envTable.rowPadding = 12\n    \n    --amount of icons in the row, it'll breakline and start a new row after reach the threshold\n    envTable.maxAurasPerRow = 5\n    \n    --stack auras of the same name that arent stacked by default from the game\n    envTable.consolidadeRepeatedAuras = true    \n    \n    --which auras goes first, assign a value (any number), bigger value goes first\n    envTable.priority = {\n        [\"Vampiric Touch\"] = 50,\n        [\"Shadow Word: Pain\"] = 22,\n        [\"Mind Flay\"] = 5,\n    }\n    \nend \n\n\n\n\n",
					},
					["__TrashAt"] = 1611168677,
					["Time"] = 1596741775,
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["race"] = {
						},
						["encounter_ids"] = {
						},
						["affix"] = {
						},
					},
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura_reorder",
					["Enabled"] = false,
					["Revision"] = 295,
					["semver"] = "",
					["Author"] = "Ditador-Azralon",
					["Desc"] = "Reorder buffs and debuffs following the settings set in the constructor.",
					["version"] = -1,
					["PlaterCore"] = 1,
					["Options"] = {
					},
					["HooksTemp"] = {
					},
					["Name"] = "Aura Reorder [Plater]",
				}, -- [1]
			},
			["extra_icon_anchor"] = {
				["x"] = 0,
			},
			["extra_icon_wide_icon"] = false,
			["range_check_alpha"] = 0.64999997615814,
			["semver"] = "1.0.6",
			["aura_frame2_anchor"] = {
				["y"] = 12,
				["x"] = 0.5,
				["side"] = 7,
			},
			["cast_statusbar_texture"] = "Melli",
			["auto_toggle_friendly"] = {
				["cities"] = false,
				["world"] = false,
			},
			["aura_cooldown_edge_texture"] = "Interface\\GLUES\\loadingOld",
			["extra_icon_height"] = 15,
			["transparency_behavior"] = 4,
			["debuff_show_cc_border"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
			},
			["aura_consolidate"] = true,
			["extra_icon_width"] = 22,
			["health_statusbar_texture"] = "Melli",
			["hook_auto_imported"] = {
				["Reorder Nameplate"] = 4,
				["Dont Have Aura"] = 1,
				["Players Targetting Amount"] = 4,
				["Color Automation"] = 1,
				["Bwonsamdi Reaping"] = 1,
				["Extra Border"] = 2,
				["Jaina Encounter"] = 6,
				["Execute Range"] = 1,
				["Cast Bar Icon Config"] = 2,
				["Combo Points"] = 4,
				["Hide Neutral Units"] = 1,
				["Blockade Encounter"] = 1,
				["Target Color"] = 3,
				["Attacking Specific Unit"] = 1,
				["Aura Reorder"] = 3,
			},
			["minor_width_scale"] = 0.99999994039536,
			["castbar_target_text_size"] = 8,
			["captured_spells"] = {
				[345545] = {
					["type"] = "BUFF",
					["source"] = "Cuddlyboi",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[345863] = {
					["type"] = "BUFF",
					["source"] = "Vekyy",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[231390] = {
					["type"] = "BUFF",
					["source"] = "Garagehunter",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[347600] = {
					["type"] = "BUFF",
					["source"] = "Ranø",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5761] = {
					["type"] = "BUFF",
					["source"] = "Washeduplad",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2383] = {
					["type"] = "BUFF",
					["source"] = "Garagehunter",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[315584] = {
					["type"] = "BUFF",
					["source"] = "Washeduplad",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[307185] = {
					["type"] = "BUFF",
					["source"] = "Garagehunter",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1459] = {
					["type"] = "BUFF",
					["source"] = "Mixolydian",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[72968] = {
					["type"] = "BUFF",
					["source"] = "Hellztar",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6673] = {
					["type"] = "BUFF",
					["source"] = "Ceveren-Draenor",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[342309] = {
					["type"] = "BUFF",
					["source"] = "Garagehunter",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[32223] = {
					["type"] = "BUFF",
					["source"] = "Vekyy",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[21562] = {
					["type"] = "BUFF",
					["source"] = "Xlbas-Draenor",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[164273] = {
					["type"] = "BUFF",
					["source"] = "Garagehunter",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[327709] = {
					["type"] = "BUFF",
					["source"] = "Garagehunter",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289277] = {
					["type"] = "BUFF",
					["source"] = "Bcnx",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[243955] = {
					["type"] = "BUFF",
					["source"] = "Hellztar",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[311478] = {
					["type"] = "BUFF",
					["source"] = "Dikaliq",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[335150] = {
					["type"] = "BUFF",
					["source"] = "Mixolydian",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[227723] = {
					["type"] = "BUFF",
					["source"] = "Sdkpew",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[292361] = {
					["type"] = "BUFF",
					["source"] = "Drivvåd",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[311459] = {
					["type"] = "BUFF",
					["source"] = "Quetrix",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[176151] = {
					["type"] = "BUFF",
					["source"] = "Hakurou",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[165961] = {
					["type"] = "BUFF",
					["source"] = "Ælghakk",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[57724] = {
					["type"] = "DEBUFF",
					["source"] = "Keypjr",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[768] = {
					["type"] = "BUFF",
					["source"] = "Noraià-Blackhand",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[311499] = {
					["type"] = "BUFF",
					["source"] = "Vekyy",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[310143] = {
					["type"] = "BUFF",
					["source"] = "Mixolydian",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
			},
			["aura_frame1_anchor"] = {
				["y"] = 12,
				["x"] = -0.5,
				["side"] = 1,
			},
			["aura_timer_text_font"] = "Big Noodle Titling",
			["aura_height"] = 15,
			["cast_statusbar_bgtexture"] = "Melli",
			["aura2_x_offset"] = 0.5,
			["target_indicator"] = "Target Arrows Reversed",
			["range_check_cast_bar_alpha"] = 0.84999996423721,
			["aura_show_buff_by_the_unit"] = false,
			["saved_cvars"] = {
				["nameplateShowSelf"] = "0",
				["ShowClassColorInNameplate"] = "1",
				["nameplateOverlapV"] = "1.3999999761581",
				["ShowNamePlateLoseAggroFlash"] = "1",
				["nameplateShowEnemyMinus"] = "1",
				["nameplatePersonalShowAlways"] = "0",
				["nameplateMotionSpeed"] = "0.05",
				["nameplateLargeTopInset"] = "0.049999997019768",
				["nameplateShowFriendlyTotems"] = "0",
				["nameplatePersonalHideDelaySeconds"] = "0.2",
				["nameplateShowFriendlyPets"] = "0",
				["nameplateShowFriendlyNPCs"] = "1",
				["nameplateSelectedScale"] = "1.4500000476837",
				["nameplatePersonalShowInCombat"] = "1",
				["nameplatePersonalShowWithTarget"] = "0",
				["nameplateShowEnemyMinions"] = "0",
				["nameplateGlobalScale"] = "1",
				["nameplateResourceOnTarget"] = "0",
				["nameplateMotion"] = "1",
				["nameplateOccludedAlphaMult"] = "1",
				["nameplateMinScale"] = "1",
				["nameplateMaxDistance"] = "15",
				["nameplateOtherTopInset"] = "0.049999997019768",
				["nameplateSelfScale"] = "1",
				["nameplateSelfBottomInset"] = "0.2",
				["nameplateSelfTopInset"] = "0.5",
				["nameplateShowFriendlyGuardians"] = "0",
				["nameplateSelfAlpha"] = "1",
				["nameplateShowFriendlyMinions"] = "0",
				["nameplateShowAll"] = "1",
				["NamePlateHorizontalScale"] = "1",
				["NamePlateVerticalScale"] = "1",
			},
			["login_counter"] = 4699,
			["extra_icon_caster_name"] = false,
			["aura_stack_font"] = "Big Noodle Titling",
			["range_check_buffs_alpha"] = 0.84999996423721,
			["OptionsPanelDB"] = {
				["PlaterOptionsPanelFrame"] = {
					["scale"] = 1.1000000238419,
				},
			},
			["target_highlight_texture"] = "Interface\\AddOns\\Plater\\images\\selection_indicator2",
			["hover_highlight_alpha"] = 0.099999994039536,
			["ignoreWagoUpdate"] = true,
			["plate_config"] = {
				["player"] = {
					["spellpercent_text_font"] = "Big Noodle Titling",
					["power_percent_text_font"] = "Big Noodle Titling",
					["spellname_text_font"] = "Big Noodle Titling",
					["percent_text_font"] = "Big Noodle Titling",
				},
				["friendlyplayer"] = {
					["spellpercent_text_font"] = "Big Noodle Titling",
					["cast"] = {
						130, -- [1]
					},
					["cast_incombat"] = {
						130, -- [1]
					},
					["level_text_font"] = "Big Noodle Titling",
					["actorname_text_font"] = "Big Noodle Titling",
					["level_text_alpha"] = 0.29999998211861,
					["actorname_text_spacing"] = 9,
					["percent_text_font"] = "Big Noodle Titling",
					["health_incombat"] = {
						130, -- [1]
						11, -- [2]
					},
					["health"] = {
						130, -- [1]
						11, -- [2]
					},
					["spellname_text_font"] = "Big Noodle Titling",
				},
				["friendlynpc"] = {
					["spellpercent_text_font"] = "Big Noodle Titling",
					["cast"] = {
						130, -- [1]
					},
					["level_text_font"] = "Big Noodle Titling",
					["actorname_text_font"] = "Big Noodle Titling",
					["actorname_text_spacing"] = 9,
					["cast_incombat"] = {
						130, -- [1]
					},
					["spellname_text_font"] = "Big Noodle Titling",
					["level_text_alpha"] = 0.29999998211861,
					["percent_text_font"] = "Big Noodle Titling",
					["health_incombat"] = {
						130, -- [1]
						11, -- [2]
					},
					["health"] = {
						130, -- [1]
						11, -- [2]
					},
				},
				["global_health_height"] = 11,
				["global_health_width"] = 130,
				["enemyplayer"] = {
					["castbar_offset"] = -1,
					["spellpercent_text_font"] = "Big Noodle Titling",
					["level_text_size"] = 8,
					["cast"] = {
						130, -- [1]
						13, -- [2]
					},
					["spellpercent_text_anchor"] = {
						["y"] = -0.5,
						["x"] = 0,
					},
					["spellname_text_outline"] = "OUTLINE",
					["level_text_font"] = "Big Noodle Titling",
					["actorname_text_font"] = "Big Noodle Titling",
					["all_names"] = true,
					["actorname_text_outline"] = "OUTLINE",
					["actorname_text_spacing"] = 11,
					["quest_color_enemy"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["big_actortitle_text_font"] = "Naowh",
					["level_text_anchor"] = {
						["y"] = 0,
						["side"] = 10,
					},
					["cast_incombat"] = {
						130, -- [1]
						13, -- [2]
					},
					["spellname_text_anchor"] = {
						["side"] = 10,
					},
					["percent_text_anchor"] = {
						["y"] = -4,
						["side"] = 11,
					},
					["spellname_text_font"] = "Big Noodle Titling",
					["quest_color_neutral"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["big_actorname_text_font"] = "Naowh",
					["level_text_outline"] = "OUTLINE",
					["big_actorname_text_size"] = 10,
					["level_text_alpha"] = 1,
					["percent_text_size"] = 12,
					["percent_text_font"] = "Big Noodle Titling",
					["big_actortitle_text_size"] = 10,
					["quest_enabled"] = true,
					["percent_text_show_decimals"] = false,
					["health_incombat"] = {
						130, -- [1]
						11, -- [2]
					},
					["health"] = {
						130, -- [1]
						11, -- [2]
					},
					["actorname_text_anchor"] = {
						["y"] = -2,
						["side"] = 1,
					},
					["percent_show_health"] = false,
					["level_text_enabled"] = false,
				},
				["enemynpc"] = {
					["spellpercent_text_font"] = "Big Noodle Titling",
					["cast"] = {
						130, -- [1]
						13, -- [2]
					},
					["spellpercent_text_anchor"] = {
						["y"] = -0.5,
						["x"] = 0,
					},
					["percent_text_show_decimals"] = false,
					["level_text_font"] = "Big Noodle Titling",
					["actorname_text_font"] = "Big Noodle Titling",
					["actorname_text_outline"] = "OUTLINE",
					["actorname_text_spacing"] = 11,
					["quest_color_enemy"] = {
						nil, -- [1]
						0.57647058823529, -- [2]
					},
					["big_actortitle_text_font"] = "Naowh",
					["level_text_anchor"] = {
						["y"] = 0,
						["side"] = 10,
					},
					["cast_incombat"] = {
						130, -- [1]
						13, -- [2]
					},
					["spellname_text_anchor"] = {
						["side"] = 10,
					},
					["percent_text_anchor"] = {
						["y"] = -2,
						["side"] = 7,
					},
					["spellname_text_font"] = "Big Noodle Titling",
					["quest_color_neutral"] = {
						nil, -- [1]
						0.57647058823529, -- [2]
					},
					["castbar_offset"] = -1,
					["big_actorname_text_font"] = "Naowh",
					["spellpercent_text_size"] = 10,
					["level_text_outline"] = "OUTLINE",
					["level_text_alpha"] = 1,
					["percent_text_size"] = 12,
					["percent_text_font"] = "Big Noodle Titling",
					["actorname_text_size"] = 12,
					["health_incombat"] = {
						130, -- [1]
						11, -- [2]
					},
					["health"] = {
						130, -- [1]
						11, -- [2]
					},
					["percent_show_health"] = false,
					["spellname_text_size"] = 10,
					["actorname_text_anchor"] = {
						["y"] = -2,
						["side"] = 1,
					},
					["level_text_enabled"] = false,
				},
			},
			["aura_y_offset"] = 12,
			["use_ui_parent"] = true,
			["cast_statusbar_bgcolor"] = {
				0.11372549019608, -- [1]
				0.11372549019608, -- [2]
				0.11372549019608, -- [3]
				0.608831346035, -- [4]
			},
			["indicator_scale"] = 0.79999995231628,
			["npc_colors"] = {
				[127482] = {
					false, -- [1]
					false, -- [2]
					"lightcoral", -- [3]
				},
				[141806] = {
					false, -- [1]
					false, -- [2]
					"mediumpurple", -- [3]
				},
				[131383] = {
					false, -- [1]
					false, -- [2]
					"snow", -- [3]
				},
				[131670] = {
					true, -- [1]
					false, -- [2]
					"deepskyblue", -- [3]
				},
				[122972] = {
					true, -- [1]
					false, -- [2]
					"aqua", -- [3]
				},
				[134284] = {
					true, -- [1]
					false, -- [2]
					"aqua", -- [3]
				},
				[130909] = {
					true, -- [1]
					false, -- [2]
					"deepskyblue", -- [3]
				},
				[126845] = {
					false, -- [1]
					false, -- [2]
					"snow", -- [3]
				},
				[133870] = {
					false, -- [1]
					false, -- [2]
					"lightpink", -- [3]
				},
				[150222] = {
					false, -- [1]
					false, -- [2]
					"snow", -- [3]
				},
				[139799] = {
					false, -- [1]
					false, -- [2]
					"lightpink", -- [3]
				},
				[161124] = {
					false, -- [1]
					false, -- [2]
					"mediumpurple", -- [3]
				},
				[144071] = {
					true, -- [1]
					false, -- [2]
					"aqua", -- [3]
				},
				[134158] = {
					false, -- [1]
					false, -- [2]
					"mediumpurple", -- [3]
				},
				[122973] = {
					false, -- [1]
					false, -- [2]
					"lightsteelblue", -- [3]
				},
				[134063] = {
					false, -- [1]
					false, -- [2]
					"snow", -- [3]
				},
				[131545] = {
					false, -- [1]
					false, -- [2]
					"lightpink", -- [3]
				},
				[131864] = {
					false, -- [1]
					false, -- [2]
					"snow", -- [3]
				},
				[129699] = {
					false, -- [1]
					false, -- [2]
					"snow", -- [3]
				},
				[127484] = {
					false, -- [1]
					false, -- [2]
					"snow", -- [3]
				},
				[157365] = {
					false, -- [1]
					false, -- [2]
					"mediumpurple", -- [3]
				},
				[144169] = {
					true, -- [1]
					false, -- [2]
					"deepskyblue", -- [3]
				},
				[162306] = {
					false, -- [1]
					false, -- [2]
					"lightcoral", -- [3]
				},
				[141938] = {
					false, -- [1]
					false, -- [2]
					"lightpink", -- [3]
				},
				[126847] = {
					false, -- [1]
					false, -- [2]
					"snow", -- [3]
				},
				[134990] = {
					false, -- [1]
					false, -- [2]
					"lightpink", -- [3]
				},
				[128967] = {
					false, -- [1]
					false, -- [2]
					"lightpink", -- [3]
				},
				[141939] = {
					true, -- [1]
					false, -- [2]
					"deepskyblue", -- [3]
				},
				[144298] = {
					false, -- [1]
					false, -- [2]
					"mediumpurple", -- [3]
				},
				[138465] = {
					false, -- [1]
					false, -- [2]
					"mediumpurple", -- [3]
				},
				[134417] = {
					true, -- [1]
					false, -- [2]
					"aqua", -- [3]
				},
				[138019] = {
					false, -- [1]
					false, -- [2]
					"lightpink", -- [3]
				},
				[129366] = {
					false, -- [1]
					false, -- [2]
					"lightsteelblue", -- [3]
				},
				[126848] = {
					false, -- [1]
					false, -- [2]
					"snow", -- [3]
				},
				[128649] = {
					false, -- [1]
					false, -- [2]
					"snow", -- [3]
				},
				[134418] = {
					true, -- [1]
					false, -- [2]
					"aqua", -- [3]
				},
				[133430] = {
					true, -- [1]
					false, -- [2]
					"deepskyblue", -- [3]
				},
				[150292] = {
					false, -- [1]
					false, -- [2]
					"mediumpurple", -- [3]
				},
				[126928] = {
					false, -- [1]
					false, -- [2]
					"aqua", -- [3]
				},
				[150165] = {
					false, -- [1]
					false, -- [2]
					"lightpink", -- [3]
				},
				[134993] = {
					false, -- [1]
					false, -- [2]
					"snow", -- [3]
				},
				[129367] = {
					true, -- [1]
					false, -- [2]
					"aqua", -- [3]
				},
				[134069] = {
					false, -- [1]
					false, -- [2]
					"snow", -- [3]
				},
				[128650] = {
					false, -- [1]
					false, -- [2]
					"snow", -- [3]
				},
				[133432] = {
					false, -- [1]
					false, -- [2]
					"lightpink", -- [3]
				},
				[129208] = {
					false, -- [1]
					false, -- [2]
					"snow", -- [3]
				},
				[128969] = {
					true, -- [1]
					false, -- [2]
					"deepskyblue", -- [3]
				},
				[139425] = {
					false, -- [1]
					false, -- [2]
					"lightpink", -- [3]
				},
				[150295] = {
					false, -- [1]
					false, -- [2]
					"snow", -- [3]
				},
				[130404] = {
					true, -- [1]
					false, -- [2]
					"deepskyblue", -- [3]
				},
				[133593] = {
					false, -- [1]
					false, -- [2]
					"lightpink", -- [3]
				},
				[131585] = {
					false, -- [1]
					false, -- [2]
					"mediumpurple", -- [3]
				},
				[133912] = {
					false, -- [1]
					false, -- [2]
					"lightpink", -- [3]
				},
				[135474] = {
					false, -- [1]
					false, -- [2]
					"lightpink", -- [3]
				},
				[127488] = {
					false, -- [1]
					false, -- [2]
					"lightpink", -- [3]
				},
				[131586] = {
					false, -- [1]
					false, -- [2]
					"lightsteelblue", -- [3]
				},
				[134232] = {
					false, -- [1]
					false, -- [2]
					"lightpink", -- [3]
				},
				[129879] = {
					false, -- [1]
					false, -- [2]
					"lightpink", -- [3]
				},
				[150712] = {
					false, -- [1]
					false, -- [2]
					"snow", -- [3]
				},
				[137484] = {
					true, -- [1]
					false, -- [2]
					"deepskyblue", -- [3]
				},
				[138281] = {
					false, -- [1]
					false, -- [2]
					"mediumpurple", -- [3]
				},
				[131492] = {
					true, -- [1]
					false, -- [2]
					"aqua", -- [3]
				},
				[129529] = {
					false, -- [1]
					false, -- [2]
					"mediumpurple", -- [3]
				},
				[135764] = {
					false, -- [1]
					false, -- [2]
					"mediumpurple", -- [3]
				},
				[132481] = {
					false, -- [1]
					false, -- [2]
					"lightpink", -- [3]
				},
				[129370] = {
					true, -- [1]
					false, -- [2]
					"aqua", -- [3]
				},
				[130661] = {
					true, -- [1]
					false, -- [2]
					"aqua", -- [3]
				},
				[131812] = {
					true, -- [1]
					false, -- [2]
					"deepskyblue", -- [3]
				},
				[129928] = {
					false, -- [1]
					false, -- [2]
					"lightcoral", -- [3]
				},
				[131685] = {
					true, -- [1]
					false, -- [2]
					"aqua", -- [3]
				},
				[129227] = {
					false, -- [1]
					false, -- [2]
					"snow", -- [3]
				},
				[132530] = {
					false, -- [1]
					false, -- [2]
					"lightpink", -- [3]
				},
				[135192] = {
					false, -- [1]
					false, -- [2]
					"lightpink", -- [3]
				},
				[144170] = {
					false, -- [1]
					false, -- [2]
					"lightpink", -- [3]
				},
				[122971] = {
					false, -- [1]
					false, -- [2]
					"mediumpurple", -- [3]
				},
				[122963] = {
					false, -- [1]
					false, -- [2]
					"snow", -- [3]
				},
				[135759] = {
					false, -- [1]
					false, -- [2]
					"lightsteelblue", -- [3]
				},
				[131527] = {
					false, -- [1]
					false, -- [2]
					"snow", -- [3]
				},
				[134364] = {
					false, -- [1]
					false, -- [2]
					"lightsteelblue", -- [3]
				},
				[129553] = {
					true, -- [1]
					false, -- [2]
					"deepskyblue", -- [3]
				},
				[134600] = {
					false, -- [1]
					false, -- [2]
					"mediumpurple", -- [3]
				},
				[151658] = {
					false, -- [1]
					false, -- [2]
					"lightpink", -- [3]
				},
				[157442] = {
					false, -- [1]
					false, -- [2]
					"lightpink", -- [3]
				},
				[159514] = {
					false, -- [1]
					false, -- [2]
					"lightpink", -- [3]
				},
				[144246] = {
					false, -- [1]
					false, -- [2]
					"snow", -- [3]
				},
				[134137] = {
					true, -- [1]
					false, -- [2]
					"aqua", -- [3]
				},
				[144248] = {
					false, -- [1]
					false, -- [2]
					"snow", -- [3]
				},
				[129547] = {
					false, -- [1]
					false, -- [2]
					"lightpink", -- [3]
				},
				[136214] = {
					false, -- [1]
					false, -- [2]
					"mediumpurple", -- [3]
				},
				[137521] = {
					false, -- [1]
					false, -- [2]
					"lightcoral", -- [3]
				},
				[136549] = {
					false, -- [1]
					false, -- [2]
					"mediumpurple", -- [3]
				},
				[137103] = {
					false, -- [1]
					false, -- [2]
					"snow", -- [3]
				},
				[135322] = {
					false, -- [1]
					false, -- [2]
					"snow", -- [3]
				},
				[153755] = {
					false, -- [1]
					false, -- [2]
					"snow", -- [3]
				},
				[134139] = {
					true, -- [1]
					false, -- [2]
					"deepskyblue", -- [3]
				},
				[141283] = {
					true, -- [1]
					false, -- [2]
					"deepskyblue", -- [3]
				},
				[136470] = {
					true, -- [1]
					false, -- [2]
					"aqua", -- [3]
				},
				[130435] = {
					false, -- [1]
					false, -- [2]
					"lightsteelblue", -- [3]
				},
				[126918] = {
					false, -- [1]
					false, -- [2]
					"aqua", -- [3]
				},
				[126983] = {
					false, -- [1]
					false, -- [2]
					"snow", -- [3]
				},
				[157253] = {
					false, -- [1]
					false, -- [2]
					"lightpink", -- [3]
				},
				[130026] = {
					false, -- [1]
					false, -- [2]
					"lightpink", -- [3]
				},
				[131817] = {
					false, -- [1]
					false, -- [2]
					"snow", -- [3]
				},
				[134144] = {
					false, -- [1]
					false, -- [2]
					"mediumpurple", -- [3]
				},
				[122969] = {
					true, -- [1]
					false, -- [2]
					"aqua", -- [3]
				},
				[126969] = {
					false, -- [1]
					false, -- [2]
					"snow", -- [3]
				},
				[138255] = {
					true, -- [1]
					false, -- [2]
					"deepskyblue", -- [3]
				},
				[129372] = {
					false, -- [1]
					false, -- [2]
					"lightcoral", -- [3]
				},
				[157254] = {
					false, -- [1]
					false, -- [2]
					"mediumpurple", -- [3]
				},
				[150146] = {
					true, -- [1]
					false, -- [2]
					"aqua", -- [3]
				},
				[136297] = {
					true, -- [1]
					false, -- [2]
					"aqua", -- [3]
				},
				[131850] = {
					true, -- [1]
					false, -- [2]
					"aqua", -- [3]
				},
				[137969] = {
					false, -- [1]
					false, -- [2]
					"mediumpurple", -- [3]
				},
				[129989] = {
					false, -- [1]
					false, -- [2]
					"lightcoral", -- [3]
				},
				[126919] = {
					true, -- [1]
					false, -- [2]
					"aqua", -- [3]
				},
				[129369] = {
					true, -- [1]
					false, -- [2]
					"deepskyblue", -- [3]
				},
				[157255] = {
					false, -- [1]
					false, -- [2]
					"lightcoral", -- [3]
				},
				[127477] = {
					false, -- [1]
					false, -- [2]
					"lightpink", -- [3]
				},
				[129788] = {
					true, -- [1]
					false, -- [2]
					"aqua", -- [3]
				},
				[136186] = {
					false, -- [1]
					false, -- [2]
					"lightpink", -- [3]
				},
				[151773] = {
					false, -- [1]
					false, -- [2]
					"lightsteelblue", -- [3]
				},
				[163947] = {
					false, -- [1]
					false, -- [2]
					"lightpink", -- [3]
				},
				[122967] = {
					false, -- [1]
					false, -- [2]
					"snow", -- [3]
				},
				[137405] = {
					false, -- [1]
					false, -- [2]
					"snow", -- [3]
				},
				[157256] = {
					false, -- [1]
					false, -- [2]
					"lightsteelblue", -- [3]
				},
				[150169] = {
					true, -- [1]
					false, -- [2]
					"aqua", -- [3]
				},
				[127111] = {
					true, -- [1]
					false, -- [2]
					"aqua", -- [3]
				},
				[135167] = {
					true, -- [1]
					false, -- [2]
					"deepskyblue", -- [3]
				},
				[129996] = {
					false, -- [1]
					false, -- [2]
					"lightpink", -- [3]
				},
				[128434] = {
					true, -- [1]
					false, -- [2]
					"aqua", -- [3]
				},
				[135263] = {
					true, -- [1]
					false, -- [2]
					"deepskyblue", -- [3]
				},
				[129231] = {
					false, -- [1]
					false, -- [2]
					"snow", -- [3]
				},
				[130012] = {
					true, -- [1]
					false, -- [2]
					"deepskyblue", -- [3]
				},
				[130028] = {
					false, -- [1]
					false, -- [2]
					"lightpink", -- [3]
				},
				[161241] = {
					false, -- [1]
					false, -- [2]
					"lightpink", -- [3]
				},
				[150297] = {
					true, -- [1]
					false, -- [2]
					"aqua", -- [3]
				},
				[163836] = {
					false, -- [1]
					false, -- [2]
					"lightpink", -- [3]
				},
				[131819] = {
					false, -- [1]
					false, -- [2]
					"lightsteelblue", -- [3]
				},
				[150159] = {
					false, -- [1]
					false, -- [2]
					"snow", -- [3]
				},
				[122984] = {
					true, -- [1]
					false, -- [2]
					"aqua", -- [3]
				},
				[131436] = {
					true, -- [1]
					false, -- [2]
					"deepskyblue", -- [3]
				},
				[134739] = {
					false, -- [1]
					false, -- [2]
					"lightcoral", -- [3]
				},
				[134041] = {
					false, -- [1]
					false, -- [2]
					"mediumpurple", -- [3]
				},
				[131677] = {
					true, -- [1]
					false, -- [2]
					"deepskyblue", -- [3]
				},
				[134174] = {
					true, -- [1]
					false, -- [2]
					"aqua", -- [3]
				},
				[161243] = {
					false, -- [1]
					false, -- [2]
					"dimgrey", -- [3]
				},
				[157450] = {
					false, -- [1]
					false, -- [2]
					"lightpink", -- [3]
				},
				[135552] = {
					false, -- [1]
					false, -- [2]
					"lightpink", -- [3]
				},
				[135329] = {
					true, -- [1]
					false, -- [2]
					"deepskyblue", -- [3]
				},
				[127479] = {
					false, -- [1]
					false, -- [2]
					"snow", -- [3]
				},
				[130655] = {
					false, -- [1]
					false, -- [2]
					"dimgrey", -- [3]
				},
				[134150] = {
					false, -- [1]
					false, -- [2]
					"mediumpurple", -- [3]
				},
				[129214] = {
					false, -- [1]
					false, -- [2]
					"snow", -- [3]
				},
				[161244] = {
					false, -- [1]
					false, -- [2]
					"lightsteelblue", -- [3]
				},
				[157451] = {
					false, -- [1]
					false, -- [2]
					"mediumpurple", -- [3]
				},
				[130635] = {
					true, -- [1]
					false, -- [2]
					"aqua", -- [3]
				},
				[157602] = {
					false, -- [1]
					false, -- [2]
					"snow", -- [3]
				},
				[135245] = {
					true, -- [1]
					false, -- [2]
					"deepskyblue", -- [3]
				},
				[134629] = {
					false, -- [1]
					false, -- [2]
					"mediumpurple", -- [3]
				},
				[144294] = {
					false, -- [1]
					false, -- [2]
					"lightpink", -- [3]
				},
				[144295] = {
					false, -- [1]
					false, -- [2]
					"lightsteelblue", -- [3]
				},
				[144160] = {
					false, -- [1]
					false, -- [2]
					"snow", -- [3]
				},
				[131863] = {
					false, -- [1]
					false, -- [2]
					"snow", -- [3]
				},
				[150160] = {
					true, -- [1]
					false, -- [2]
					"deepskyblue", -- [3]
				},
				[134056] = {
					false, -- [1]
					false, -- [2]
					"snow", -- [3]
				},
				[138187] = {
					false, -- [1]
					false, -- [2]
					"lightcoral", -- [3]
				},
				[136160] = {
					false, -- [1]
					false, -- [2]
					"snow", -- [3]
				},
				[157612] = {
					false, -- [1]
					false, -- [2]
					"lightcoral", -- [3]
				},
				[135204] = {
					true, -- [1]
					false, -- [2]
					"aqua", -- [3]
				},
				[131666] = {
					false, -- [1]
					false, -- [2]
					"lightpink", -- [3]
				},
				[129600] = {
					true, -- [1]
					false, -- [2]
					"aqua", -- [3]
				},
				[137029] = {
					false, -- [1]
					false, -- [2]
					"lightsteelblue", -- [3]
				},
				[133379] = {
					false, -- [1]
					false, -- [2]
					"white", -- [3]
				},
				[133463] = {
					false, -- [1]
					false, -- [2]
					"mediumpurple", -- [3]
				},
				[128651] = {
					false, -- [1]
					false, -- [2]
					"snow", -- [3]
				},
				[157613] = {
					false, -- [1]
					false, -- [2]
					"lightsteelblue", -- [3]
				},
				[150250] = {
					true, -- [1]
					false, -- [2]
					"deepskyblue", -- [3]
				},
				[131667] = {
					false, -- [1]
					false, -- [2]
					"snow", -- [3]
				},
				[135365] = {
					false, -- [1]
					false, -- [2]
					"mediumpurple", -- [3]
				},
				[138254] = {
					false, -- [1]
					false, -- [2]
					"lightcoral", -- [3]
				},
				[134058] = {
					false, -- [1]
					false, -- [2]
					"snow", -- [3]
				},
				[133835] = {
					false, -- [1]
					false, -- [2]
					"mediumpurple", -- [3]
				},
				[139097] = {
					false, -- [1]
					false, -- [2]
					"mediumpurple", -- [3]
				},
				[157614] = {
					false, -- [1]
					false, -- [2]
					"mediumpurple", -- [3]
				},
				[150251] = {
					true, -- [1]
					false, -- [2]
					"aqua", -- [3]
				},
				[162716] = {
					false, -- [1]
					false, -- [2]
					"lightpink", -- [3]
				},
				[129601] = {
					true, -- [1]
					false, -- [2]
					"deepskyblue", -- [3]
				},
				[133007] = {
					false, -- [1]
					false, -- [2]
					"snow", -- [3]
				},
				[144293] = {
					false, -- [1]
					false, -- [2]
					"lightpink", -- [3]
				},
				[135366] = {
					false, -- [1]
					false, -- [2]
					"lightcoral", -- [3]
				},
				[131318] = {
					false, -- [1]
					false, -- [2]
					"snow", -- [3]
				},
				[162718] = {
					false, -- [1]
					false, -- [2]
					"mediumpurple", -- [3]
				},
				[127486] = {
					false, -- [1]
					false, -- [2]
					"mediumpurple", -- [3]
				},
				[136643] = {
					true, -- [1]
					false, -- [2]
					"deepskyblue", -- [3]
				},
				[134251] = {
					true, -- [1]
					false, -- [2]
					"aqua", -- [3]
				},
				[137473] = {
					false, -- [1]
					false, -- [2]
					"mediumpurple", -- [3]
				},
				[134060] = {
					false, -- [1]
					false, -- [2]
					"snow", -- [3]
				},
				[129602] = {
					true, -- [1]
					false, -- [2]
					"deepskyblue", -- [3]
				},
			},
			["hook_data"] = {
				{
					["OptionsValues"] = {
					},
					["LastHookEdited"] = "",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --attempt to get the color from the unit color list\n    local color = envTable.NpcColors [unitFrame.namePlateUnitNameLower] or envTable.NpcColors [unitFrame.namePlateUnitName] or envTable.NpcColors [unitFrame.namePlateNpcId]\n    \n    --if the color exists, set the health bar color\n    if (color) then\n        Plater.SetNameplateColor (unitFrame, color)\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --list of npcs and their colors, can be inserted:\n    --name of the unit\n    --name of the unit in lower case\n    --npcID of the unit\n    \n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    \n    envTable.NpcColors = {\n        \n        --examples, using the unit name in lower case, regular unit name and the unitID:\n        \n        [\"Thunderlord Windreader\"] = \"red\", --using regular mob name and color it as red\n        [\"thunderlord crag-leaper\"] = {1, 1, 0}, --using lower case and coloring it yellow\n        [75790] = \"#00FF00\", --using the ID of the unit and using green as color\n        \n        --insert the new mobs here:\n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n    } --close custom color bracket\n    \nend\n\n\n\n\n",
					},
					["Time"] = 1547392935,
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["race"] = {
						},
						["encounter_ids"] = {
						},
						["affix"] = {
						},
					},
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\color_bar",
					["Enabled"] = false,
					["Revision"] = 50,
					["semver"] = "",
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Easy way to change the color of an unit. Open the constructor script and follow the examples.",
					["version"] = -1,
					["PlaterCore"] = 1,
					["Options"] = {
					},
					["HooksTemp"] = {
					},
					["Name"] = "Color Automation [Plater]",
				}, -- [1]
				{
					["OptionsValues"] = {
					},
					["LastHookEdited"] = "",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --do nothing if the player isn't in combat\n    if (not Plater.IsInCombat()) then\n        return \n    end\n    \n    --do nothing if the unit isn't in combat\n    if (not unitFrame.InCombat) then\n        return\n    end\n    \n    --do nothing if the unit is the player it self\n    if (unitFrame.IsSelf) then\n        return\n    end\n    \n    --check the auras\n    local hasAura = false\n    \n    for auraName, _ in pairs (envTable.TrackingAuras) do\n        if (Plater.NameplateHasAura (unitFrame, auraName)) then\n            hasAura = true\n            break\n        end\n    end\n    \n    if (not hasAura) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    else\n        if (envTable.ForceRefreshNameplateColor) then\n            Plater.RefreshNameplateColor (unitFrame) \n        end\n    end    \n    \nend",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    --Important: lines starting with double dashes are comments and are not part of the script\n    \n    --set this to true if you are not using threat colors in the health bar\n    envTable.ForceRefreshNameplateColor = true\n    \n    --if the unit does not have any of the following auras, it will be painted with the color listed below\n    --list of spells to track, can be the spell name (case-sensitive) or the spellID\n    envTable.TrackingAuras = {\n        --[\"Nightblade\"] = true, --this is an example using the spell name\n        --[195452] = true, --this is an example using the spellID\n        \n    }\n    \n    --which color the nameplate wil be changed\n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    --you may also use /plater colors\n    envTable.NameplateColor = \"pink\"\n    \nend",
					},
					["Time"] = 1554138845,
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["race"] = {
						},
						["encounter_ids"] = {
						},
						["affix"] = {
						},
					},
					["url"] = "",
					["Icon"] = 136207,
					["Enabled"] = false,
					["Revision"] = 59,
					["semver"] = "",
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Change the nameplate color when a nameplate does not have the auras set in the constructor script.",
					["version"] = -1,
					["PlaterCore"] = 1,
					["Options"] = {
					},
					["HooksTemp"] = {
					},
					["Name"] = "Don't Have Aura [Plater]",
				}, -- [2]
				{
					["OptionsValues"] = {
					},
					["LastHookEdited"] = "",
					["Hooks"] = {
						["Nameplate Created"] = "function (self, unitId, unitFrame, envTable)\n    \n    --run constructor!\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.IsEnabled) then\n        if (unitFrame.IsSelf) then\n            if (envTable.ShowOnPersonalBar) then\n                envTable.BorderFrame:Show()\n            else\n                envTable.BorderFrame:Hide() \n            end\n        else\n            envTable.BorderFrame:Show()\n        end   \n    end\n    \nend   \n\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.BorderFrame:Hide()\n    \nend\n\n\n",
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.BorderFrame:Hide()\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --border color\n    local borderColor = \"yellow\"\n    \n    --size of the border\n    local borderSize = 1\n    \n    --transparency\n    local borderAlpha = 1\n    \n    --enabled (set to false it you only want to use the extra border in other scripts)\n    local isEnabled = true\n    \n    --export border (allow the border to be used by other scripts)\n    --other scripts can use:\n    --unitFrame.healthBar.extraBorder:Show()\n    --unitFrame.healthBar.extraBorder:SetVertexColor (r, g, b)\n    --unitFrame.healthBar.extraBorder:SetBorderSizes (borderSize)\n    local canExportBorder = true\n    \n    --do not add the border to personal bar\n    local noPersonalBar = true\n    \n    --private\n    do\n        \n        local newBorder = CreateFrame (\"frame\", nil, unitFrame.healthBar, \"NamePlateFullBorderTemplate\")\n        envTable.BorderFrame = newBorder\n        \n        newBorder:SetBorderSizes (borderSize, borderSize, borderSize, borderSize)\n        newBorder:UpdateSizes()\n        \n        local r, g, b = DetailsFramework:ParseColors (borderColor)\n        newBorder:SetVertexColor (r, g, b, borderAlpha)\n        \n        envTable.ShowOnPersonalBar = not noPersonalBar\n        \n        if (canExportBorder) then\n            unitFrame.healthBar.extraBorder = newBorder\n        end\n        \n        if (not isEnabled) then\n            envTable.IsEnabled = false\n        else\n            envTable.IsEnabled = true\n        end\n    end\n    \nend\n\n\n",
					},
					["Time"] = 1547409079,
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["race"] = {
						},
						["encounter_ids"] = {
						},
						["affix"] = {
						},
					},
					["url"] = "",
					["Icon"] = 133689,
					["Enabled"] = false,
					["Revision"] = 176,
					["semver"] = "",
					["Author"] = "Tecno-Azralon",
					["Desc"] = "Add another border with more customizations. This border can also be manipulated by other scripts.",
					["version"] = -1,
					["PlaterCore"] = 1,
					["Options"] = {
					},
					["HooksTemp"] = {
					},
					["Name"] = "Extra Border [Plater]",
				}, -- [3]
				{
					["OptionsValues"] = {
					},
					["LastHookEdited"] = "",
					["Hooks"] = {
						["Leave Combat"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end    \n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat) then\n            envTable.HideNameplate (unitFrame)\n        end\n    end\nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end\n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat and InCombatLockdown()) then\n            return\n        end\n        \n        envTable.HideNameplate (unitFrame)\n    end\n    \nend\n\n\n\n\n\n\n",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end    \n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat and InCombatLockdown()) then\n            return\n        end\n        \n        --check the unit reaction\n        if (unitFrame.namePlateIsTarget) then\n            envTable.ShowNameplate (unitFrame)\n            \n        else\n            envTable.HideNameplate (unitFrame)\n            \n        end    \n    end\n    \nend\n\n\n\n\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        envTable.ShowNameplate (unitFrame)\n    end\n    \nend\n\n\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --when plater finishes an update on the nameplate\n    --check within the envTable if the healthBar of this nameplate should be hidden\n    if (envTable.IsHidden) then\n        if (unitFrame.healthBar:IsShown()) then\n            envTable.HideNameplate (unitFrame)\n        end\n    end\n    \nend\n\n\n\n\n",
						["Enter Combat"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end    \n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat) then\n            envTable.ShowNameplate (unitFrame)\n        end\n    end\nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.OnlyInOpenWorld = true;\n    envTable.ShowInCombat = true;\n    \n    --consts\n    envTable.REACTION_NEUTRAL = 4;\n    \n    --functions to hide and show the healthBar\n    function envTable.HideNameplate (unitFrame)\n        Plater.HideHealthBar (unitFrame)\n        Plater.DisableHighlight (unitFrame)\n        envTable.IsHidden = true\n    end\n    \n    function envTable.ShowNameplate (unitFrame)\n        Plater.ShowHealthBar (unitFrame)\n        Plater.EnableHighlight (unitFrame)\n        envTable.IsHidden = false\n    end\n    \nend\n\n\n\n\n",
					},
					["Time"] = 1541606242,
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["race"] = {
						},
						["encounter_ids"] = {
						},
						["affix"] = {
						},
					},
					["url"] = "",
					["Icon"] = 1990989,
					["Enabled"] = false,
					["Revision"] = 73,
					["semver"] = "",
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Hide neutral units, show when selected, see the constructor script for options.",
					["version"] = -1,
					["PlaterCore"] = 1,
					["Options"] = {
					},
					["HooksTemp"] = {
					},
					["Name"] = "Hide Neutral Units [Plater]",
				}, -- [4]
				{
					["OptionsValues"] = {
					},
					["LastHookEdited"] = "",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.TemptingSiren) then\n        \n        if (envTable.Colors.TemptingSiren) then\n            Plater.SetNameplateColor (unitFrame, envTable.Colors.TemptingSiren)\n        end\n        \n    end\n    \n    \nend\n\n\n\n\n\n\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.TemptingSiren) then\n        \n        if (envTable.NameplateHeight.TemptingSiren) then\n            \n            Plater.SetNameplateSize (unitFrame, nil, envTable.NameplateHeight.TemptingSiren)\n            \n        end\n        \n    end    \n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --nameplate colors for unit\n    envTable.Colors = {}\n    envTable.Colors.TemptingSiren = \"orange\"\n    \n    --npcID\n    envTable.NpcIDs = {}\n    envTable.NpcIDs.TemptingSiren = 146436\n    \n    --nameplate height for each unit\n    envTable.NameplateHeight = {}\n    envTable.NameplateHeight.TemptingSiren = 18\n    \n    \n    \nend\n\n\n",
					},
					["Time"] = 1548117267,
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["race"] = {
						},
						["encounter_ids"] = {
							["1"] = 2280,
							["Enabled"] = true,
						},
						["affix"] = {
						},
					},
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\encounter_stormwall_blockade",
					["Enabled"] = false,
					["Revision"] = 55,
					["semver"] = "",
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Script for Stormwall Blockade encounter on Battle for Dazzar'alor",
					["version"] = -1,
					["PlaterCore"] = 1,
					["Options"] = {
					},
					["HooksTemp"] = {
					},
					["Name"] = "Stormwall Encounter [Plater]",
				}, -- [5]
				{
					["OptionsValues"] = {
					},
					["LastHookEdited"] = "",
					["Hooks"] = {
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --Unexploded Ordinance\n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.UnexplodedOrdinance) then\n        \n        --make the life percent be bigger than the regular size\n        --so it's better to see the health percent of the barrel\n        local currentSize = Plater.db.profile.plate_config.enemynpc.percent_text_size\n        Plater:SetFontSize (unitFrame.healthBar.lifePercent, currentSize + envTable.UnexplodedOrdinanceTextSizeIncrease)\n    end\n    \n    if (envTable.IncreaseSize [unitFrame.namePlateNpcId]) then\n        local currentHeight = unitFrame.healthBar:GetHeight()\n        Plater.SetNameplateSize (unitFrame, nil, currentHeight + envTable.IncreaseSize [unitFrame.namePlateNpcId])\n    end\n    \nend\n\n\n\n\n\n\n",
						["Cast Start"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.UnexplodedOrdinanceCast and envTable._SpellID == envTable.UnexplodedOrdinanceSpellID) then\n        Plater.SetCastBarSize (unitFrame, nil, envTable.UnexplodedOrdinanceCastBarHeight)\n        Plater:SetFontSize (unitFrame.castBar.percentText, envTable.UnexplodedOrdinanceTimerSize)\n    end\nend\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    --reset the health percent text size\n    local currentSize = Plater.db.profile.plate_config.enemynpc.percent_text_size\n    Plater:SetFontSize (unitFrame.healthBar.lifePercent, currentSize)    \n    \nend\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --Override the color\n    if (envTable.Colors [unitFrame.namePlateNpcId]) then\n        Plater.SetNameplateColor (unitFrame, envTable.Colors [unitFrame.namePlateNpcId])\n    end    \n    \n    --Show the name of the unit in the Ice Block nameplate\n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.IceBlock) then\n        --find which player this block are holding\n        for i = 1, GetNumGroupMembers() do\n            local unit = \"raid\" .. i\n            if (UnitExists (unit)) then\n                for debuffId = 1, 40 do\n                    local name, texture, count, debuffType, duration, expirationTime, caster = UnitDebuff (unit, debuffId)\n                    \n                    --cancel the loop if there's no more debuffs on the player\n                    if (not name) then \n                        break \n                    end                    \n                    \n                    --check if who casted this debuff is the unit shown on this nameplate\n                    if (UnitIsUnit (caster or \"\", unitId)) then\n                        local unitName = UnitName (unit)\n                        \n                        --color the text by the class\n                        unitName = Plater.SetTextColorByClass (unit, unitName)\n                        \n                        --add the role icon\n                        if (Details) then\n                            local role = UnitGroupRolesAssigned (unit)\n                            unitName = Details:AddRoleIcon (unitName, role, 12)\n                        end\n                        \n                        unitFrame.unitName:SetText (unitName)\n                        unitFrame.castBar.Text:SetText (unitName)\n                        break\n                    end\n                    \n                end\n            else\n                break\n            end\n        end\n    end\nend",
						["Cast Stop"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.UnexplodedOrdinanceCast and envTable._SpellID == envTable.UnexplodedOrdinanceSpellID) then\n        Plater.SetCastBarSize (unitFrame)\n        Plater:SetFontSize (unitFrame.castBar.percentText, Plater.db.profile.plate_config.enemynpc.spellpercent_text_size)\n    end\nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --nameplate colors for unit\n    envTable.Colors = {}\n    envTable.Colors [148631] = \"orange\" --Unexploded Ordinance\n    envTable.Colors [148522] = \"white\" --Ice Block\n    \n    --increase the nameplate height for these units\n    envTable.IncreaseSize = {}\n    envTable.IncreaseSize [148522] = 4 --Ice Block (increase in 4 pixels)\n    \n    --increase the size of the life percent for the nameplate of the barrel\n    envTable.UnexplodedOrdinanceTextSizeIncrease = 3\n    \n    --increase the castbar size for the unexploded ordinance explosion cast\n    envTable.UnexplodedOrdinanceCast = true\n    envTable.UnexplodedOrdinanceSpellID = 288221 --12058 --(debug)\n    envTable.UnexplodedOrdinanceCastBarHeight = 18\n    envTable.UnexplodedOrdinanceTimerSize = 18\n    \n    --npcIDs\n    envTable.NpcIDs = {}\n    envTable.NpcIDs.UnexplodedOrdinance = 148631\n    envTable.NpcIDs.IceBlock = 148522\nend\n\n--tests 126023 --harbor saurid - dazar'alor harbor\n--tests 3127 venomtail scorpid - durotar\n--tests 12058 dustwind storm witch - durotar\n--Load Condition: EncounterID 2281\n\n\n",
					},
					["Time"] = 1548612537,
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["race"] = {
						},
						["encounter_ids"] = {
							["1"] = 2281,
							["Enabled"] = true,
						},
						["affix"] = {
						},
					},
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\encounter_jaina",
					["Enabled"] = false,
					["Revision"] = 220,
					["semver"] = "",
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Script for the Jaina encounter on Battle for Dazzar'alor",
					["version"] = -1,
					["PlaterCore"] = 1,
					["Options"] = {
					},
					["HooksTemp"] = {
					},
					["Name"] = "Jaina Encounter [Plater]",
				}, -- [6]
				{
					["OptionsValues"] = {
					},
					["LastHookEdited"] = "",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (envTable.UseCustomExecutePercent) then\n        \n        --manual detection\n        local healthBar = unitFrame.healthBar\n        if (healthBar.CurrentHealth / healthBar.CurrentHealthMax <= envTable.ExecutePercent) then\n            envTable.UnitInExecuteRange (unitFrame)\n        end        \n        \n    else\n        \n        --auto detection\n        if (unitFrame.InExecuteRange) then\n            envTable.UnitInExecuteRange (unitFrame)\n        end\n        \n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --execute detection, if true the script will handle the execute percent\n    --while false Plater will automatically trigger the execute range\n    --you only want to set this to true in case of Plater not detecting the execute range correctly\n    envTable.UseCustomExecutePercent = false\n    --execute percent, if not detecting automatic, this is the percent to active the execute range\n    --use from zero to one, 0.20 is equal to 20% of the unit life\n    envTable.ExecutePercent = 0.20\n    \n    --allow this script to change the nameplate color when the unit is in execute range\n    envTable.CanChangeColor = true\n    --change the health bar color to this color when the unit is in execute range\n    --color can be set as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}\n    envTable.ExecuteColor = \"green\"\n    \n    --border color\n    envTable.CanChangeBorderColor = false\n    envTable.BorderColor = \"red\"\n    \n    --hide the default health divisor and the health execute indicator\n    envTable.HideHealthDivisor = false\n    --if not hidden, adjust the health divisor settings and the health execute indicator\n    envTable.HealthDivisorAlpha = 0.5\n    envTable.HealthDivisorColor = \"white\"\n    envTable.HealthExecuteIndicatorAlpha = 0.15\n    envTable.HealthExecuteIndicatorColor = \"darkred\"\n    \n    \n    --private (internal functions)\n    do\n        function envTable.UnitInExecuteRange (unitFrame)\n            --check if can change the execute color\n            if (envTable.CanChangeColor) then\n                Plater.SetNameplateColor (unitFrame, envTable.ExecuteColor)\n            end\n            \n            if (envTable.CanChangeBorderColor) then\n                Plater.SetBorderColor (unitFrame, envTable.BorderColor)\n            end\n            \n            if (envTable.HideHealthDivisor) then\n                unitFrame.healthBar.healthCutOff:Hide() \n                unitFrame.healthBar.executeRange:Hide()\n                \n            else\n                envTable.UpdateHealthDivisor (unitFrame)\n                \n            end\n        end\n        \n        function envTable.UpdateHealthDivisor (unitFrame)\n            local healthBar = unitFrame.healthBar\n            \n            healthBar.healthCutOff:Show()\n            healthBar.healthCutOff:SetVertexColor (DetailsFramework:ParseColors (envTable.HealthDivisorColor))\n            healthBar.healthCutOff:SetAlpha (envTable.HealthDivisorAlpha)\n            \n            healthBar.executeRange:Show()\n            healthBar.executeRange:SetVertexColor (DetailsFramework:ParseColors (envTable.HealthExecuteIndicatorColor))\n            healthBar.executeRange:SetAlpha (envTable.HealthExecuteIndicatorAlpha)\n            \n            if (envTable.UseCustomExecutePercent) then\n                healthBar.healthCutOff:ClearAllPoints()\n                healthBar.executeRange:ClearAllPoints()\n                \n                healthBar.healthCutOff:SetSize (healthBar:GetHeight(), healthBar:GetHeight())\n                healthBar.healthCutOff:SetPoint (\"center\", healthBar, \"left\", healthBar:GetWidth() * envTable.ExecutePercent, 0)\n                \n                healthBar.executeRange:SetTexCoord (0, envTable.ExecutePercent, 0, 1)\n                healthBar.executeRange:SetHeight (healthBar:GetHeight())\n                healthBar.executeRange:SetPoint (\"left\", healthBar, \"left\", 0, 0)\n                healthBar.executeRange:SetPoint (\"right\", healthBar.healthCutOff, \"center\")\n            end\n            \n        end\n    end\n    \nend",
					},
					["Time"] = 1547406548,
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["race"] = {
						},
						["encounter_ids"] = {
						},
						["affix"] = {
						},
					},
					["url"] = "",
					["Icon"] = 135358,
					["Enabled"] = false,
					["Revision"] = 84,
					["semver"] = "",
					["Author"] = "Ahwa-Azralon",
					["Desc"] = "Add extra effects to execute range. See the constructor script for options.",
					["version"] = -1,
					["PlaterCore"] = 1,
					["Options"] = {
					},
					["HooksTemp"] = {
					},
					["Name"] = "Execute Range [Plater]",
				}, -- [7]
				{
					["OptionsValues"] = {
					},
					["LastHookEdited"] = "",
					["Hooks"] = {
						["Nameplate Added"] = "\n\n-- exported function Plater.UpdatePlateSize() from Plater.lua\n--this is for advanced users which wants to reorder the nameplate frame at their desire\n\n\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --check if there's a type of unit on this nameplate\n    local plateFrame = unitFrame:GetParent()\n    if (not plateFrame.actorType) then\n        return\n    end\n    \n    --get all the frames and cache some variables\n    local ACTORTYPE_ENEMY_PLAYER = \"enemyplayer\"\n    local profile = Plater.db.profile\n    local DB_PLATE_CONFIG = profile.plate_config\n    local isInCombat = Plater.IsInCombat()\n    local actorType = plateFrame.actorType\n    \n    local unitFrame = plateFrame.unitFrame\n    local healthBar = unitFrame.healthBar\n    local castBar = unitFrame.castBar\n    local powerBar = unitFrame.powerBar\n    local buffFrame1 = unitFrame.BuffFrame\n    local buffFrame2 = unitFrame.BuffFrame2\n    \n    --use in combat bars when in pvp\n    if (plateFrame.actorType == ACTORTYPE_ENEMY_PLAYER) then\n        if ((Plater.ZoneInstanceType == \"pvp\" or Plater.ZoneInstanceType == \"arena\") and DB_PLATE_CONFIG.player.pvp_always_incombat) then\n            isInCombat = true\n        end\n    end\n    \n    --get the config for this actor type\n    local plateConfigs = DB_PLATE_CONFIG [actorType]\n    --get the config key based if the player is in combat\n    local castBarConfigKey, healthBarConfigKey, manaConfigKey = Plater.GetHashKey (isInCombat)\n    \n    --get the width and height from what the user set in the options panel\n    local healthBarWidth, healthBarHeight = unitFrame.customHealthBarWidth or plateConfigs [healthBarConfigKey][1], unitFrame.customHealthBarHeight or plateConfigs [healthBarConfigKey][2]\n    local castBarWidth, castBarHeight = unitFrame.customCastBarWidth or plateConfigs [castBarConfigKey][1], unitFrame.customCastBarHeight or plateConfigs [castBarConfigKey][2]\n    local powerBarWidth, powerBarHeight = unitFrame.customPowerBarHeight or plateConfigs [manaConfigKey][1], unitFrame.customPowerBarHeight or plateConfigs [manaConfigKey][2]\n    \n    --calculate the offset for the cast bar, this is done due to the cast bar be anchored to topleft and topright\n    local castBarOffSetX = (healthBarWidth - castBarWidth) / 2\n    local castBarOffSetY = plateConfigs.castbar_offset\n    \n    --calculate offsets for the power bar\n    local powerBarOffSetX = (healthBarWidth - powerBarWidth) / 2\n    local powerBarOffSetY = 0\n    \n    --calculate the size deviation for pets\n    local unitType = Plater.GetUnitType (plateFrame)\n    if (unitType == \"pet\") then\n        healthBarHeight = healthBarHeight * Plater.db.profile.pet_height_scale\n        healthBarWidth = healthBarWidth * Plater.db.profile.pet_width_scale\n        \n    elseif (unitType == \"minus\") then\n        healthBarHeight = healthBarHeight * Plater.db.profile.minor_height_scale\n        healthBarWidth = healthBarWidth * Plater.db.profile.minor_width_scale\n    end\n    \n    --unit frame - is set to be the same size as the plateFrame\n    unitFrame:ClearAllPoints()\n    unitFrame:SetAllPoints()\n    \n    --calculates the health bar anchor points\n    --it will always be placed in the center of the nameplate area (where it accepts mouse clicks) \n    local xOffSet = (plateFrame:GetWidth() - healthBarWidth) / 2\n    local yOffSet = (plateFrame:GetHeight() - healthBarHeight) / 2\n    \n    --set the health bar point\n    healthBar:ClearAllPoints()\n    PixelUtil.SetPoint (healthBar, \"topleft\", unitFrame, \"topleft\", xOffSet + profile.global_offset_x, -yOffSet + profile.global_offset_y)\n    PixelUtil.SetPoint (healthBar, \"bottomright\", unitFrame, \"bottomright\", -xOffSet + profile.global_offset_x, yOffSet + profile.global_offset_y)\n    \n    --set the cast bar point and size\n    castBar:ClearAllPoints()\n    PixelUtil.SetPoint (castBar, \"topleft\", healthBar, \"bottomleft\", castBarOffSetX, castBarOffSetY)\n    PixelUtil.SetPoint (castBar, \"topright\", healthBar, \"bottomright\", -castBarOffSetX, castBarOffSetY)\n    PixelUtil.SetHeight (castBar, castBarHeight)\n    PixelUtil.SetSize (castBar.Icon, castBarHeight, castBarHeight)\n    PixelUtil.SetSize (castBar.BorderShield, castBarHeight * 1.4, castBarHeight * 1.4)\n    \n    --set the power bar point and size\n    powerBar:ClearAllPoints()\n    PixelUtil.SetPoint (powerBar, \"topleft\", healthBar, \"bottomleft\", powerBarOffSetX, powerBarOffSetY)\n    PixelUtil.SetPoint (powerBar, \"topright\", healthBar, \"bottomright\", -powerBarOffSetX, powerBarOffSetY)\n    PixelUtil.SetHeight (powerBar, powerBarHeight)\n    \n    --power bar are hidden by default, show it if there's a custom size for it\n    if (unitFrame.customPowerBarWidth and unitFrame.customPowerBarHeight) then\n        powerBar:SetUnit (unitFrame.unit)\n    end\n    \n    --aura frames\n    local bf1Anchor = Plater.db.profile.aura_frame1_anchor\n    Plater.SetAnchor (buffFrame1, {side = bf1Anchor.side, x = bf1Anchor.x, y = bf1Anchor.y + plateConfigs.buff_frame_y_offset}, unitFrame.healthBar, (Plater.db.profile.aura_grow_direction or 2) == 2)\n    \n    local bf2Anchor = Plater.db.profile.aura_frame2_anchor\n    Plater.SetAnchor (buffFrame2, {side = bf2Anchor.side, x = bf2Anchor.x, y = bf2Anchor.y + plateConfigs.buff_frame_y_offset}, unitFrame.healthBar, (Plater.db.profile.aura2_grow_direction or 2) == 2)\n    \nend\n\n\n",
					},
					["Time"] = 1596791840,
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["race"] = {
						},
						["encounter_ids"] = {
						},
						["affix"] = {
						},
					},
					["url"] = "",
					["Icon"] = 574574,
					["Enabled"] = false,
					["Revision"] = 93,
					["semver"] = "",
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Function Plater.UpdatePlateSize from Plater.lua exported to scritps.",
					["version"] = -1,
					["PlaterCore"] = 1,
					["Options"] = {
					},
					["HooksTemp"] = {
					},
					["Name"] = "Reorder Nameplate [Plater]",
				}, -- [8]
				{
					["OptionsValues"] = {
					},
					["LastHookEdited"] = "",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the GUID of the target of the unit\n    local targetGUID = UnitGUID (unitId .. \"target\")\n    \n    if (targetGUID) then\n        \n        --get the npcID of the target\n        local npcID = Plater.GetNpcIDFromGUID (targetGUID)\n        --check if the npcID of this unit is in the npc list \n        if (envTable.ListOfNpcs [npcID]) then\n            Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [npcID])\n            \n        else\n            --check if the name of ths unit is in the list\n            local unitName = UnitName (unitId .. \"target\")\n            if (envTable.ListOfNpcs [unitName]) then\n                Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [unitName])\n                \n            else\n                --check if the name of the unit in lower case is in the npc list\n                unitName = string.lower (unitName)\n                if (envTable.ListOfNpcs [unitName]) then\n                    Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [unitName])                \n                    \n                end\n            end\n        end\n        \n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --list of npcs and their colors, can be inserted:\n    --name of the unit\n    --name of the unit in lower case\n    --npcID of the unit\n    \n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    \n    envTable.ListOfNpcs = {\n        [61146] = \"olive\", --monk statue npcID\n        [103822] = \"olive\", --druid treant npcID\n        \n    }\n    \n    \nend\n\n\n\n\n",
					},
					["Time"] = 1547993111,
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["race"] = {
						},
						["encounter_ids"] = {
						},
						["affix"] = {
						},
					},
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_attacking_unit",
					["Enabled"] = false,
					["Revision"] = 222,
					["semver"] = "",
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Change the nameplate color if the unit is attacking a specific unit like Monk's Ox Statue or Druid's Treants. You may edit which units it track in the constructor script.",
					["version"] = -1,
					["PlaterCore"] = 1,
					["Options"] = {
					},
					["HooksTemp"] = {
					},
					["Name"] = "Attacking Specific Unit [Plater]",
				}, -- [9]
				{
					["OptionsValues"] = {
					},
					["LastHookEdited"] = "",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --can detect the reaping souls aggro?\n    if (envTable.detectAggro and Plater.IsInCombat()) then\n        \n        --is this npc a reaping soul?\n        if (envTable.npcIDs [unitFrame.namePlateNpcId]) then\n            \n            --check if the mob is attacking the player\n            if (UnitIsUnit (unitFrame.targetUnitID, \"player\")) then\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateAggroColor)\n                \n            else\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateNoAggroColor)\n            end\n            \n        end\n        \n    end\n    \nend",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --when the nameplate is added and the npcID matches, cache the color for the nameplate\n    if (envTable.detectAggro) then\n        if (envTable.npcIDs [unitFrame.namePlateNpcId]) then\n            local profile = Plater.db.profile\n            local role = Plater:GetPlayerRole()\n            \n            if (role == \"TANK\") then\n                envTable.NameplateAggroColor = profile.tank.colors.aggro\n                envTable.NameplateNoAggroColor = profile.tank.colors.noaggro\n            else\n                envTable.NameplateAggroColor = profile.dps.colors.aggro\n                envTable.NameplateNoAggroColor = profile.dps.colors.noaggro\n            end\n            \n        end\n    end\n    \n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --npcs affected by this script\n    \n    envTable.npcIDs = {\n        [148716] = true, --risen soul\n        [148893] = true, --tormented soul\n        [148894] = true, --lost soul\n        \n        [127278] = true, --skittering feeder (tests and debug, also need to disable the load conditions)\n    }\n    \n    --detect aggro, if true it will see which group member the soul is attacking and override the color\n    envTable.detectAggro = true\n    \n    \nend\n\n\n",
					},
					["Time"] = 1549827281,
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
							["Enabled"] = true,
							["party"] = true,
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["race"] = {
						},
						["encounter_ids"] = {
						},
						["affix"] = {
							["Enabled"] = true,
							["117"] = true,
						},
					},
					["url"] = "",
					["Icon"] = 2446016,
					["Enabled"] = false,
					["Revision"] = 37,
					["semver"] = "",
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Tint nameplates of Reaping Soul units (Mythic Dungeon Affix) depending on its target and role of the player",
					["version"] = -1,
					["PlaterCore"] = 1,
					["Options"] = {
					},
					["HooksTemp"] = {
					},
					["Name"] = "M+ Bwonsamdi Reaping",
				}, -- [10]
				{
					["OptionsValues"] = {
					},
					["LastHookEdited"] = "",
					["Hooks"] = {
						["Nameplate Created"] = "function (self, unitId, unitFrame, envTable)\n    \n    --run constructor!\n    --constructor is executed only once when any script of the hook runs.\n    \nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if need update the amount of combo points shown\n    if (envTable.LastPlayerTalentUpdate > envTable.LastUpdate) then\n        envTable.UpdateComboPointAmount()\n    end    \n    \n    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\n        envTable.ComboPointFrame:Show()\n        envTable.UpdateComboPoints()\n        \n    else\n        envTable.ComboPointFrame:Hide()\n    end    \n    \nend\n\n\n",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if this nameplate is the current target\n    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\n        envTable.ComboPointFrame:Show()\n        envTable.UpdateComboPoints()\n    else\n        envTable.ComboPointFrame:Hide()\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Player Power Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\n        envTable.UpdateComboPoints()\n    end\n    \n    \nend\n\n\n\n\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.ComboPointFrame:Hide()\n    \nend\n\n\n",
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.ComboPointFrame:Hide()\n    \nend\n\n\n\n\n",
						["Player Talent Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    --update the amount of comboo points shown when the player changes talents or specialization\n    envTable.UpdateComboPointAmount()\n    \n    --save the time of the last talent change\n    envTable.LastPlayerTalentUpdate = GetTime()\n    \n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    --settings\n    local anchors = {\n        {\"bottom\", unitFrame.healthBar, \"top\", 0, 24},\n    }\n    \n    local sizes = {\n        width = 12,\n        height = 12,\n        scale = 1,\n    }\n    \n    local textures = {\n        backgroundTexture = [[Interface\\PLAYERFRAME\\ClassOverlayComboPoints]],\n        backgroundTexCoords = {0/128, 21/128, 101/128, 122/128},\n        \n        comboPointTexture = [[Interface\\PLAYERFRAME\\ClassOverlayComboPoints]],\n        comboPointTexCoords = {3/128, 18/128, 81/128, 96/128},\n    }\n    \n    local frameLevel = 1000\n    local frameStrata = \"high\"    \n    \n    --private\n    do\n        --store combo points frames on this table\n        envTable.ComboPoints = {}\n        --save when the player changed talents or spec\n        envTable.LastPlayerTalentUpdate = GetTime()\n        --save when this nameplate got a combo point amount and alignment update        \n        \n        --build combo points frame anchor (combo point are anchored to this)\n        if (not unitFrame.PlaterComboPointFrame) then\n            local hostFrame = CreateFrame (\"frame\", nil, unitFrame)\n            hostFrame.ComboPointFramesPool = {}\n            unitFrame.PlaterComboPointFrame = hostFrame\n            envTable.ComboPointFrame = hostFrame\n            envTable.ComboPointFrame:SetScale (sizes.scale)\n            \n            --DetailsFramework:ApplyStandardBackdrop (envTable.ComboPointFrame) --debug anchor size\n            \n            --animations\n            local onPlayShowAnimation = function (animation)\n                --stop the hide animation if it's playing\n                if (animation:GetParent():GetParent().HideAnimation:IsPlaying()) then\n                    animation:GetParent():GetParent().HideAnimation:Stop()\n                end\n                \n                animation:GetParent():Show()\n            end\n            \n            local onPlayHideAnimation = function (animation)\n                --stop the show animation if it's playing\n                if (animation:GetParent():GetParent().ShowAnimation:IsPlaying()) then\n                    animation:GetParent():GetParent().ShowAnimation:Stop()\n                end\n            end        \n            local onStopHideAnimation = function (animation)\n                animation:GetParent():Hide()       \n            end\n            \n            local createAnimations = function (comboPoint)\n                --on show\n                comboPoint.ShowAnimation = Plater:CreateAnimationHub (comboPoint.comboPointTexture, onPlayShowAnimation, nil)\n                Plater:CreateAnimation (comboPoint.ShowAnimation, \"scale\", 1, 0.1, 0, 0, 1, 1)\n                Plater:CreateAnimation (comboPoint.ShowAnimation, \"alpha\", 1, 0.1, .5, 1)\n                Plater:CreateAnimation (comboPoint.ShowAnimation, \"scale\", 2, 0.1, 1.2, 1.2, 1, 1)\n                \n                --on hide\n                comboPoint.HideAnimation = Plater:CreateAnimationHub (comboPoint.comboPointTexture, onPlayHideAnimation, onStopHideAnimation)\n                Plater:CreateAnimation (comboPoint.HideAnimation, \"scale\", 1, 0.1, 1, 1, 0, 0)\n                Plater:CreateAnimation (comboPoint.HideAnimation, \"alpha\", 1, 0.1, 1, 0)\n            end\n            \n            --build combo point frame        \n            for i =1, 10 do \n                local f = CreateFrame (\"frame\", nil, envTable.ComboPointFrame)\n                f:SetSize (sizes.width, sizes.height)\n                tinsert (envTable.ComboPoints, f)\n                tinsert (unitFrame.PlaterComboPointFrame.ComboPointFramesPool, f)\n                \n                local backgroundTexture = f:CreateTexture (nil, \"background\")\n                backgroundTexture:SetTexture (textures.backgroundTexture)\n                backgroundTexture:SetTexCoord (unpack (textures.backgroundTexCoords))\n                backgroundTexture:SetSize (sizes.width, sizes.height)\n                backgroundTexture:SetPoint (\"center\")\n                \n                local comboPointTexture = f:CreateTexture (nil, \"artwork\")\n                comboPointTexture:SetTexture (textures.comboPointTexture)\n                comboPointTexture:SetTexCoord (unpack (textures.comboPointTexCoords))\n                \n                comboPointTexture:SetSize (sizes.width, sizes.height)\n                comboPointTexture:SetPoint (\"center\")\n                comboPointTexture:Hide()            \n                \n                f.IsActive = false\n                \n                f.backgroundTexture = backgroundTexture\n                f.comboPointTexture = comboPointTexture\n                \n                createAnimations (f)\n            end\n            \n        else\n            envTable.ComboPointFrame = unitFrame.PlaterComboPointFrame\n            envTable.ComboPointFrame:SetScale (sizes.scale)\n            envTable.ComboPoints = unitFrame.PlaterComboPointFrame.ComboPointFramesPool\n            \n        end            \n        \n        envTable.ComboPointFrame:SetFrameLevel (frameLevel)\n        envTable.ComboPointFrame:SetFrameStrata (frameStrata)\n        \n        function envTable.UpdateComboPoints()\n            local comboPoints = UnitPower (\"player\", Enum.PowerType.ComboPoints)\n            \n            for i = 1, envTable.TotalComboPoints do\n                local thisComboPoint = envTable.ComboPoints [i]\n                \n                if (i <= comboPoints ) then\n                    --combo point enabled\n                    if (not thisComboPoint.IsActive) then\n                        thisComboPoint.ShowAnimation:Play()\n                        thisComboPoint.IsActive = true\n                        \n                    end\n                    \n                else\n                    --combo point disabled\n                    if (thisComboPoint.IsActive) then\n                        thisComboPoint.HideAnimation:Play()\n                        thisComboPoint.IsActive = false\n                        \n                    end\n                end\n            end\n            \n            \n        end\n        \n        function envTable.UpdateComboPointAmount()\n            local namePlateWidth = Plater.db.profile.plate_config.enemynpc.health_incombat[1]\n            local comboPoints = UnitPowerMax (\"player\", Enum.PowerType.ComboPoints)\n            local reservedSpace = (namePlateWidth - sizes.width * comboPoints)  / comboPoints \n            \n            --store the total amount of combo points\n            envTable.TotalComboPoints = comboPoints\n            \n            --update anchor frame\n            envTable.ComboPointFrame:SetWidth (namePlateWidth)\n            envTable.ComboPointFrame:SetHeight (20)\n            envTable.ComboPointFrame:ClearAllPoints()\n            for i = 1, #anchors do\n                local anchor = anchors[i]\n                envTable.ComboPointFrame:SetPoint (unpack (anchor))\n            end        \n            \n            --\n            for i = 1, #envTable.ComboPoints do\n                envTable.ComboPoints[i]:Hide()\n                envTable.ComboPoints[i]:ClearAllPoints()\n            end\n            \n            for i = 1, comboPoints do\n                local comboPoint = envTable.ComboPoints[i]\n                if i == 1 then\n                    comboPoint:SetPoint (\"left\", envTable.ComboPointFrame, \"left\", reservedSpace/2, 0)\n                else\n                    comboPoint:SetPoint (\"left\", envTable.ComboPoints[i-1], \"right\", reservedSpace, 0)\n                end\n                \n                comboPoint:Show()\n            end\n            \n            envTable.LastUpdate = GetTime()\n            \n            envTable.UpdateComboPoints()\n        end\n        \n        --initialize\n        envTable.UpdateComboPointAmount()\n        envTable.ComboPointFrame:Hide()\n    end\n    \n    \nend",
					},
					["Time"] = 1603567332,
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
							["Enabled"] = true,
							["DRUID"] = true,
							["ROGUE"] = true,
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
							["103"] = true,
							["Enabled"] = true,
						},
						["race"] = {
						},
						["encounter_ids"] = {
						},
						["affix"] = {
						},
					},
					["url"] = "",
					["Icon"] = 135426,
					["Enabled"] = false,
					["Revision"] = 254,
					["semver"] = "",
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Show combo points above the nameplate for Druid Feral and Rogues.",
					["version"] = -1,
					["PlaterCore"] = 1,
					["Options"] = {
					},
					["HooksTemp"] = {
					},
					["Name"] = "Combo Points [Plater]",
				}, -- [11]
				{
					["OptionsValues"] = {
					},
					["LastHookEdited"] = "",
					["Hooks"] = {
						["Leave Combat"] = "function (self, unitId, unitFrame, envTable)\n    envTable.CanShow = false;\n    envTable.TargetAmount:SetText (\"\")\nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --when a nameplate is added to the screen check if the player is in combat\n    if (InCombatLockdown()) then\n        --player is in combat, check if can check amount of targets\n        envTable.CanShow = envTable.CanShowTargetAmount();\n        \n    else\n        envTable.CanShow = false; \n    end\n    \n    envTable.TargetAmount:SetText (\"\");\n    \nend",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.TargetAmount:SetText (\"\");\n    envTable.CanShow = false;\n    \nend\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --if the script is allowed to show the amount of targets\n    --also check if the unit is in combat\n    if (envTable.CanShow and UnitAffectingCombat (unitId)) then\n        \n        --check if can update the amount of targets following the cooldown set in the constructor script\n        --by default Plater updates the nameplate every 250ms, by default the cooldown is 2, so it'll update the amuont of target every 1/2 of a second\n        envTable.UpdateCooldown = envTable.UpdateCooldown + 1\n        if (envTable.UpdateCooldown < envTable.UpdateInterval) then\n            return\n        else\n            \n            --reset the cooldown interval to check the amount of target again\n            envTable.UpdateCooldown = 0\n            \n            --get the amount of targets\n            local amount;\n            if (envTable.InRaid) then\n                amount = envTable.NumTargetsInRaid (unitFrame)      \n                \n            elseif (envTable.InParty) then\n                amount = envTable.NumTargetsInParty (unitFrame)   \n                \n            else\n                envTable.TargetAmount:SetText (\"\")\n                return\n            end\n            \n            --update the amount text\n            if (amount == 0) then\n                envTable.TargetAmount:SetText (\"\")\n            else\n                envTable.TargetAmount:SetText (amount)\n            end\n            \n        end\n    end\nend\n\n\n",
						["Enter Combat"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can show the amount of targets\n    envTable.CanShow = envTable.CanShowTargetAmount();\n    \n    if (not envTable.CanShow) then\n        envTable.TargetAmount:SetText (\"\") \n    end\nend\n\n\n\n\n",
						["Constructor"] = "--all gray text like this are comments and do not run as code\n--build the settings and basic functions for the hook\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --declare setting variables:\n    local textColor = \"orange\";\n    local textSize = 12;\n    \n    local showInRaid = true;\n    local showInDungeon = true;\n    local showInArena = false;\n    local showInBattleground = false;\n    local showInOpenWorld = true;\n    \n    envTable.UpdateInterval = 2; --each 2 updates in the nameplate it'll update the amount of targets\n    \n    local anchor = {\n        side = 6, --1 = topleft 2 = left 3 = bottomleft 4 = bottom 5 = bottom right 6 = right 7 = topright 8 = top\n        x = 4, --x offset\n        y = 0, --y offset\n    };\n    \n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------\n    \n    \n    --frames:\n    \n    --create the text that will show the amount of people targeting the unit\n    if (not  unitFrame.healthBar.TargetAmount) then\n        envTable.TargetAmount = Plater:CreateLabel (unitFrame.healthBar, \"\", textSize, textColor);\n        Plater.SetAnchor (envTable.TargetAmount, anchor);\n        unitFrame.healthBar.TargetAmount = envTable.TargetAmount\n    end\n    \n    --in case Plater wipes the envTable\n    envTable.TargetAmount = unitFrame.healthBar.TargetAmount\n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------           \n    --private variables (they will be used in the other scripts within this hook)\n    envTable.CanShow = false;\n    envTable.UpdateCooldown = 0;\n    envTable.InRaid = false;\n    envTable.InParty = false;\n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------           \n    --functions\n    \n    --update the InRaid or InParty proprieties\n    function envTable.UpdateGroupType()\n        if (IsInRaid()) then\n            envTable.InRaid = true;\n            envTable.InParty = false;     \n            \n        elseif (IsInGroup()) then\n            envTable.InRaid = false;\n            envTable.InParty = true;   \n            \n        else\n            envTable.InRaid = false;            \n            envTable.InParty = false;\n        end\n    end\n    \n    --this function controls if the amount of targets can show following the settings in the top of this script\n    function envTable.CanShowTargetAmount()\n        \n        local _, instanceType, difficultyID, _, _, _, _, instanceMapID, instanceGroupSize = GetInstanceInfo()\n        \n        if (showInRaid and instanceType == \"raid\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInDungeon and instanceType == \"party\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInArena and instanceType == \"arena\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInBattleground and instanceType == \"pvp\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInOpenWorld and instanceType == \"none\") then\n            envTable.UpdateGroupType()\n            if (envTable.InRaid or envTable.InParty) then\n                return true\n            end\n        end\n        \n        return false\n    end\n    \n    --get the amount of player targetting the unit in raid or party\n    function envTable.NumTargetsInRaid (unitFrame)\n        local amount = 0\n        for i = 1, GetNumGroupMembers() do\n            local unit = \"raid\" .. i .. \"target\"\n            if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\n                amount = amount + 1\n            end\n        end\n        \n        return amount\n    end\n    \n    function envTable.NumTargetsInParty()\n        local amount = 0\n        for i = 1, GetNumGroupMembers() - 1 do\n            local unit = \"party\" .. i .. \"target\"\n            if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\n                amount = amount + 1\n            end\n        end\n        \n        local unit = \"playertarget\"\n        if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\n            amount = amount + 1\n        end        \n        \n        return amount\n    end\n    \nend",
					},
					["Time"] = 1548278227,
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["race"] = {
						},
						["encounter_ids"] = {
						},
						["affix"] = {
						},
					},
					["url"] = "",
					["Icon"] = 1966587,
					["Enabled"] = false,
					["Revision"] = 182,
					["semver"] = "",
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Show how many raid members are targeting the unit",
					["version"] = -1,
					["PlaterCore"] = 1,
					["Options"] = {
					},
					["HooksTemp"] = {
					},
					["Name"] = "Players Targeting a Target [Plater]",
				}, -- [12]
				{
					["OptionsValues"] = {
					},
					["LastHookEdited"] = "",
					["Hooks"] = {
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    envTable.UpdateColor (unitFrame)\nend",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    envTable.UpdateColor (unitFrame)\nend",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    envTable.UpdateColor (unitFrame)\nend\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --usage: color name e.g \"red\" \"yellow\"; color table e.g {1, 0, 0} {1, 1, 0}; hex string e.g. \"#FF0000\" \"FFFF00\"\n    \n    envTable.TargetColor = \"purple\"\n    --envTable.TargetColor = \"#FF00FF\"\n    --envTable.TargetColor = {252/255, 0/255, 254/255}\n    \n    function envTable.UpdateColor (unitFrame)\n        --do not change the color of the personal bar\n        if (not unitFrame.IsSelf) then\n            \n            --if this nameplate the current target of the player?\n            if (unitFrame.namePlateIsTarget) then\n                Plater.SetNameplateColor (unitFrame, envTable.TargetColor)  --rgb\n            else\n                --refresh the nameplate color\n                Plater.RefreshNameplateColor (unitFrame)\n            end\n        end\n    end\n    \nend\n\n\n\n\n",
					},
					["Time"] = 1552354619,
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["race"] = {
						},
						["encounter_ids"] = {
						},
						["affix"] = {
						},
					},
					["url"] = "",
					["Icon"] = 878211,
					["Enabled"] = false,
					["Revision"] = 93,
					["semver"] = "",
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Changes the target color to the color set in the constructor script.",
					["version"] = -1,
					["PlaterCore"] = 1,
					["Options"] = {
					},
					["HooksTemp"] = {
					},
					["Name"] = "Current Target Color [Plater]",
				}, -- [13]
				{
					["OptionsValues"] = {
					},
					["LastHookEdited"] = "",
					["Hooks"] = {
						["Initialization"] = "function (modTable)\n    \n    --ATTENTION: after enabling this mod, you may have to adjust the anchor point at the Buff Settings tab\n    \n    local sortByTime = false\n    local invertSort = false\n    \n    --which auras goes first, assign a value (any number), bigger value goes first\n    local priority = {\n        [\"Vampiric Touch\"] = 50,\n        [\"Shadow Word: Pain\"] = 22,\n        [\"Mind Flay\"] = 5,\n        [\"Pistol Shot\"] = 50,\n        [\"Marked for Death\"] = 99,\n    }\n    \n    -- Sort function - do not touch\n    Plater.db.profile.aura_sort = true\n    \n    \n    function Plater.AuraIconsSortFunction (aura1, aura2)\n        local p1 = priority[aura1.SpellId] or priority[aura1.SpellName] or 1\n        local p2 = priority[aura2.SpellId] or priority[aura2.SpellName] or 1\n        \n        if sortByTime and p1 == p2 then\n            if invertSort then\n                return (aura1.Duration == 0 and 99999999 or aura1.RemainingTime or 0) > (aura2.Duration == 0 and 99999999 or aura2.RemainingTime or 0)\n            else\n                return (aura1.Duration == 0 and 99999999 or aura1.RemainingTime or 0) < (aura2.Duration == 0 and 99999999 or aura2.RemainingTime or 0)\n            end\n        else\n            if invertSort then\n                 return p1 < p2\n            else\n                return p1 > p2\n            end\n        end\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					},
					["Time"] = 1608663128,
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["affix"] = {
						},
						["race"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura_reorder",
					["Enabled"] = false,
					["Revision"] = 356,
					["semver"] = "",
					["Author"] = "Ditador-Azralon",
					["Desc"] = "Reorder buffs and debuffs following the settings set in the constructor.",
					["Name"] = "Aura Reorder [Plater]",
					["PlaterCore"] = 1,
					["Options"] = {
					},
					["HooksTemp"] = {
					},
					["version"] = -1,
				}, -- [14]
				{
					["OptionsValues"] = {
					},
					["HooksTemp"] = {
					},
					["Hooks"] = {
						["Cast Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateBorder (unitFrame)\n    \nend\n\n\n",
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.castBar.CastBarBorder) then\n        unitFrame.castBar.CastBarBorder:Hide()\n    end    \nend",
						["Cast Start"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateBorder (unitFrame)\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    \n    --hide the icon of the spell, may require /reload after changing\n    envTable.HideIcon = false\n    \n    --border settings\n    envTable.BorderThickness = .5\n    envTable.BorderColor = \"black\"\n    \n    --private\n    --create the border\n    if (not unitFrame.castBar.CastBarBorder) then\n        unitFrame.castBar.CastBarBorder = CreateFrame (\"frame\", nil, unitFrame.castBar, \"NamePlateFullBorderTemplate\")\n    end    \n    \n    --update the border\n    function envTable.UpdateBorder (unitFrame)\n        local castBar = unitFrame.castBar\n        \n        local r, g, b, a = DetailsFramework:ParseColors (envTable.BorderColor)\n        castBar.CastBarBorder:SetVertexColor (r, g, b, a)\n        \n        local size = envTable.BorderThickness\n        castBar.CastBarBorder:SetBorderSizes (size, size, size, size)\n        castBar.CastBarBorder:UpdateSizes()        \n        \n        if (envTable.HideIcon) then\n            castBar.Icon:Hide()\n        end\n        \n        castBar.CastBarBorder:Show()\n    end\n    \nend\n\n\n\n\n",
					},
					["Time"] = 1604959626,
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["race"] = {
						},
						["encounter_ids"] = {
						},
						["affix"] = {
						},
					},
					["url"] = "https://wago.io/c0XUQAYJq/2",
					["Icon"] = 133004,
					["Enabled"] = true,
					["Revision"] = 100,
					["semver"] = "1.0.1",
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Adds a pixels perfect border around the cast bar.",
					["Prio"] = 99,
					["version"] = 2,
					["PlaterCore"] = 1,
					["Options"] = {
					},
					["LastHookEdited"] = "",
					["Name"] = "Cast Bar Border",
				}, -- [15]
				{
					["OptionsValues"] = {
					},
					["HooksTemp"] = {
					},
					["Hooks"] = {
						["Nameplate Created"] = "function (self, unitId, unitFrame, envTable)\n    \n    -- /RELOAD AFTER IMPORTING OR CHANGING THE SCRIPT\n    -- SELECT THE INDICATOR AT THE TARGET TAB\n    \n    Plater.TargetIndicators    [\"Double Arrows\"] = {\n        path = [[Interface\\AddOns\\Plater\\media\\arrow_double_right_64]],\n        coords = {\n            {0, 1, 0, 1}, \n            {1, 0, 0, 1}\n        },\n        desaturated = false,\n        width = 20,\n        height = 13,\n        x = 17,\n        y = 0,\n        blend = \"ADD\",\n        color = \"white\",\n    }    \n    \nend\n\n\n",
					},
					["Time"] = 1599238269,
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["race"] = {
						},
						["encounter_ids"] = {
						},
						["affix"] = {
						},
					},
					["url"] = "https://wago.io/f5itAXjQq/1",
					["Icon"] = "Interface\\AddOns\\Plater\\media\\arrow_double_right_64",
					["Enabled"] = false,
					["Revision"] = 75,
					["semver"] = "1.0.0",
					["Author"] = "�r��ne-Kel'thuzad",
					["Desc"] = "Adds double arrow as a target indicators option",
					["Prio"] = 99,
					["version"] = 1,
					["PlaterCore"] = 1,
					["Options"] = {
					},
					["LastHookEdited"] = "Nameplate Created",
					["Name"] = "Double Arrow Target",
				}, -- [16]
				{
					["OptionsValues"] = {
					},
					["HooksTemp"] = {
					},
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --border thickness\n    local size = .5 \n    \n    for index, auraIcon in ipairs (unitFrame.BuffFrame.PlaterBuffList) do\n        if (auraIcon:IsShown()) then\n            \n            if (not auraIcon.PixelPerfectBorder) then\n                auraIcon.PixelPerfectBorder = CreateFrame (\"frame\", nil, auraIcon, \"NamePlateFullBorderTemplate\")\n            end\n            \n            local r, g, b = auraIcon:GetBackdropBorderColor()\n            auraIcon:SetBackdropBorderColor (0, 0, 0, 0)\n            \n            auraIcon.PixelPerfectBorder:SetVertexColor (r, g, b)\n            auraIcon.PixelPerfectBorder:SetBorderSizes (size, size, size, size)\n            auraIcon.PixelPerfectBorder:UpdateSizes()\n            \n            auraIcon.Icon:ClearAllPoints()\n            auraIcon.Icon:SetAllPoints()\n            \n            auraIcon.Border:Hide() --hide plater default border\n        end\n    end\n    \n    for index, auraIcon in ipairs (unitFrame.BuffFrame2.PlaterBuffList) do\n        if (auraIcon:IsShown()) then\n            \n            if (not auraIcon.PixelPerfectBorder) then\n                auraIcon.PixelPerfectBorder = CreateFrame (\"frame\", nil, auraIcon, \"NamePlateFullBorderTemplate\")\n            end\n            \n            local r, g, b = auraIcon:GetBackdropBorderColor()\n            auraIcon:SetBackdropBorderColor (0, 0, 0, 0)\n            \n            auraIcon.PixelPerfectBorder:SetVertexColor (r, g, b)\n            auraIcon.PixelPerfectBorder:SetBorderSizes (size, size, size, size)\n            auraIcon.PixelPerfectBorder:UpdateSizes()            \n            \n            auraIcon.Icon:ClearAllPoints()\n            auraIcon.Icon:SetAllPoints()\n            \n            auraIcon.Border:Hide() --hide plater default border\n        end\n    end    \nend",
					},
					["Time"] = 1601398582,
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["race"] = {
						},
						["encounter_ids"] = {
						},
						["affix"] = {
						},
					},
					["url"] = "https://wago.io/N9tiB9mO2/1",
					["Icon"] = 133006,
					["Enabled"] = true,
					["Revision"] = 123,
					["semver"] = "1.0.0",
					["Author"] = "????????-Illidan",
					["Desc"] = "Config aura borders",
					["Prio"] = 99,
					["version"] = 1,
					["PlaterCore"] = 1,
					["Options"] = {
					},
					["LastHookEdited"] = "Nameplate Updated",
					["Name"] = "Advanced Debuff Border",
				}, -- [17]
				{
					["OptionsValues"] = {
					},
					["HooksTemp"] = {
					},
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --    if false then return end\n    \n    for _, iconFrame in ipairs (unitFrame.ExtraIconFrame.IconPool) do\n        \n        unitFrame.ExtraIconFrame.options.show_text = true\n        \n        local profile = Plater.db.profile\n        \n        Plater.SetAnchor (iconFrame.CountdownText, profile.aura_timer_text_anchor)\n        Plater:SetFontSize (iconFrame.CountdownText, profile.aura_timer_text_size)\n        Plater:SetFontFace (iconFrame.CountdownText, profile.aura_timer_text_font)\n        \n        Plater.SetFontOutlineAndShadow (iconFrame.CountdownText, profile.aura_timer_text_outline, profile.aura_timer_text_shadow_color, profile.aura_timer_text_shadow_color_offset[1], profile.aura_timer_text_shadow_color_offset[2])\n        \n        iconFrame.Cooldown:SetEdgeTexture (profile.aura_cooldown_edge_texture)\n        iconFrame.Cooldown:SetReverse (profile.aura_cooldown_reverse)\n        iconFrame.Cooldown:SetDrawSwipe (profile.aura_cooldown_show_swipe)        \n        \n    end\n    \nend",
					},
					["Time"] = 1601398576,
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["race"] = {
						},
						["encounter_ids"] = {
						},
						["affix"] = {
						},
					},
					["url"] = "https://wago.io/ndcoHm6Zl/1",
					["Icon"] = 136139,
					["Enabled"] = true,
					["Revision"] = 84,
					["semver"] = "1.0.0",
					["Author"] = "?????-Illidan",
					["Desc"] = "Format Buff Special icons like the regular aura icons.",
					["Prio"] = 99,
					["version"] = 1,
					["PlaterCore"] = 1,
					["Options"] = {
					},
					["LastHookEdited"] = "",
					["Name"] = "Buff Special Mod",
				}, -- [18]
				{
					["OptionsValues"] = {
					},
					["HooksTemp"] = {
					},
					["Hooks"] = {
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    envTable.UpdateBorder (unitFrame)\nend\n\n\n",
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.healthBar.TargetBorder) then\n        unitFrame.healthBar.TargetBorder:Hide()\n    end\nend",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    envTable.UpdateBorder (unitFrame)\nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --border options\n    local borderSize = 1.5\n    local borderColor = \"white\"\n    \n    if (not unitFrame.healthBar.TargetBorder) then\n        unitFrame.healthBar.TargetBorder = CreateFrame (\"frame\", nil, unitFrame.healthBar, \"NamePlateFullBorderTemplate\")\n    end\n    \n    function envTable.UpdateBorder (unitFrame)\n        if (UnitIsUnit (\"target\", unitFrame.unit)) then               \n            local r, g, b, a = DetailsFramework:ParseColors (borderColor)\n            unitFrame.healthBar.TargetBorder:SetVertexColor (r, g, b, a)\n            \n            unitFrame.healthBar.TargetBorder:SetBorderSizes (borderSize, borderSize, borderSize, borderSize)\n            unitFrame.healthBar.TargetBorder:UpdateSizes()            \n            \n            unitFrame.healthBar.TargetBorder:Show()\n        else\n            unitFrame.healthBar.TargetBorder:Hide()\n        end\n    end\nend",
					},
					["Time"] = 1599237567,
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["race"] = {
						},
						["encounter_ids"] = {
						},
						["affix"] = {
						},
					},
					["url"] = "https://wago.io/targetborder/1",
					["Icon"] = "Interface\\CHATFRAME\\UI-ChatInputBorder",
					["Enabled"] = false,
					["Revision"] = 58,
					["semver"] = "1.0.0",
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Add a border around the current target.",
					["Prio"] = 99,
					["version"] = 1,
					["PlaterCore"] = 1,
					["Options"] = {
					},
					["LastHookEdited"] = "Target Changed",
					["Name"] = "Target Border",
				}, -- [19]
				{
					["OptionsValues"] = {
					},
					["HooksTemp"] = {
					},
					["Hooks"] = {
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable, modTable)\n    envTable.UpdateBorder (unitFrame, false)\nend\n\n\n\n\n",
						["Cast Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateIconPosition (unitFrame)\n    --self.ThrottleUpdate = -1\n    \nend\n\n\n",
						["Cast Start"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateIconPosition (unitFrame)\n    envTable.UpdateBorder (unitFrame, true)\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings:\n    --show cast icon\n    envTable.ShowIcon = Plater.db.profile.castbar_icon_show --true\n    --anchor icon on what side\n    envTable.IconAnchor = \"left\" --accep 'left' 'right'\n    --fine tune the size of the icon\n    envTable.IconSizeOffset = 0\n    \n    --shield for non interruptible casts\n    envTable.ShowShield = true\n    envTable.ShieldTexture = [[Interface\\GROUPFRAME\\UI-GROUP-MAINTANKICON]]\n    envTable.ShieldDesaturated = true\n    envTable.ShieldColor = {1, 1, 1 ,1}\n    envTable.ShieldSize = {10, 12}\n    \n    --private:\n    function envTable.UpdateIconPosition (unitFrame)\n        local castBar = unitFrame.castBar\n        local icon = castBar.Icon\n        local shield = castBar.BorderShield\n        \n        if (envTable.ShowIcon) then\n            icon:ClearAllPoints()\n            \n            if (envTable.IconAnchor == \"left\") then\n                icon:SetPoint (\"topright\", unitFrame.healthBar, \"topleft\", 0, envTable.IconSizeOffset)\n                icon:SetPoint (\"bottomright\", unitFrame.castBar, \"bottomleft\", 0, 0)    \n                \n            elseif (envTable.IconAnchor == \"right\") then\n                icon:SetPoint (\"topleft\", unitFrame.healthBar, \"topright\", 0, envTable.IconSizeOffset)\n                icon:SetPoint (\"bottomleft\", unitFrame.castBar, \"bottomright\", 0, 0)\n                \n            end\n            \n            icon:SetWidth (icon:GetHeight())\n            icon:Show()\n            \n        else\n            icon:Hide()\n            \n        end\n        \n        if (envTable.ShowShield and not castBar.canInterrupt) then\n            shield:Show()\n            shield:SetAlpha (1)\n            shield:SetTexCoord (0, 1, 0, 1)\n            shield:SetVertexColor (1, 1, 1, 1)\n            \n            shield:SetTexture (envTable.ShieldTexture)\n            shield:SetDesaturated (envTable.ShieldDesaturated)\n            \n            if (not envTable.ShieldDesaturated) then\n                shield:SetVertexColor (DetailsFramework:ParseColors (envTable.ShieldColor))\n            end\n            \n            shield:SetSize (unpack (envTable.ShieldSize))\n            \n            shield:ClearAllPoints()\n            shield:SetPoint (\"center\", castBar, \"left\", 0, 0)\n            \n        else\n            shield:Hide()\n            \n        end\n        \n    end\n    \n    function envTable.UpdateBorder (unitFrame, casting)\n        local healthBar = unitFrame.healthBar\n        local castBar = unitFrame.castBar\n        --casting = not casting == false or  ((castBar.casting or castBar.channeling) and not (castBar.interrupted or castBar.failed))\n        \n        if casting then\n            if envTable.ShowIcon and castBar.Icon:IsShown() then\n                if envTable.IconAnchor == \"left\" then\n                    healthBar.border:SetPoint(\"TOPLEFT\", castBar.Icon, \"TOPLEFT\", 0, 0)\n                    healthBar.border:SetPoint(\"BOTTOMRIGHT\", castBar, \"BOTTOMRIGHT\", 0, 0)\n                elseif envTable.IconAnchor == \"right\" then\n                    healthBar.border:SetPoint(\"TOPRIGHT\", castBar.Icon, \"TOPRIGHT\", 0, 0)\n                    healthBar.border:SetPoint(\"BOTTOMLEFT\", castBar, \"BOTTOMLEFT\", 0, 0) \n                end\n            else\n                if envTable.IconAnchor == \"left\" then\n                    healthBar.border:SetPoint(\"TOPLEFT\", healthBar, \"TOPLEFT\", 0, 0)\n                    healthBar.border:SetPoint(\"BOTTOMRIGHT\", castBar, \"BOTTOMRIGHT\", 0, 0)\n                elseif envTable.IconAnchor == \"right\" then\n                    healthBar.border:SetPoint(\"TOPRIGHT\", healthBar, \"TOPRIGHT\", 0, 0)\n                    healthBar.border:SetPoint(\"BOTTOMLEFT\", castBar, \"BOTTOMLEFT\", 0, 0) \n                end\n            end\n        else\n            if envTable.IconAnchor == \"left\" then\n                healthBar.border:SetPoint(\"TOPLEFT\", healthBar, \"TOPLEFT\", 0, 0)\n                healthBar.border:SetPoint(\"BOTTOMRIGHT\", healthBar, \"BOTTOMRIGHT\", 0, 0)\n            elseif envTable.IconAnchor == \"right\" then\n                healthBar.border:SetPoint(\"TOPRIGHT\", healthBar, \"TOPRIGHT\", 0, 0)\n                healthBar.border:SetPoint(\"BOTTOMLEFT\", healthBar, \"BOTTOMLEFT\", 0, 0) \n            end\n        end\n    end\n    \n    if not unitFrame.castBar.borderChangeHooked then\n        hooksecurefunc(unitFrame.castBar, \"Hide\", function() envTable.UpdateBorder(unitFrame, false) end)\n        unitFrame.castBar.borderChangeHooked = true\n    end\n    \nend",
					},
					["Time"] = 1607693198,
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["race"] = {
						},
						["encounter_ids"] = {
						},
						["affix"] = {
						},
					},
					["url"] = "https://wago.io/mEN8Q6zUa/10",
					["Icon"] = "Interface\\Buttons\\UI-Quickslot2",
					["Enabled"] = false,
					["Revision"] = 403,
					["semver"] = "1.0.9",
					["Author"] = "Viash-Thrall",
					["Desc"] = "Move the icon of the spell cast to the left or right side of the nameplate and extend the border around icon + cast bar.",
					["Prio"] = 99,
					["version"] = 10,
					["PlaterCore"] = 1,
					["Options"] = {
					},
					["LastHookEdited"] = "Constructor",
					["Name"] = "Cast Icon Anchor + Border",
				}, -- [20]
				{
					["OptionsValues"] = {
					},
					["HooksTemp"] = {
					},
					["Hooks"] = {
						["Player Talent Update"] = "function (self, unitId, unitFrame, envTable)\n    envTable.updateInterruptId (unitFrame)\nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    envTable.setCastColorFunction (unitFrame)\nend\n\n\n",
						["Cast Update"] = "function (self, unitId, unitFrame, envTable)\n    unitFrame.castBar:UpdateCastColor()\nend",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    -- settings:\n    local noKickReadyColor = \"blue\"\n    local kickReadyInTimeColor = \"purple\"\n    local kickReadyInTimeGraceTime = 0.5 --sec - additional time on the CD to account for reaction, lag, etc\n    \n    \n    -- functions:\n    \n    -- determine interrupt spell according to spec\n    function envTable.updateInterruptId (unitFrame)\n        local specId = GetSpecializationInfo(GetSpecialization())\n        local interruptId = nil\n        if Plater.PlayerClass == \"ROGUE\" then\n            interruptId = 1766\n        elseif Plater.PlayerClass == \"DEATHKNIGHT\" then\n            interruptId = 47528\n        elseif Plater.PlayerClass == \"DEMONHUNTER\" then\n            interruptId = 183752\n        elseif Plater.PlayerClass == \"DRUID\" then\n            if specId == 103 or specId == 104 then\n                interruptId = 106839 -- feral/guardian\n            elseif specId == 102 then\n                interruptId = 78675 -- moonkin\n            end\n        elseif Plater.PlayerClass == \"HUNTER\" then\n            if specId == 255 then\n                interruptId = 187707 -- SV\n            else\n                interruptId = 147362 -- BM/MS\n            end\n        elseif Plater.PlayerClass == \"MONK\" then\n            if specId == 268 or specId == 269 then\n                interruptId = 116705 --WW/BM\n            end\n        elseif Plater.PlayerClass == \"PALADIN\" then\n            if specId == 66 or specId == 70 then\n                interruptId = 96231 --prot/ret\n            end\n        elseif Plater.PlayerClass == \"SHAMAN\" then\n            interruptId = 57994\n        elseif Plater.PlayerClass == \"WARRIOR\" then\n            interruptId = 6552\n        elseif Plater.PlayerClass == \"MAGE\" then\n            interruptId = 2139\n        elseif Plater.PlayerClass == \"PRIEST\" then\n            if specId == 258 then\n                interruptId = 15487\n            end\n        end\n        unitFrame.castBar.interruptSpellId = interruptId\n    end\n    \n    function envTable.setCastColorFunction (unitFrame)\n        -- overwrite the color function:\n        unitFrame.castBar.GetCastColor = function (self)\n            \n            --print(self.interruptSpellId and select(2, GetSpellCooldown(self.interruptSpellId)) > 0 )\n            local interruptCD = 0\n            if self.interruptSpellId then\n                local cdStart, cdDur =  GetSpellCooldown(self.interruptSpellId)\n                interruptCD = (cdStart > 0 and  cdDur - (GetTime() - cdStart)) or 0\n            end\n            --print(interruptCD,  interruptCD < (self.maxValue - self.value))\n            \n            if (not self.canInterrupt) then\n                return self.Colors.NonInterruptible\n                \n            elseif (self.failed) then\n                return self.Colors.Failed\n                \n            elseif (self.interrupted) then\n                return self.Colors.Interrupted\n                \n            elseif (self.finished) then\n                return self.Colors.Finished\n                \n            elseif interruptCD > 0 and  (interruptCD + kickReadyInTimeGraceTime) < (self.maxValue - self.value) then\n                return kickReadyInTimeColor\n                \n            elseif interruptCD > 0 then\n                return noKickReadyColor\n                \n            elseif (self.channeling) then\n                return self.Colors.Channeling\n                \n            else        \n                return self.Colors.Casting\n                \n            end\n        end\n    end\n    \n    envTable.updateInterruptId(unitFrame)\n    envTable.setCastColorFunction (unitFrame)\n    \nend",
					},
					["Time"] = 1599864715,
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["race"] = {
						},
						["encounter_ids"] = {
						},
						["affix"] = {
						},
					},
					["url"] = "https://wago.io/jHilJiXiY/10",
					["Icon"] = 132219,
					["Enabled"] = false,
					["Revision"] = 215,
					["semver"] = "1.0.9",
					["Author"] = "Viashi-Antonidas",
					["Desc"] = "Sets the cast bar color to the specified one if your interrupt spell is not ready. Uses other Plater color settings otherwise.",
					["Prio"] = 99,
					["version"] = 10,
					["PlaterCore"] = 1,
					["Options"] = {
					},
					["LastHookEdited"] = "Constructor",
					["Name"] = "Interrupt not ready Cast Color",
				}, -- [21]
				{
					["OptionsValues"] = {
					},
					["LastHookEdited"] = "Initialization",
					["Hooks"] = {
						["Initialization"] = "function (modTable)\n    --insert code here\n    \nend",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable, modTable)\n    --insert code here\n    unitFrame.castBar.ScheduleToHide = function (self) self:Hide() end\n    \nend",
					},
					["Time"] = 1601398639,
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["race"] = {
						},
						["encounter_ids"] = {
						},
						["affix"] = {
						},
					},
					["url"] = "https://wago.io/xz2wiexbc/1",
					["Enabled"] = false,
					["Revision"] = 16,
					["semver"] = "1.0.0",
					["Author"] = "Caeleran-Draenor",
					["Desc"] = "",
					["Prio"] = 99,
					["version"] = 1,
					["PlaterCore"] = 1,
					["Options"] = {
					},
					["HooksTemp"] = {
					},
					["Name"] = "CastbarDisappearOnInterrupt",
				}, -- [22]
				{
					["OptionsValues"] = {
					},
					["HooksTemp"] = {
					},
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    local text = unitFrame.healthBar.unitName:GetText()\n    \n    local  FirstName  = { [144747] = true, -- pakus-aspect\n        [144767]  = true, -- gonks-aspect\n        [144963]  = true, -- kimbuls-aspect\n        [144941] = true,  -- akundas-aspect\n        [148894] = true, -- lost-soul\n        [148716] = true, -- risen-soul\n        [148893] = true, -- tormented-soul\n        [135989] = true, -- shieldbearer-of-zul\n        [127879] = true, -- shieldbearer-of-zul\n        [131527] = true, -- lord-waycrest\n        [131545] = true, -- lady-waycrest\n        [131863] = true, -- raal\n        [144324] = true, -- gorak-tul\n        [127484] = true, -- jes-howlis\n        [130655] = true, -- bobby-howlis\n        [155432] = true, -- enchanted-emissary\n        [155433] = true, -- void-touched-emissary\n        [135764] = true, --  explosive-totem\n        [135761] = true, -- thundering-totem\n        [135765] = true, -- torrent-totem\n        [135759] = true, --earthwall-totem\n        [134993] = true, -- mchimba\n        [137614] = true, -- demolishing\n        [137405] = true} -- gripping\n    \n    \n    if (text) then\n        local  a ,b, c ,d ,e ,f=  strsplit(\" \",text,5)   \n        if not FirstName [unitFrame.namePlateNpcId] then \n            unitFrame.healthBar.unitName:SetText (f or e or d or c or b or a)  \n        else\n            unitFrame.healthBar.unitName:SetText (a) \n        end\n    end    \n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n",
					},
					["Time"] = 1592918446,
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
							["Enabled"] = true,
							["party"] = true,
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["race"] = {
						},
						["encounter_ids"] = {
						},
						["affix"] = {
						},
					},
					["url"] = "https://wago.io/_XZ_PFQet/1",
					["Icon"] = 134331,
					["Enabled"] = false,
					["Revision"] = 137,
					["semver"] = "1.0.0",
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Show Last Name only.",
					["Prio"] = 99,
					["version"] = 1,
					["PlaterCore"] = 1,
					["Options"] = {
					},
					["LastHookEdited"] = "Nameplate Updated",
					["Name"] = "Last Name Only",
				}, -- [23]
				{
					["OptionsValues"] = {
					},
					["HooksTemp"] = {
					},
					["Hooks"] = {
						["Cast Update"] = "function (self, unitId, unitFrame, envTable, modTable)\n    envTable.UpdateCastBarName(unitId, unitFrame.castBar)\nend\n\n\n",
						["Cast Start"] = "function (self, unitId, unitFrame, envTable, modTable)\n    envTable.UpdateCastBarName(unitId, unitFrame.castBar)\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable, modTable)\n    \n    --percent of total cast bar size, default: 60% spell name\n    local spellNameSize = 0.60\n    \n    --update function\n    function envTable.UpdateCastBarName(unitId, castBar)\n        --do nothing if interrupted\n        if castBar.IsInterrupted then\n            return\n            \n        end\n        \n        --get the target's unitId \n        local targetUnitId = unitId .. \"target\"\n        \n        --does the unit exists?\n        if (UnitExists(targetUnitId)) then\n            \n            --get the target name\n            local targetName = UnitName(targetUnitId)\n            \n            --does the target name exists?\n            if (targetName) then\n                --get the current spell name\n                local spellName = castBar.SpellName\n                --reset the text in the cast bar\n                castBar.Text:SetText(spellName)\n                \n                --paint the target name with the player's class color\n                local targetNameByColor = Plater.SetTextColorByClass (targetUnitId, targetName)\n                \n                --castbar width\n                local castBarWidth = castBar:GetWidth()\n                DetailsFramework:TruncateText (castBar.Text, castBarWidth * spellNameSize)\n                \n                --set the new text in the castbar spell name fontstring\n                local currentText = castBar.Text:GetText()\n                castBar.Text:SetText(currentText .. \" >> \" .. targetNameByColor .. \"\")\n                DetailsFramework:TruncateText (castBar.Text, castBarWidth)                \n            end\n        end\n    end\n    \nend\n\n\n\n\n\n\n\n\n",
					},
					["Time"] = 1604962083,
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["race"] = {
						},
						["encounter_ids"] = {
						},
						["affix"] = {
						},
					},
					["url"] = "https://wago.io/pj8kSlqkK/2",
					["Icon"] = 2126355,
					["Enabled"] = true,
					["Revision"] = 77,
					["semver"] = "1.0.1",
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Show the cast target name with the spell name",
					["Prio"] = 99,
					["version"] = 2,
					["PlaterCore"] = 1,
					["Options"] = {
					},
					["LastHookEdited"] = "Constructor",
					["Name"] = "Cast Target on Spell Name",
				}, -- [24]
				{
					["OptionsValues"] = {
						["showIcon"] = false,
						["showTexture"] = false,
						["iconSizeOffset"] = 0,
						["iconOnLeftSide"] = true,
						["useFullSize"] = false,
						["iconPadding"] = 0,
					},
					["HooksTemp"] = {
					},
					["Hooks"] = {
						["Cast Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateIconPosition (unitFrame)\n    self.ThrottleUpdate = -1\n    \nend\n\n\n",
						["Cast Start"] = "function (self, unitId, unitFrame, envTable)\n    \n    unitFrame.castBar.BorderShield:SetDrawLayer(\"artwork\")\n    envTable.UpdateIconPosition (unitFrame)\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable, modTable)\n    \n    --private:\n    function envTable.UpdateIconPosition (unitFrame)\n        local castBar = unitFrame.castBar\n        local icon = castBar.Icon\n        local noInterruptTexture = castBar.BorderShield\n        \n        if (modTable.config.showIcon) then\n            icon:ClearAllPoints()\n            \n            if (modTable.config.iconOnLeftSide) then\n                if (modTable.config.useFullSize) then\n                    icon:SetPoint (\"topright\", unitFrame.healthBar, \"topleft\", modTable.config.iconPadding, modTable.config.iconSizeOffset)\n                    icon:SetPoint (\"bottomright\", unitFrame.castBar, \"bottomleft\", modTable.config.iconPadding, -modTable.config.iconSizeOffset)\n                    \n                else\n                    \n                    icon:SetPoint (\"topright\", unitFrame.castBar, \"topleft\", modTable.config.iconPadding, modTable.config.iconSizeOffset)\n                    icon:SetPoint (\"bottomright\", unitFrame.castBar, \"bottomleft\", modTable.config.iconPadding, -modTable.config.iconSizeOffset)\n                end\n                \n            else\n                if (modTable.config.useFullSize) then\n                    icon:SetPoint (\"topleft\", unitFrame.healthBar, \"topright\", modTable.config.iconPadding, modTable.config.iconSizeOffset)\n                    icon:SetPoint (\"bottomleft\", unitFrame.castBar, \"bottomright\", modTable.config.iconPadding, -modTable.config.iconSizeOffset)\n                    \n                else\n                    \n                    icon:SetPoint (\"topleft\", unitFrame.castBar, \"topright\", modTable.config.iconPadding, modTable.config.iconSizeOffset)\n                    icon:SetPoint (\"bottomleft\", unitFrame.castBar, \"bottomright\", modTable.config.iconPadding, -modTable.config.iconSizeOffset)\n                end\n            end\n            \n            icon:SetWidth (icon:GetHeight())\n            icon:Show()\n        else\n            icon:Hide()\n        end\n        \n        if (modTable.config.showTexture and not castBar.canInterrupt) then\n            noInterruptTexture:Show()\n            \n            local texturePath = modTable.config.iconTexturePath\n            texturePath = texturePath:gsub(\"//\", \"/\")\n            texturePath = texturePath:gsub(\"\\\\\", \"/\")\n            \n            noInterruptTexture:SetTexture (texturePath)\n            noInterruptTexture:SetTexCoord (0, 1, 0, 1)\n            \n            if (modTable.config.desaturatedTexture) then\n                noInterruptTexture:SetDesaturated (modTable.config.desaturatedTexture)\n            else\n                noInterruptTexture:SetVertexColor (DetailsFramework:ParseColors (modTable.config.textureColor))\n            end\n            \n            noInterruptTexture:SetSize (modTable.config.textureWidth, castBar:GetHeight() + modTable.config.textureHeightMod)\n            noInterruptTexture:ClearAllPoints()\n            noInterruptTexture:SetPoint (\"center\", castBar, \"left\", modTable.config.texturePosition, 0)\n            noInterruptTexture:SetAlpha (modTable.config.textureAlpha)\n        else\n            noInterruptTexture:Hide()\n        end\n    end\nend",
					},
					["Time"] = 1601398429,
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["race"] = {
						},
						["encounter_ids"] = {
						},
						["affix"] = {
						},
					},
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\castbar_icon",
					["Enabled"] = false,
					["Revision"] = 378,
					["semver"] = "",
					["Author"] = "Ditador-Azralon",
					["Desc"] = "Move the icon of the spell cast to the left or right side of the nameplate.",
					["Prio"] = 99,
					["version"] = -1,
					["PlaterCore"] = 1,
					["Options"] = {
						{
							["Type"] = 5,
							["Key"] = "option4",
							["Value"] = "Icon Settings:",
							["Name"] = "Icon Settings",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 4,
							["Key"] = "showIcon",
							["Value"] = true,
							["Name"] = "Show Icon",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "Show the castbar icon when enabled",
						}, -- [2]
						{
							["Type"] = 4,
							["Key"] = "iconOnLeftSide",
							["Value"] = true,
							["Name"] = "Icon on Left Side",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "If enabled it anchor the icon on the left side, right otherwise",
						}, -- [3]
						{
							["Type"] = 4,
							["Key"] = "useFullSize",
							["Value"] = false,
							["Name"] = "Use Big Icon",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "If enabled the icon has the size of the cast bar plus the healthbar",
						}, -- [4]
						{
							["Type"] = 2,
							["Max"] = 5,
							["Desc"] = "Fine tune the icon size",
							["Min"] = 0,
							["Key"] = "iconSizeOffset",
							["Value"] = 0,
							["Fraction"] = true,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Icon Size Offset",
						}, -- [5]
						{
							["Type"] = 2,
							["Max"] = 5,
							["Desc"] = "Space between the icon and the cast bar",
							["Min"] = -5,
							["Key"] = "iconPadding",
							["Value"] = 0,
							["Fraction"] = false,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Icon Padding",
						}, -- [6]
						{
							["Type"] = 6,
							["Key"] = "option6",
							["Value"] = 0,
							["Name"] = "Blank Space",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [7]
						{
							["Type"] = 5,
							["Key"] = "option5",
							["Value"] = "Can't Interrupt Texture:",
							["Name"] = "Interrupt Texture",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [8]
						{
							["Type"] = 4,
							["Key"] = "showTexture",
							["Value"] = true,
							["Name"] = "Show Texture",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "If enabled show a texture to tell the cast can't be interrupted",
						}, -- [9]
						{
							["Type"] = 3,
							["Key"] = "iconTexturePath",
							["Value"] = "Interface\\GROUPFRAME\\UI-GROUP-MAINTANKICON",
							["Name"] = "Texture Path",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_text",
							["Desc"] = "Insert the path for the texture",
						}, -- [10]
						{
							["Type"] = 4,
							["Key"] = "desaturatedTexture",
							["Value"] = true,
							["Name"] = "Texture Desaturated",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "If enbaled, texture is shown in black & white",
						}, -- [11]
						{
							["Type"] = 1,
							["Key"] = "textureColor",
							["Value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0.30567157268524, -- [4]
							},
							["Name"] = "Texture Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "Select the color of the texture",
						}, -- [12]
						{
							["Type"] = 2,
							["Max"] = 32,
							["Desc"] = "Adjust the texture width",
							["Min"] = 1,
							["Key"] = "textureWidth",
							["Value"] = 10,
							["Fraction"] = false,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Texture Width",
						}, -- [13]
						{
							["Type"] = 2,
							["Max"] = 16,
							["Desc"] = "The texture is set to be the same size as the cast bar, fine tune the height as wanted",
							["Min"] = -16,
							["Key"] = "textureHeightMod",
							["Value"] = 0,
							["Fraction"] = true,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Texture Height Mod",
						}, -- [14]
						{
							["Type"] = 2,
							["Max"] = 32,
							["Desc"] = "Adjust the texture position",
							["Min"] = -32,
							["Key"] = "texturePosition",
							["Value"] = 0,
							["Fraction"] = false,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Texture Position",
						}, -- [15]
						{
							["Type"] = 2,
							["Max"] = 1,
							["Desc"] = "Adjust the texture transparency",
							["Min"] = 0,
							["Key"] = "textureAlpha",
							["Value"] = 1,
							["Fraction"] = true,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Texture Alpha",
						}, -- [16]
					},
					["LastHookEdited"] = "",
					["Name"] = "Cast Bar Icon Settings [P]",
				}, -- [25]
				{
					["OptionsValues"] = {
					},
					["HooksTemp"] = {
					},
					["Hooks"] = {
						["Nameplate Created"] = "function (self, unitId, unitFrame, envTable, modTable)\n    unitFrame.ExtraIconFrame:SetOption (\"text_size\", 50)\n    unitFrame.ExtraIconFrame:SetOption (\"desc_text_size\", 30)\n    unitFrame.ExtraIconFrame:SetOption (\"stack_text_size\", 30)\n    \nend\n\n\n\n\n",
					},
					["Time"] = 1598132652,
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["race"] = {
						},
						["encounter_ids"] = {
						},
						["affix"] = {
						},
					},
					["url"] = "https://wago.io/b0I5w30RR/1",
					["Icon"] = 134328,
					["Enabled"] = false,
					["Revision"] = 32,
					["semver"] = "1.0.0",
					["Author"] = "Driani-Antonidas",
					["Desc"] = "",
					["Prio"] = 99,
					["version"] = 1,
					["PlaterCore"] = 1,
					["Options"] = {
					},
					["LastHookEdited"] = "Nameplate Created",
					["Name"] = "Buff Special Text Size",
				}, -- [26]
				{
					["OptionsValues"] = {
					},
					["HooksTemp"] = {
					},
					["Hooks"] = {
						["Target Changed"] = "function (self, unitId, unitFrame, envTable, modTable)\n    \n    local color = \"white\"\n    \n    if not unitFrame.extraTargetGlow_MOD then\n        local glow = unitFrame.healthBar:CreateTexture (nil, \"background\", nil, - 8)\n        glow:SetTexture ([[Interface\\AddOns\\Plater\\images\\nameplate_glow2]])\n        -- PixelUtil.SetPoint (glow, \"center\", unitFrame.healthBar, \"center\", 0, 0)\n        --glow:SetSize (unitFrame.healthBar:GetWidth() + unitFrame.healthBar:GetWidth()/2.3, 36)\n        glow:SetBlendMode (\"ADD\")\n        glow:SetVertexColor (DetailsFramework:ParseColors (color or \"white\"))\n        glow:SetTexCoord(34/256, 20/64, 34/256, 44/64, 222/256, 20/64, 222/256, 44/64)\n        unitFrame.extraTargetGlow_MOD = glow\n        \n    end\n    \n    \n    if unitFrame.IsTarget then\n        unitFrame.extraTargetGlow_MOD:Show()\n        \n        local PixelUtil = PixelUtil or DFPixelUtil\n        local width, height = unitFrame.healthBar:GetSize()\n        local bsize = unitFrame.healthBar.border:IsShown() and unitFrame.healthBar.border.borderSize or 0\n        local widthOffset = (4 + bsize or 0) * width/188 --unitFrame.healthBar:GetWidth() / 0.1\n        local heightOffset = (4 + bsize or 0) * height/28  --unitFrame.healthBar:GetHeight() / 0.1\n        \n        unitFrame.extraTargetGlow_MOD:ClearAllPoints()\n        unitFrame.extraTargetGlow_MOD:SetParent(unitFrame.healthBar)\n        PixelUtil.SetPoint (unitFrame.extraTargetGlow_MOD, \"topleft\", unitFrame.healthBar, \"topleft\", -widthOffset, heightOffset)\n        PixelUtil.SetPoint (unitFrame.extraTargetGlow_MOD, \"bottomright\", unitFrame.healthBar, \"bottomright\", widthOffset, -heightOffset)\n        PixelUtil.SetPoint (unitFrame.extraTargetGlow_MOD, \"bottomleft\", unitFrame.healthBar, \"bottomleft\", -widthOffset, -heightOffset)\n        PixelUtil.SetPoint (unitFrame.extraTargetGlow_MOD, \"topright\", unitFrame.healthBar, \"topright\", widthOffset, heightOffset)\n    else\n        unitFrame.extraTargetGlow_MOD:Hide()\n    end\n    \nend",
					},
					["Time"] = 1603303602,
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["race"] = {
						},
						["encounter_ids"] = {
						},
						["affix"] = {
						},
					},
					["url"] = "https://wago.io/nwGoQyQ9q/9",
					["Icon"] = 413591,
					["Enabled"] = false,
					["Revision"] = 234,
					["semver"] = "1.0.8",
					["Author"] = "Viashi-Antonidas",
					["Desc"] = "Adds a highlight glow to your target.",
					["Prio"] = 99,
					["version"] = 9,
					["PlaterCore"] = 1,
					["Options"] = {
					},
					["LastHookEdited"] = "Target Changed",
					["Name"] = "Target Highlight Glow",
				}, -- [27]
				{
					["HooksTemp"] = {
					},
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    envTable.CheckAggro (unitFrame)\nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    envTable.CheckAggro (unitFrame)\nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    function envTable.CheckAggro (unitFrame)\n        --if the player isn't in combat, ignore this check\n        if (not Plater.IsInCombat()) then\n            return\n        end\n        \n        --if this unit isn't in combat, ignore\n        if (not unitFrame.InCombat) then\n            return \n        end\n        \n        --player is a tank?\n        if (Plater.PlayerIsTank) then\n            --player isn't tanking this unit?\n            if (not unitFrame.namePlateThreatIsTanking) then\n                --check if a second tank is tanking it\n                if (Plater.ZoneInstanceType == \"raid\") then\n                    --return a list with the name of tanks in the raid\n                    local tankPlayersInTheRaid = Plater.GetTanks()\n                    \n                    --get the target name of this unit\n                    local unitTargetName = UnitName (unitFrame.targetUnitID)\n                    \n                    --check if the unit isn't targeting another tank in the raid and paint the color\n                    if (not tankPlayersInTheRaid [unitTargetName]) then\n                        Plater.SetNameplateColor (unitFrame, Plater.db.profile.tank.colors.noaggro)\n                    else\n                        --another tank is tanking this unit\n                        --do nothing\n                    end\n                    \n                else\n                    Plater.SetNameplateColor (unitFrame, Plater.db.profile.tank.colors.noaggro)\n                end\n            end\n            \n        else\n            --player is a dps or healer\n            if (unitFrame.namePlateThreatIsTanking) then\n                Plater.SetNameplateColor (unitFrame, Plater.db.profile.dps.colors.aggro)\n            end\n            \n        end        \n    end\nend\n\n\n\n\n\n\n",
					},
					["Time"] = 1600691511,
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["race"] = {
						},
						["encounter_ids"] = {
						},
						["affix"] = {
						},
					},
					["url"] = "https://wago.io/id_wRWfKp/2",
					["Icon"] = "Interface\\AddOns\\Plater\\media\\checked_64",
					["Enabled"] = false,
					["Revision"] = 30,
					["semver"] = "1.0.1",
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "When a mob is attacking you, force show the threat color. For tanks, force threat color if the mob is not attacking you.",
					["Prio"] = 99,
					["Name"] = "Force Threat Color",
					["PlaterCore"] = 1,
					["LastHookEdited"] = "Constructor",
					["version"] = 2,
				}, -- [28]
				{
					["OptionsValues"] = {
						["CBIPadding"] = -1,
						["CBIconSizeOffset"] = 0,
						["CBIinside"] = true,
						["ShowCBShield"] = false,
						["CBIbig"] = false,
					},
					["HooksTemp"] = {
					},
					["Hooks"] = {
						["Cast Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    self.Spark:SetHeight (self:GetHeight())\n    envTable.UpdateCastBar (unitFrame)\n    self.ThrottleUpdate = -1\n    \nend\n\n\n",
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.castBar.CastBarBorder) then\n        unitFrame.castBar.CastBarBorder:Hide()\n    end    \n    \n    if (unitFrame.castBar.IconOverlayFrame) then\n        unitFrame.castBar.IconOverlayFrame:Hide()\n    end\n    \nend\n\n\n\n\n",
						["Cast Start"] = "function (self, unitId, unitFrame, envTable)\n    \n    self.Spark:SetHeight (self:GetHeight())\n    envTable.UpdateCastBar (unitFrame)\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable, modTable)\n    \n    local healthBar = unitFrame.healthBar\n    local castBar = unitFrame.castBar\n    local icon = castBar.Icon\n    local shield = castBar.BorderShield\n    \n    local r, g, b, a = DetailsFramework:ParseColors (modTable.config.CBBorderColor)\n    local size = modTable.config.CBBorderThickness\n    \n    --private\n    function envTable.UpdateCastBar (unitFrame)\n        local Cpadding = 0\n        \n        if unitFrame.ActorType then\n            Cpadding = Plater.db.profile.plate_config[unitFrame.ActorType].castbar_offset\n        end\n        \n        castBar.CastBarBorder:SetVertexColor (r, g, b, a)\n        castBar.CastBarBorder:SetBorderSizes (size, size, size, size)\n        castBar.CastBarBorder:UpdateSizes()  \n        castBar.CastBarBorder:Show()\n        \n        if unitFrame.IsSelf then\n            if (modTable.config.ShowCBIcon and (modTable.config.CBIbig or (not modTable.config.CBIbig and (modTable.config.PRBbigmode or (not modTable.config.PRBbigmode and not modTable.config.CBIinside))))) or not modTable.config.ShowCBIcon then\n                castBar:SetPoint (\"topleft\",  healthBar, \"bottomleft\", 0, Cpadding)\n                castBar:SetPoint (\"topright\", healthBar, \"bottomright\", 0, Cpadding)\n            else            \n                if (modTable.config.CBIconAnchor and not modTable.config.PRBreverse) or (not modTable.config.CBIconAnchor and modTable.config.PRBreverse) then \n                    castBar:SetPoint (\"topleft\", healthBar, \"bottomleft\", size + castBar:GetHeight(), Cpadding)\n                    castBar:SetPoint (\"topright\", healthBar, \"bottomright\", 0, Cpadding)\n                else\n                    castBar:SetPoint (\"topleft\",  healthBar, \"bottomleft\", 0, Cpadding)\n                    castBar:SetPoint (\"topright\", healthBar, \"bottomright\", -(size + castBar:GetHeight()), Cpadding) \n                end\n            end\n        else\n            if (modTable.config.ShowCBIcon and (modTable.config.CBIbig or (not modTable.config.CBIbig and not modTable.config.CBIinside))) or not modTable.config.ShowCBIcon then\n                castBar:SetPoint (\"topleft\",  healthBar, \"bottomleft\", 0, Cpadding)\n                castBar:SetPoint (\"topright\", healthBar, \"bottomright\", 0, Cpadding)\n            else        \n                if modTable.config.CBIconAnchor then \n                    castBar:SetPoint (\"topleft\",  healthBar, \"bottomleft\", size + castBar:GetHeight(), Cpadding)\n                    castBar:SetPoint (\"topright\", healthBar, \"bottomright\", 0, Cpadding)   \n                else    \n                    castBar:SetPoint (\"topleft\",  healthBar, \"bottomleft\", 0, Cpadding)\n                    castBar:SetPoint (\"topright\", healthBar, \"bottomright\", -(size + castBar:GetHeight()), Cpadding) \n                end\n            end\n        end\n        \n        if modTable.config.ShowCBIcon and not (modTable.config.HideCBIooc and not (unitFrame.IsSelf or unitFrame.InCombat)) then\n            envTable.UpdateCBIcon (unitFrame)\n        else\n            icon:Hide()  \n            if castBar.IconOverlayFrame then\n                castBar.IconOverlayFrame:Hide() \n            end\n        end\n        \n        if modTable.config.ShowCBShield and not (castBar.canInterrupt or castBar.interrupted) then\n            envTable.UpdateCBShield (unitFrame)\n        else\n            shield:Hide()\n        end     \n    end\n    \n    function envTable.UpdateCBIcon (unitFrame)\n        local Isize = modTable.config.CBIconSizeOffset    \n        local Ipadding = modTable.config.CBIPadding\n        local frame = castBar\n        \n        if modTable.config.CBIbig or (not modTable.config.CBIbig and unitFrame.IsSelf and modTable.config.PRBbigmode) then\n            frame = healthBar\n        end\n        \n        icon:ClearAllPoints()\n        \n        if unitFrame.IsSelf then\n            local Rvar = 1\n            \n            if modTable.config.PRBreverse then\n                Rvar = -1\n            end\n            \n            if (modTable.config.CBIconAnchor and not modTable.config.PRBreverse) or (not modTable.config.CBIconAnchor and modTable.config.PRBreverse) then\n                icon:SetPoint (\"topright\",  frame, \"topleft\", - Isize + Ipadding * Rvar, Isize)\n                icon:SetPoint (\"bottomright\", castBar, \"bottomleft\", -Isize + Ipadding * Rvar, 0)   \n            else\n                icon:SetPoint (\"topleft\",  frame, \"topright\", Isize + Ipadding * Rvar, Isize)\n                icon:SetPoint (\"bottomleft\", castBar, \"bottomright\", Isize + Ipadding * Rvar, 0)\n            end\n        else\n            if modTable.config.CBIconAnchor then\n                icon:SetPoint (\"topright\",  frame, \"topleft\", -Isize + Ipadding, Isize)\n                icon:SetPoint (\"bottomright\", castBar, \"bottomleft\", -Isize + Ipadding, 0)   \n            else\n                icon:SetPoint (\"topleft\",  frame, \"topright\", Isize + Ipadding, Isize)\n                icon:SetPoint (\"bottomleft\", castBar, \"bottomright\", Isize + Ipadding, 0)\n            end\n        end\n        \n        icon:SetWidth (icon:GetHeight())     \n        castBar.IconBorder:UpdateSizes()\n        castBar.IconBorder:SetBorderSizes (size, size, size, size)\n        castBar.IconBorder:SetVertexColor (r, g, b, a)\n        icon:Show()\n        castBar.IconOverlayFrame:Show()\n    end\n    \n    \n    function envTable.UpdateCBShield (unitFrame)\n        shield:SetTexture ([[Interface\\TargetingFrame\\Nameplates]])\n        shield:SetTexCoord (0.935, 0.98, 0.245, 0.359)\n        shield:SetSize (modTable.config.CBShieldWidth, modTable.config.CBShieldHeight)\n        shield:ClearAllPoints()\n        \n        if modTable.config.CBtextshield then\n            local offset = {x = 0, y = 0, side = 9}\n            if unitFrame.ActorType then\n                offset = Plater.db.profile.plate_config[unitFrame.ActorType].spellname_text_anchor\n            end\n            if (modTable.config.CBShieldAnchor and (not unitFrame.IsSelf or (unitFrame.IsSelf and not modTable.config.PRBreverse))) then\n                Plater.SetAnchor (castBar.Text, {x = offset.x + (modTable.config.CBShieldWidth/4), y = offset.y, side = offset.side})\n                shield:SetPoint (\"RIGHT\", castBar.Text, \"LEFT\", 0, -0.5)\n            else\n                Plater.SetAnchor (castBar.Text, {x = offset.x - (modTable.config.CBShieldWidth/4), y = offset.y, side = offset.side})\n                shield:SetPoint (\"LEFT\", castBar.Text, \"RIGHT\", 0, -0.5)\n            end\n        else\n            if (modTable.config.CBShieldAnchor and (not unitFrame.IsSelf or (unitFrame.IsSelf and not modTable.config.PRBreverse))) then\n                shield:SetPoint (\"RIGHT\", castBar, \"LEFT\", 4, -1)\n            else\n                shield:SetPoint (\"LEFT\", castBar, \"RIGHT\", -4, -1)\n            end\n        end\n        \n        shield:Show()\n    end\n    \n    \n    --create thee border\n    if not unitFrame.castBar.CastBarBorder then\n        unitFrame.castBar.CastBarBorder = CreateFrame (\"frame\", nil, unitFrame.castBar, \"NamePlateFullBorderTemplate\")   \n    end\n    \n    if not unitFrame.castBar.IconOverlayFrame and modTable.config.ShowCBIcon then\n        --icon support frame\n        unitFrame.castBar.IconOverlayFrame = CreateFrame (\"frame\", nil, unitFrame.castBar)\n        unitFrame.castBar.IconOverlayFrame:SetPoint (\"topleft\", unitFrame.castBar.Icon, \"topleft\")\n        unitFrame.castBar.IconOverlayFrame:SetPoint (\"bottomright\", unitFrame.castBar.Icon, \"bottomright\")\n        if modTable.config.ShowCBIcon and modTable.config.CBIinside and not modTable.config.CBIbig then\n            unitFrame.castBar.IconOverlayFrame:SetFrameStrata(\"MEDIUM\")  \n        else\n            unitFrame.castBar.IconOverlayFrame:SetFrameStrata(\"LOW\") \n        end\n        unitFrame.castBar.IconBorder = CreateFrame (\"frame\", nil,  unitFrame.castBar.IconOverlayFrame, \"NamePlateFullBorderTemplate\")\n    end    \n    \nend",
					},
					["Time"] = 1604959644,
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["race"] = {
						},
						["encounter_ids"] = {
						},
						["affix"] = {
						},
					},
					["url"] = "https://wago.io/DbHvO1awZ/18",
					["Icon"] = 1723997,
					["Enabled"] = true,
					["Revision"] = 3053,
					["semver"] = "1.0.17",
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Adds a pixels perfect border around the cast bar spell icon.",
					["Prio"] = 99,
					["version"] = 18,
					["PlaterCore"] = 1,
					["Options"] = {
						{
							["Type"] = 5,
							["Key"] = "",
							["Value"] = "Border Settings",
							["Name"] = "Border Settings",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 2,
							["Max"] = 100,
							["Desc"] = "Set border thickness",
							["Min"] = 0,
							["Key"] = "CBBorderThickness",
							["Value"] = 1,
							["Fraction"] = true,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Border Thickness",
						}, -- [2]
						{
							["Type"] = 1,
							["Key"] = "CBBorderColor",
							["Value"] = {
								0, -- [1]
								0, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Name"] = "Border Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "Set border color",
						}, -- [3]
						{
							["Type"] = 6,
							["Key"] = "",
							["Value"] = 0,
							["Name"] = "Blank",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [4]
						{
							["Type"] = 5,
							["Key"] = "",
							["Value"] = "Icon Settings",
							["Name"] = "Icon Settings",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [5]
						{
							["Type"] = 4,
							["Key"] = "ShowCBIcon",
							["Value"] = true,
							["Name"] = "Show Icon",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "Show icon if checked",
						}, -- [6]
						{
							["Type"] = 4,
							["Key"] = "HideCBIooc",
							["Value"] = true,
							["Name"] = "Hide Icon Out of Combat",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "Hide Cast bar Icon Out of Combat",
						}, -- [7]
						{
							["Type"] = 4,
							["Key"] = "CBIbig",
							["Value"] = true,
							["Name"] = "Big Icon",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "Big Icon Mode",
						}, -- [8]
						{
							["Type"] = 4,
							["Key"] = "CBIinside",
							["Value"] = false,
							["Name"] = "Icon Inside bar",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "Icon do not overlap castbar. Only work with small icon. So disable big Icon want to use it.",
						}, -- [9]
						{
							["Type"] = 4,
							["Key"] = "CBIconAnchor",
							["Value"] = true,
							["Name"] = "Icon Anchor to Left",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "Icon Anchor will be RIGHT when unchecked",
						}, -- [10]
						{
							["Type"] = 2,
							["Max"] = 100,
							["Desc"] = "Set additional icon size",
							["Min"] = -100,
							["Key"] = "CBIconSizeOffset",
							["Value"] = 0,
							["Fraction"] = false,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Icon Size Offset",
						}, -- [11]
						{
							["Type"] = 2,
							["Max"] = 100,
							["Desc"] = "Set castbar icon padding",
							["Min"] = -100,
							["Key"] = "CBIPadding",
							["Value"] = -2,
							["Fraction"] = false,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Icon Padding",
						}, -- [12]
						{
							["Type"] = 6,
							["Key"] = "",
							["Value"] = 0,
							["Name"] = "Blank",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [13]
						{
							["Type"] = 5,
							["Key"] = "",
							["Value"] = "Shield Settings",
							["Name"] = "Shield Settings",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [14]
						{
							["Type"] = 4,
							["Key"] = "ShowCBShield",
							["Value"] = true,
							["Name"] = "Show Shield",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "Show shield when checked",
						}, -- [15]
						{
							["Type"] = 4,
							["Key"] = "CBShieldAnchor",
							["Value"] = true,
							["Name"] = "Shield Anchor to Left",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "Shield Anchor will be RIGHT when unchecked",
						}, -- [16]
						{
							["Type"] = 4,
							["Key"] = "CBtextshield",
							["Value"] = true,
							["Name"] = "Shield at Spell Name Text",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "Show shield at right-side of spell name text",
						}, -- [17]
						{
							["Type"] = 2,
							["Max"] = 100,
							["Desc"] = "Set shield width",
							["Min"] = 1,
							["Key"] = "CBShieldWidth",
							["Value"] = 10,
							["Fraction"] = false,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Shield Width",
						}, -- [18]
						{
							["Type"] = 2,
							["Max"] = 100,
							["Desc"] = "Set shield height",
							["Min"] = 1,
							["Key"] = "CBShieldHeight",
							["Value"] = 12,
							["Fraction"] = false,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Shield Height",
						}, -- [19]
						{
							["Type"] = 6,
							["Key"] = "",
							["Value"] = 0,
							["Name"] = "Blank",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [20]
						{
							["Type"] = 5,
							["Key"] = "",
							["Value"] = "Player Resource Bar",
							["Name"] = "Player Resource Bar",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [21]
						{
							["Type"] = 4,
							["Key"] = "PRBbigmode",
							["Value"] = false,
							["Name"] = "Force Player Cast Bar Big Icon",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "Force player cast bar big icon",
						}, -- [22]
						{
							["Type"] = 4,
							["Key"] = "PRBreverse",
							["Value"] = true,
							["Name"] = "Reverse Player Cast Bar Icon",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "Reverse Player Cast Bar Icon Anchor",
						}, -- [23]
					},
					["LastHookEdited"] = "",
					["Name"] = "Cast Bar & Icon Options",
				}, -- [29]
				{
					["LastHookEdited"] = "Player Logon",
					["Hooks"] = {
						["Player Logon"] = "function()\n    ------------------------------------------------------------------------------------------------------\n    ---- IMPORTING THIS MOD AND EDITING THE VARIABLES BELOW REQUIRES A RELOADUI -----\n    ------------------------------------------------------------------------------------------------------\n    ---- AFTER RELOADUI:  SELECT THE INDICATOR IN THE TARGET TAB OF PLATER OPTIONS -----\n    ----                            (Target Bracket Indicator Dropdown)\n    ------------------------------------------------------------------------------------------------------\n    \n    Plater.TargetIndicators    [\"Target Arrows\"] = {\n        path = [[Interface\\AddOns\\Plater\\media\\TargetArrowLeft]],\n        coords = {\n            {0, 1, 0, 1}, \n            {1, 0, 0, 1}\n        },\n        desaturated = false,\n        --customizable texture sizing\n        width = 20,\n        height = 20,\n        --customizable texture position (relative to nameplate)\n        x = 30,\n        y = 0,\n        blend = \"ADD\",\n        --customizable texture color { r, g, b, a } format\n        color = {0.36, 0.73, 1, 0.9},\n    }    \n    \n    Plater.TargetIndicators    [\"Target Arrows Reversed\"] = {\n        path = [[Interface\\AddOns\\Plater\\media\\TargetArrowRight]],\n        coords = {\n            {0, 1, 0, 1}, \n            {1, 0, 0, 1}\n        },\n        desaturated = false,\n        --customizable texture sizing\n        width = 20,\n        height = 20,\n        --customizable texture position (relative to nameplate)\n        x = 30,\n        y = 0,\n        blend = \"ADD\",\n        --customizable texture color { r, g, b, a } format\n        color = {255, 255, 255, 1},\n    } \n    \nend",
					},
					["Time"] = 1603303675,
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["race"] = {
						},
						["encounter_ids"] = {
						},
						["affix"] = {
						},
					},
					["url"] = "https://wago.io/46Vep3lTJ/6",
					["Icon"] = "Interface\\AddOns\\Plater\\media\\TargetArrowLeft",
					["Enabled"] = true,
					["Revision"] = 149,
					["Options"] = {
					},
					["Author"] = "Revanbane-Tarren Mill",
					["Desc"] = "Adds custom target arrows to target indicator options.",
					["Prio"] = 99,
					["version"] = 6,
					["PlaterCore"] = 1,
					["HooksTemp"] = {
					},
					["semver"] = "1.0.5",
					["Name"] = "Target Arrows",
				}, -- [30]
			},
			["aura_width"] = 22,
			["health_statusbar_bgcolor"] = {
				0.41176470588235, -- [1]
				0.41176470588235, -- [2]
				0.41176470588235, -- [3]
				0.75, -- [4]
			},
			["range_check_enabled"] = false,
			["target_highlight_color"] = {
				1, -- [1]
				1, -- [2]
			},
			["extra_icon_auras"] = {
				277242, -- [1]
				29977, -- [2]
			},
			["aura2_grow_direction"] = 1,
			["ui_parent_cast_level"] = 5000,
			["ui_parent_buff2_level"] = 1,
			["pet_height_scale"] = 0.99999994039536,
			["aura_x_offset"] = -0.5,
			["first_run3"] = true,
			["ui_parent_scale_tune"] = 1.406252205491731,
			["ui_parent_buff_level"] = 1,
			["health_statusbar_bgtexture"] = "Melli",
			["indicator_raidmark_anchor"] = {
				["x"] = 8,
			},
			["tank"] = {
				["colors"] = {
					["pulling_from_tank"] = {
						nil, -- [1]
						0.50588235294118, -- [2]
						0.19607843137255, -- [3]
					},
					["anothertank"] = {
						0.73333333333333, -- [1]
						0.19607843137255, -- [2]
					},
					["aggro"] = {
						0, -- [1]
						0.41960784313725, -- [2]
						0.87450980392157, -- [3]
					},
					["nocombat"] = {
						0.10980392156863, -- [1]
						0.10980392156863, -- [2]
						0.10980392156863, -- [3]
					},
					["noaggro"] = {
						0.99607843137255, -- [1]
						0.29803921568627, -- [2]
						0.25098039215686, -- [3]
					},
					["pulling"] = {
						nil, -- [1]
						0.93333333333333, -- [2]
						0.43137254901961, -- [3]
					},
				},
			},
			["aura_tracker"] = {
				["buff_tracked"] = {
					["263246"] = true,
					["209859"] = true,
				},
				["debuff_banned"] = {
					["228581"] = true,
					["228583"] = true,
				},
				["buff_banned"] = {
					["206150"] = true,
					["333553"] = true,
					["61574"] = true,
					["61573"] = true,
				},
			},
			["cast_statusbar_color"] = {
				nil, -- [1]
				0.81176470588235, -- [2]
				nil, -- [3]
				0.96000000089407, -- [4]
			},
			["update_throttle"] = 0.24999998509884,
			["bossmod_cooldown_text_size"] = 12,
			["aura_grow_direction"] = 3,
			["indicator_extra_raidmark"] = false,
			["indicator_faction"] = false,
			["target_highlight_alpha"] = 1,
			["auto_toggle_stacking_enabled"] = true,
			["aura_stack_anchor"] = {
				["y"] = -3,
				["x"] = 9,
				["side"] = 13,
			},
			["target_shady_alpha"] = 0.78999996185303,
			["target_shady_enabled"] = false,
			["tap_denied_color"] = {
				0.90196078431373, -- [1]
				0.90196078431373, -- [2]
				0.90196078431373, -- [3]
			},
			["bossmod_icons_anchor"] = {
				["y"] = 0,
			},
			["cast_statusbar_spark_alpha"] = 1,
			["target_highlight_height"] = 5,
			["health_selection_overlay"] = "Melli",
			["version"] = 7,
			["indicator_elite"] = false,
			["color_override_colors"] = {
				[3] = {
					1, -- [1]
					0.10980392156863, -- [2]
					0, -- [3]
				},
				[4] = {
					0.30588235294118, -- [1]
					0.59607843137255, -- [2]
					1, -- [3]
				},
				[5] = {
					0.32549019607843, -- [1]
					0.74117647058824, -- [2]
					0.25490196078431, -- [3]
				},
			},
			["health_selection_overlay_alpha"] = 0,
			["cast_statusbar_color_interrupted"] = {
				0.78039215686275, -- [1]
				0.25098039215686, -- [2]
				0.25098039215686, -- [3]
			},
			["range_check_in_range_or_target_alpha"] = 1,
			["aura_timer_text_size"] = 14,
			["number_region_first_run"] = true,
			["aura_alpha"] = 0.84999996423721,
			["cast_statusbar_fadeout_time"] = 0.0099999997764826,
			["pet_width_scale"] = 0.99999994039536,
			["castbar_target_anchor"] = {
				["y"] = -8,
				["side"] = 3,
			},
			["script_auto_imported"] = {
				["Unit - Important"] = 11,
				["Aura - Buff Alert"] = 13,
				["Cast - Very Important"] = 11,
				["Explosion Affix M+"] = 11,
				["Aura - Debuff Alert"] = 11,
				["Cast - Ultra Important"] = 11,
				["Cast - Big Alert"] = 11,
				["Cast - Small Alert"] = 11,
				["Spiteful Affix"] = 2,
				["Aura - Invalidate Unit"] = 1,
				["Color Change"] = 1,
				["Fixate On You"] = 11,
				["Unit - Main Target"] = 11,
				["Aura - Blink Time Left"] = 11,
				["Aura Border Color"] = 1,
				["Countdown"] = 11,
				["Unit Power"] = 1,
				["Cast - Frontal Cone"] = 11,
				["Fixate"] = 11,
				["Cast - Tank Interrupt"] = 11,
				["Auto Set Skull"] = 11,
				["Unit - Health Markers"] = 12,
				["Unit - Show Energy"] = 11,
			},
			["castbar_target_font"] = "Big Noodle Titling",
			["dps"] = {
				["colors"] = {
					["solo"] = {
						1, -- [1]
						0.10980392156863, -- [2]
						0, -- [3]
					},
					["aggro"] = {
						nil, -- [1]
						0.10980392156863, -- [2]
					},
					["notontank"] = {
						0.10980392156863, -- [1]
						0.10980392156863, -- [2]
						0.10980392156863, -- [3]
					},
					["noaggro"] = {
						0, -- [1]
						0.41960784313725, -- [2]
						0.87450980392157, -- [3]
					},
				},
			},
			["aura_show_enrage"] = true,
			["indicator_pet"] = false,
			["auto_toggle_stacking"] = {
				["cities"] = true,
			},
			["cast_statusbar_spark_width"] = 6,
			["patch_version"] = 13,
		},
	},
}