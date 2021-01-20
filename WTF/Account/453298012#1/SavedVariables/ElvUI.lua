
ElvDB = {
	["global"] = {
		["nameplate"] = {
			["filters"] = {
				["ElvUI_Target"] = {
					["actions"] = {
						["scale"] = 1.05,
					},
				},
			},
		},
		["general"] = {
			["AceGUI"] = {
				["height"] = 729.25,
			},
			["UIScale"] = 0.71111,
		},
		["WT"] = {
			["item"] = {
				["contacts"] = {
					["alts"] = {
						["Kazzak"] = {
							["Horde"] = {
								["Yogshi"] = "WARLOCK",
							},
						},
					},
				},
			},
			["Version"] = "2.16",
		},
		["datatexts"] = {
			["settings"] = {
				["Currencies"] = {
					["tooltipData"] = {
						nil, -- [1]
						nil, -- [2]
						nil, -- [3]
						nil, -- [4]
						nil, -- [5]
						{
							nil, -- [1]
							nil, -- [2]
							nil, -- [3]
							true, -- [4]
						}, -- [6]
						nil, -- [7]
						nil, -- [8]
						{
							nil, -- [1]
							nil, -- [2]
							nil, -- [3]
							true, -- [4]
						}, -- [9]
						nil, -- [10]
						nil, -- [11]
						nil, -- [12]
						nil, -- [13]
						nil, -- [14]
						nil, -- [15]
						nil, -- [16]
						nil, -- [17]
						nil, -- [18]
						{
							nil, -- [1]
							nil, -- [2]
							nil, -- [3]
							true, -- [4]
						}, -- [19]
						nil, -- [20]
						nil, -- [21]
						nil, -- [22]
						nil, -- [23]
						nil, -- [24]
						nil, -- [25]
						nil, -- [26]
						nil, -- [27]
						nil, -- [28]
						nil, -- [29]
						{
							nil, -- [1]
							nil, -- [2]
							nil, -- [3]
							true, -- [4]
						}, -- [30]
						nil, -- [31]
						{
							nil, -- [1]
							nil, -- [2]
							nil, -- [3]
							true, -- [4]
						}, -- [32]
					},
				},
			},
		},
	},
	["SLE_DB_Ver"] = "3.65",
	["namespaces"] = {
		["LibDualSpec-1.0"] = {
			["char"] = {
				["Yogski - Kazzak"] = {
					"Piecez", -- [1]
					"Piecez", -- [2]
					"Piecez", -- [3]
					"Piecez Heal", -- [4]
					["enabled"] = true,
				},
				["Kjaskar - Draenor"] = {
					"Piecez Heal", -- [1]
					"Piecez", -- [2]
					"Piecez", -- [3]
					["enabled"] = true,
				},
			},
		},
	},
	["class"] = {
		["Draenor"] = {
			["Kjaskaar"] = "DEATHKNIGHT",
			["Beastmodex"] = "SHAMAN",
			["Kjaskàr"] = "DEMONHUNTER",
			["Kjaskarz"] = "WARRIOR",
			["Kjaskr"] = "DRUID",
			["Kjask"] = "MONK",
			["Kjaskar"] = "PALADIN",
			["Kja"] = "ROGUE",
		},
		["Sylvanas"] = {
			["Kjaskar"] = "WARLOCK",
			["Kjask"] = "MAGE",
		},
		["Kazzak"] = {
			["Yogzi"] = "MAGE",
			["Yogs"] = "ROGUE",
			["Kjaskar"] = "WARRIOR",
			["Yogsp"] = "PRIEST",
			["Yogske"] = "DEMONHUNTER",
			["Yogz"] = "WARRIOR",
			["Yogshi"] = "WARLOCK",
			["Yøgs"] = "HUNTER",
			["Yogsi"] = "DEATHKNIGHT",
			["Yogski"] = "DRUID",
			["Yoggis"] = "WARRIOR",
		},
	},
	["profiles"] = {
		["Kjaskarz - Draenor"] = {
			["chat"] = {
				["panelColorConverted"] = true,
			},
			["currentTutorial"] = 1,
			["v11NamePlateReset"] = true,
			["movers"] = {
			},
		},
		["SHAMAN"] = {
			["chat"] = {
				["panelColorConverted"] = true,
			},
			["v11NamePlateReset"] = true,
		},
		["Kjask - Draenor"] = {
			["movers"] = {
			},
			["currentTutorial"] = 1,
			["v11NamePlateReset"] = true,
			["chat"] = {
				["panelColorConverted"] = true,
			},
		},
		["Kjaskar - Draenor"] = {
			["databars"] = {
				["reputation"] = {
					["enable"] = true,
					["orientation"] = "HORIZONTAL",
					["height"] = 10,
					["width"] = 222,
				},
				["honor"] = {
					["height"] = 10,
					["orientation"] = "HORIZONTAL",
					["width"] = 222,
				},
				["experience"] = {
					["orientation"] = "HORIZONTAL",
					["height"] = 10,
					["textSize"] = 12,
					["width"] = 348,
				},
				["azerite"] = {
					["height"] = 10,
					["orientation"] = "HORIZONTAL",
					["width"] = 222,
				},
			},
			["currentTutorial"] = 1,
			["general"] = {
				["totems"] = {
					["growthDirection"] = "HORIZONTAL",
					["size"] = 50,
					["spacing"] = 8,
				},
				["bonusObjectivePosition"] = "AUTO",
				["talkingHeadFrameScale"] = 1,
				["valuecolor"] = {
					["b"] = 0.7294101715087891,
					["g"] = 0.549018383026123,
					["r"] = 0.9568606615066528,
				},
				["bordercolor"] = {
					["b"] = 0,
					["g"] = 0,
					["r"] = 0,
				},
				["objectiveFrameHeight"] = 400,
				["minimap"] = {
					["size"] = 220,
				},
			},
			["movers"] = {
				["ElvAB_8"] = "BOTTOM,ElvUI_Bar1,TOP,0,122",
				["SLE_FarmToolMover"] = "BOTTOMLEFT,SLE_SeedToolbarsAnchor,TOPLEFT,0,1",
				["RaidMarkerBarAnchor"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-1,200",
				["SLE_BG_1_Mover"] = "BOTTOM,ElvUIParent,BOTTOM,0,21",
				["BuffsMover"] = "TOPRIGHT,MMHolder,TOPLEFT,-7,-1",
				["GhostFrameMover"] = "TOP,ElvUIParent,TOP,0,-150",
				["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,-1,293",
				["LootFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,250,-104",
				["ZoneAbility"] = "BOTTOM,ElvUIParent,BOTTOM,-1,293",
				["SocialMenuMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-187",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,737",
				["SLE_BG_4_Mover"] = "BOTTOM,ElvUIParent,BOTTOM,0,189",
				["DurabilityFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-134,-300",
				["SLE_BG_3_Mover"] = "BOTTOMLEFT,ElvUIParent,BOTTOM,257,21",
				["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-4",
				["SLE_DataPanel_8_Mover"] = "BOTTOM,ElvUIParent,BOTTOM,306,0",
				["LossControlMover"] = "BOTTOM,ElvUIParent,BOTTOM,-1,507",
				["MirrorTimer1Mover"] = "TOP,ElvUIParent,TOP,-1,-96",
				["ElvAB_4"] = "RIGHT,ElvUIParent,RIGHT,-4,0",
				["AzeriteBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-3,-245",
				["PetBattleStatusMover"] = "TOP,PetBattleFrame,TOP,0,0",
				["ReputationBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-3,-264",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-163,-325",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-274",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,273",
				["RaidUtility_Mover"] = "TOP,ElvUIParent,TOP,-400,1",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,97",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-342,139",
				["ElvAB_7"] = "BOTTOM,ElvUI_Bar1,TOP,0,82",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,4",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-248",
				["SLE_DataPanel_6_Mover"] = "BOTTOM,ElvUIParent,BOTTOM,-304,0",
				["TopCenterContainerMover"] = "TOP,ElvUIParent,TOP,0,-30",
				["PetAB"] = "RIGHT,ElvUI_Bar4,LEFT,-4,0",
				["ElvUF_RaidMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,202,373",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,4",
				["GMMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,250,-4",
				["SLE_DataPanel_5_Mover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,0,0",
				["SLE_UIButtonsMover"] = "LEFT,ElvUIParent,LEFT,-2,0",
				["SLE_DataPanel_3_Mover"] = "TOP,ElvUIParent,TOP,0,0",
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-3,-3",
				["ElvUF_FocusCastbarMover"] = "TOPLEFT,ElvUF_Focus,BOTTOMLEFT,0,-1",
				["SLE_DataPanel_1_Mover"] = "TOPLEFT,ElvUIParent,TOPLEFT,0,0",
				["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,342,100",
				["ElvUIBagMover"] = "BOTTOMRIGHT,RightChatPanel,BOTTOMRIGHT,0,27",
				["TotemBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,490,4",
				["ElvUF_FocusMover"] = "BOTTOM,ElvUIParent,BOTTOM,342,59",
				["BossHeaderMover"] = "BOTTOMRIGHT,ElvUIParent,RIGHT,-104,-164",
				["SLE_DataPanel_7_Mover"] = "BOTTOM,ElvUIParent,BOTTOM,0,0",
				["TooltipMover"] = "BOTTOMRIGHT,RightChatToggleButton,BOTTOMRIGHT,0,0",
				["MicrobarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-48",
				["UIErrorsFrameMover"] = "TOP,UIParent,TOP,0,-122",
				["PetBattleABMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,4",
				["HonorBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-3,-255",
				["ExperienceBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,43",
				["ArenaHeaderMover"] = "BOTTOMRIGHT,ElvUIParent,RIGHT,-104,-164",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,342,139",
				["ElvNP_PlayerMover"] = "TOP,UIParent,CENTER,0,-150",
				["ElvUIBankMover"] = "BOTTOMLEFT,LeftChatPanel,BOTTOMLEFT,0,27",
				["LevelUpBossBannerMover"] = "TOP,ElvUIParent,TOP,-1,-120",
				["ElvUF_PetCastbarMover"] = "TOPLEFT,ElvUF_Pet,BOTTOMLEFT,0,-1",
				["ElvAB_9"] = "BOTTOM,ElvUI_Bar1,TOP,0,162",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,-1,191",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,4",
				["BelowMinimapContainerMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-274",
				["MirrorTimer2Mover"] = "TOP,MirrorTimer1,BOTTOM,0,0",
				["TalkingHeadFrameMover"] = "BOTTOM,ElvUIParent,BOTTOM,-1,373",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,-1,-36",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,482",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,-1,139",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,-92,57",
				["VehicleLeaveButton"] = "BOTTOM,ElvUIParent,BOTTOM,0,300",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,243",
				["SLE_DataPanel_4_Mover"] = "TOP,ElvUIParent,TOP,384,0",
				["SLE_FarmPortalMover"] = "BOTTOMLEFT,SLE_ToolsToolbarsAnchor,TOPLEFT,0,1",
				["MirrorTimer3Mover"] = "TOP,MirrorTimer2,BOTTOM,0,0",
				["VOICECHAT"] = "TOPLEFT,ElvUIParent,TOPLEFT,250,-82",
				["SLE_GarrisonToolMover"] = "LEFT,ElvUIParent,LEFT,24,0",
				["SLE_BG_2_Mover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOM,-257,21",
				["ElvAB_6"] = "BOTTOM,ElvUI_Bar2,TOP,0,2",
				["ElvAB_10"] = "BOTTOM,ElvUI_Bar1,TOP,0,202",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-186",
				["SLE_Location_Mover"] = "TOP,ElvUIParent,TOP,0,-23",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,-342,100",
				["SLE_FarmSeedMover"] = "LEFT,ElvUIParent,LEFT,24,-160",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,248",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,-1,-18",
				["DebuffsMover"] = "BOTTOMRIGHT,MMHolder,BOTTOMLEFT,-7,1",
				["SLE_DataPanel_2_Mover"] = "TOP,ElvUIParent,TOP,-384,0",
			},
			["bags"] = {
				["bagSize"] = 42,
				["bankWidth"] = 474,
				["bagWidth"] = 474,
				["itemLevelCustomColorEnable"] = true,
				["scrapIcon"] = true,
				["bankSize"] = 42,
			},
			["auras"] = {
				["buffs"] = {
					["countFontSize"] = 10,
					["size"] = 40,
				},
				["debuffs"] = {
					["countFontSize"] = 10,
					["size"] = 40,
				},
			},
			["chat"] = {
				["fontSize"] = 10,
				["panelHeight"] = 236,
				["panelColorConverted"] = true,
				["tapFontSize"] = 10,
				["panelWidth"] = 472,
			},
			["unitframe"] = {
				["thinBorders"] = true,
				["smoothbars"] = true,
				["colors"] = {
					["auraBarBuff"] = {
						["b"] = 0.7294101715087891,
						["g"] = 0.549018383026123,
						["r"] = 0.9568606615066528,
					},
					["castClassColor"] = true,
					["healthclass"] = true,
				},
				["units"] = {
					["pet"] = {
						["infoPanel"] = {
							["height"] = 14,
						},
						["debuffs"] = {
							["enable"] = true,
							["anchorPoint"] = "TOPRIGHT",
						},
						["disableTargetGlow"] = false,
						["castbar"] = {
							["iconSize"] = 32,
						},
						["width"] = 270,
					},
					["targettarget"] = {
						["debuffs"] = {
							["enable"] = false,
							["anchorPoint"] = "TOPRIGHT",
						},
						["threatStyle"] = "GLOW",
						["power"] = {
							["enable"] = false,
						},
						["raidicon"] = {
							["attachTo"] = "LEFT",
							["xOffset"] = 2,
							["enable"] = false,
							["yOffset"] = 0,
						},
						["disableMouseoverGlow"] = true,
						["width"] = 270,
					},
					["boss"] = {
						["infoPanel"] = {
							["height"] = 17,
						},
						["debuffs"] = {
							["maxDuration"] = 300,
							["sizeOverride"] = 27,
							["yOffset"] = -16,
						},
						["castbar"] = {
							["width"] = 246,
						},
						["height"] = 60,
						["buffs"] = {
							["maxDuration"] = 300,
							["sizeOverride"] = 27,
							["yOffset"] = 16,
						},
						["width"] = 246,
					},
					["raid40"] = {
						["enable"] = false,
						["rdebuffs"] = {
							["font"] = "PT Sans Narrow",
						},
					},
					["focus"] = {
						["width"] = 270,
						["castbar"] = {
							["width"] = 270,
						},
					},
					["target"] = {
						["castbar"] = {
							["height"] = 40,
							["width"] = 405,
							["insideInfoPanel"] = false,
						},
						["healPrediction"] = {
							["showOverAbsorbs"] = false,
						},
						["disableMouseoverGlow"] = true,
						["infoPanel"] = {
							["enable"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[namecolor][name]",
						},
						["height"] = 82,
						["health"] = {
							["attachTextTo"] = "InfoPanel",
						},
						["orientation"] = "LEFT",
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["height"] = 22,
						},
					},
					["raid"] = {
						["roleIcon"] = {
							["attachTo"] = "InfoPanel",
							["xOffset"] = 0,
							["size"] = 12,
						},
						["rdebuffs"] = {
							["xOffset"] = 30,
							["font"] = "PT Sans Narrow",
							["size"] = 30,
							["yOffset"] = 25,
						},
						["numGroups"] = 8,
						["growthDirection"] = "RIGHT_UP",
						["infoPanel"] = {
							["enable"] = true,
						},
						["resurrectIcon"] = {
							["attachTo"] = "BOTTOMRIGHT",
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["position"] = "BOTTOMLEFT",
						},
						["visibility"] = "[nogroup] hide;show",
						["width"] = 92,
					},
					["party"] = {
						["power"] = {
							["height"] = 13,
						},
						["height"] = 74,
						["rdebuffs"] = {
							["font"] = "PT Sans Narrow",
						},
						["enable"] = false,
						["width"] = 231,
					},
					["player"] = {
						["infoPanel"] = {
							["enable"] = true,
						},
						["castbar"] = {
							["height"] = 40,
							["width"] = 405,
							["insideInfoPanel"] = false,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["height"] = 22,
						},
						["height"] = 82,
						["healPrediction"] = {
							["showOverAbsorbs"] = false,
						},
						["disableMouseoverGlow"] = true,
						["classbar"] = {
							["height"] = 14,
						},
					},
				},
			},
			["datatexts"] = {
				["panels"] = {
					["LeftChatDataPanel"] = {
						["right"] = "Quick Join",
					},
				},
			},
			["actionbar"] = {
				["bar3"] = {
					["buttons"] = 8,
					["buttonspacing"] = 1,
					["buttonsPerRow"] = 10,
					["buttonsize"] = 50,
					["visibility"] = "[petbattle] hide; show",
				},
				["bar6"] = {
					["visibility"] = "[petbattle] hide; show",
				},
				["bar2"] = {
					["enabled"] = true,
					["buttons"] = 9,
					["buttonspacing"] = 1,
					["buttonsize"] = 38,
					["visibility"] = "[petbattle] hide; show",
				},
				["bar1"] = {
					["buttonspacing"] = 1,
					["buttonsize"] = 50,
					["buttons"] = 8,
				},
				["bar4"] = {
					["enabled"] = false,
					["visibility"] = "[petbattle] hide; show",
				},
				["bar5"] = {
					["enabled"] = false,
					["visibility"] = "[petbattle] hide; show",
				},
				["backdropSpacingConverted"] = true,
			},
			["layoutSet"] = "healer",
			["layoutSetting"] = "healer",
			["v11NamePlateReset"] = true,
			["tooltip"] = {
				["healthBar"] = {
					["height"] = 12,
					["fontOutline"] = "MONOCHROMEOUTLINE",
				},
				["fontSize"] = 10,
			},
		},
		["Kja - Draenor"] = {
			["chat"] = {
				["panelColorConverted"] = true,
			},
			["currentTutorial"] = 5,
			["v11NamePlateReset"] = true,
			["movers"] = {
			},
		},
		["DEATHKNIGHT"] = {
			["v11NamePlateReset"] = true,
			["chat"] = {
				["panelColorConverted"] = true,
			},
		},
		["Tink: Ultra minimal"] = {
			["databars"] = {
				["reputation"] = {
					["height"] = 11,
					["hideInCombat"] = true,
					["width"] = 163,
				},
				["honor"] = {
					["enable"] = false,
					["hideInCombat"] = true,
					["width"] = 163,
				},
				["experience"] = {
					["enable"] = false,
					["hideInCombat"] = true,
					["textFormat"] = "PERCENT",
					["width"] = 163,
				},
				["azerite"] = {
					["enable"] = false,
					["hideInCombat"] = true,
					["width"] = 163,
				},
			},
			["currentTutorial"] = 3,
			["sle"] = {
				["raidmarkers"] = {
					["enable"] = false,
				},
				["armory"] = {
					["inspect"] = {
						["enable"] = true,
						["gradient"] = {
							["enable"] = false,
						},
						["ilvl"] = {
							["colorType"] = "QUALITY",
						},
						["transmog"] = {
							["enableArrow"] = false,
						},
					},
					["character"] = {
						["ilvl"] = {
							["colorType"] = "QUALITY",
						},
						["enable"] = true,
						["gradient"] = {
							["enable"] = false,
						},
						["background"] = {
							["selectedBG"] = "CLASS",
						},
						["transmog"] = {
							["enableArrow"] = false,
						},
					},
				},
				["datatexts"] = {
					["panel5"] = {
						["noback"] = true,
					},
					["panel3"] = {
						["noback"] = true,
					},
					["panel1"] = {
						["noback"] = true,
					},
					["panel4"] = {
						["noback"] = true,
					},
					["panel2"] = {
						["noback"] = true,
					},
				},
				["dt"] = {
					["friends"] = {
						["combat"] = true,
						["hide_titleline"] = true,
					},
				},
			},
			["bags"] = {
				["bagSize"] = 42,
				["bankWidth"] = 474,
				["bankSize"] = 42,
				["itemLevelCustomColorEnable"] = true,
				["bagWidth"] = 474,
				["scrapIcon"] = true,
			},
			["auras"] = {
				["font"] = "PT Sans Narrow",
				["barNoDuration"] = false,
				["fontOutline"] = "OUTLINE",
				["barPosition"] = "TOP",
				["buffs"] = {
					["countFontSize"] = 12,
					["growthDirection"] = "RIGHT_DOWN",
					["wrapAfter"] = 16,
					["durationFontSize"] = 12,
					["verticalSpacing"] = 6,
					["maxWraps"] = 2,
					["sortDir"] = "+",
					["size"] = 36,
				},
				["timeYOffset"] = -2,
				["debuffs"] = {
					["durationFontSize"] = 8,
					["wrapAfter"] = 6,
					["size"] = 18,
				},
			},
			["dbConverted"] = 12.17,
			["locplus"] = {
				["fish"] = false,
				["displayOther"] = "NONE",
				["petlevel"] = false,
				["LoginMsg"] = false,
			},
			["layoutSet"] = "tank",
			["movers"] = {
				["ElvUF_FocusCastbarMover"] = "TOPRIGHT,ElvUF_Focus,BOTTOMRIGHT,0,-1",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,217",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,299,-324",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,-1,0",
				["GMMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-296,-77",
				["BuffsMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-29",
				["GhostFrameMover"] = "TOP,ElvUIParent,TOP,310,-203",
				["MinimapMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,0,0",
				["MirrorTimer3Mover"] = "TOP,MirrorTimer2,BOTTOM,0,0",
				["BossButton"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,299,239",
				["LootFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,478,-218",
				["ZoneAbility"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,371,239",
				["SocialMenuMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-187",
				["PetAB"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,296",
				["ElvUI_RMBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-265,238",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,737",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,900,183",
				["ElvUF_PlayerMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,492,413",
				["ElvUF_FocusMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-178,323",
				["TotemBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-231,235",
				["TopCenterContainerMover"] = "TOP,ElvUIParent,TOP,0,-30",
				["ElvUF_PetCastbarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-3,238",
				["DurabilityFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,161,-127",
				["UIErrorsFrameMover"] = "TOP,UIParent,TOP,0,-122",
				["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,161,0",
				["ElvUF_TargetTargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-483,4",
				["ExperienceBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,483,243",
				["ArenaHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-45,-372",
				["ElvUF_TargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-483,23",
				["RaidUtility_Mover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-533,-22",
				["LossControlMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,300",
				["LevelUpBossBannerMover"] = "TOP,ElvUIParent,TOP,-1,-120",
				["MirrorTimer1Mover"] = "TOP,ElvUIParent,TOP,-1,-96",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,TOPLEFT,299,-324",
				["ElvAB_1"] = "TOPLEFT,ElvUIParent,TOPLEFT,0,-415",
				["ElvAB_2"] = "TOPLEFT,ElvUIParent,TOPLEFT,0,-508",
				["BelowMinimapContainerMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,0,-160",
				["VOICECHAT"] = "TOPLEFT,ElvUIParent,TOPLEFT,478,-196",
				["TalkingHeadFrameMover"] = "TOP,ElvUIParent,TOP,0,-24",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,-230,40",
				["AzeriteBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,0,-160",
				["ElvAB_3"] = "TOPLEFT,ElvUIParent,TOPLEFT,0,-446",
				["ReputationBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,0,-178",
				["VehicleLeaveButton"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,440,239",
				["ElvAB_4"] = "TOPLEFT,ElvUIParent,TOPLEFT,0,-477",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,TOPLEFT,0,-384",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-104,-329",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-358,-25",
				["ElvNP_PlayerMover"] = "TOP,ElvUIParent,TOP,0,-525",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,-1,-75",
				["HonorBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,0,-169",
				["ElvUF_TargetCastbarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-483,88",
				["TooltipMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-3,216",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-236",
				["BossHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-338,-319",
				["ElvUIBagMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-231,4",
				["ElvUF_PetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-3,257",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,0,0",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,-1,-24",
				["DebuffsMover"] = "BOTTOM,ElvUIParent,BOTTOM,-289,102",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-298",
			},
			["tooltip"] = {
				["showMount"] = false,
				["healthBar"] = {
					["height"] = 12,
					["fontOutline"] = "MONOCHROMEOUTLINE",
				},
				["cursorAnchorType"] = "ANCHOR_CURSOR_LEFT",
				["npcID"] = false,
				["visibility"] = {
					["combatOverride"] = "SHIFT",
					["actionbars"] = "SHIFT",
				},
				["guildRanks"] = false,
			},
			["unitframe"] = {
				["smoothbars"] = true,
				["colors"] = {
					["auraBarBuff"] = {
						["b"] = 0.58823400735855,
						["g"] = 0.99999779462814,
						["r"] = 0,
					},
					["castClassColor"] = true,
					["healthclass"] = true,
				},
				["units"] = {
					["pet"] = {
						["infoPanel"] = {
							["height"] = 14,
						},
						["debuffs"] = {
							["enable"] = true,
							["anchorPoint"] = "TOPRIGHT",
						},
						["disableTargetGlow"] = false,
						["castbar"] = {
							["enable"] = false,
							["iconSize"] = 32,
							["width"] = 225,
						},
						["enable"] = false,
						["width"] = 225,
					},
					["targettarget"] = {
						["width"] = 270,
						["debuffs"] = {
							["enable"] = false,
							["anchorPoint"] = "TOPRIGHT",
						},
						["threatStyle"] = "GLOW",
						["power"] = {
							["enable"] = false,
						},
						["enable"] = false,
						["height"] = 16,
						["disableMouseoverGlow"] = true,
						["raidicon"] = {
							["attachTo"] = "LEFT",
							["xOffset"] = 2,
							["enable"] = false,
							["yOffset"] = 0,
						},
					},
					["boss"] = {
						["infoPanel"] = {
							["height"] = 17,
						},
						["debuffs"] = {
							["sizeOverride"] = 27,
							["yOffset"] = -16,
						},
						["castbar"] = {
							["width"] = 246,
						},
						["enable"] = false,
						["buffs"] = {
							["sizeOverride"] = 27,
							["yOffset"] = 16,
						},
						["height"] = 60,
						["width"] = 246,
					},
					["raid40"] = {
						["visibility"] = "[@raid21,exists,group:raid] show; hide",
						["rdebuffs"] = {
							["font"] = "PT Sans Narrow",
						},
					},
					["focus"] = {
						["enable"] = false,
						["castbar"] = {
							["enable"] = false,
							["width"] = 270,
						},
						["width"] = 270,
					},
					["target"] = {
						["debuffs"] = {
							["sizeOverride"] = 24,
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["height"] = 12,
						},
						["enable"] = false,
						["healPrediction"] = {
							["absorbStyle"] = "NORMAL",
						},
						["disableMouseoverGlow"] = true,
						["infoPanel"] = {
							["enable"] = true,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[namecolor][name]",
						},
						["castbar"] = {
							["enable"] = false,
						},
						["orientation"] = "LEFT",
						["buffs"] = {
							["sizeOverride"] = 24,
						},
						["height"] = 42,
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["raid"] = {
						["roleIcon"] = {
							["attachTo"] = "InfoPanel",
							["xOffset"] = 0,
							["size"] = 12,
						},
						["rdebuffs"] = {
							["xOffset"] = 30,
							["font"] = "PT Sans Narrow",
							["yOffset"] = 25,
							["size"] = 30,
						},
						["numGroups"] = 6,
						["growthDirection"] = "RIGHT_UP",
						["infoPanel"] = {
							["enable"] = true,
						},
						["resurrectIcon"] = {
							["attachTo"] = "BOTTOMRIGHT",
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["position"] = "BOTTOMLEFT",
						},
						["visibility"] = "[@raid6,noexists][@raid21,exists] hide; show",
						["width"] = 92,
					},
					["party"] = {
						["debuffs"] = {
							["anchorPoint"] = "CENTER",
							["sizeOverride"] = 18,
							["xOffset"] = 6,
							["attachTo"] = "POWER",
							["yOffset"] = 6,
						},
						["power"] = {
							["text_format"] = "",
							["height"] = 13,
						},
						["enable"] = false,
						["rdebuffs"] = {
							["font"] = "PT Sans Narrow",
						},
						["width"] = 120,
						["name"] = {
							["text_format"] = "[namecolor][name:short]",
						},
						["height"] = 44,
						["health"] = {
							["text_format"] = "",
						},
						["orientation"] = "MIDDLE",
						["fader"] = {
							["health"] = true,
						},
					},
					["player"] = {
						["RestIcon"] = {
							["xOffset"] = 12,
							["texture"] = "RESTING1",
							["yOffset"] = 0,
						},
						["debuffs"] = {
							["enable"] = false,
							["attachTo"] = "BUFFS",
						},
						["castbar"] = {
							["enable"] = false,
							["displayTarget"] = true,
						},
						["enable"] = false,
						["healPrediction"] = {
							["absorbStyle"] = "NORMAL",
						},
						["disableMouseoverGlow"] = true,
						["infoPanel"] = {
							["enable"] = true,
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["height"] = 12,
						},
						["name"] = {
							["text_format"] = "[namecolor][name]",
							["position"] = "LEFT",
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
						},
						["height"] = 42,
						["buffs"] = {
							["attachTo"] = "FRAME",
						},
						["classbar"] = {
							["height"] = 14,
							["autoHide"] = true,
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
				},
			},
			["datatexts"] = {
				["minimapPanels"] = false,
				["rightChatPanel"] = false,
				["goldFormat"] = "SHORTINT",
				["leftChatPanel"] = false,
				["friends"] = {
					["hideWTCG"] = true,
					["hideApp"] = true,
					["hideAFK"] = true,
					["hideS1"] = true,
					["hideHero"] = true,
					["hideS2"] = true,
					["hideDST2"] = true,
					["hideDND"] = true,
					["hideBSAp"] = true,
					["hideVIPR"] = true,
					["hidePro"] = true,
					["hideD3"] = true,
				},
				["panels"] = {
					["SLE_DataPanel_1"] = {
						["right"] = "SavedInstances",
						["left"] = "Equipment Sets",
						["middle"] = "Durability",
					},
					["LeftChatDataPanel"] = {
						["left"] = "Equipment Sets",
						["right"] = "SavedInstances",
					},
					["RightChatDataPanel"] = {
						["right"] = "",
						["left"] = "",
						["middle"] = "",
					},
					["BottomMiniPanel"] = "Time",
					["SLE_DataPanel_3"] = "Time",
					["SLE_DataPanel_4"] = {
						["left"] = "System",
						["middle"] = "Currencyflow",
					},
					["SLE_DataPanel_5"] = {
						["right"] = "WIM",
						["left"] = "S&L Guild",
						["middle"] = "S&L Friends",
					},
					["SLE_DataPanel_2"] = {
						["middle"] = "Coords",
						["right"] = "iLocation",
					},
				},
				["battleground"] = false,
			},
			["actionbar"] = {
				["bar3"] = {
					["buttonspacing"] = 1,
					["buttonsPerRow"] = 10,
					["mouseover"] = true,
					["visibility"] = "[petbattle] hide; show",
				},
				["bar6"] = {
					["visibility"] = "[petbattle] hide; show",
				},
				["bar2"] = {
					["enabled"] = true,
					["buttons"] = 9,
					["buttonspacing"] = 1,
					["mouseover"] = true,
					["visibility"] = "[petbattle] hide; show",
				},
				["bar1"] = {
					["buttonspacing"] = 1,
					["mouseover"] = true,
					["buttons"] = 6,
				},
				["bar5"] = {
					["enabled"] = false,
					["visibility"] = "[petbattle] hide; show",
					["buttons"] = 1,
				},
				["barPet"] = {
					["enabled"] = false,
				},
				["stanceBar"] = {
					["mouseover"] = true,
				},
				["microbar"] = {
					["buttons"] = 11,
				},
				["bar4"] = {
					["visibility"] = "[petbattle] hide; show",
					["buttons"] = 8,
					["buttonspacing"] = 1,
					["buttonsPerRow"] = 10,
					["mouseover"] = true,
					["backdrop"] = false,
				},
			},
			["v11NamePlateReset"] = true,
			["general"] = {
				["loginmessage"] = false,
				["talkingHeadFrameScale"] = 1,
				["afk"] = false,
				["minimap"] = {
					["locationText"] = "HIDE",
					["icons"] = {
						["mail"] = {
							["position"] = "TOP",
						},
						["ticket"] = {
							["position"] = "RIGHT",
						},
						["classHall"] = {
							["position"] = "TOPRIGHT",
						},
					},
					["size"] = 161,
				},
				["bonusObjectivePosition"] = "AUTO",
				["valuecolor"] = {
					["b"] = 0.588234007358551,
					["g"] = 0.9999977946281433,
					["r"] = 0,
				},
				["objectiveFrameHeight"] = 400,
				["totems"] = {
					["spacing"] = 8,
					["size"] = 50,
					["growthDirection"] = "HORIZONTAL",
				},
				["bottomPanel"] = false,
			},
			["cooldown"] = {
				["enable"] = false,
			},
			["chat"] = {
				["useBTagName"] = true,
				["tabFont"] = "Roboto Condensed Bold",
				["tabFontSize"] = 14,
				["panelWidth"] = 472,
				["font"] = "Roboto Condensed Bold",
				["noAlertInCombat"] = true,
				["panelHeight"] = 236,
				["whisperSound"] = "None",
				["editBoxPosition"] = "ABOVE_CHAT",
				["timeStampFormat"] = "%H:%M ",
				["panelBackdrop"] = "HIDEBOTH",
			},
		},
		["Minimalistic"] = {
			["currentTutorial"] = 2,
			["general"] = {
				["fontSize"] = 11,
				["bottomPanel"] = false,
				["backdropfadecolor"] = {
					["a"] = 0.80000001192093,
					["r"] = 0.058823529411765,
					["g"] = 0.058823529411765,
					["b"] = 0.058823529411765,
				},
				["valuecolor"] = {
					["a"] = 1,
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["bordercolor"] = {
					["r"] = 0.30588235294118,
					["g"] = 0.30588235294118,
					["b"] = 0.30588235294118,
				},
				["reputation"] = {
					["orientation"] = "HORIZONTAL",
					["textFormat"] = "PERCENT",
					["height"] = 16,
					["width"] = 200,
				},
				["font"] = "Expressway",
			},
			["movers"] = {
				["PetAB"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-50,-428",
				["ElvUF_RaidMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,51,120",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,50,50",
				["GMMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,250,-50",
				["BossButton"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-117,-298",
				["LootFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,249,-216",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,50,827",
				["MicrobarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-52",
				["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,51,-87",
				["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,143",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,392,1073",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,50",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,90",
				["ElvAB_4"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-50,-394",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,0,-186",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,305,50",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,-305,50",
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-50,-50",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,230,140",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-122,-393",
				["BNETMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,50,232",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,50,1150",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,242",
				["ElvUF_PartyMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,184,773",
				["ElvAB_6"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-488,330",
				["TooltipMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-50,50",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,50,995",
				["TotemBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,463,50",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,200",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-230,140",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-50,50",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,0,-50",
				["ReputationBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-50,-228",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,51,937",
			},
			["bags"] = {
				["countFontSize"] = 9,
				["itemLevelFontSize"] = 9,
			},
			["hideTutorial"] = true,
			["chat"] = {
				["chatHistory"] = false,
				["fontSize"] = 11,
				["tabFont"] = "Expressway",
				["panelColor"] = {
					["a"] = 0.80000001192093,
					["r"] = 0.058823529411765,
					["g"] = 0.058823529411765,
					["b"] = 0.058823529411765,
				},
				["tabFontSize"] = 11,
				["fadeUndockedTabs"] = false,
				["font"] = "Expressway",
				["fadeTabsNoBackdrop"] = false,
				["panelColorConverted"] = true,
				["editBoxPosition"] = "ABOVE_CHAT",
				["panelBackdrop"] = "HIDEBOTH",
			},
			["unitframe"] = {
				["fontSize"] = 9,
				["fontOutline"] = "THICKOUTLINE",
				["statusbar"] = "ElvUI Blank",
				["smoothbars"] = true,
				["font"] = "Expressway",
				["units"] = {
					["tank"] = {
						["enable"] = false,
					},
					["targettarget"] = {
						["infoPanel"] = {
							["enable"] = true,
						},
						["debuffs"] = {
							["enable"] = false,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["position"] = "TOP",
							["yOffset"] = -2,
						},
						["height"] = 50,
						["width"] = 122,
					},
					["pet"] = {
						["infoPanel"] = {
							["height"] = 14,
							["enable"] = true,
						},
						["debuffs"] = {
							["enable"] = true,
						},
						["threatStyle"] = "NONE",
						["castbar"] = {
							["width"] = 122,
						},
						["height"] = 50,
						["width"] = 122,
					},
					["party"] = {
						["horizontalSpacing"] = 3,
						["debuffs"] = {
							["anchorPoint"] = "BOTTOM",
							["numrows"] = 4,
							["perrow"] = 1,
						},
						["power"] = {
							["text_format"] = "",
							["height"] = 5,
						},
						["enable"] = false,
						["healPrediction"] = {
							["enable"] = true,
						},
						["growthDirection"] = "RIGHT_DOWN",
						["infoPanel"] = {
							["enable"] = true,
						},
						["rdebuffs"] = {
							["font"] = "Expressway",
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[namecolor][name:short]",
							["position"] = "LEFT",
						},
						["roleIcon"] = {
							["position"] = "TOPRIGHT",
						},
						["height"] = 59,
						["verticalSpacing"] = 0,
						["width"] = 110,
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["orientation"] = "VERTICAL",
							["text_format"] = "[healthcolor][health:current]",
							["position"] = "RIGHT",
						},
					},
					["player"] = {
						["infoPanel"] = {
							["enable"] = true,
						},
						["debuffs"] = {
							["perrow"] = 7,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[healthcolor][health:current-max]",
						},
						["castbar"] = {
							["iconSize"] = 54,
							["height"] = 35,
							["iconAttached"] = false,
							["width"] = 478,
						},
						["height"] = 80,
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[powercolor][power:current-max]",
							["height"] = 15,
						},
						["classbar"] = {
							["height"] = 15,
							["autoHide"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[namecolor][name]",
						},
					},
					["raid40"] = {
						["enable"] = false,
						["rdebuffs"] = {
							["font"] = "Expressway",
						},
					},
					["focus"] = {
						["infoPanel"] = {
							["enable"] = true,
							["height"] = 17,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[healthcolor][health:current]",
						},
						["castbar"] = {
							["iconSize"] = 26,
							["width"] = 122,
						},
						["height"] = 56,
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["position"] = "LEFT",
						},
						["threatStyle"] = "NONE",
						["width"] = 189,
					},
					["target"] = {
						["debuffs"] = {
							["perrow"] = 7,
						},
						["castbar"] = {
							["iconSize"] = 54,
							["iconAttached"] = false,
						},
						["infoPanel"] = {
							["enable"] = true,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[healthcolor][health:current-max]",
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[powercolor][power:current-max]",
							["height"] = 15,
						},
						["height"] = 80,
						["buffs"] = {
							["perrow"] = 7,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[namecolor][name]",
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
					},
					["raid"] = {
						["roleIcon"] = {
							["position"] = "RIGHT",
						},
						["debuffs"] = {
							["enable"] = true,
							["sizeOverride"] = 27,
							["perrow"] = 4,
						},
						["rdebuffs"] = {
							["enable"] = false,
							["font"] = "Expressway",
						},
						["growthDirection"] = "UP_RIGHT",
						["name"] = {
							["position"] = "LEFT",
						},
						["groupsPerRowCol"] = 5,
						["height"] = 28,
						["health"] = {
							["yOffset"] = -6,
						},
						["visibility"] = "[nogroup] hide;show",
						["width"] = 140,
					},
					["arena"] = {
						["spacing"] = 26,
						["castbar"] = {
							["width"] = 246,
						},
					},
					["assist"] = {
						["enable"] = false,
					},
				},
			},
			["datatexts"] = {
				["minimapPanels"] = false,
				["fontSize"] = 11,
				["font"] = "Expressway",
				["goldFormat"] = "SHORT",
				["panelTransparency"] = true,
				["leftChatPanel"] = false,
				["panels"] = {
					["LeftMiniPanel"] = "",
					["RightMiniPanel"] = "",
					["RightChatDataPanel"] = {
						["right"] = "",
						["left"] = "",
						["middle"] = "",
					},
					["BottomMiniPanel"] = "Time",
					["LeftChatDataPanel"] = {
						["right"] = "",
						["left"] = "",
						["middle"] = "",
					},
				},
				["rightChatPanel"] = false,
			},
			["actionbar"] = {
				["bar3"] = {
					["inheritGlobalFade"] = true,
					["buttonsize"] = 38,
					["buttonsPerRow"] = 3,
				},
				["fontSize"] = 9,
				["bar2"] = {
					["enabled"] = true,
					["inheritGlobalFade"] = true,
					["buttonsize"] = 38,
				},
				["bar1"] = {
					["heightMult"] = 2,
					["inheritGlobalFade"] = true,
					["buttonsize"] = 38,
				},
				["bar5"] = {
					["inheritGlobalFade"] = true,
					["buttonsize"] = 38,
					["buttonsPerRow"] = 3,
				},
				["globalFadeAlpha"] = 0.87,
				["stanceBar"] = {
					["inheritGlobalFade"] = true,
				},
				["bar6"] = {
					["buttonsize"] = 38,
				},
				["bar4"] = {
					["enabled"] = false,
					["backdrop"] = false,
					["buttonsize"] = 38,
				},
			},
			["layoutSet"] = "dpsMelee",
			["tooltip"] = {
				["textFontSize"] = 11,
				["font"] = "Expressway",
				["healthBar"] = {
					["font"] = "Expressway",
				},
				["headerFontSize"] = 11,
				["fontSize"] = 11,
				["smallTextFontSize"] = 11,
			},
			["v11NamePlateReset"] = true,
			["auras"] = {
				["debuffs"] = {
					["countFontSize"] = 11,
					["durationFontSize"] = 11,
				},
				["font"] = "Expressway",
				["buffs"] = {
					["countFontSize"] = 11,
					["maxWraps"] = 2,
					["durationFontSize"] = 11,
				},
			},
		},
		["Piecez Heal"] = {
			["databars"] = {
				["reputation"] = {
					["enable"] = true,
					["textFormat"] = "REM",
				},
				["azerite"] = {
					["textFormat"] = "CURPERC",
					["height"] = 15,
					["font"] = "Expressway",
					["textSize"] = 14,
					["width"] = 375,
				},
				["experience"] = {
					["height"] = 98,
					["font"] = "Expressway",
					["textSize"] = 10,
					["width"] = 17,
				},
				["honor"] = {
					["enable"] = false,
				},
			},
			["currentTutorial"] = 1,
			["sle"] = {
				["datatexts"] = {
					["panel1"] = {
						["enabled"] = true,
						["noback"] = true,
						["width"] = 315,
					},
				},
			},
			["movers"] = {
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,54,755",
				["TopCenterContainerMover"] = "TOP,ElvUIParent,TOP,0,-30",
				["ElvUF_FocusCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,303,514",
				["RaidMarkerBarAnchor"] = "TOP,ElvUIParent,TOP,12,-1",
				["PetAB"] = "BOTTOM,ElvUIParent,BOTTOM,0,147",
				["ElvUF_RaidMover"] = "BOTTOM,ElvUIParent,BOTTOM,3,0",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,0,0",
				["GMMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-256",
				["BuffsMover"] = "TOPRIGHT,MMHolder,TOPLEFT,-7,-1",
				["GhostFrameMover"] = "TOP,ElvUIParent,TOP,0,-150",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-249,339",
				["MirrorTimer3Mover"] = "TOP,MirrorTimer2,BOTTOM,0,0",
				["BossButton"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-603,142",
				["LootFrameMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,382,294",
				["ZoneAbility"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-601,142",
				["SocialMenuMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-164",
				["RightChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,0,0",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,-311,334",
				["ElvUF_RaidpetMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,405",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-249,364",
				["SLE_DataPanel_1_Mover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,0,0",
				["ElvUF_FocusMover"] = "BOTTOM,ElvUIParent,BOTTOM,304,484",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,250,424",
				["ElvUF_TargetTargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-490,364",
				["PetBattleABMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,4",
				["DurabilityFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-392,-211",
				["UIErrorsFrameMover"] = "TOP,UIParent,TOP,0,-122",
				["VehicleSeatMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-82,-333",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,249,364",
				["ExperienceBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,365,275",
				["LevelUpBossBannerMover"] = "TOP,ElvUIParent,TOP,0,-120",
				["ElvUIBankMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,180,408",
				["VOICECHAT"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,380,250",
				["LossControlMover"] = "CENTER,UIParent,CENTER,0,0",
				["ElvUF_Raid40Mover"] = "BOTTOM,ElvUIParent,BOTTOM,0,4",
				["MirrorTimer1Mover"] = "TOP,UIParent,TOP,0,-96",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-204",
				["ElvAB_1"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,275",
				["ElvAB_2"] = "TOPLEFT,ElvUIParent,TOPLEFT,417,-364",
				["BelowMinimapContainerMover"] = "TOP,ElvUIParent,TOP,300,-178",
				["TalkingHeadFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,277,-25",
				["ElvAB_4"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-42,-334",
				["ElvAB_3"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,307",
				["AzeriteBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,375",
				["PetBattleStatusMover"] = "TOP,PetBattleFrame,TOP,0,0",
				["ReputationBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,80,392",
				["VehicleLeaveButton"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,408",
				["ElvAB_5"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-334",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,8,-34",
				["ObjectiveFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-4",
				["MirrorTimer2Mover"] = "TOP,MirrorTimer1,BOTTOM,0,0",
				["ElvNP_PlayerMover"] = "TOP,UIParent,CENTER,0,-150",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,107,1000",
				["RaidUtility_Mover"] = "TOP,ElvUIParent,TOP,-170,-4",
				["ElvAB_6"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,341",
				["TooltipMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-381,4",
				["ElvUF_PetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-221,315",
				["BossHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-327,-441",
				["TotemBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,461,4",
				["ElvUIBagMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-136,276",
				["ElvUF_PartyMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,432,-365",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,13,-340",
				["DebuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-188,-103",
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-4",
			},
			["CBS"] = {
				["player"] = {
					["enable"] = false,
				},
			},
			["bags"] = {
				["countFontSize"] = 12,
				["countFont"] = "UbuntuCondensed",
				["itemLevelFont"] = "UbuntuCondensed",
				["itemLevelFontSize"] = 12,
				["countFontOutline"] = "OUTLINE",
			},
			["auras"] = {
				["font"] = "UbuntuCondensed",
				["debuffs"] = {
					["countFontSize"] = 12,
					["durationFontSize"] = 12,
				},
				["buffs"] = {
					["countFontSize"] = 12,
					["maxWraps"] = 2,
					["durationFontSize"] = 12,
					["wrapAfter"] = 16,
				},
				["fontOutline"] = "OUTLINE",
			},
			["chat"] = {
				["fontSize"] = 12,
				["tabFont"] = "UbuntuCondensed",
				["panelColor"] = {
					["a"] = 0,
					["r"] = 0.05882352941176471,
					["g"] = 0.05882352941176471,
					["b"] = 0.05882352941176471,
				},
				["panelBackdrop"] = "HIDEBOTH",
				["editBoxPosition"] = "ABOVE_CHAT",
				["panelHeightRight"] = 256,
				["font"] = "UbuntuCondensed",
				["panelColorConverted"] = true,
				["panelHeight"] = 222,
				["timeStampFormat"] = "%H:%M ",
				["panelWidthRight"] = 315,
				["tapFontSize"] = 12,
				["panelWidth"] = 449,
			},
			["general"] = {
				["stickyFrames"] = false,
				["fontStyle"] = "MONOCHROMEOUTLINE",
				["minimap"] = {
					["locationFont"] = "UbuntuCondensed",
				},
				["font"] = "UbuntuCondensed",
				["altPowerBar"] = {
					["statusBar"] = "Melli",
					["statusBarColor"] = {
						["r"] = 0.06274509803921569,
						["g"] = 0.6470588235294118,
						["b"] = 1,
					},
					["font"] = "Metropolis-SemiBold",
				},
				["valuecolor"] = {
					["a"] = 1,
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["resurrectSound"] = true,
				["objectiveFrameHeight"] = 420,
				["bottomPanel"] = false,
			},
			["dbConverted"] = 12.16,
			["datatexts"] = {
				["minimapPanels"] = false,
				["noCombatHover"] = true,
				["panelBackdrop"] = false,
				["panelTransparency"] = true,
				["font"] = "UbuntuCondensed",
				["panels"] = {
					["MinimapPanel"] = {
						"Time", -- [1]
						"Date", -- [2]
					},
					["RightChatDataPanel"] = {
						["enable"] = false,
						["right"] = "",
						["left"] = "",
						["middle"] = "",
					},
					["LeftChatDataPanel"] = {
						["middle"] = "Time",
						["left"] = "System",
						[3] = "System",
						["panelTransparency"] = true,
						["right"] = "Durability",
						["border"] = false,
						["backdrop"] = false,
					},
				},
				["rightChatPanel"] = false,
			},
			["actionbar"] = {
				["bar3"] = {
					["buttons"] = 12,
					["backdrop"] = true,
					["buttonsPerRow"] = 12,
					["backdropSpacing"] = 1,
					["buttonsize"] = 29,
				},
				["bar6"] = {
					["enabled"] = true,
					["backdrop"] = true,
					["backdropSpacing"] = 1,
					["buttonsize"] = 29,
				},
				["bar1"] = {
					["backdrop"] = true,
					["backdropSpacing"] = 1,
					["buttonsize"] = 29,
				},
				["bar5"] = {
					["point"] = "TOPRIGHT",
					["buttonsPerRow"] = 1,
					["backdrop"] = true,
					["buttons"] = 12,
				},
				["font"] = "UbuntuCondensed",
				["fontOutline"] = "OUTLINE",
				["macrotext"] = true,
				["stanceBar"] = {
					["enabled"] = false,
				},
				["barPet"] = {
					["buttonsize"] = 25,
					["buttonsPerRow"] = 5,
				},
				["microbar"] = {
					["buttons"] = 11,
				},
			},
			["nameplates"] = {
				["font"] = "UbuntuCondensed",
				["statusbar"] = "ElvUI Blank",
				["units"] = {
					["ENEMY_NPC"] = {
						["debuffs"] = {
							["countFontSize"] = 14,
							["countFont"] = "Friz Quadrata TT",
						},
						["health"] = {
							["height"] = 15,
							["text"] = {
								["font"] = "UbuntuCondensed",
								["fontSize"] = 13,
							},
						},
						["castbar"] = {
							["height"] = 12,
							["font"] = "Metropolis-SemiBold",
							["showIcon"] = false,
							["yOffset"] = -14,
						},
						["level"] = {
							["font"] = "UbuntuCondensed",
							["fontSize"] = 13,
						},
						["buffs"] = {
							["countFontSize"] = 14,
							["countFont"] = "Friz Quadrata TT",
						},
						["name"] = {
							["font"] = "UbuntuCondensed",
							["fontSize"] = 13,
						},
					},
					["TARGET"] = {
						["glowStyle"] = "style1",
					},
					["ENEMY_PLAYER"] = {
						["health"] = {
							["height"] = 15,
							["text"] = {
								["font"] = "Friz Quadrata TT",
								["fontSize"] = 13,
							},
						},
						["debuffs"] = {
							["countFontSize"] = 14,
							["priority"] = "Blacklist,Personal,CCDebuffs",
							["countFont"] = "Friz Quadrata TT",
						},
						["title"] = {
							["format"] = "[npctitle]",
						},
						["power"] = {
							["displayAltPower"] = true,
						},
						["name"] = {
							["fontSize"] = 13,
							["format"] = "[name:short]",
							["font"] = "Friz Quadrata TT",
						},
						["level"] = {
							["fontSize"] = 13,
							["format"] = "[difficultycolor][level][shortclassification]",
							["font"] = "Friz Quadrata TT",
						},
						["buffs"] = {
							["countFontSize"] = 14,
							["priority"] = "Blacklist,RaidBuffsElvUI,Dispellable,blockNoDuration,PlayerBuffs,TurtleBuffs,CastByUnit",
							["maxDuration"] = 0,
							["countFont"] = "Friz Quadrata TT",
						},
						["castbar"] = {
							["height"] = 12,
							["font"] = "Metropolis-SemiBold",
							["showIcon"] = false,
							["yOffset"] = -14,
						},
					},
				},
			},
			["unitframe"] = {
				["fontSize"] = 14,
				["colors"] = {
					["castColor"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
					["castbar_backdrop"] = {
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
					["colorhealthbyvalue"] = false,
					["healthclass"] = true,
					["customhealthbackdrop"] = true,
					["health_backdrop"] = {
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
					["customcastbarbackdrop"] = true,
					["power_backdrop"] = {
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
					["custompowerbackdrop"] = true,
				},
				["fontOutline"] = "NONE",
				["font"] = "UbuntuCondensed",
				["statusbar"] = "Melli",
				["smoothbars"] = true,
				["units"] = {
					["tank"] = {
						["enable"] = false,
					},
					["targettargettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["player"] = {
						["RestIcon"] = {
							["enable"] = false,
						},
						["debuffs"] = {
							["perrow"] = 6,
							["sizeOverride"] = 24,
						},
						["castbar"] = {
							["height"] = 24,
							["icon"] = false,
							["width"] = 215,
						},
						["customTexts"] = {
							["Health text"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[health:current]",
								["yOffset"] = 0,
								["font"] = "UbuntuCondensed",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "NONE",
								["xOffset"] = -5,
								["size"] = 14,
							},
							["[absorbs]"] = {
								["attachTextTo"] = "Health",
								["enable"] = false,
								["text_format"] = "[absorbs]",
								["yOffset"] = 0,
								["font"] = "Expressway",
								["justifyH"] = "LEFT",
								["fontOutline"] = "NONE",
								["xOffset"] = 2,
								["size"] = 12,
							},
						},
						["raidRoleIcons"] = {
							["position"] = "TOPRIGHT",
						},
						["width"] = 215,
						["aurabar"] = {
							["enable"] = false,
						},
						["health"] = {
							["xOffset"] = 4,
							["frequentUpdates"] = true,
							["text_format"] = "[health:percent]",
						},
						["power"] = {
							["enable"] = false,
							["position"] = "BOTTOM",
							["xOffset"] = 0,
							["height"] = 13,
							["text_format"] = "[classpowercolor][classpower:current][  >power:current]",
							["yOffset"] = -13,
						},
						["height"] = 35,
						["buffs"] = {
							["attachTo"] = "FRAME",
							["yOffset"] = 2,
						},
						["classbar"] = {
							["enable"] = false,
						},
						["pvp"] = {
							["text_format"] = "",
						},
					},
					["focustarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["boss"] = {
						["debuffs"] = {
							["xOffset"] = 2,
							["sizeOverride"] = 15,
							["anchorPoint"] = "RIGHT",
							["yOffset"] = 8,
						},
						["disableTargetGlow"] = true,
						["power"] = {
							["text_format"] = "",
							["height"] = 4,
						},
						["customTexts"] = {
							["Power text"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[powercolor][power:percent]",
								["yOffset"] = -12,
								["font"] = "Metropolis-SemiBold",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 14,
							},
						},
						["growthDirection"] = "UP",
						["castbar"] = {
							["height"] = 10,
							["width"] = 165,
						},
						["health"] = {
							["xOffset"] = 0,
							["text_format"] = "[health:current]",
							["frequentUpdates"] = true,
							["position"] = "CENTER",
						},
						["spacing"] = 10,
						["height"] = 32,
						["buffs"] = {
							["xOffset"] = -2,
							["sizeOverride"] = 15,
							["numrows"] = 2,
							["yOffset"] = 9,
						},
						["name"] = {
							["xOffset"] = 2,
							["yOffset"] = 7,
							["text_format"] = "[name:short]",
							["position"] = "TOPLEFT",
						},
						["width"] = 165,
					},
					["target"] = {
						["debuffs"] = {
							["anchorPoint"] = "TOPLEFT",
							["sizeOverride"] = 24,
							["attachTo"] = "FRAME",
							["maxDuration"] = 0,
							["perrow"] = 6,
						},
						["castbar"] = {
							["iconXOffset"] = -87,
							["iconAttached"] = false,
							["iconAttachedTo"] = "Castbar",
							["height"] = 30,
							["iconPosition"] = "TOP",
							["iconYOffset"] = 4,
							["width"] = 215,
						},
						["customTexts"] = {
							["Health text"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[health:current]",
								["yOffset"] = 0,
								["font"] = "UbuntuCondensed",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "NONE",
								["xOffset"] = -5,
								["size"] = 14,
							},
							["[powercolor][power:percent]"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[powercolor][power:percent]",
								["yOffset"] = -27,
								["font"] = "UbuntuCondensed",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "NONE",
								["xOffset"] = 2,
								["size"] = 14,
							},
						},
						["width"] = 215,
						["power"] = {
							["enable"] = false,
							["height"] = 12,
							["text_format"] = "",
							["xOffset"] = 0,
						},
						["name"] = {
							["yOffset"] = 8,
							["text_format"] = "[name:short]",
							["position"] = "TOP",
						},
						["health"] = {
							["xOffset"] = 4,
							["text_format"] = "[health:percent]",
							["frequentUpdates"] = true,
							["position"] = "LEFT",
						},
						["orientation"] = "LEFT",
						["height"] = 35,
						["buffs"] = {
							["anchorPoint"] = "BOTTOMLEFT",
							["sizeOverride"] = 24,
							["attachTo"] = "HEALTH",
							["perrow"] = 6,
						},
						["pvpIcon"] = {
							["anchorPoint"] = "TOPRIGHT",
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["party"] = {
						["horizontalSpacing"] = -1,
						["debuffs"] = {
							["perrow"] = 3,
							["sizeOverride"] = 34,
						},
						["disableTargetGlow"] = true,
						["rdebuffs"] = {
							["font"] = "UbuntuCondensed",
						},
						["resurrectIcon"] = {
							["attachTo"] = "LEFT",
						},
						["phaseIndicator"] = {
							["anchorPoint"] = "LEFT",
						},
						["groupBy"] = "ROLE",
						["roleIcon"] = {
							["xOffset"] = 4,
							["position"] = "LEFT",
						},
						["readycheckIcon"] = {
							["position"] = "LEFT",
						},
						["power"] = {
							["text_format"] = "[powercolor][power:percent]",
							["height"] = 4,
						},
						["width"] = 159,
						["name"] = {
							["text_format"] = "[name:short] [difficultycolor][smartlevel]",
						},
						["verticalSpacing"] = -1,
						["height"] = 58,
						["buffs"] = {
							["anchorPoint"] = "CENTER",
							["sizeOverride"] = 16,
							["xOffset"] = 52,
							["perrow"] = 2,
							["yOffset"] = -6,
						},
						["health"] = {
							["text_format"] = "",
						},
						["raidicon"] = {
							["attachTo"] = "RIGHT",
							["xOffset"] = 14,
							["yOffset"] = 0,
						},
					},
					["raid40"] = {
						["horizontalSpacing"] = -1,
						["debuffs"] = {
							["priority"] = "Blacklist,Boss,RaidDebuffs,CCDebuffs,Dispellable",
						},
						["disableTargetGlow"] = true,
						["power"] = {
							["height"] = 4,
							["enable"] = true,
						},
						["showPlayer"] = false,
						["growthDirection"] = "RIGHT_UP",
						["health"] = {
							["text_format"] = "[health:deficit]",
						},
						["name"] = {
							["xOffset"] = 1,
							["text_format"] = "[name:veryshort]",
							["position"] = "TOPLEFT",
						},
						["width"] = 76,
						["height"] = 31,
						["verticalSpacing"] = -1,
						["roleIcon"] = {
							["xOffset"] = 1,
							["position"] = "TOPLEFT",
							["yOffset"] = -1,
						},
						["rdebuffs"] = {
							["font"] = "UbuntuCondensed",
							["fontOutline"] = "OUTLINE",
							["enable"] = true,
							["size"] = 19,
							["xOffset"] = 23,
							["yOffset"] = 7,
						},
					},
					["focus"] = {
						["health"] = {
							["frequentUpdates"] = true,
							["text_format"] = "[health:percent]",
						},
						["debuffs"] = {
							["anchorPoint"] = "BOTTOMLEFT",
						},
						["disableTargetGlow"] = true,
						["power"] = {
							["enable"] = false,
						},
						["height"] = 24,
						["name"] = {
							["yOffset"] = 8,
							["text_format"] = "[name:short]",
							["position"] = "TOPLEFT",
						},
						["castbar"] = {
							["iconXOffset"] = -2,
							["iconSize"] = 44,
							["iconAttachedTo"] = "Castbar",
							["height"] = 25,
							["iconAttached"] = false,
							["iconYOffset"] = -10,
							["width"] = 112,
						},
						["width"] = 112,
					},
					["assist"] = {
						["enable"] = false,
					},
					["raid"] = {
						["horizontalSpacing"] = -1,
						["raidWideSorting"] = true,
						["disableTargetGlow"] = true,
						["power"] = {
							["height"] = 4,
						},
						["healPrediction"] = {
							["anchorPoint"] = "CENTER",
							["height"] = 26,
						},
						["width"] = 92,
						["sortDir"] = "DESC",
						["name"] = {
							["xOffset"] = 1,
							["text_format"] = "[name:veryshort]",
							["position"] = "TOPLEFT",
						},
						["health"] = {
							["text_format"] = "[health:deficit]",
						},
						["height"] = 53,
						["verticalSpacing"] = -1,
						["groupBy"] = "ROLE",
						["rdebuffs"] = {
							["font"] = "UbuntuCondensed",
							["fontOutline"] = "OUTLINE",
							["xOffset"] = 23,
							["size"] = 19,
							["yOffset"] = 7,
						},
					},
					["pet"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
						["power"] = {
							["enable"] = false,
						},
						["height"] = 28,
						["name"] = {
							["text_format"] = "[name:short]",
						},
						["castbar"] = {
							["enable"] = false,
						},
						["width"] = 90,
					},
					["targettarget"] = {
						["debuffs"] = {
							["anchorPoint"] = "BOTTOMLEFT",
						},
						["threatStyle"] = "GLOW",
						["power"] = {
							["enable"] = false,
						},
						["height"] = 24,
						["name"] = {
							["yOffset"] = 8,
							["text_format"] = "[name:short]",
							["position"] = "TOPLEFT",
						},
						["health"] = {
							["frequentUpdates"] = true,
							["text_format"] = "[health:percent]",
						},
						["width"] = 112,
					},
				},
			},
			["v11NamePlateReset"] = true,
			["tooltip"] = {
				["fontSize"] = 12,
				["healthBar"] = {
					["statusPosition"] = "TOP",
					["font"] = "UbuntuCondensed",
					["fontSize"] = 15,
					["height"] = 4,
				},
				["fontOutline"] = "OUTLINE",
				["modifierID"] = "ALT",
				["visibility"] = {
					["combatOverride"] = "ALT",
				},
				["font"] = "UbuntuCondensed",
			},
		},
		["AdrioxHeal"] = {
			["databars"] = {
				["artifact"] = {
					["enable"] = false,
				},
				["azerite"] = {
					["textFormat"] = "CURMAX",
					["fontOutline"] = "OUTLINE",
					["height"] = 15,
					["hideInCombat"] = true,
					["mouseover"] = true,
					["width"] = 500,
				},
				["experience"] = {
					["height"] = 25,
					["width"] = 500,
				},
				["honor"] = {
					["enable"] = false,
				},
			},
			["currentTutorial"] = 1,
			["sle"] = {
				["misc"] = {
					["threat"] = {
						["enable"] = true,
					},
				},
				["raidmarkers"] = {
					["enable"] = false,
				},
				["loot"] = {
					["announcer"] = {
						["enable"] = true,
						["quality"] = "RARE",
					},
					["enable"] = true,
				},
				["unitframes"] = {
					["unit"] = {
						["party"] = {
							["offline"] = {
								["enable"] = true,
							},
						},
					},
				},
			},
			["v11NamePlateReset"] = true,
			["auras"] = {
				["font"] = "Expressway",
				["fontOutline"] = "OUTLINE",
				["buffs"] = {
					["countFontSize"] = 12,
					["durationFontSize"] = 11,
					["size"] = 30,
					["horizontalSpacing"] = 4,
					["wrapAfter"] = 16,
				},
				["cooldown"] = {
					["mmssThreshold"] = 7600,
					["checkSeconds"] = true,
				},
				["debuffs"] = {
					["countFontSize"] = 12,
					["size"] = 30,
					["horizontalSpacing"] = 2,
					["durationFontSize"] = 11,
				},
			},
			["movers"] = {
				["TopCenterContainerMover"] = "TOP,ElvUIParent,TOP,0,-37",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,31,829",
				["PetAB"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,0,201",
				["ElvUF_RaidMover"] = "BOTTOM,ElvUIParent,BOTTOM,-1,0",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,0,0",
				["GMMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,0,0",
				["BuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-183,0",
				["GhostFrameMover"] = "TOP,ElvUIParent,TOP,0,-87",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-268,320",
				["MirrorTimer3Mover"] = "TOP,ElvUIParent,TOP,-1,-203",
				["BossButton"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-580,209",
				["LootFrameMover"] = "TOP,ElvUIParent,TOP,0,-220",
				["ZoneAbility"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-580,209",
				["SocialMenuMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,517,0",
				["PlayerPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,190,532",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,0,0",
				["ElvUF_RaidpetMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,-1,327",
				["TotemBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,512,4",
				["ElvUF_PetMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,562,255",
				["ElvUF_FocusMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,582,293",
				["DurabilityFrameMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-379,220",
				["ElvUF_PetCastbarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,567,371",
				["ElvUF_TargetTargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-580,293",
				["MicrobarMover"] = "TOP,ElvUIParent,TOP,0,-17",
				["UIErrorsFrameMover"] = "TOP,ElvUIParent,TOP,0,-149",
				["VehicleSeatMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,0,-203",
				["ArenaHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-25,-349",
				["ExperienceBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,7,63",
				["ElvUIBankMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,208",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,270,339",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,270,320",
				["LossControlMover"] = "TOP,ElvUIParent,TOP,2,-367",
				["LevelUpBossBannerMover"] = "TOP,ElvUIParent,TOP,-4,-208",
				["MirrorTimer1Mover"] = "TOP,ElvUIParent,TOP,-2,-169",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1077",
				["ElvAB_1"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,0,266",
				["ElvAB_2"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,0,296",
				["BelowMinimapContainerMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,194,346",
				["ElvAB_4"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,177,237",
				["TalkingHeadFrameMover"] = "TOP,ElvUIParent,TOP,0,-47",
				["ElvAB_3"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,176,206",
				["AltPowerBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-528,172",
				["PetBattleStatusMover"] = "TOP,PetBattleFrame,TOP,0,0",
				["ElvAB_5"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,0,237",
				["VehicleLeaveButton"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,465,211",
				["ElvUF_FocusCastbarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,582,277",
				["AzeriteBarMover"] = "TOP,ElvUIParent,TOP,0,0",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-55,-221",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-10,-250",
				["VOICECHAT"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-4",
				["ElvUF_Raid40Mover"] = "BOTTOM,ElvUIParent,BOTTOM,11,0",
				["RaidUtility_Mover"] = "TOP,ElvUIParent,TOP,-165,1",
				["ElvAB_6"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,0,206",
				["TooltipMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,1,208",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,30,894",
				["BossHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-350,-342",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-268,339",
				["ElvUIBagMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-48,78",
				["ElvUF_PartyMover"] = "BOTTOM,ElvUIParent,BOTTOM,10,192",
				["AlertFrameMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,450",
				["DebuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-179,-157",
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,0,0",
			},
			["gridSize"] = 100,
			["tooltip"] = {
				["visibility"] = {
					["combatOverride"] = "HIDE",
				},
				["alwaysShowRealm"] = true,
				["healthBar"] = {
					["height"] = 1,
					["font"] = "PT Sans Narrow",
					["text"] = false,
				},
				["fontSize"] = 12,
			},
			["bags"] = {
				["junkIcon"] = true,
				["countFont"] = "PT Sans Narrow",
				["itemLevelFont"] = "PT Sans Narrow",
				["split"] = {
					["bagSpacing"] = 6,
				},
				["vendorGrays"] = {
					["details"] = true,
					["enable"] = true,
				},
				["clearSearchOnClose"] = true,
				["itemLevelCustomColor"] = {
					["b"] = 0,
					["r"] = 0,
				},
				["countFontOutline"] = "OUTLINE",
				["showBindType"] = true,
				["bankWidth"] = 525,
				["itemLevelFontSize"] = 12,
				["itemLevelFontOutline"] = "OUTLINE",
				["bagWidth"] = 500,
				["itemLevelCustomColorEnable"] = true,
				["sortInverted"] = false,
				["countFontSize"] = 12,
			},
			["unitframe"] = {
				["fontSize"] = 16,
				["colors"] = {
					["frameGlow"] = {
						["targetGlow"] = {
							["enable"] = false,
						},
					},
					["auraBarBuff"] = {
						["b"] = 0.368627450980392,
						["g"] = 0.368627450980392,
						["r"] = 0.368627450980392,
					},
					["auraBarTurtleColor"] = {
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["auraBarTurtle"] = false,
					["castColor"] = {
						["b"] = 0.4,
						["g"] = 0.4,
						["r"] = 0.4,
					},
					["healPrediction"] = {
						["absorbs"] = {
							["a"] = 0,
						},
						["healAbsorbs"] = {
							["a"] = 0,
						},
						["others"] = {
							["a"] = 0,
						},
						["personal"] = {
							["a"] = 0,
							["b"] = 0.501960784313726,
						},
					},
					["colorhealthbyvalue"] = false,
					["healthclass"] = true,
					["castNoInterrupt"] = {
						["b"] = 0,
						["g"] = 0,
						["r"] = 1,
					},
					["health_backdrop"] = {
						["b"] = 0.203921568627451,
						["g"] = 0.203921568627451,
						["r"] = 0.203921568627451,
					},
					["health"] = {
						["b"] = 0.309803921568627,
						["g"] = 0.309803921568627,
						["r"] = 0.309803921568627,
					},
					["debuffHighlight"] = {
						["Poison"] = {
							["a"] = 1,
						},
						["Curse"] = {
							["a"] = 1,
						},
						["Magic"] = {
							["a"] = 1,
						},
						["Disease"] = {
							["a"] = 0.980000000447035,
						},
					},
					["disconnected"] = {
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["useDeadBackdrop"] = true,
					["auraBarByType"] = false,
					["health_backdrop_dead"] = {
						["b"] = 0,
						["g"] = 0,
						["r"] = 1,
					},
				},
				["fontOutline"] = "OUTLINE",
				["font"] = "Expressway",
				["smoothbars"] = true,
				["cooldown"] = {
					["fonts"] = {
						["enable"] = true,
						["font"] = "Expressway",
						["fontSize"] = 12,
					},
					["mmssThreshold"] = 1200,
					["checkSeconds"] = true,
				},
				["units"] = {
					["pet"] = {
						["name"] = {
							["text_format"] = "[name:medium]",
						},
						["castbar"] = {
							["enable"] = false,
							["textColor"] = {
								["b"] = 1,
								["g"] = 1,
								["r"] = 1,
							},
							["width"] = 130,
						},
						["enable"] = false,
						["health"] = {
							["frequentUpdates"] = true,
							["text_format"] = "[healthcolor]",
						},
						["width"] = 80,
					},
					["tank"] = {
						["enable"] = false,
					},
					["targettargettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["targettarget"] = {
						["debuffs"] = {
							["enable"] = false,
						},
						["name"] = {
							["text_format"] = "[name:veryshort]",
						},
						["power"] = {
							["enable"] = false,
						},
						["height"] = 26,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["width"] = 80,
					},
					["raid"] = {
						["horizontalSpacing"] = 2,
						["debuffs"] = {
							["anchorPoint"] = "CENTER",
							["sizeOverride"] = 28,
							["enable"] = true,
							["desaturate"] = false,
							["countFont"] = "Expressway",
							["yOffset"] = -10,
						},
						["rdebuffs"] = {
							["size"] = 20,
							["font"] = "PT Sans Narrow",
							["xOffset"] = 39,
							["fontOutline"] = "OUTLINE",
							["enable"] = false,
							["duration"] = {
								["color"] = {
									["g"] = 1,
									["b"] = 1,
								},
							},
							["stack"] = {
								["xOffset"] = 2,
								["color"] = {
									["g"] = 1,
									["b"] = 1,
								},
								["yOffset"] = 0,
							},
							["yOffset"] = 27,
						},
						["numGroups"] = 4,
						["growthDirection"] = "DOWN_RIGHT",
						["groupBy"] = "CLASS",
						["classbar"] = {
							["enable"] = false,
						},
						["roleIcon"] = {
							["xOffset"] = 0,
							["position"] = "TOP",
							["yOffset"] = 0,
						},
						["power"] = {
							["enable"] = false,
							["position"] = "RIGHT",
							["text_format"] = "[power:current]",
							["yOffset"] = 0,
						},
						["healPrediction"] = {
							["enable"] = true,
						},
						["width"] = 110,
						["infoPanel"] = {
							["height"] = 15,
						},
						["buffIndicator"] = {
							["size"] = 18,
							["fontSize"] = 86,
						},
						["name"] = {
							["xOffset"] = 2,
							["text_format"] = "[name:veryshort]",
						},
						["buffs"] = {
							["anchorPoint"] = "RIGHT",
							["sizeOverride"] = 22,
							["sortMethod"] = "DURATION",
							["xOffset"] = -95,
							["priority"] = "",
							["attachTo"] = "HEALTH",
						},
						["height"] = 50,
						["verticalSpacing"] = 2,
						["visibility"] = "[@raid1,noexists][@raid21,exists] hide;show",
						["health"] = {
							["yOffset"] = 0,
							["text_format"] = "",
							["position"] = "LEFT",
						},
					},
					["focustarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["assist"] = {
						["enable"] = false,
					},
					["raidpet"] = {
						["horizontalSpacing"] = 1,
						["verticalSpacing"] = 1,
						["rdebuffs"] = {
							["enable"] = false,
						},
					},
					["player"] = {
						["debuffs"] = {
							["enable"] = false,
							["sizeOverride"] = 9,
							["maxDuration"] = 10800,
						},
						["portrait"] = {
							["rotation"] = 360,
							["xOffset"] = 0.0800000000000001,
							["width"] = 15,
						},
						["castbar"] = {
							["spark"] = false,
							["textColor"] = {
								["b"] = 1,
								["g"] = 1,
								["r"] = 1,
							},
							["width"] = 250,
							["format"] = "CURRENTMAX",
							["ticks"] = false,
							["latency"] = false,
						},
						["width"] = 250,
						["infoPanel"] = {
							["height"] = 10,
						},
						["aurabar"] = {
							["enable"] = false,
							["attachTo"] = "FRAME",
							["maxBars"] = 5,
							["sort"] = "TIME_DURATION",
						},
						["health"] = {
							["xOffset"] = -2,
							["text_format"] = "[health:current] || [health:percent]",
							["frequentUpdates"] = true,
							["position"] = "RIGHT",
						},
						["power"] = {
							["attachTextTo"] = "Frame",
							["xOffset"] = 0,
							["strataAndLevel"] = {
								["frameLevel"] = 2,
							},
							["position"] = "BOTTOM",
							["enable"] = false,
							["detachedWidth"] = 270,
							["text_format"] = "[power:current]",
							["width"] = "offset",
						},
						["height"] = 30,
						["name"] = {
							["yOffset"] = 24,
							["text_format"] = "[name]",
							["position"] = "RIGHT",
						},
						["classbar"] = {
							["enable"] = false,
							["additionalPowerText"] = false,
						},
						["pvp"] = {
							["text_format"] = "",
						},
					},
					["raid40"] = {
						["horizontalSpacing"] = 2,
						["debuffs"] = {
							["anchorPoint"] = "CENTER",
							["sizeOverride"] = 30,
							["enable"] = true,
							["sortDirection"] = "ASCENDING",
							["yOffset"] = -11,
						},
						["rdebuffs"] = {
							["font"] = "PT Sans Narrow",
						},
						["numGroups"] = 6,
						["growthDirection"] = "DOWN_RIGHT",
						["groupBy"] = "CLASS",
						["classbar"] = {
							["enable"] = false,
							["altPowerTextFormat"] = "",
						},
						["roleIcon"] = {
							["enable"] = true,
							["position"] = "TOP",
						},
						["healPrediction"] = {
							["enable"] = true,
						},
						["width"] = 92,
						["buffIndicator"] = {
							["size"] = 17,
						},
						["name"] = {
							["text_format"] = "[name:veryshort]",
						},
						["buffs"] = {
							["countFont"] = "Expressway",
						},
						["height"] = 50,
						["verticalSpacing"] = 2,
						["visibility"] = "[@raid21,noexists][@raid31,exists] hide;show",
						["health"] = {
							["text_format"] = "",
						},
					},
					["focus"] = {
						["debuffs"] = {
							["enable"] = false,
							["anchorPoint"] = "LEFT",
						},
						["name"] = {
							["text_format"] = "[name:medium]",
						},
						["castbar"] = {
							["hidetext"] = true,
							["spark"] = false,
							["height"] = 14,
							["format"] = "CURRENTMAX",
							["textColor"] = {
								["b"] = 1,
								["g"] = 1,
								["r"] = 1,
							},
							["width"] = 80,
						},
						["height"] = 26,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["power"] = {
							["enable"] = false,
						},
						["width"] = 80,
					},
					["target"] = {
						["debuffs"] = {
							["anchorPoint"] = "TOPLEFT",
							["sizeOverride"] = 20,
							["sortMethod"] = "INDEX",
							["enable"] = false,
							["priority"] = "Blacklist,Personal",
							["attachTo"] = "FRAME",
						},
						["portrait"] = {
							["rotation"] = 300,
							["style"] = "2D",
							["xOffset"] = 0.32,
						},
						["castbar"] = {
							["textColor"] = {
								["b"] = 1,
								["g"] = 1,
								["r"] = 1,
							},
							["format"] = "CURRENTMAX",
							["spark"] = false,
							["width"] = 250,
						},
						["width"] = 250,
						["name"] = {
							["attachTextTo"] = "Frame",
							["yOffset"] = 24,
							["text_format"] = "[name:medium]",
							["position"] = "LEFT",
						},
						["health"] = {
							["xOffset"] = 1,
							["text_format"] = "[health:percent] || [health:current]",
							["frequentUpdates"] = true,
							["position"] = "LEFT",
						},
						["fader"] = {
							["enable"] = false,
							["range"] = false,
						},
						["height"] = 30,
						["buffs"] = {
							["numrows"] = 10,
							["sizeOverride"] = 20,
							["enable"] = false,
							["minDuration"] = 1,
							["maxDuration"] = 60,
							["perrow"] = 7,
						},
						["power"] = {
							["powerPrediction"] = true,
							["strataAndLevel"] = {
								["frameLevel"] = 2,
							},
							["position"] = "RIGHT",
							["detachedWidth"] = 270,
							["height"] = 5,
							["text_format"] = "[power:current]",
							["xOffset"] = 0,
						},
						["aurabar"] = {
							["enable"] = false,
							["attachTo"] = "FRAME",
						},
					},
					["arena"] = {
						["enable"] = false,
						["healPrediction"] = {
							["absorbStyle"] = "WRAPPED",
						},
						["fader"] = {
							["enable"] = false,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["party"] = {
						["horizontalSpacing"] = 1,
						["debuffs"] = {
							["anchorPoint"] = "CENTER",
							["sizeOverride"] = 28,
							["perrow"] = 3,
							["yOffset"] = -9,
						},
						["rdebuffs"] = {
							["font"] = "PT Sans Narrow",
							["fontOutline"] = "OUTLINE",
							["enable"] = false,
							["stack"] = {
								["xOffset"] = 2,
								["color"] = {
									["g"] = 1,
									["b"] = 1,
								},
								["yOffset"] = 0,
							},
							["xOffset"] = 34,
							["yOffset"] = 33,
						},
						["growthDirection"] = "RIGHT_DOWN",
						["buffIndicator"] = {
							["size"] = 20,
							["fontSize"] = 15,
						},
						["classbar"] = {
							["enable"] = false,
						},
						["targetGlow"] = false,
						["power"] = {
							["text_format"] = "",
							["height"] = 10,
						},
						["width"] = 112,
						["healPrediction"] = {
							["enable"] = true,
						},
						["petsGroup"] = {
							["enable"] = true,
							["anchorPoint"] = "BOTTOM",
							["name"] = {
								["text_format"] = "[name:short]",
							},
							["width"] = 112,
						},
						["groupsPerRowCol"] = 5,
						["buffs"] = {
							["anchorPoint"] = "BOTTOMLEFT",
							["sizeOverride"] = 22,
							["enable"] = true,
							["priority"] = "TurtleBuffs",
							["attachTo"] = "HEALTH",
							["perrow"] = 3,
						},
						["orientation"] = "MIDDLE",
						["name"] = {
							["text_format"] = "[name:medium]",
						},
						["groupBy"] = "ROLE",
						["height"] = 65,
						["verticalSpacing"] = 1,
						["visibility"] = "[@raid1,exists][nogroup] hide;show",
						["health"] = {
							["bgUseBarTexture"] = false,
							["text_format"] = "",
							["position"] = "CENTER",
						},
					},
					["boss"] = {
						["debuffs"] = {
							["anchorPoint"] = "TOPLEFT",
							["sizeOverride"] = 25,
							["perrow"] = 4,
							["attachTo"] = "HEALTH",
							["fontSize"] = 15,
							["yOffset"] = 0,
						},
						["castbar"] = {
							["height"] = 17,
							["format"] = "CURRENTMAX",
							["spark"] = false,
							["width"] = 210,
						},
						["width"] = 210,
						["power"] = {
							["text_format"] = "[power:current]",
						},
						["name"] = {
							["xOffset"] = 2,
							["text_format"] = "[name:short]",
						},
						["spacing"] = 45,
						["height"] = 40,
						["buffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 25,
							["perrow"] = 4,
							["attachTo"] = "HEALTH",
							["fontSize"] = 15,
							["yOffset"] = 0,
						},
						["health"] = {
							["frequentUpdates"] = true,
							["text_format"] = "[health:percent]",
						},
						["raidicon"] = {
							["size"] = 10,
						},
					},
				},
			},
			["CustomTweaks"] = {
				["BagButtons"] = {
					["stackButton"] = true,
				},
				["ChatMaxLines"] = {
					["MaxLines"] = 200,
				},
				["CastbarText"] = {
					["Player"] = {
						["duration"] = {
							["color"] = {
								["r"] = 1,
								["g"] = 1,
								["b"] = 1,
							},
						},
						["text"] = {
							["color"] = {
								["r"] = 1,
								["g"] = 1,
								["b"] = 1,
							},
						},
					},
					["Focus"] = {
						["duration"] = {
							["color"] = {
								["r"] = 1,
								["g"] = 1,
								["b"] = 1,
							},
						},
						["text"] = {
							["color"] = {
								["r"] = 1,
								["g"] = 1,
								["b"] = 1,
							},
						},
					},
					["Target"] = {
						["duration"] = {
							["color"] = {
								["r"] = 1,
								["g"] = 1,
								["b"] = 1,
							},
						},
						["text"] = {
							["color"] = {
								["r"] = 1,
								["g"] = 1,
								["b"] = 1,
							},
						},
					},
					["Arena"] = {
						["duration"] = {
							["color"] = {
								["r"] = 1,
								["g"] = 1,
								["b"] = 1,
							},
						},
						["text"] = {
							["color"] = {
								["r"] = 1,
								["g"] = 1,
								["b"] = 1,
							},
						},
					},
					["Pet"] = {
						["duration"] = {
							["color"] = {
								["r"] = 1,
								["g"] = 1,
								["b"] = 1,
							},
						},
						["text"] = {
							["color"] = {
								["r"] = 1,
								["g"] = 1,
								["b"] = 1,
							},
						},
					},
					["Boss"] = {
						["duration"] = {
							["color"] = {
								["r"] = 1,
								["g"] = 1,
								["b"] = 1,
							},
						},
						["text"] = {
							["color"] = {
								["r"] = 1,
								["g"] = 1,
								["b"] = 1,
							},
						},
					},
				},
			},
			["datatexts"] = {
				["minimapTopRight"] = true,
				["minimapBottom"] = true,
				["minimapBottomRight"] = true,
				["panels"] = {
					["LeftMiniPanel"] = "Time",
					["RightMiniPanel"] = "System",
					["RightChatDataPanel"] = {
						["right"] = "",
						["middle"] = "",
						["left"] = "",
					},
					["LeftChatDataPanel"] = {
						["right"] = "",
						["middle"] = "",
						["left"] = "",
					},
				},
				["battleground"] = false,
				["leftChatPanel"] = false,
				["rightChatPanel"] = false,
				["minimapBottomLeft"] = true,
				["panelBackdrop"] = false,
			},
			["actionbar"] = {
				["bar3"] = {
					["buttonsize"] = 27,
				},
				["bar6"] = {
					["enabled"] = true,
					["buttonsize"] = 27,
					["buttons"] = 6,
				},
				["extraActionButton"] = {
					["scale"] = 0.75,
				},
				["fontOutline"] = "OUTLINE",
				["microbar"] = {
					["enabled"] = true,
					["mouseover"] = true,
				},
				["noPowerColor"] = {
					["g"] = 0.466666666666667,
					["r"] = 0.309803921568627,
				},
				["bar2"] = {
					["enabled"] = true,
					["buttonsize"] = 27,
				},
				["bar1"] = {
					["buttonsize"] = 27,
				},
				["bar5"] = {
					["buttonsize"] = 27,
				},
				["fontSize"] = 11,
				["font"] = "Expressway",
				["cooldown"] = {
					["fonts"] = {
						["enable"] = true,
						["font"] = "Expressway",
						["fontSize"] = 30,
					},
					["mmssThreshold"] = 1200,
					["checkSeconds"] = true,
				},
				["hideCooldownBling"] = true,
				["macrotext"] = true,
				["stanceBar"] = {
					["enabled"] = false,
				},
				["barPet"] = {
					["buttonsize"] = 30,
					["buttonsPerRow"] = 10,
					["mouseover"] = true,
					["buttons"] = 6,
				},
				["bar4"] = {
					["point"] = "BOTTOMLEFT",
					["buttons"] = 6,
					["buttonsPerRow"] = 12,
					["backdrop"] = false,
					["buttonsize"] = 27,
				},
			},
			["nameplates"] = {
				["highlight"] = false,
				["clickableHeight"] = 50,
				["plateSize"] = {
					["personalWidth"] = 140,
					["friendlyWidth"] = 140,
					["enemyHeight"] = 25,
					["enemyWidth"] = 140,
					["friendlyHeight"] = 10,
				},
				["units"] = {
					["ENEMY_NPC"] = {
						["debuffs"] = {
							["countFontSize"] = 10,
							["countFont"] = "Expressway",
							["growthX"] = "RIGHT",
							["size"] = 26,
							["anchorPoint"] = "TOPLEFT",
							["yOffset"] = 8,
						},
						["portrait"] = {
							["position"] = "BOTTOM",
						},
						["castbar"] = {
							["fontSize"] = 12,
							["channelTimeFormat"] = "CURRENT_MAX",
							["font"] = "Expressway",
							["castTimeFormat"] = "CURRENTMAX",
							["width"] = 130,
						},
						["questIcon"] = {
							["enable"] = false,
						},
						["raidTargetIndicator"] = {
							["xOffset"] = 0,
							["yOffset"] = 5,
							["size"] = 30,
						},
						["name"] = {
							["position"] = "CENTER",
							["fontSize"] = 13,
							["font"] = "Expressway",
							["yOffset"] = 10,
						},
						["level"] = {
							["enable"] = false,
						},
						["health"] = {
							["height"] = 15,
							["text"] = {
								["fontSize"] = 13,
								["format"] = "",
								["font"] = "Expressway",
							},
						},
						["buffs"] = {
							["anchorPoint"] = "TOPRIGHT",
						},
					},
					["TARGET"] = {
						["glowStyle"] = "none",
					},
					["FRIENDLY_NPC"] = {
						["level"] = {
							["enable"] = false,
						},
						["name"] = {
							["fontSize"] = 13,
							["font"] = "Expressway",
							["yOffset"] = -6,
						},
						["health"] = {
							["text"] = {
								["font"] = "Expressway",
								["fontSize"] = 13,
							},
						},
					},
					["FRIENDLY_PLAYER"] = {
						["name"] = {
							["font"] = "Expressway",
							["fontSize"] = 16,
						},
						["health"] = {
							["text"] = {
								["fontSize"] = 25,
							},
						},
						["markHealers"] = false,
						["nameOnly"] = true,
						["raidTargetIndicator"] = {
							["xOffset"] = 0,
							["position"] = "TOP",
						},
						["showTitle"] = false,
					},
					["ENEMY_PLAYER"] = {
						["health"] = {
							["height"] = 15,
							["text"] = {
								["font"] = "Expressway",
							},
						},
						["level"] = {
							["enable"] = false,
						},
						["name"] = {
							["fontSize"] = 13,
							["font"] = "Expressway",
							["yOffset"] = -6,
						},
						["castbar"] = {
							["castTimeFormat"] = "CURRENTMAX",
							["font"] = "Expressway",
							["channelTimeFormat"] = "CURRENT_MAX",
							["fontSize"] = 13,
						},
					},
					["PLAYER"] = {
						["debuffs"] = {
							["countFont"] = "Expressway",
							["growthX"] = "RIGHT",
						},
					},
				},
				["lowHealthThreshold"] = 0,
				["smoothbars"] = true,
				["colors"] = {
					["threat"] = {
						["badColor"] = {
							["a"] = 1,
							["b"] = 0.250980392156863,
							["g"] = 0.250980392156863,
							["r"] = 0.780392156862745,
						},
					},
					["selection"] = {
						[0] = {
							["b"] = 0.250980392156863,
							["g"] = 0.250980392156863,
							["r"] = 0.780392156862745,
						},
					},
					["reactions"] = {
						["bad"] = {
							["b"] = 0.250980392156863,
							["g"] = 0.250980392156863,
							["r"] = 0.780392156862745,
						},
					},
				},
				["loadDistance"] = 45,
				["cooldown"] = {
					["fonts"] = {
						["enable"] = true,
						["font"] = "Expressway",
					},
				},
				["fadeIn"] = false,
				["filters"] = {
					["Triad"] = {
						["triggers"] = {
							["enable"] = true,
						},
					},
					["Boss"] = {
						["triggers"] = {
							["enable"] = true,
						},
					},
					["T3 Mobs"] = {
						["triggers"] = {
							["enable"] = true,
						},
					},
					["Cannelonis"] = {
						["triggers"] = {
							["enable"] = true,
						},
					},
					["Important Mobs"] = {
						["triggers"] = {
							["enable"] = true,
						},
					},
					["Enemy NPCs"] = {
						["triggers"] = {
							["enable"] = true,
						},
					},
					["Explosive"] = {
						["triggers"] = {
							["enable"] = true,
						},
					},
					["Semi Important Mobs"] = {
						["triggers"] = {
							["enable"] = true,
						},
					},
				},
			},
			["general"] = {
				["totems"] = {
					["enable"] = false,
				},
				["stickyFrames"] = false,
				["interruptAnnounce"] = "RAID",
				["autoAcceptInvite"] = true,
				["afk"] = false,
				["autoRepair"] = "PLAYER",
				["minimap"] = {
					["icons"] = {
						["classHall"] = {
							["position"] = "BOTTOMLEFT",
						},
						["ticket"] = {
							["position"] = "TOP",
						},
						["vehicleLeave"] = {
							["position"] = "BOTTOM",
						},
					},
					["locationFont"] = "Expressway",
				},
				["font"] = "Expressway",
				["altPowerBar"] = {
					["height"] = 25,
					["font"] = "Expressway",
					["smoothbars"] = true,
					["width"] = 150,
				},
				["valuecolor"] = {
					["a"] = 1,
					["b"] = 1,
					["g"] = 1,
					["r"] = 1,
				},
				["bordercolor"] = {
					["b"] = 0,
					["g"] = 0,
					["r"] = 0,
				},
				["bottomPanel"] = false,
			},
			["cooldown"] = {
				["fonts"] = {
					["enable"] = true,
					["font"] = "Expressway",
					["fontSize"] = 16,
				},
				["enable"] = false,
				["mmssThreshold"] = 3600,
				["checkSeconds"] = true,
				["hideBlizzard"] = true,
			},
			["chat"] = {
				["shortChannels"] = false,
				["tabFontOutline"] = "OUTLINE",
				["tabFont"] = "Expressway",
				["tabFontSize"] = 13,
				["editBoxPosition"] = "ABOVE_CHAT",
				["panelHeight"] = 200,
				["fontOutline"] = "OUTLINE",
				["panelWidthRight"] = 500,
				["timeStampFormat"] = "%H:%M:%S ",
				["panelBackdrop"] = "HIDEBOTH",
				["panelColorConverted"] = true,
				["customTimeColor"] = {
					["b"] = 1,
					["g"] = 1,
					["r"] = 1,
				},
				["whisperSound"] = "None",
				["separateSizes"] = true,
				["numScrollMessages"] = 4,
				["panelColor"] = {
					["a"] = 0.4000000357627869,
					["b"] = 0,
					["g"] = 0,
					["r"] = 0,
				},
				["fontSize"] = 12,
				["emotionIcons"] = false,
				["panelHeightRight"] = 200,
				["font"] = "Expressway",
				["noAlertInCombat"] = true,
				["throttleInterval"] = 15,
				["fadeTabsNoBackdrop"] = false,
				["autoClosePetBattleLog"] = false,
				["tapFontSize"] = 12,
				["panelWidth"] = 500,
			},
		},
		["Kjaskaar - Draenor"] = {
			["chat"] = {
				["panelColorConverted"] = true,
			},
			["currentTutorial"] = 1,
			["v11NamePlateReset"] = true,
			["movers"] = {
			},
		},
		["Piecez Mod"] = {
			["databars"] = {
				["honor"] = {
					["enable"] = false,
				},
				["reputation"] = {
					["textFormat"] = "REM",
					["enable"] = true,
				},
				["experience"] = {
					["textSize"] = 10,
					["width"] = 17,
					["font"] = "Expressway",
					["height"] = 98,
				},
				["azerite"] = {
					["textFormat"] = "CURPERC",
					["width"] = 375,
					["font"] = "Expressway",
					["height"] = 15,
					["textSize"] = 14,
				},
			},
			["currentTutorial"] = 1,
			["general"] = {
				["valuecolor"] = {
					["a"] = 1,
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["stickyFrames"] = false,
				["altPowerBar"] = {
					["statusBar"] = "Melli",
					["statusBarColor"] = {
						["r"] = 0.06274509803921569,
						["g"] = 0.6470588235294118,
						["b"] = 1,
					},
					["font"] = "Metropolis-SemiBold",
				},
				["autoAcceptInvite"] = true,
				["fontStyle"] = "MONOCHROMEOUTLINE",
				["minimap"] = {
					["locationFont"] = "UbuntuCondensed",
					["locationText"] = "SHOW",
					["resetZoom"] = {
						["enable"] = true,
						["time"] = 15,
					},
					["size"] = 120,
				},
				["resurrectSound"] = true,
				["objectiveFrameHeight"] = 420,
				["afk"] = false,
				["bottomPanel"] = false,
				["font"] = "UbuntuCondensed",
			},
			["CBS"] = {
				["player"] = {
					["enable"] = false,
				},
			},
			["v11NamePlateReset"] = true,
			["chat"] = {
				["panelHeightRight"] = 256,
				["font"] = "UbuntuCondensed",
				["panelWidth"] = 449,
				["panelHeight"] = 222,
				["panelWidthRight"] = 315,
				["panelBackdrop"] = "HIDEBOTH",
				["panelColor"] = {
					["a"] = 1,
					["r"] = 0.05882352941176471,
					["g"] = 0.05882352941176471,
					["b"] = 0.05882352941176471,
				},
				["panelTabBackdrop"] = true,
				["timeStampFormat"] = "%I:%M:%S %p ",
				["panelTabTransparency"] = true,
				["tapFontSize"] = 12,
				["fontSize"] = 12,
				["panelColorConverted"] = true,
				["tabFont"] = "UbuntuCondensed",
				["editBoxPosition"] = "ABOVE_CHAT",
			},
			["dbConverted"] = 12.17,
			["WT"] = {
				["announcement"] = {
					["enable"] = false,
				},
				["combat"] = {
					["raidMarkers"] = {
						["enable"] = false,
					},
				},
				["item"] = {
					["extraItemsBar"] = {
						["enable"] = false,
					},
				},
				["social"] = {
					["chatBar"] = {
						["enable"] = false,
					},
				},
				["quest"] = {
					["switchButtons"] = {
						["announcement"] = false,
						["enable"] = false,
						["hideWithObjectiveTracker"] = false,
						["turnIn"] = false,
					},
					["turnIn"] = {
						["enable"] = false,
					},
				},
			},
			["movers"] = {
				["ElvAB_8"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,522,4",
				["RaidMarkerBarAnchor"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,493",
				["BuffsMover"] = "TOPRIGHT,MMHolder,TOPLEFT,-7,-1",
				["GhostFrameMover"] = "TOP,ElvUIParent,TOP,0,-150",
				["TargetPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,234,193",
				["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,222,72",
				["LootFrameMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,453,503",
				["ZoneAbility"] = "BOTTOM,ElvUIParent,BOTTOM,282,73",
				["SocialMenuMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-164",
				["ElvUF_RaidpetMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,405",
				["DurabilityFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-392,-211",
				["ElvUF_PetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-221,315",
				["VehicleSeatMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-82,-333",
				["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,284,139",
				["WTSwitchButtonBarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,2,-521",
				["LossControlMover"] = "CENTER,UIParent,CENTER,0,0",
				["MirrorTimer1Mover"] = "TOP,UIParent,TOP,0,-96",
				["TalkingHeadFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-4",
				["AzeriteBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-30,179",
				["PetBattleStatusMover"] = "TOP,PetBattleFrame,TOP,0,0",
				["ReputationBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,122",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-127,-333",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-183,-156",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,107,1000",
				["RaidUtility_Mover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,224,493",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,235,292",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-233,211",
				["RightChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,0,0",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,54,755",
				["TopCenterContainerMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,480,359",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-1,98",
				["ElvUF_RaidMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,247",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,0,0",
				["GMMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-256",
				["MirrorTimer3Mover"] = "TOP,MirrorTimer2,BOTTOM,0,0",
				["ElvUF_FocusMover"] = "BOTTOM,ElvUIParent,BOTTOM,304,484",
				["UIErrorsFrameMover"] = "TOP,ElvUIParent,TOP,0,-137",
				["ExperienceBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,174",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,233,211",
				["PlayerPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-233,193",
				["ElvUF_Raid40Mover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,251",
				["ElvUIBagMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-136,276",
				["ElvAB_9"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,522,67",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,4",
				["ElvAB_2"] = "TOPLEFT,ElvUIParent,TOPLEFT,417,-364",
				["BelowMinimapContainerMover"] = "TOP,ElvUIParent,TOP,300,-178",
				["ElvAB_4"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-36,-334",
				["MirrorTimer2Mover"] = "TOP,MirrorTimer1,BOTTOM,0,0",
				["TotemBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-79,349",
				["ElvUF_FocusCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,303,514",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,0,36",
				["ElvAB_5"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-334",
				["VehicleLeaveButton"] = "BOTTOM,ElvUIParent,BOTTOM,-174,125",
				["PetAB"] = "BOTTOM,ElvUIParent,BOTTOM,-2,123",
				["ElvUIBankMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,180,408",
				["PetBattleABMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,4",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,0,-100",
				["ElvNP_PlayerMover"] = "TOP,UIParent,CENTER,0,-150",
				["ArenaHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-253,-318",
				["VOICECHAT"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,3,519",
				["ElvAB_6"] = "BOTTOM,ElvUIParent,BOTTOM,0,69",
				["TooltipMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-79,318",
				["SLE_DataPanel_1_Mover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,0,0",
				["BossHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-327,-441",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,-296,159",
				["LevelUpBossBannerMover"] = "TOP,ElvUIParent,TOP,0,-69",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,449,318",
				["AlertFrameMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,450,471",
				["DebuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-188,-103",
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-4",
			},
			["tooltip"] = {
				["fontOutline"] = "OUTLINE",
				["healthBar"] = {
					["statusPosition"] = "TOP",
					["fontSize"] = 15,
					["height"] = 4,
					["font"] = "UbuntuCondensed",
				},
				["font"] = "UbuntuCondensed",
				["fontSize"] = 12,
				["visibility"] = {
					["combatOverride"] = "ALT",
				},
			},
			["auras"] = {
				["font"] = "UbuntuCondensed",
				["fontOutline"] = "OUTLINE",
				["buffs"] = {
					["countFontSize"] = 12,
					["maxWraps"] = 2,
					["wrapAfter"] = 16,
					["countFont"] = "UbuntuCondensed",
					["timeFont"] = "UbuntuCondensed",
					["timeFontSize"] = 12,
					["durationFontSize"] = 12,
				},
				["debuffs"] = {
					["countFontSize"] = 12,
					["countFont"] = "UbuntuCondensed",
					["timeFontSize"] = 12,
					["durationFontSize"] = 12,
					["timeFont"] = "UbuntuCondensed",
				},
			},
			["unitframe"] = {
				["fontSize"] = 14,
				["font"] = "UbuntuCondensed",
				["units"] = {
					["tank"] = {
						["enable"] = false,
					},
					["targettargettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pet"] = {
						["power"] = {
							["text_format"] = "[power:current]",
							["yOffset"] = -16,
							["xOffset"] = 33,
							["height"] = 15,
						},
						["castbar"] = {
							["enable"] = false,
						},
						["width"] = 90,
						["name"] = {
							["text_format"] = "[name:short]",
						},
						["height"] = 35,
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["focustarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["targettarget"] = {
						["debuffs"] = {
							["anchorPoint"] = "BOTTOMLEFT",
						},
						["threatStyle"] = "GLOW",
						["power"] = {
							["enable"] = false,
						},
						["health"] = {
							["frequentUpdates"] = true,
							["text_format"] = "[health:percent]",
						},
						["width"] = 112,
						["name"] = {
							["position"] = "TOPLEFT",
							["text_format"] = "[name:short]",
							["yOffset"] = 8,
						},
						["height"] = 24,
					},
					["boss"] = {
						["debuffs"] = {
							["sizeOverride"] = 27,
							["yOffset"] = 8,
							["anchorPoint"] = "RIGHT",
							["perrow"] = 6,
							["xOffset"] = 2,
						},
						["disableTargetGlow"] = true,
						["growthDirection"] = "UP",
						["spacing"] = 10,
						["name"] = {
							["position"] = "TOPLEFT",
							["xOffset"] = 2,
							["text_format"] = "[name:short]",
							["yOffset"] = 7,
						},
						["castbar"] = {
							["width"] = 165,
							["height"] = 10,
						},
						["customTexts"] = {
							["Power text"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[powercolor][power:percent]",
								["yOffset"] = -12,
								["font"] = "Metropolis-SemiBold",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 14,
							},
						},
						["width"] = 165,
						["health"] = {
							["frequentUpdates"] = true,
							["position"] = "CENTER",
							["xOffset"] = 0,
							["text_format"] = "[health:percent]",
						},
						["height"] = 32,
						["buffs"] = {
							["sizeOverride"] = 15,
							["xOffset"] = -2,
							["yOffset"] = 9,
							["numrows"] = 2,
						},
						["power"] = {
							["text_format"] = "",
							["height"] = 4,
						},
					},
					["target"] = {
						["debuffs"] = {
							["sizeOverride"] = 24,
							["anchorPoint"] = "TOPLEFT",
							["priority"] = "Blacklist,Personal,nonPersonal",
							["countFont"] = "UbuntuCondensed",
							["perrow"] = 6,
							["attachTo"] = "FRAME",
							["maxDuration"] = 0,
						},
						["classbar"] = {
							["detachFromFrame"] = false,
							["verticalOrientation"] = false,
							["parent"] = "FRAME",
							["enable"] = false,
							["altPowerColor"] = {
								["r"] = 0.2,
								["g"] = 0.4,
								["b"] = 0.8,
							},
							["altPowerTextFormat"] = "[altpower:current]",
							["height"] = 10,
							["sortDirection"] = "asc",
							["strataAndLevel"] = {
								["frameStrata"] = "LOW",
								["useCustomLevel"] = false,
								["frameLevel"] = 1,
								["useCustomStrata"] = false,
							},
							["spacing"] = 5,
							["detachedWidth"] = 250,
							["autoHide"] = false,
							["orientation"] = "HORIZONTAL",
							["fill"] = "fill",
						},
						["customTexts"] = {
							["[powercolor][power:percent]"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[powercolor][power:percent]",
								["yOffset"] = -27,
								["font"] = "UbuntuCondensed",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "NONE",
								["xOffset"] = 2,
								["size"] = 14,
							},
							["Health text"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[health:current]",
								["yOffset"] = 15,
								["font"] = "UbuntuCondensed",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "NONE",
								["xOffset"] = -178,
								["size"] = 14,
							},
							["[absorbs]"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 2,
								["text_format"] = "[absorbs]",
								["yOffset"] = 0,
								["font"] = "Expressway",
								["justifyH"] = "LEFT",
								["fontOutline"] = "NONE",
								["enable"] = false,
								["size"] = 12,
							},
						},
						["stagger"] = {
							["enable"] = true,
							["width"] = 10,
						},
						["name"] = {
							["text_format"] = "",
						},
						["height"] = 60,
						["buffs"] = {
							["yOffset"] = -17,
							["anchorPoint"] = "BOTTOMLEFT",
							["priority"] = "Blacklist,Personal,PlayerBuffs,Whitelist,blockNoDuration,nonPersonal",
							["countFont"] = "UbuntuCondensed",
						},
						["pvp"] = {
							["xOffset"] = 0,
							["yOffset"] = 0,
							["text_format"] = "",
							["position"] = "BOTTOM",
						},
						["aurabar"] = {
							["enable"] = false,
						},
						["partyIndicator"] = {
							["anchorPoint"] = "TOPRIGHT",
							["enable"] = true,
							["scale"] = 1,
							["xOffset"] = -5,
							["yOffset"] = 10,
						},
						["power"] = {
							["text_format"] = "[power:current] - [power:percent]",
							["yOffset"] = -16,
							["width"] = "spaced",
							["detachFromFrame"] = true,
							["strataAndLevel"] = {
								["frameLevel"] = 2,
							},
							["position"] = "BOTTOM",
							["detachedWidth"] = 216,
							["xOffset"] = 0,
							["height"] = 18,
						},
						["RestIcon"] = {
							["anchorPoint"] = "TOPLEFT",
							["texture"] = "DEFAULT",
							["size"] = 22,
							["enable"] = false,
							["xOffset"] = -3,
							["color"] = {
								["a"] = 1,
								["b"] = 1,
								["g"] = 1,
								["r"] = 1,
							},
							["defaultColor"] = true,
							["yOffset"] = 6,
						},
						["portrait"] = {
							["overlay"] = true,
							["enable"] = true,
						},
						["width"] = 216,
						["castbar"] = {
							["icon"] = false,
							["width"] = 216,
							["height"] = 24,
						},
						["raidRoleIcons"] = {
							["position"] = "TOPRIGHT",
						},
						["health"] = {
							["frequentUpdates"] = true,
							["position"] = "LEFT",
							["xOffset"] = 3,
							["text_format"] = "[health:percent]",
							["yOffset"] = -16,
						},
						["orientation"] = "LEFT",
						["lowmana"] = 30,
					},
					["party"] = {
						["debuffs"] = {
							["sizeOverride"] = 34,
							["anchorPoint"] = "LEFT",
							["perrow"] = 3,
						},
						["disableTargetGlow"] = true,
						["showPlayer"] = false,
						["name"] = {
							["text_format"] = "[name:short] [difficultycolor][smartlevel]",
						},
						["height"] = 35,
						["buffs"] = {
							["sizeOverride"] = 16,
							["yOffset"] = -6,
							["anchorPoint"] = "CENTER",
							["perrow"] = 2,
							["xOffset"] = 52,
						},
						["raidicon"] = {
							["attachTo"] = "RIGHT",
							["xOffset"] = 14,
							["yOffset"] = 0,
						},
						["horizontalSpacing"] = -1,
						["rdebuffs"] = {
							["font"] = "UbuntuCondensed",
						},
						["resurrectIcon"] = {
							["attachTo"] = "LEFT",
						},
						["phaseIndicator"] = {
							["anchorPoint"] = "LEFT",
						},
						["groupBy"] = "ROLE",
						["roleIcon"] = {
							["xOffset"] = 4,
							["position"] = "LEFT",
						},
						["readycheckIcon"] = {
							["position"] = "LEFT",
						},
						["power"] = {
							["text_format"] = "[powercolor][power:percent]",
							["height"] = 4,
						},
						["width"] = 158,
						["health"] = {
							["text_format"] = "",
						},
						["verticalSpacing"] = -1,
					},
					["raid40"] = {
						["debuffs"] = {
							["priority"] = "Blacklist,Boss,RaidDebuffs,CCDebuffs,Dispellable",
						},
						["disableTargetGlow"] = true,
						["name"] = {
							["position"] = "TOPLEFT",
							["xOffset"] = 1,
							["text_format"] = "[name:veryshort]",
						},
						["height"] = 31,
						["verticalSpacing"] = -1,
						["horizontalSpacing"] = -1,
						["rdebuffs"] = {
							["xOffset"] = 23,
							["yOffset"] = 7,
							["font"] = "UbuntuCondensed",
							["fontOutline"] = "OUTLINE",
							["enable"] = true,
							["size"] = 19,
						},
						["growthDirection"] = "RIGHT_UP",
						["roleIcon"] = {
							["yOffset"] = -1,
							["position"] = "TOPLEFT",
							["xOffset"] = 1,
						},
						["power"] = {
							["height"] = 4,
							["enable"] = true,
						},
						["width"] = 76,
						["health"] = {
							["text_format"] = "[health:deficit]",
						},
					},
					["focus"] = {
						["debuffs"] = {
							["anchorPoint"] = "BOTTOMLEFT",
						},
						["disableTargetGlow"] = true,
						["health"] = {
							["frequentUpdates"] = true,
							["text_format"] = "[health:percent]",
						},
						["castbar"] = {
							["iconAttachedTo"] = "Castbar",
							["iconSize"] = 44,
							["iconAttached"] = false,
							["iconYOffset"] = -10,
							["width"] = 112,
							["height"] = 25,
							["iconXOffset"] = -2,
						},
						["power"] = {
							["enable"] = false,
						},
						["width"] = 112,
						["height"] = 24,
						["name"] = {
							["position"] = "TOPLEFT",
							["text_format"] = "[name:short]",
							["yOffset"] = 8,
						},
					},
					["assist"] = {
						["enable"] = false,
					},
					["raid"] = {
						["disableTargetGlow"] = true,
						["name"] = {
							["position"] = "TOPLEFT",
							["xOffset"] = 1,
							["text_format"] = "[name:veryshort]",
						},
						["height"] = 50,
						["verticalSpacing"] = -1,
						["horizontalSpacing"] = -1,
						["rdebuffs"] = {
							["xOffset"] = 23,
							["yOffset"] = 7,
							["font"] = "UbuntuCondensed",
							["fontOutline"] = "OUTLINE",
							["size"] = 19,
						},
						["growthDirection"] = "RIGHT_UP",
						["groupBy"] = "ROLE",
						["power"] = {
							["height"] = 4,
						},
						["width"] = 90,
						["health"] = {
							["text_format"] = "[health:deficit]",
						},
					},
					["player"] = {
						["debuffs"] = {
							["sizeOverride"] = 24,
							["perrow"] = 6,
						},
						["portrait"] = {
							["overlay"] = true,
							["enable"] = true,
						},
						["customTexts"] = {
							["Health text"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[health:current]",
								["yOffset"] = 15,
								["font"] = "UbuntuCondensed",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "NONE",
								["xOffset"] = -178,
								["size"] = 14,
							},
							["[absorbs]"] = {
								["attachTextTo"] = "Health",
								["enable"] = false,
								["text_format"] = "[absorbs]",
								["yOffset"] = 0,
								["font"] = "Expressway",
								["justifyH"] = "LEFT",
								["fontOutline"] = "NONE",
								["xOffset"] = 2,
								["size"] = 12,
							},
						},
						["height"] = 60,
						["buffs"] = {
							["yOffset"] = 2,
							["attachTo"] = "FRAME",
						},
						["pvp"] = {
							["text_format"] = "",
						},
						["castbar"] = {
							["customColor"] = {
								["color"] = {
									["a"] = 1,
									["r"] = 0.5882352941176471,
									["g"] = 0.3529411764705882,
									["b"] = 1,
								},
								["colorInterrupted"] = {
									["a"] = 1,
									["r"] = 1,
									["g"] = 0,
									["b"] = 0.07450980392156863,
								},
								["colorBackdrop"] = {
									["r"] = 0.1411764705882353,
									["g"] = 0.1254901960784314,
									["b"] = 0.3803921568627451,
								},
								["enable"] = true,
								["transparent"] = true,
								["colorNoInterrupt"] = {
									["a"] = 1,
									["r"] = 0.7803921568627451,
									["g"] = 0.2509803921568627,
									["b"] = 0.2509803921568627,
								},
								["useCustomBackdrop"] = true,
							},
							["customTimeFont"] = {
								["enable"] = true,
								["font"] = "UbuntuCondensed",
								["fontSize"] = 14,
							},
							["width"] = 216,
							["height"] = 24,
							["customTextFont"] = {
								["enable"] = true,
								["font"] = "UbuntuCondensed",
								["fontSize"] = 14,
							},
							["timeToHold"] = 0.5,
						},
						["aurabar"] = {
							["enable"] = false,
						},
						["RestIcon"] = {
							["enable"] = false,
						},
						["power"] = {
							["text_format"] = "[power:current] - [power:percent]",
							["yOffset"] = -16,
							["width"] = "spaced",
							["detachFromFrame"] = true,
							["strataAndLevel"] = {
								["frameLevel"] = 2,
							},
							["position"] = "BOTTOM",
							["detachedWidth"] = 216,
							["xOffset"] = 0,
							["height"] = 18,
						},
						["width"] = 216,
						["raidRoleIcons"] = {
							["position"] = "TOPRIGHT",
						},
						["health"] = {
							["frequentUpdates"] = true,
							["xOffset"] = 3,
							["text_format"] = "[health:percent]",
							["yOffset"] = -16,
						},
						["classbar"] = {
							["enable"] = false,
						},
					},
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
				},
				["statusbar"] = "Melli",
				["colors"] = {
					["healthclass"] = true,
					["customhealthbackdrop"] = true,
					["castbar_backdrop"] = {
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
					["customcastbarbackdrop"] = true,
					["power_backdrop"] = {
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
					["colorhealthbyvalue"] = false,
					["custompowerbackdrop"] = true,
					["castColor"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
					["transparentHealth"] = true,
					["health_backdrop"] = {
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
				},
				["fontOutline"] = "NONE",
				["smoothbars"] = true,
			},
			["datatexts"] = {
				["noCombatHover"] = true,
				["panelTransparency"] = true,
				["panels"] = {
					["MinimapPanel"] = {
						"Time", -- [1]
						"Date", -- [2]
					},
					["RightChatDataPanel"] = {
						["enable"] = false,
						["right"] = "",
						["left"] = "",
						["middle"] = "",
					},
					["LeftChatDataPanel"] = {
						[3] = "System",
						["middle"] = "Time",
						["left"] = "System",
						["panelTransparency"] = true,
						["right"] = "Durability",
						["border"] = false,
						["backdrop"] = false,
					},
				},
				["font"] = "UbuntuCondensed",
				["minimapPanels"] = false,
				["rightChatPanel"] = false,
				["panelBackdrop"] = false,
			},
			["actionbar"] = {
				["bar3"] = {
					["mouseover"] = true,
					["buttonsPerRow"] = 12,
					["backdrop"] = true,
					["backdropSpacing"] = 1,
					["buttons"] = 12,
					["buttonsize"] = 29,
				},
				["bar8"] = {
					["enabled"] = true,
					["mouseover"] = true,
					["buttonsPerRow"] = 6,
				},
				["fontOutline"] = "OUTLINE",
				["bar9"] = {
					["enabled"] = true,
					["mouseover"] = true,
					["buttonsPerRow"] = 6,
				},
				["bar1"] = {
					["mouseover"] = true,
					["backdrop"] = true,
					["backdropSpacing"] = 1,
					["buttonsize"] = 29,
				},
				["font"] = "UbuntuCondensed",
				["barPet"] = {
					["buttonsPerRow"] = 10,
					["buttonsize"] = 19,
				},
				["bar6"] = {
					["enabled"] = true,
					["mouseover"] = true,
					["backdrop"] = true,
					["backdropSpacing"] = 1,
					["buttonsize"] = 29,
				},
				["microbar"] = {
					["buttons"] = 11,
				},
				["bar5"] = {
					["backdrop"] = true,
					["buttonsPerRow"] = 1,
					["point"] = "TOPRIGHT",
					["mouseover"] = true,
					["buttons"] = 12,
					["buttonsize"] = 29,
				},
				["macrotext"] = true,
				["stanceBar"] = {
					["enabled"] = false,
				},
				["bar4"] = {
					["mouseover"] = true,
					["buttonsize"] = 29,
				},
			},
			["nameplates"] = {
				["lowHealthThreshold"] = 0.2,
				["smoothbars"] = true,
				["units"] = {
					["FRIENDLY_PLAYER"] = {
						["nameOnly"] = true,
					},
					["TARGET"] = {
						["glowStyle"] = "style1",
					},
					["ENEMY_PLAYER"] = {
						["debuffs"] = {
							["yOffset"] = -4,
							["size"] = 35,
							["countFont"] = "UbuntuCondensed",
						},
						["enable"] = false,
						["buffs"] = {
							["yOffset"] = 1,
							["anchorPoint"] = "BOTTOMLEFT",
							["size"] = 23,
						},
						["name"] = {
							["parent"] = "Health",
							["yOffset"] = -8,
						},
					},
					["ENEMY_NPC"] = {
						["debuffs"] = {
							["countFontSize"] = 14,
							["countFont"] = "Friz Quadrata TT",
						},
						["castbar"] = {
							["yOffset"] = -14,
							["showIcon"] = false,
							["font"] = "Metropolis-SemiBold",
							["height"] = 12,
						},
						["name"] = {
							["fontSize"] = 13,
							["font"] = "UbuntuCondensed",
						},
						["health"] = {
							["height"] = 15,
							["text"] = {
								["fontSize"] = 13,
								["font"] = "UbuntuCondensed",
							},
						},
						["buffs"] = {
							["countFontSize"] = 14,
							["countFont"] = "Friz Quadrata TT",
						},
						["level"] = {
							["fontSize"] = 13,
							["font"] = "UbuntuCondensed",
						},
					},
				},
				["clampToScreen"] = true,
				["font"] = "UbuntuCondensed",
				["statusbar"] = "Solid",
			},
			["sle"] = {
				["datatexts"] = {
					["panel1"] = {
						["enabled"] = true,
						["noback"] = true,
						["width"] = 315,
					},
				},
			},
			["bags"] = {
				["itemLevelFont"] = "UbuntuCondensed",
				["countFontSize"] = 12,
				["itemLevelFontSize"] = 12,
				["countFont"] = "UbuntuCondensed",
				["countFontOutline"] = "OUTLINE",
			},
		},
		["Piecez"] = {
			["databars"] = {
				["reputation"] = {
					["enable"] = true,
					["textFormat"] = "REM",
				},
				["honor"] = {
					["enable"] = false,
				},
				["experience"] = {
					["height"] = 98,
					["font"] = "Expressway",
					["textSize"] = 10,
					["width"] = 17,
				},
				["azerite"] = {
					["textFormat"] = "CURPERC",
					["height"] = 15,
					["font"] = "Expressway",
					["textSize"] = 14,
					["width"] = 375,
				},
			},
			["currentTutorial"] = 1,
			["sle"] = {
				["datatexts"] = {
					["panel1"] = {
						["enabled"] = true,
						["noback"] = true,
						["width"] = 315,
					},
				},
			},
			["movers"] = {
				["SLE_DataPanel_1_Mover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,0,0",
				["RaidMarkerBarAnchor"] = "TOPLEFT,ElvUIParent,TOPLEFT,528,-4",
				["BuffsMover"] = "TOPRIGHT,MMHolder,TOPLEFT,-7,-1",
				["GhostFrameMover"] = "TOP,ElvUIParent,TOP,0,-150",
				["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,222,72",
				["LootFrameMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,382,294",
				["ZoneAbility"] = "BOTTOM,ElvUIParent,BOTTOM,282,73",
				["SocialMenuMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-164",
				["ElvUF_RaidpetMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,405",
				["DurabilityFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-392,-211",
				["ElvUF_PetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-221,315",
				["VehicleSeatMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-82,-333",
				["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,288,155",
				["LossControlMover"] = "CENTER,UIParent,CENTER,0,0",
				["MirrorTimer1Mover"] = "TOP,UIParent,TOP,0,-96",
				["TalkingHeadFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-4",
				["AzeriteBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-30,179",
				["PetBattleStatusMover"] = "TOP,PetBattleFrame,TOP,0,0",
				["ReputationBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,122",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-127,-333",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-183,-156",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,107,1000",
				["RaidUtility_Mover"] = "TOP,ElvUIParent,TOP,-139,-4",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,235,243",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-233,210",
				["RightChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,0,0",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,54,755",
				["TopCenterContainerMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,480,359",
				["PetAB"] = "BOTTOM,ElvUIParent,BOTTOM,249,4",
				["ElvUF_RaidMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,247",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,0,0",
				["GMMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-256",
				["MirrorTimer3Mover"] = "TOP,MirrorTimer2,BOTTOM,0,0",
				["ElvUF_FocusMover"] = "BOTTOM,ElvUIParent,BOTTOM,304,484",
				["UIErrorsFrameMover"] = "TOP,ElvUIParent,TOP,0,-137",
				["ExperienceBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,174",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,236,208",
				["ElvUF_Raid40Mover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,251",
				["ArenaHeaderMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,192,-216",
				["ElvAB_9"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,522,67",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,4",
				["ElvAB_2"] = "TOPLEFT,ElvUIParent,TOPLEFT,417,-364",
				["BelowMinimapContainerMover"] = "TOP,ElvUIParent,TOP,300,-178",
				["ElvAB_8"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,522,4",
				["ElvUIBagMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-136,276",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-1,100",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,-171,175",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,0,36",
				["ElvAB_5"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-334",
				["VehicleLeaveButton"] = "BOTTOM,ElvUIParent,BOTTOM,166,146",
				["ElvAB_4"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-42,-334",
				["MirrorTimer2Mover"] = "TOP,MirrorTimer1,BOTTOM,0,0",
				["LevelUpBossBannerMover"] = "TOP,ElvUIParent,TOP,0,-69",
				["ElvAB_6"] = "BOTTOM,ElvUIParent,BOTTOM,0,69",
				["VOICECHAT"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,380,250",
				["ElvNP_PlayerMover"] = "TOP,UIParent,CENTER,0,-150",
				["ElvUIBankMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,180,408",
				["PetBattleABMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,4",
				["TooltipMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-79,318",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,0,-100",
				["BossHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-327,-441",
				["TotemBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-79,349",
				["ElvUF_FocusCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,303,514",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,439,455",
				["AlertFrameMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,450,471",
				["DebuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-188,-103",
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-4",
			},
			["CBS"] = {
				["player"] = {
					["enable"] = false,
				},
			},
			["bags"] = {
				["countFontSize"] = 12,
				["countFont"] = "UbuntuCondensed",
				["itemLevelFont"] = "UbuntuCondensed",
				["itemLevelFontSize"] = 12,
				["countFontOutline"] = "OUTLINE",
			},
			["tooltip"] = {
				["font"] = "UbuntuCondensed",
				["healthBar"] = {
					["statusPosition"] = "TOP",
					["fontSize"] = 15,
					["height"] = 4,
					["font"] = "UbuntuCondensed",
				},
				["fontOutline"] = "OUTLINE",
				["visibility"] = {
					["combatOverride"] = "ALT",
				},
				["fontSize"] = 12,
			},
			["chat"] = {
				["fontSize"] = 12,
				["panelWidth"] = 449,
				["tabFont"] = "UbuntuCondensed",
				["timeStampFormat"] = "%I:%M:%S %p ",
				["panelColor"] = {
					["a"] = 1,
					["r"] = 0.05882352941176471,
					["g"] = 0.05882352941176471,
					["b"] = 0.05882352941176471,
				},
				["panelTabBackdrop"] = true,
				["font"] = "UbuntuCondensed",
				["panelHeightRight"] = 256,
				["panelColorConverted"] = true,
				["panelTabTransparency"] = true,
				["panelHeight"] = 222,
				["editBoxPosition"] = "ABOVE_CHAT",
				["panelWidthRight"] = 315,
				["tapFontSize"] = 12,
				["panelBackdrop"] = "HIDEBOTH",
			},
			["v11NamePlateReset"] = true,
			["dbConverted"] = 12.17,
			["datatexts"] = {
				["minimapPanels"] = false,
				["noCombatHover"] = true,
				["panelBackdrop"] = false,
				["panelTransparency"] = true,
				["font"] = "UbuntuCondensed",
				["panels"] = {
					["MinimapPanel"] = {
						"Time", -- [1]
						"Date", -- [2]
					},
					["RightChatDataPanel"] = {
						["enable"] = false,
						["right"] = "",
						["middle"] = "",
						["left"] = "",
					},
					["LeftChatDataPanel"] = {
						["backdrop"] = false,
						["border"] = false,
						[3] = "System",
						["panelTransparency"] = true,
						["right"] = "Durability",
						["middle"] = "Time",
						["left"] = "System",
					},
				},
				["rightChatPanel"] = false,
			},
			["actionbar"] = {
				["bar3"] = {
					["buttons"] = 12,
					["backdrop"] = true,
					["buttonsPerRow"] = 12,
					["backdropSpacing"] = 1,
					["buttonsize"] = 29,
				},
				["bar6"] = {
					["enabled"] = true,
					["backdrop"] = true,
					["backdropSpacing"] = 1,
					["buttonsize"] = 29,
				},
				["bar1"] = {
					["backdrop"] = true,
					["backdropSpacing"] = 1,
					["buttonsize"] = 29,
				},
				["bar8"] = {
					["enabled"] = true,
					["buttonsPerRow"] = 6,
					["mouseover"] = true,
				},
				["bar5"] = {
					["backdrop"] = true,
					["buttonsPerRow"] = 1,
					["point"] = "TOPRIGHT",
					["buttons"] = 12,
				},
				["font"] = "UbuntuCondensed",
				["microbar"] = {
					["buttons"] = 11,
				},
				["fontOutline"] = "OUTLINE",
				["macrotext"] = true,
				["stanceBar"] = {
					["enabled"] = false,
				},
				["barPet"] = {
					["buttonsize"] = 25,
					["buttonsPerRow"] = 5,
				},
				["bar9"] = {
					["enabled"] = true,
					["buttonsPerRow"] = 6,
					["mouseover"] = true,
				},
			},
			["nameplates"] = {
				["lowHealthThreshold"] = 0.2,
				["smoothbars"] = true,
				["statusbar"] = "Solid",
				["font"] = "UbuntuCondensed",
				["clampToScreen"] = true,
				["units"] = {
					["ENEMY_NPC"] = {
						["debuffs"] = {
							["countFontSize"] = 14,
							["countFont"] = "Friz Quadrata TT",
						},
						["health"] = {
							["height"] = 15,
							["text"] = {
								["fontSize"] = 13,
								["font"] = "UbuntuCondensed",
							},
						},
						["castbar"] = {
							["height"] = 12,
							["font"] = "Metropolis-SemiBold",
							["showIcon"] = false,
							["yOffset"] = -14,
						},
						["level"] = {
							["fontSize"] = 13,
							["font"] = "UbuntuCondensed",
						},
						["name"] = {
							["fontSize"] = 13,
							["font"] = "UbuntuCondensed",
						},
						["buffs"] = {
							["countFontSize"] = 14,
							["countFont"] = "Friz Quadrata TT",
						},
					},
					["ENEMY_PLAYER"] = {
						["debuffs"] = {
							["yOffset"] = -4,
						},
						["name"] = {
							["parent"] = "Health",
							["yOffset"] = -8,
						},
						["buffs"] = {
							["anchorPoint"] = "BOTTOMLEFT",
							["yOffset"] = 1,
							["size"] = 23,
						},
					},
					["TARGET"] = {
						["glowStyle"] = "style1",
					},
					["FRIENDLY_PLAYER"] = {
						["nameOnly"] = true,
					},
				},
			},
			["unitframe"] = {
				["fontSize"] = 14,
				["colors"] = {
					["castColor"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
					["castbar_backdrop"] = {
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
					["colorhealthbyvalue"] = false,
					["healthclass"] = true,
					["customhealthbackdrop"] = true,
					["health_backdrop"] = {
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
					["customcastbarbackdrop"] = true,
					["power_backdrop"] = {
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
					["custompowerbackdrop"] = true,
				},
				["fontOutline"] = "NONE",
				["smoothbars"] = true,
				["font"] = "UbuntuCondensed",
				["statusbar"] = "Melli",
				["units"] = {
					["tank"] = {
						["enable"] = false,
					},
					["targettargettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["focustarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pet"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
						["power"] = {
							["xOffset"] = 33,
							["height"] = 15,
							["text_format"] = "[power:current]",
							["yOffset"] = -16,
						},
						["height"] = 35,
						["name"] = {
							["text_format"] = "[name:short]",
						},
						["castbar"] = {
							["enable"] = false,
						},
						["width"] = 90,
					},
					["party"] = {
						["horizontalSpacing"] = -1,
						["debuffs"] = {
							["anchorPoint"] = "LEFT",
							["sizeOverride"] = 34,
							["perrow"] = 3,
						},
						["disableTargetGlow"] = true,
						["showPlayer"] = false,
						["resurrectIcon"] = {
							["attachTo"] = "LEFT",
						},
						["phaseIndicator"] = {
							["anchorPoint"] = "LEFT",
						},
						["groupBy"] = "ROLE",
						["roleIcon"] = {
							["xOffset"] = 4,
							["position"] = "LEFT",
						},
						["readycheckIcon"] = {
							["position"] = "LEFT",
						},
						["power"] = {
							["text_format"] = "[powercolor][power:percent]",
							["height"] = 4,
						},
						["width"] = 158,
						["health"] = {
							["text_format"] = "",
						},
						["name"] = {
							["text_format"] = "[name:short] [difficultycolor][smartlevel]",
						},
						["rdebuffs"] = {
							["font"] = "UbuntuCondensed",
						},
						["height"] = 35,
						["buffs"] = {
							["anchorPoint"] = "CENTER",
							["sizeOverride"] = 16,
							["xOffset"] = 52,
							["yOffset"] = -6,
							["perrow"] = 2,
						},
						["verticalSpacing"] = -1,
						["raidicon"] = {
							["attachTo"] = "RIGHT",
							["xOffset"] = 14,
							["yOffset"] = 0,
						},
					},
					["target"] = {
						["debuffs"] = {
							["anchorPoint"] = "TOPLEFT",
							["sizeOverride"] = 24,
							["attachTo"] = "FRAME",
							["maxDuration"] = 0,
							["perrow"] = 6,
						},
						["pvpIcon"] = {
							["anchorPoint"] = "TOPRIGHT",
						},
						["customTexts"] = {
							["Health text"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = -5,
								["text_format"] = "[health:current]",
								["yOffset"] = 0,
								["font"] = "UbuntuCondensed",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "NONE",
								["enable"] = true,
								["size"] = 14,
							},
							["[powercolor][power:percent]"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 2,
								["text_format"] = "[powercolor][power:percent]",
								["yOffset"] = -27,
								["font"] = "UbuntuCondensed",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "NONE",
								["enable"] = true,
								["size"] = 14,
							},
						},
						["width"] = 215,
						["power"] = {
							["enable"] = false,
							["xOffset"] = 0,
							["text_format"] = "",
							["height"] = 12,
						},
						["castbar"] = {
							["iconPosition"] = "TOP",
							["iconAttached"] = false,
							["iconAttachedTo"] = "Castbar",
							["height"] = 30,
							["iconXOffset"] = -87,
							["iconYOffset"] = 4,
							["width"] = 215,
						},
						["health"] = {
							["xOffset"] = 4,
							["frequentUpdates"] = true,
							["text_format"] = "[health:percent]",
							["position"] = "LEFT",
						},
						["height"] = 35,
						["orientation"] = "LEFT",
						["buffs"] = {
							["anchorPoint"] = "BOTTOMLEFT",
							["sizeOverride"] = 24,
							["attachTo"] = "HEALTH",
							["perrow"] = 6,
						},
						["name"] = {
							["position"] = "TOP",
							["text_format"] = "[name:short]",
							["yOffset"] = 8,
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["player"] = {
						["RestIcon"] = {
							["enable"] = false,
						},
						["debuffs"] = {
							["sizeOverride"] = 24,
							["perrow"] = 6,
						},
						["power"] = {
							["enable"] = false,
							["xOffset"] = 0,
						},
						["customTexts"] = {
							["Health text"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = -5,
								["text_format"] = "[health:current]",
								["yOffset"] = 0,
								["font"] = "UbuntuCondensed",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "NONE",
								["enable"] = true,
								["size"] = 14,
							},
							["[absorbs]"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 2,
								["text_format"] = "[absorbs]",
								["yOffset"] = 0,
								["font"] = "Expressway",
								["justifyH"] = "LEFT",
								["fontOutline"] = "NONE",
								["enable"] = false,
								["size"] = 12,
							},
						},
						["raidRoleIcons"] = {
							["position"] = "TOPRIGHT",
						},
						["width"] = 215,
						["pvp"] = {
							["text_format"] = "",
						},
						["health"] = {
							["xOffset"] = 4,
							["frequentUpdates"] = true,
							["text_format"] = "[health:percent]",
						},
						["castbar"] = {
							["height"] = 24,
							["icon"] = false,
							["width"] = 376,
						},
						["height"] = 35,
						["buffs"] = {
							["attachTo"] = "FRAME",
							["yOffset"] = 2,
						},
						["classbar"] = {
							["enable"] = false,
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["raid40"] = {
						["horizontalSpacing"] = -1,
						["debuffs"] = {
							["priority"] = "Blacklist,Boss,RaidDebuffs,CCDebuffs,Dispellable",
						},
						["disableTargetGlow"] = true,
						["power"] = {
							["height"] = 4,
							["enable"] = true,
						},
						["rdebuffs"] = {
							["font"] = "UbuntuCondensed",
							["fontOutline"] = "OUTLINE",
							["enable"] = true,
							["yOffset"] = 7,
							["xOffset"] = 23,
							["size"] = 19,
						},
						["growthDirection"] = "RIGHT_UP",
						["name"] = {
							["xOffset"] = 1,
							["text_format"] = "[name:veryshort]",
							["position"] = "TOPLEFT",
						},
						["roleIcon"] = {
							["xOffset"] = 1,
							["yOffset"] = -1,
							["position"] = "TOPLEFT",
						},
						["height"] = 31,
						["verticalSpacing"] = -1,
						["width"] = 76,
						["health"] = {
							["text_format"] = "[health:deficit]",
						},
					},
					["focus"] = {
						["disableTargetGlow"] = true,
						["debuffs"] = {
							["anchorPoint"] = "BOTTOMLEFT",
						},
						["health"] = {
							["frequentUpdates"] = true,
							["text_format"] = "[health:percent]",
						},
						["power"] = {
							["enable"] = false,
						},
						["height"] = 24,
						["castbar"] = {
							["iconXOffset"] = -2,
							["iconAttachedTo"] = "Castbar",
							["height"] = 25,
							["iconSize"] = 44,
							["iconAttached"] = false,
							["iconYOffset"] = -10,
							["width"] = 112,
						},
						["name"] = {
							["position"] = "TOPLEFT",
							["text_format"] = "[name:short]",
							["yOffset"] = 8,
						},
						["width"] = 112,
					},
					["assist"] = {
						["enable"] = false,
					},
					["raid"] = {
						["horizontalSpacing"] = -1,
						["disableTargetGlow"] = true,
						["power"] = {
							["height"] = 4,
						},
						["rdebuffs"] = {
							["font"] = "UbuntuCondensed",
							["fontOutline"] = "OUTLINE",
							["xOffset"] = 23,
							["yOffset"] = 7,
							["size"] = 19,
						},
						["growthDirection"] = "RIGHT_UP",
						["name"] = {
							["xOffset"] = 1,
							["text_format"] = "[name:veryshort]",
							["position"] = "TOPLEFT",
						},
						["groupBy"] = "ROLE",
						["height"] = 50,
						["verticalSpacing"] = -1,
						["width"] = 90,
						["health"] = {
							["text_format"] = "[health:deficit]",
						},
					},
					["boss"] = {
						["debuffs"] = {
							["anchorPoint"] = "RIGHT",
							["sizeOverride"] = 27,
							["xOffset"] = 2,
							["yOffset"] = 8,
							["perrow"] = 6,
						},
						["disableTargetGlow"] = true,
						["castbar"] = {
							["height"] = 10,
							["width"] = 165,
						},
						["customTexts"] = {
							["Power text"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 0,
								["text_format"] = "[powercolor][power:percent]",
								["yOffset"] = -12,
								["font"] = "Metropolis-SemiBold",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 14,
							},
						},
						["growthDirection"] = "UP",
						["width"] = 165,
						["health"] = {
							["xOffset"] = 0,
							["frequentUpdates"] = true,
							["text_format"] = "[health:percent]",
							["position"] = "CENTER",
						},
						["spacing"] = 10,
						["height"] = 32,
						["buffs"] = {
							["xOffset"] = -2,
							["sizeOverride"] = 15,
							["numrows"] = 2,
							["yOffset"] = 9,
						},
						["name"] = {
							["xOffset"] = 2,
							["position"] = "TOPLEFT",
							["text_format"] = "[name:short]",
							["yOffset"] = 7,
						},
						["power"] = {
							["text_format"] = "",
							["height"] = 4,
						},
					},
					["targettarget"] = {
						["debuffs"] = {
							["anchorPoint"] = "BOTTOMLEFT",
						},
						["threatStyle"] = "GLOW",
						["power"] = {
							["enable"] = false,
						},
						["height"] = 24,
						["name"] = {
							["position"] = "TOPLEFT",
							["text_format"] = "[name:short]",
							["yOffset"] = 8,
						},
						["health"] = {
							["frequentUpdates"] = true,
							["text_format"] = "[health:percent]",
						},
						["width"] = 112,
					},
				},
			},
			["general"] = {
				["stickyFrames"] = false,
				["autoAcceptInvite"] = true,
				["fontStyle"] = "MONOCHROMEOUTLINE",
				["minimap"] = {
					["locationFont"] = "UbuntuCondensed",
				},
				["font"] = "UbuntuCondensed",
				["altPowerBar"] = {
					["statusBar"] = "Melli",
					["statusBarColor"] = {
						["r"] = 0.06274509803921569,
						["g"] = 0.6470588235294118,
						["b"] = 1,
					},
					["font"] = "Metropolis-SemiBold",
				},
				["resurrectSound"] = true,
				["valuecolor"] = {
					["a"] = 1,
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["objectiveFrameHeight"] = 420,
				["afk"] = false,
				["bottomPanel"] = false,
			},
			["auras"] = {
				["font"] = "UbuntuCondensed",
				["debuffs"] = {
					["countFontSize"] = 12,
					["durationFontSize"] = 12,
				},
				["buffs"] = {
					["countFontSize"] = 12,
					["maxWraps"] = 2,
					["wrapAfter"] = 16,
					["durationFontSize"] = 12,
				},
				["fontOutline"] = "OUTLINE",
			},
		},
		["Beastmodex - Draenor"] = {
			["chat"] = {
				["panelColorConverted"] = true,
			},
			["currentTutorial"] = 1,
			["v11NamePlateReset"] = true,
			["movers"] = {
			},
		},
		["Default"] = {
			["dbConverted"] = 12.16,
			["movers"] = {
			},
			["v11NamePlateReset"] = true,
			["actionbar"] = {
				["microbar"] = {
					["buttons"] = 11,
				},
			},
			["chat"] = {
				["panelColorConverted"] = true,
			},
		},
		["Minimal"] = {
			["databars"] = {
				["reputation"] = {
					["enable"] = true,
					["height"] = 7,
					["width"] = 187,
				},
				["honor"] = {
					["height"] = 7,
					["width"] = 187,
				},
				["experience"] = {
					["textFormat"] = "PERCENT",
					["fontOutline"] = "OUTLINE",
					["height"] = 7,
					["font"] = "Avant Garde",
					["width"] = 187,
				},
				["azerite"] = {
					["height"] = 7,
					["width"] = 187,
				},
			},
			["general"] = {
				["fontSize"] = 10,
				["itemLevel"] = {
					["itemLevelFont"] = "Avant Garde Gothic",
					["itemLevelFontSize"] = 10,
				},
				["bordercolor"] = {
					["r"] = 0,
					["g"] = 0,
					["b"] = 0,
				},
				["autoRepair"] = "GUILD",
				["minimap"] = {
					["locationFontSize"] = 11,
					["locationFont"] = "Avant Garde Gothic",
					["locationText"] = "SHOW",
					["size"] = 185,
				},
				["font"] = "Avant Garde Gothic",
				["altPowerBar"] = {
					["statusBar"] = "Smooth v2",
					["fontSize"] = 10,
					["font"] = "Avant Garde Gothic",
				},
				["valuecolor"] = {
					["r"] = 0.7686257362365723,
					["g"] = 0.117646798491478,
					["b"] = 0.2274504750967026,
				},
				["bottomPanel"] = false,
			},
			["movers"] = {
				["TopCenterContainerMover"] = "TOP,ElvUIParent,TOP,0,-30",
				["RaidMarkerBarAnchor"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,287",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-300,397",
				["ElvUF_RaidMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,490,491",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,107,61",
				["GMMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,306,-4",
				["BuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-193,-27",
				["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,393,502",
				["LootFrameMover"] = "TOP,ElvUIParent,TOP,-373,-559",
				["ZoneAbility"] = "BOTTOM,ElvUIParent,BOTTOM,393,502",
				["ElvUF_FocusMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-721,437",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-309",
				["ElvUIBankMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,336",
				["ClassBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,445",
				["DurabilityFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,526,-4",
				["ElvUF_PetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-371,339",
				["VehicleSeatMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-672,-35",
				["ElvUF_TargetTargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-719,395",
				["ExperienceBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-246",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,27",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,300,443",
				["ElvUF_Raid40Mover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,490,491",
				["LossControlMover"] = "TOP,ElvUIParent,TOP,0,-353",
				["LevelUpBossBannerMover"] = "TOP,ElvUIParent,TOP,0,-295",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-300,443",
				["TalkingHeadFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,372,-357",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,393",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,358",
				["BelowMinimapContainerMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-338",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,0,-81",
				["ElvAB_4"] = "BOTTOM,ElvUIParent,BOTTOM,-388,418",
				["ReputationBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-225",
				["AzeriteBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-235",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,0,322",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,0,285",
				["VehicleLeaveButton"] = "BOTTOM,ElvUIParent,BOTTOM,-220,256",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,492",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,-371,361",
				["PetAB"] = "BOTTOM,ElvUIParent,BOTTOM,-307,311",
				["BNETMover"] = "TOP,ElvUIParent,TOP,-413,-26",
				["ShiftAB"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,542,4",
				["PlayerPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,455",
				["HonorBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-215",
				["ArenaHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-458,-437",
				["TooltipMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,213",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-244",
				["BossHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-458,-437",
				["ElvUIBagMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,262",
				["TotemBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-371,4",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,490,491",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,400,-452",
				["DebuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-193,-168",
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-26",
			},
			["v11NamePlateReset"] = true,
			["auras"] = {
				["font"] = "Avant Garde Gothic",
				["buffs"] = {
					["size"] = 30,
				},
				["debuffs"] = {
					["size"] = 30,
				},
				["fontOutline"] = "OUTLINE",
			},
			["unitframe"] = {
				["fontSize"] = 12,
				["colors"] = {
					["customhealthbackdrop"] = true,
					["health_backdrop"] = {
						["r"] = 0.0392156862745098,
						["g"] = 0.03529411764705882,
						["b"] = 0.03529411764705882,
					},
					["health"] = {
						["r"] = 0.203921568627451,
						["g"] = 0.203921568627451,
						["b"] = 0.203921568627451,
					},
					["healthclass"] = true,
					["colorhealthbyvalue"] = false,
					["frameGlow"] = {
						["targetGlow"] = {
							["enable"] = false,
						},
						["mouseoverGlow"] = {
							["enable"] = false,
						},
					},
					["health_backdrop_dead"] = {
						["r"] = 0.0784313725490196,
						["g"] = 0.0784313725490196,
						["b"] = 0.0784313725490196,
					},
				},
				["fontOutline"] = "OUTLINE",
				["font"] = "Avant Garde Gothic",
				["statusbar"] = "Smooth v2",
				["smoothbars"] = true,
				["units"] = {
					["targettarget"] = {
						["enable"] = false,
						["height"] = 25,
						["name"] = {
							["text_format"] = "[name:medium]",
						},
						["power"] = {
							["enable"] = false,
						},
					},
					["pet"] = {
						["height"] = 20,
						["castbar"] = {
							["width"] = 130,
						},
						["name"] = {
							["position"] = "TOPLEFT",
							["text_format"] = "[name:medium]",
							["yOffset"] = 14,
						},
						["power"] = {
							["height"] = 3,
						},
					},
					["boss"] = {
						["debuffs"] = {
							["countFontSize"] = 11,
							["countFont"] = "Avant Garde",
							["spacing"] = 3,
							["xOffset"] = 3,
							["anchorPoint"] = "RIGHT",
						},
						["power"] = {
							["height"] = 3,
						},
						["width"] = 200,
						["name"] = {
							["position"] = "TOPLEFT",
							["text_format"] = "[perhp]% || [name:medium]",
							["yOffset"] = 15,
						},
						["spacing"] = 37,
						["height"] = 20,
						["buffs"] = {
							["countFontSize"] = 11,
							["countFont"] = "Avant Garde",
							["spacing"] = 3,
							["xOffset"] = -3,
							["yOffset"] = 0,
						},
						["health"] = {
							["text_format"] = "",
							["position"] = "BOTTOMLEFT",
						},
						["castbar"] = {
							["height"] = 10,
							["width"] = 200,
						},
					},
					["player"] = {
						["RestIcon"] = {
							["enable"] = false,
						},
						["debuffs"] = {
							["countFontSize"] = 11,
							["sizeOverride"] = 26,
							["spacing"] = 3,
							["enable"] = false,
							["countFont"] = "Avant Garde",
							["anchorPoint"] = "BOTTOMLEFT",
							["yOffset"] = -4,
						},
						["power"] = {
							["detachFromFrame"] = true,
							["detachedWidth"] = 300,
							["text_format"] = "",
							["height"] = 7,
						},
						["customTexts"] = {
							["Resting"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[status]",
								["yOffset"] = 9,
								["font"] = "Avant Garde Gothic",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 10,
							},
						},
						["raidRoleIcons"] = {
							["position"] = "TOPRIGHT",
						},
						["name"] = {
							["position"] = "TOPLEFT",
							["text_format"] = "[name]",
							["yOffset"] = 14,
						},
						["height"] = 20,
						["health"] = {
							["position"] = "BOTTOMRIGHT",
							["text_format"] = "[perhp]% || [health:current]",
							["yOffset"] = -19,
						},
						["classbar"] = {
							["detachFromFrame"] = true,
							["height"] = 7,
							["detachedWidth"] = 300,
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["raid40"] = {
						["roleIcon"] = {
							["enable"] = true,
							["damager"] = false,
						},
						["name"] = {
							["text_format"] = "",
						},
						["power"] = {
							["height"] = 4,
							["enable"] = true,
						},
						["height"] = 25,
						["numGroups"] = 5,
						["width"] = 55,
					},
					["focus"] = {
						["name"] = {
							["position"] = "TOPLEFT",
							["text_format"] = "[name:medium]",
							["yOffset"] = 13,
						},
						["castbar"] = {
							["width"] = 100,
						},
						["height"] = 25,
						["power"] = {
							["enable"] = false,
						},
						["width"] = 100,
					},
					["target"] = {
						["debuffs"] = {
							["countFontSize"] = 11,
							["sizeOverride"] = 26,
							["yOffset"] = -4,
							["anchorPoint"] = "BOTTOMLEFT",
							["numrows"] = 3,
							["countFont"] = "Avant Garde",
							["spacing"] = 3,
							["perrow"] = 6,
							["priority"] = "Blacklist,Personal,nonPersonal",
							["attachTo"] = "FRAME",
							["maxDuration"] = 0,
						},
						["power"] = {
							["position"] = "RIGHT",
							["enable"] = false,
							["height"] = 3,
							["text_format"] = "",
							["xOffset"] = -2,
						},
						["customTexts"] = {
							["Resting"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 0,
								["text_format"] = "[status]",
								["yOffset"] = 11,
								["font"] = "Avant Garde",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 12,
							},
						},
						["raidRoleIcons"] = {
							["position"] = "TOPRIGHT",
						},
						["height"] = 20,
						["health"] = {
							["xOffset"] = 2,
							["position"] = "BOTTOMRIGHT",
							["text_format"] = "[perhp]% || [health:current]",
							["yOffset"] = -19,
						},
						["classicon"] = {
							["enable"] = false,
						},
						["orientation"] = "LEFT",
						["buffs"] = {
							["enable"] = false,
							["priority"] = "Blacklist,Personal,PlayerBuffs,Whitelist,blockNoDuration,nonPersonal",
							["anchorPoint"] = "TOPLEFT",
							["attachTo"] = "DEBUFFS",
						},
						["name"] = {
							["position"] = "TOPLEFT",
							["text_format"] = "[name]",
							["yOffset"] = 14,
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["raid"] = {
						["roleIcon"] = {
							["damager"] = false,
						},
						["name"] = {
							["text_format"] = "",
						},
						["power"] = {
							["height"] = 4,
						},
						["height"] = 25,
						["rdebuffs"] = {
							["enable"] = false,
						},
						["width"] = 55,
					},
					["arena"] = {
						["debuffs"] = {
							["countFontSize"] = 11,
							["sizeOverride"] = 22,
							["xOffset"] = 3,
							["yOffset"] = -3,
							["anchorPoint"] = "RIGHT",
							["spacing"] = 3,
							["countFont"] = "Gotham Black",
							["priority"] = "Blacklist,Boss,Personal,RaidDebuffs,CastByUnit,Whitelist",
							["desaturate"] = true,
							["maxDuration"] = 0,
						},
						["castbar"] = {
							["height"] = 10,
							["width"] = 175,
						},
						["width"] = 175,
						["infoPanel"] = {
							["height"] = 16,
						},
						["name"] = {
							["position"] = "TOPRIGHT",
							["yOffset"] = 14,
						},
						["spacing"] = 37,
						["height"] = 31,
						["buffs"] = {
							["countFontSize"] = 11,
							["sizeOverride"] = 22,
							["maxDuration"] = 0,
							["spacing"] = 3,
							["xOffset"] = -3,
							["priority"] = "Blacklist,CastByUnit,Dispellable,Whitelist,RaidBuffsElvUI",
							["countFont"] = "Gotham Black",
							["yOffset"] = 0,
						},
						["health"] = {
							["text_format"] = "[healthcolor][perhp]%",
							["position"] = "BOTTOMLEFT",
						},
						["power"] = {
							["height"] = 6,
						},
					},
					["party"] = {
						["horizontalSpacing"] = 3,
						["debuffs"] = {
							["enable"] = false,
						},
						["power"] = {
							["text_format"] = "",
							["height"] = 3,
						},
						["showPlayer"] = false,
						["growthDirection"] = "RIGHT_DOWN",
						["rdebuffs"] = {
							["enable"] = false,
						},
						["resurrectIcon"] = {
							["attachTo"] = "TOP",
						},
						["name"] = {
							["text_format"] = "",
						},
						["roleIcon"] = {
							["damager"] = false,
						},
						["height"] = 25,
						["verticalSpacing"] = 4,
						["width"] = 55,
						["health"] = {
							["text_format"] = "",
						},
					},
				},
			},
			["datatexts"] = {
				["fontSize"] = 11,
				["font"] = "Avant Garde",
				["panels"] = {
					["MinimapPanel"] = {
						["enable"] = false,
					},
					["RightChatDataPanel"] = {
						["enable"] = false,
					},
					["LeftChatDataPanel"] = {
						["enable"] = false,
					},
				},
				["fontOutline"] = "OUTLINE",
			},
			["actionbar"] = {
				["bar3"] = {
					["showGrid"] = false,
					["buttonsPerRow"] = 7,
					["mouseover"] = true,
					["buttons"] = 7,
				},
				["bar2"] = {
					["enabled"] = true,
					["showGrid"] = false,
					["buttons"] = 8,
				},
				["bar1"] = {
					["showGrid"] = false,
					["buttonsize"] = 48,
					["buttons"] = 6,
				},
				["bar5"] = {
					["showGrid"] = false,
					["mouseover"] = true,
				},
				["font"] = "Avant Garde Gothic",
				["desaturateOnCooldown"] = true,
				["fontOutline"] = "OUTLINE",
				["hotkeytext"] = false,
				["barPet"] = {
					["buttonsize"] = 24,
					["buttonsPerRow"] = 10,
					["mouseover"] = true,
					["backdrop"] = false,
				},
				["bar4"] = {
					["buttons"] = 4,
					["showGrid"] = false,
					["buttonsPerRow"] = 4,
					["backdrop"] = false,
					["buttonsize"] = 22,
				},
			},
			["nameplates"] = {
				["statusbar"] = "Smooth v2",
				["highlight"] = false,
				["units"] = {
					["ENEMY_NPC"] = {
						["castbar"] = {
							["font"] = "Avant Garde Gothic",
						},
						["debuffs"] = {
							["countFont"] = "Avant Garde Gothic",
						},
						["title"] = {
							["font"] = "Avant Garde",
						},
						["power"] = {
							["text"] = {
								["font"] = "Avant Garde",
							},
						},
						["level"] = {
							["font"] = "Avant Garde Gothic",
						},
						["buffs"] = {
							["countFont"] = "Avant Garde Gothic",
						},
						["health"] = {
							["text"] = {
								["font"] = "Avant Garde Gothic",
							},
						},
						["name"] = {
							["font"] = "Avant Garde Gothic",
						},
					},
					["TARGET"] = {
						["glowStyle"] = "style1",
					},
					["FRIENDLY_NPC"] = {
						["enable"] = false,
						["level"] = {
							["enable"] = false,
							["format"] = "",
						},
						["health"] = {
							["text"] = {
								["format"] = "",
							},
						},
						["name"] = {
							["enable"] = false,
							["font"] = "Avant Garde",
							["format"] = "",
						},
					},
					["PLAYER"] = {
						["castbar"] = {
							["enable"] = false,
						},
						["debuffs"] = {
							["enable"] = false,
						},
						["health"] = {
							["height"] = 4,
							["text"] = {
								["enable"] = false,
								["format"] = "",
							},
						},
						["power"] = {
							["enable"] = false,
						},
						["classpower"] = {
							["enable"] = false,
						},
						["buffs"] = {
							["enable"] = false,
						},
						["raidTargetIndicator"] = {
							["enable"] = false,
						},
						["name"] = {
							["enable"] = true,
							["font"] = "Avant Garde",
							["position"] = "CENTER",
						},
					},
					["ENEMY_PLAYER"] = {
						["debuffs"] = {
							["countFont"] = "Avant Garde Gothic",
						},
						["name"] = {
							["font"] = "Avant Garde Gothic",
						},
						["castbar"] = {
							["font"] = "Avant Garde Gothic",
						},
						["level"] = {
							["font"] = "Avant Garde Gothic",
						},
						["buffs"] = {
							["countFont"] = "Avant Garde Gothic",
						},
						["title"] = {
							["font"] = "Avant Garde",
						},
						["health"] = {
							["height"] = 7,
							["text"] = {
								["font"] = "Avant Garde Gothic",
							},
						},
					},
					["FRIENDLY_PLAYER"] = {
						["health"] = {
							["enable"] = false,
							["text"] = {
								["font"] = "Avant Garde",
								["format"] = "",
							},
						},
						["level"] = {
							["enable"] = false,
						},
						["name"] = {
							["font"] = "Avant Garde Gothic",
							["position"] = "CENTER",
						},
						["castbar"] = {
							["enable"] = false,
						},
					},
				},
			},
			["tooltip"] = {
				["textFontSize"] = 10,
				["font"] = "Avant Garde Gothic",
				["healthBar"] = {
					["font"] = "Avant Garde Gothic",
				},
				["fontOutline"] = "OUTLINE",
				["headerFontSize"] = 10,
				["alwaysShowRealm"] = true,
				["progressInfo"] = false,
				["smallTextFontSize"] = 10,
			},
			["bags"] = {
				["bagSize"] = 26,
				["junkDesaturate"] = true,
				["itemLevelFont"] = "Avant Garde Gothic",
				["itemLevelFontOutline"] = "OUTLINE",
				["vendorGrays"] = {
					["enable"] = true,
				},
				["countFont"] = "Avant Garde Gothic",
				["countFontOutline"] = "OUTLINE",
			},
			["chat"] = {
				["socialQueueMessages"] = true,
				["shortChannels"] = false,
				["tabFontOutline"] = "OUTLINE",
				["tabFont"] = "Avant Garde Gothic",
				["tabFontSize"] = 14,
				["font"] = "Avant Garde Gothic",
				["emotionIcons"] = false,
				["fontOutline"] = "OUTLINE",
				["panelColorConverted"] = true,
				["tabSelector"] = "NONE",
				["editBoxPosition"] = "ABOVE_CHAT",
				["panelBackdrop"] = "HIDEBOTH",
			},
		},
		["Draenor"] = {
			["chat"] = {
				["panelColorConverted"] = true,
			},
			["v11NamePlateReset"] = true,
		},
		["Kjaskr - Draenor"] = {
			["dbConverted"] = 12.16,
			["movers"] = {
			},
			["v11NamePlateReset"] = true,
			["actionbar"] = {
				["microbar"] = {
					["buttons"] = 11,
				},
			},
			["chat"] = {
				["panelColorConverted"] = true,
			},
		},
		["Kjaskàr - Draenor"] = {
			["chat"] = {
				["panelColorConverted"] = true,
			},
			["currentTutorial"] = 1,
			["v11NamePlateReset"] = true,
			["movers"] = {
			},
		},
		["Kjaskar - Sylvanas"] = {
			["dbConverted"] = 12.16,
			["movers"] = {
			},
			["v11NamePlateReset"] = true,
			["actionbar"] = {
				["microbar"] = {
					["buttons"] = 11,
				},
			},
			["chat"] = {
				["panelColorConverted"] = true,
			},
		},
	},
	["serverID"] = {
		[1305] = {
			["Kazzak"] = true,
		},
		[1597] = {
			["Sylvanas"] = true,
		},
		[1403] = {
			["Draenor"] = true,
		},
	},
	["profileKeys"] = {
		["Kjaskarz - Draenor"] = "Minimalistic",
		["Beastmodex - Draenor"] = "SHAMAN",
		["Kjask - Draenor"] = "Piecez",
		["Kjaskar - Kazzak"] = "Default",
		["Kjaskar - Draenor"] = "Piecez Heal",
		["Kjaskar - Sylvanas"] = "Kjaskar - Sylvanas",
		["Yogsi - Kazzak"] = "Piecez",
		["Yoggis - Kazzak"] = "Default",
		["Yogz - Kazzak"] = "Piecez",
		["Kjaskr - Draenor"] = "Kjaskr - Draenor",
		["Kjaskaar - Draenor"] = "Piecez",
		["Yøgs - Kazzak"] = "Piecez",
		["Yogsp - Kazzak"] = "Default",
		["Yogzi - Kazzak"] = "Piecez",
		["Yogske - Kazzak"] = "Piecez",
		["Yogs - Kazzak"] = "Piecez",
		["Yogshi - Kazzak"] = "Piecez Mod",
		["Kjask - Sylvanas"] = "Default",
		["Yogski - Kazzak"] = "Piecez",
		["Kjaskàr - Draenor"] = "Piecez",
		["Kja - Draenor"] = "Piecez",
	},
	["LuaErrorDisabledAddOns"] = {
	},
	["faction"] = {
		["Draenor"] = {
			["Kjaskaar"] = "Horde",
			["Beastmodex"] = "Horde",
			["Kjaskàr"] = "Horde",
			["Kjaskarz"] = "Horde",
			["Kjaskr"] = "Horde",
			["Kjask"] = "Horde",
			["Kjaskar"] = "Horde",
			["Kja"] = "Horde",
		},
		["Sylvanas"] = {
			["Kjaskar"] = "Alliance",
			["Kjask"] = "Alliance",
		},
		["Kazzak"] = {
			["Yogzi"] = "Horde",
			["Yogs"] = "Horde",
			["Kjaskar"] = "Alliance",
			["Yogsp"] = "Horde",
			["Yogske"] = "Horde",
			["Yogz"] = "Horde",
			["Yogshi"] = "Horde",
			["Yøgs"] = "Horde",
			["Yogsi"] = "Horde",
			["Yogski"] = "Horde",
			["Yoggis"] = "Horde",
		},
	},
	["gold"] = {
		["Draenor"] = {
			["Kjaskaar"] = 2982067,
			["Beastmodex"] = 10000,
			["Kjaskàr"] = 78011817,
			["Kjaskarz"] = 100,
			["Kjaskr"] = 5409342,
			["Kjask"] = 865051891,
			["Kjaskar"] = 6859970,
			["Kja"] = 1051618446,
		},
		["Sylvanas"] = {
			["Kjaskar"] = 24579621,
			["Kjask"] = 84100269,
		},
		["Kazzak"] = {
			["Yogzi"] = 257,
			["Yogs"] = 3159758830,
			["Kjaskar"] = 12036840,
			["Yogsp"] = 100000,
			["Yogske"] = 83923792,
			["Yogz"] = 6655554,
			["Yogshi"] = 58591423,
			["Yøgs"] = 734,
			["Yogsi"] = 33563342,
			["Yogski"] = 4935435,
			["Yoggis"] = 0,
		},
	},
	["SLErrorDisabledAddOns"] = {
	},
	["SLEMinimize"] = {
	},
}
ElvPrivateDB = {
	["profileKeys"] = {
		["Kjaskarz - Draenor"] = "Kjaskarz - Draenor",
		["Beastmodex - Draenor"] = "Beastmodex - Draenor",
		["Kjask - Draenor"] = "Kjask - Draenor",
		["Kjaskar - Kazzak"] = "Kjaskar - Kazzak",
		["Kjaskar - Draenor"] = "Kjaskar - Draenor",
		["Kjaskar - Sylvanas"] = "Kjaskar - Sylvanas",
		["Yogsi - Kazzak"] = "Yogsi - Kazzak",
		["Yoggis - Kazzak"] = "Yoggis - Kazzak",
		["Yogz - Kazzak"] = "Yogz - Kazzak",
		["Kjaskr - Draenor"] = "Kjaskr - Draenor",
		["Kjaskaar - Draenor"] = "Kjaskaar - Draenor",
		["Yøgs - Kazzak"] = "Yøgs - Kazzak",
		["Yogsp - Kazzak"] = "Yogsp - Kazzak",
		["Yogzi - Kazzak"] = "Yogzi - Kazzak",
		["Yogske - Kazzak"] = "Yogske - Kazzak",
		["Yogs - Kazzak"] = "Yogs - Kazzak",
		["Yogshi - Kazzak"] = "Yogshi - Kazzak",
		["Kjask - Sylvanas"] = "Kjask - Sylvanas",
		["Yogski - Kazzak"] = "Yogski - Kazzak",
		["Kjaskàr - Draenor"] = "Kjaskàr - Draenor",
		["Kja - Draenor"] = "Kja - Draenor",
	},
	["profiles"] = {
		["Kjaskarz - Draenor"] = {
			["sle"] = {
				["characterGoldsSorting"] = {
					["Draenor"] = {
					},
				},
				["install_complete"] = "BETA",
			},
			["install_complete"] = 11.372,
		},
		["Beastmodex - Draenor"] = {
			["sle"] = {
				["characterGoldsSorting"] = {
					["Draenor"] = {
					},
				},
				["install_complete"] = "BETA",
			},
			["install_complete"] = 11.372,
		},
		["Kjask - Draenor"] = {
			["skins"] = {
				["blizzard"] = {
					["objectiveTracker"] = false,
				},
			},
			["general"] = {
				["dmgfont"] = "UbuntuCondensed",
			},
			["sle"] = {
				["characterGoldsSorting"] = {
					["Draenor"] = {
					},
				},
				["install_complete"] = "3.78",
			},
			["install_complete"] = 11.372,
		},
		["Kjaskar - Kazzak"] = {
			["sle"] = {
				["characterGoldsSorting"] = {
					["Kazzak"] = {
					},
				},
			},
			["skins"] = {
				["blizzard"] = {
					["objectiveTracker"] = false,
				},
			},
		},
		["Kjaskar - Draenor"] = {
			["skins"] = {
				["blizzard"] = {
					["objectiveTracker"] = false,
				},
			},
			["sle"] = {
				["pvpreadydialogreset"] = true,
				["characterGoldsSorting"] = {
					["Draenor"] = {
					},
				},
				["install_complete"] = "3.78",
			},
			["theme"] = "class",
			["install_complete"] = 11.372,
		},
		["Kja - Draenor"] = {
			["skins"] = {
				["blizzard"] = {
					["objectiveTracker"] = false,
				},
			},
			["sle"] = {
				["characterGoldsSorting"] = {
					["Draenor"] = {
					},
				},
				["install_complete"] = "3.78",
			},
			["install_complete"] = 11.372,
		},
		["Yogsi - Kazzak"] = {
			["skins"] = {
				["blizzard"] = {
					["objectiveTracker"] = false,
				},
			},
			["sle"] = {
				["characterGoldsSorting"] = {
					["Kazzak"] = {
					},
				},
				["install_complete"] = "4.17",
			},
			["install_complete"] = 12.15,
		},
		["Yoggis - Kazzak"] = {
			["sle"] = {
				["characterGoldsSorting"] = {
					["Kazzak"] = {
					},
				},
			},
			["skins"] = {
				["blizzard"] = {
					["objectiveTracker"] = false,
				},
			},
		},
		["Yogz - Kazzak"] = {
			["skins"] = {
				["blizzard"] = {
					["objectiveTracker"] = false,
				},
			},
			["sle"] = {
				["characterGoldsSorting"] = {
					["Kazzak"] = {
					},
				},
				["install_complete"] = "3.78",
			},
			["install_complete"] = 11.52,
		},
		["Kjaskr - Draenor"] = {
			["sle"] = {
				["characterGoldsSorting"] = {
					["Draenor"] = {
					},
				},
			},
			["skins"] = {
				["blizzard"] = {
					["objectiveTracker"] = false,
				},
			},
		},
		["Kjaskaar - Draenor"] = {
			["skins"] = {
				["blizzard"] = {
					["objectiveTracker"] = false,
				},
			},
			["sle"] = {
				["characterGoldsSorting"] = {
					["Draenor"] = {
					},
				},
				["install_complete"] = "3.78",
			},
			["install_complete"] = 11.372,
		},
		["Yøgs - Kazzak"] = {
			["skins"] = {
				["blizzard"] = {
					["objectiveTracker"] = false,
				},
			},
			["sle"] = {
				["characterGoldsSorting"] = {
					["Kazzak"] = {
					},
				},
				["install_complete"] = "4.00",
			},
			["install_complete"] = 12,
		},
		["Yogsp - Kazzak"] = {
			["skins"] = {
				["blizzard"] = {
					["objectiveTracker"] = false,
				},
			},
			["sle"] = {
				["characterGoldsSorting"] = {
					["Kazzak"] = {
					},
				},
			},
			["install_complete"] = 12.16,
		},
		["Yogzi - Kazzak"] = {
			["skins"] = {
				["blizzard"] = {
					["objectiveTracker"] = false,
				},
			},
			["sle"] = {
				["characterGoldsSorting"] = {
					["Kazzak"] = {
					},
				},
				["install_complete"] = "4.18",
			},
			["install_complete"] = 12.16,
		},
		["Yogske - Kazzak"] = {
			["skins"] = {
				["blizzard"] = {
					["objectiveTracker"] = false,
				},
			},
			["sle"] = {
				["characterGoldsSorting"] = {
					["Kazzak"] = {
					},
				},
				["install_complete"] = "4.18",
			},
			["install_complete"] = 12.16,
		},
		["Yogs - Kazzak"] = {
			["skins"] = {
				["blizzard"] = {
					["objectiveTracker"] = false,
				},
			},
			["sle"] = {
				["pvpreadydialogreset"] = true,
				["characterGoldsSorting"] = {
					["Kazzak"] = {
					},
				},
				["install_complete"] = "3.78",
			},
			["install_complete"] = 11.52,
		},
		["Yogshi - Kazzak"] = {
			["general"] = {
				["dmgfont"] = "Durandal Light",
				["chatBubbles"] = "disabled",
			},
			["WT"] = {
				["tooltips"] = {
					["objectiveProgress"] = false,
				},
				["unitFrames"] = {
					["quickFocus"] = {
						["enable"] = false,
					},
				},
				["skins"] = {
					["blizzard"] = {
						["scenario"] = false,
					},
				},
				["quest"] = {
					["objectiveTracker"] = {
						["enable"] = false,
					},
				},
				["maps"] = {
					["minimapButtons"] = {
						["mouseOver"] = true,
					},
				},
			},
			["nameplates"] = {
				["enable"] = false,
			},
			["skins"] = {
				["blizzard"] = {
					["objectiveTracker"] = false,
				},
				["parchmentRemoverEnable"] = true,
			},
			["sle"] = {
				["module"] = {
					["blizzmove"] = {
						["enable"] = false,
					},
				},
				["characterGoldsSorting"] = {
					["Kazzak"] = {
					},
				},
				["install_complete"] = "4.18",
			},
			["install_complete"] = 12.16,
		},
		["Kjask - Sylvanas"] = {
			["sle"] = {
				["characterGoldsSorting"] = {
					["Sylvanas"] = {
					},
				},
			},
			["skins"] = {
				["blizzard"] = {
					["objectiveTracker"] = false,
				},
			},
		},
		["Yogski - Kazzak"] = {
			["skins"] = {
				["blizzard"] = {
					["objectiveTracker"] = false,
				},
			},
			["sle"] = {
				["characterGoldsSorting"] = {
					["Kazzak"] = {
					},
				},
				["install_complete"] = "4.18",
			},
			["install_complete"] = 12.16,
		},
		["Kjaskàr - Draenor"] = {
			["skins"] = {
				["blizzard"] = {
					["objectiveTracker"] = false,
				},
			},
			["sle"] = {
				["characterGoldsSorting"] = {
					["Draenor"] = {
					},
				},
				["install_complete"] = "4.18",
			},
			["install_complete"] = 11.372,
		},
		["Kjaskar - Sylvanas"] = {
			["sle"] = {
				["characterGoldsSorting"] = {
					["Sylvanas"] = {
					},
				},
			},
			["skins"] = {
				["blizzard"] = {
					["objectiveTracker"] = false,
				},
			},
		},
	},
}
