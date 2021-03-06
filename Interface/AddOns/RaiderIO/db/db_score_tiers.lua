--
-- Generated on 2021-01-18T06:17:07Z. DO NOT EDIT.
--
-- Curr. Ranges: {"epic":[1001,2300],"superior":[776,1000],"uncommon":[451,775],"common":[200,450]}
-- Prev. Ranges: {"epic":[null,null],"superior":[null,null],"uncommon":[null,null],"common":[200,null]}
--
local _, ns = ...

ns.scoreTiers = {
	[1] = { ["score"] = 2300, ["color"] = { 1.00, 0.50, 0.00 } },		-- |cffff80002300+|r
	[2] = { ["score"] = 2225, ["color"] = { 1.00, 0.50, 0.07 } },		-- |cfffe7f112225+|r
	[3] = { ["score"] = 2200, ["color"] = { 0.99, 0.49, 0.11 } },		-- |cfffd7d1b2200+|r
	[4] = { ["score"] = 2175, ["color"] = { 0.99, 0.49, 0.14 } },		-- |cfffd7c232175+|r
	[5] = { ["score"] = 2150, ["color"] = { 0.99, 0.48, 0.16 } },		-- |cfffc7a2a2150+|r
	[6] = { ["score"] = 2125, ["color"] = { 0.98, 0.47, 0.19 } },		-- |cfffb79302125+|r
	[7] = { ["score"] = 2105, ["color"] = { 0.98, 0.47, 0.21 } },		-- |cfffa77362105+|r
	[8] = { ["score"] = 2080, ["color"] = { 0.98, 0.46, 0.23 } },		-- |cfff9763b2080+|r
	[9] = { ["score"] = 2055, ["color"] = { 0.97, 0.45, 0.25 } },		-- |cfff874402055+|r
	[10] = { ["score"] = 2030, ["color"] = { 0.97, 0.45, 0.27 } },		-- |cfff773452030+|r
	[11] = { ["score"] = 2005, ["color"] = { 0.96, 0.44, 0.29 } },		-- |cfff6714a2005+|r
	[12] = { ["score"] = 1985, ["color"] = { 0.96, 0.44, 0.31 } },		-- |cfff5704e1985+|r
	[13] = { ["score"] = 1960, ["color"] = { 0.96, 0.43, 0.33 } },		-- |cfff46e531960+|r
	[14] = { ["score"] = 1935, ["color"] = { 0.95, 0.43, 0.34 } },		-- |cfff36d571935+|r
	[15] = { ["score"] = 1910, ["color"] = { 0.95, 0.42, 0.36 } },		-- |cfff26b5b1910+|r
	[16] = { ["score"] = 1885, ["color"] = { 0.95, 0.42, 0.37 } },		-- |cfff16a5f1885+|r
	[17] = { ["score"] = 1865, ["color"] = { 0.94, 0.41, 0.39 } },		-- |cfff068631865+|r
	[18] = { ["score"] = 1840, ["color"] = { 0.94, 0.40, 0.40 } },		-- |cffef66671840+|r
	[19] = { ["score"] = 1815, ["color"] = { 0.93, 0.40, 0.42 } },		-- |cffee656b1815+|r
	[20] = { ["score"] = 1790, ["color"] = { 0.93, 0.39, 0.44 } },		-- |cffec636f1790+|r
	[21] = { ["score"] = 1765, ["color"] = { 0.92, 0.38, 0.45 } },		-- |cffeb62731765+|r
	[22] = { ["score"] = 1745, ["color"] = { 0.92, 0.38, 0.47 } },		-- |cffea60771745+|r
	[23] = { ["score"] = 1720, ["color"] = { 0.91, 0.37, 0.48 } },		-- |cffe85f7b1720+|r
	[24] = { ["score"] = 1695, ["color"] = { 0.91, 0.36, 0.50 } },		-- |cffe75d7f1695+|r
	[25] = { ["score"] = 1670, ["color"] = { 0.90, 0.36, 0.51 } },		-- |cffe65c831670+|r
	[26] = { ["score"] = 1645, ["color"] = { 0.89, 0.36, 0.53 } },		-- |cffe45b871645+|r
	[27] = { ["score"] = 1625, ["color"] = { 0.89, 0.35, 0.55 } },		-- |cffe3598b1625+|r
	[28] = { ["score"] = 1600, ["color"] = { 0.88, 0.35, 0.56 } },		-- |cffe1588e1600+|r
	[29] = { ["score"] = 1575, ["color"] = { 0.87, 0.34, 0.57 } },		-- |cffdf56921575+|r
	[30] = { ["score"] = 1550, ["color"] = { 0.87, 0.33, 0.59 } },		-- |cffde55961550+|r
	[31] = { ["score"] = 1525, ["color"] = { 0.86, 0.33, 0.60 } },		-- |cffdc539a1525+|r
	[32] = { ["score"] = 1505, ["color"] = { 0.85, 0.32, 0.62 } },		-- |cffda529e1505+|r
	[33] = { ["score"] = 1480, ["color"] = { 0.85, 0.31, 0.63 } },		-- |cffd950a11480+|r
	[34] = { ["score"] = 1455, ["color"] = { 0.84, 0.31, 0.65 } },		-- |cffd74fa51455+|r
	[35] = { ["score"] = 1430, ["color"] = { 0.84, 0.30, 0.66 } },		-- |cffd54da91430+|r
	[36] = { ["score"] = 1405, ["color"] = { 0.83, 0.30, 0.68 } },		-- |cffd34cad1405+|r
	[37] = { ["score"] = 1385, ["color"] = { 0.82, 0.29, 0.69 } },		-- |cffd14ab11385+|r
	[38] = { ["score"] = 1360, ["color"] = { 0.81, 0.29, 0.71 } },		-- |cffcf49b41360+|r
	[39] = { ["score"] = 1335, ["color"] = { 0.80, 0.28, 0.72 } },		-- |cffcc47b81335+|r
	[40] = { ["score"] = 1310, ["color"] = { 0.79, 0.27, 0.74 } },		-- |cffca46bc1310+|r
	[41] = { ["score"] = 1285, ["color"] = { 0.78, 0.27, 0.75 } },		-- |cffc845c01285+|r
	[42] = { ["score"] = 1265, ["color"] = { 0.77, 0.26, 0.77 } },		-- |cffc543c41265+|r
	[43] = { ["score"] = 1240, ["color"] = { 0.76, 0.26, 0.78 } },		-- |cffc342c71240+|r
	[44] = { ["score"] = 1215, ["color"] = { 0.75, 0.25, 0.80 } },		-- |cffc040cb1215+|r
	[45] = { ["score"] = 1190, ["color"] = { 0.74, 0.25, 0.81 } },		-- |cffbd3fcf1190+|r
	[46] = { ["score"] = 1165, ["color"] = { 0.73, 0.24, 0.83 } },		-- |cffba3ed31165+|r
	[47] = { ["score"] = 1145, ["color"] = { 0.72, 0.24, 0.84 } },		-- |cffb83cd71145+|r
	[48] = { ["score"] = 1120, ["color"] = { 0.71, 0.23, 0.86 } },		-- |cffb43bdb1120+|r
	[49] = { ["score"] = 1095, ["color"] = { 0.69, 0.23, 0.87 } },		-- |cffb13adf1095+|r
	[50] = { ["score"] = 1070, ["color"] = { 0.68, 0.22, 0.89 } },		-- |cffae39e21070+|r
	[51] = { ["score"] = 1045, ["color"] = { 0.67, 0.22, 0.90 } },		-- |cffaa37e61045+|r
	[52] = { ["score"] = 1025, ["color"] = { 0.65, 0.21, 0.92 } },		-- |cffa736ea1025+|r
	[53] = { ["score"] = 1000, ["color"] = { 0.64, 0.21, 0.93 } },		-- |cffa335ee1000+|r
	[54] = { ["score"] = 965, ["color"] = { 0.60, 0.25, 0.93 } },		-- |cff9940ec965+|r
	[55] = { ["score"] = 940, ["color"] = { 0.56, 0.29, 0.92 } },		-- |cff8e49ea940+|r
	[56] = { ["score"] = 920, ["color"] = { 0.51, 0.32, 0.91 } },		-- |cff8351e8920+|r
	[57] = { ["score"] = 895, ["color"] = { 0.47, 0.35, 0.90 } },		-- |cff7858e6895+|r
	[58] = { ["score"] = 870, ["color"] = { 0.42, 0.37, 0.90 } },		-- |cff6a5ee5870+|r
	[59] = { ["score"] = 845, ["color"] = { 0.36, 0.39, 0.89 } },		-- |cff5c63e3845+|r
	[60] = { ["score"] = 820, ["color"] = { 0.29, 0.41, 0.88 } },		-- |cff4b68e1820+|r
	[61] = { ["score"] = 800, ["color"] = { 0.20, 0.42, 0.87 } },		-- |cff346cdf800+|r
	[62] = { ["score"] = 775, ["color"] = { 0.00, 0.44, 0.87 } },		-- |cff0070dd775+|r
	[63] = { ["score"] = 735, ["color"] = { 0.19, 0.48, 0.82 } },		-- |cff317ad2735+|r
	[64] = { ["score"] = 715, ["color"] = { 0.27, 0.52, 0.78 } },		-- |cff4485c7715+|r
	[65] = { ["score"] = 690, ["color"] = { 0.31, 0.56, 0.73 } },		-- |cff5090bb690+|r
	[66] = { ["score"] = 665, ["color"] = { 0.34, 0.60, 0.69 } },		-- |cff579ab0665+|r
	[67] = { ["score"] = 640, ["color"] = { 0.36, 0.65, 0.64 } },		-- |cff5ca5a4640+|r
	[68] = { ["score"] = 615, ["color"] = { 0.37, 0.69, 0.60 } },		-- |cff5fb098615+|r
	[69] = { ["score"] = 595, ["color"] = { 0.37, 0.73, 0.55 } },		-- |cff5fbb8c595+|r
	[70] = { ["score"] = 570, ["color"] = { 0.37, 0.78, 0.49 } },		-- |cff5ec67e570+|r
	[71] = { ["score"] = 545, ["color"] = { 0.35, 0.82, 0.44 } },		-- |cff5ad270545+|r
	[72] = { ["score"] = 520, ["color"] = { 0.33, 0.87, 0.38 } },		-- |cff54dd60520+|r
	[73] = { ["score"] = 495, ["color"] = { 0.29, 0.91, 0.31 } },		-- |cff4ae84e495+|r
	[74] = { ["score"] = 475, ["color"] = { 0.23, 0.96, 0.21 } },		-- |cff3bf436475+|r
	[75] = { ["score"] = 450, ["color"] = { 0.12, 1.00, 0.00 } },		-- |cff1eff00450+|r
	[76] = { ["score"] = 425, ["color"] = { 0.33, 1.00, 0.23 } },		-- |cff55ff3b425+|r
	[77] = { ["score"] = 400, ["color"] = { 0.45, 1.00, 0.34 } },		-- |cff74ff57400+|r
	[78] = { ["score"] = 375, ["color"] = { 0.55, 1.00, 0.44 } },		-- |cff8cff6f375+|r
	[79] = { ["score"] = 350, ["color"] = { 0.63, 1.00, 0.52 } },		-- |cffa0ff85350+|r
	[80] = { ["score"] = 325, ["color"] = { 0.70, 1.00, 0.61 } },		-- |cffb3ff9b325+|r
	[81] = { ["score"] = 300, ["color"] = { 0.77, 1.00, 0.69 } },		-- |cffc4ffaf300+|r
	[82] = { ["score"] = 275, ["color"] = { 0.83, 1.00, 0.76 } },		-- |cffd4ffc3275+|r
	[83] = { ["score"] = 250, ["color"] = { 0.89, 1.00, 0.84 } },		-- |cffe3ffd7250+|r
	[84] = { ["score"] = 225, ["color"] = { 0.95, 1.00, 0.92 } },		-- |cfff1ffeb225+|r
	[85] = { ["score"] = 200, ["color"] = { 1.00, 1.00, 1.00 } },		-- |cffffffff200+|r
}

ns.scoreTiersSimple = {
	[1] = { ["score"] = 2300, ["quality"] = 6 },
	[2] = { ["score"] = 1001, ["quality"] = 5 },
	[3] = { ["score"] = 776, ["quality"] = 4 },
	[4] = { ["score"] = 451, ["quality"] = 3 },
	[5] = { ["score"] = 200, ["quality"] = 2 }
}
ns.previousScoreTiers = {
}

ns.previousScoreTiersSimple = {
	[1] = { ["score"] = 200, ["quality"] = 2 }
}
