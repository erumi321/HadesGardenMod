ModUtil.RegisterMod("GardeningWithMom")
GardeningWithMom = {

}
local mod = "GardeningWithMom"

local obsName = "ExitDoor"
local obsBase = 556697
local obsOffset = {X = 0, Y = 350}
ModUtil.WrapBaseFunction( "SetupMap", function(baseFunc)
	local ret = baseFunc
	if GetMapName({}) == "DeathArea" then
		ObstacleData.ExitDoor = {
			Name = "GardenBox",
			InteractDistance = 350,
			UseText = "UseGhostAdmin",
			OnUsedFunctionName = "GardeningWithMom.LoadGreece",
			AnimOffsetZ = 300,
		}
	elseif GetMapName({}) == "E_Story01" then
		ObstacleData.ExitDoor = {
			Name = "GardenBox",
			InteractDistance = 350,
			UseText = "UseGhostAdmin",
			OnUsedFunctionName = "SurfaceKillHero",
			OnUsedFunctionArgs = { WaitTime = 0, MusicEndTime = 60 },
			AnimOffsetZ = 300,
		}
		ObstacleData.ElysiumPlanter01 = {
			Name = "GardenBox",
			InteractDistance = 350,
			UseText = "UseGhostAdmin",
			OnUsedFunctionName = "GardeningWithMom.OpenMenu",
			AnimOffsetZ = 300,
		}
	else
		ObstacleData.ExitDoor =
		{
			IsDefaultDoor = true,
	
			UseText = "UseExitDoorWhileLocked",
			UnlockedAnimation = "DoorExitLight",
			UnlockedUseText = "UseLeaveRoom",
			UnlockedUseTextReroll = "UseLeaveRoom_Reroll",
			UnlockedUseTextCannotReroll = "UseLeaveSpecialRoom_CannotReroll",
			RerollFunctionName = "AttemptRerollDoor",
			AllowReroll = true,
	
			LockedUseSound = "/Leftovers/World Sounds/Caravan Interior/ChestClose",
			UnlockedUseSound = "/Leftovers/World Sounds/PostBossLeaveSFX",
	
			AddToGroup = "ExitDoors",
	
			ExitBlockedVoiceLines =
			{
				RandomRemaining = true,
				PreLineWait = 0.25,
				CooldownTime = 6,
	
				-- I can't.
				{ Cue = "/VO/ZagreusField_0390", RequiredKillEnemiesNotFound = true, },
				-- Can't do that.
				{ Cue = "/VO/ZagreusField_0391", RequiredKillEnemiesNotFound = true, },
				-- It's no use.
				{ Cue = "/VO/ZagreusField_0392", RequiredKillEnemiesNotFound = true, },
				-- No use.
				{ Cue = "/VO/ZagreusField_0393", RequiredKillEnemiesNotFound = true, },
				-- No way.
				{ Cue = "/VO/ZagreusField_0394", RequiredKillEnemiesNotFound = true, },
				-- Not now.
				{ Cue = "/VO/ZagreusField_0395", RequiredKillEnemiesNotFound = true, },
				-- Not yet.
				{ Cue = "/VO/ZagreusField_0238", RequiredKillEnemiesNotFound = true, },
	
				-- I can't!
				{ Cue = "/VO/ZagreusField_0084", RequiredKillEnemiesFound = true, },
				-- Can't do that!
				{ Cue = "/VO/ZagreusField_0088", RequiredKillEnemiesFound = true, },
				-- Not now!
				{ Cue = "/VO/ZagreusField_0090", RequiredKillEnemiesFound = true, },
				-- Not yet!
				{ Cue = "/VO/ZagreusField_0239", RequiredKillEnemiesFound = true, },
				-- Got to fight!
				{ Cue = "/VO/ZagreusField_0246", RequiredKillEnemiesFound = true, },
				-- Stuck!
				{ Cue = "/VO/ZagreusField_0247", RequiredKillEnemiesFound = true, },
				-- No use!
				{ Cue = "/VO/ZagreusField_0248", RequiredKillEnemiesFound = true, },
				-- It's no use!
				{ Cue = "/VO/ZagreusField_0249", RequiredKillEnemiesFound = true, },
			},
		}
		ObstacleData.ElysiumPlanter01 =
		{
			Material = "StoneObstacle",
		}
	end
	return ret()
end)
--ReadOnly, DONT MODIFY EVER
local PlantData = {
	--[[[Name] = {
		GrowthMax = ... --int
		Image = "...\\...\\..."
		Size = {
			Horizontal = {
				{1, 1, 1} -- 1 Row, 1 means that spot is taken, 2 means it isnt
			},
			Vertical = {
				{1},
				{1},
				{1}
			},
			
		}
	}]]--
	["Pomegranate"] = {
		GrowthMax = 1,
		ImageStyle = {Image = "Tilesets\\Gameplay\\Gameplay_StackUpgrade_01", Scale = 0.42, GridScale = 1.85, GridOffset = {X = 70, Y = 70}},
		Size = {
			Horizontal = {
				{1, 1},
				{1, 1},
			},
			Vertical = {
				{1, 1},
				{1, 1},
			}
		},
		Description = "A nice snack."
	},
	["Weeds"] = {
		GrowthMax = 1,
		ImageStyle = {Image = "GUI\\Screens\\SeasonalItem", Scale = 0.52, GridScale = 1, GridOffset = {X = 0, Y = 0}},
		Size = {
			Horizontal = {
				{1}
			},
			Vertical = {
				{1}
			}
		},
		Description = "SOOOO MANY WEEEEDS!!"
	},
	["Dark Bloom"] = {
		GrowthMax = 1,
		ImageStyle = { Image = "GUI\\Screens\\MirrorIcons\\priveleged status", Scale = 0.32, GridScale = 0.75, GridOffset = {X = 0, Y = 0}},
		Size = {
			Horizontal = {
				{1}
			},
			Vertical = {
				{1},
			}
		},
		Description = "A seed so rare even Persephone herself had never seen it."
	},
	
}
PlantAmount = {
	--[Name] = ... --int
	["Pomegranate"] = 10,
	["Weeds"] = 100,
	["Dark Bloom"] = 1,
}
GardeningWithMomGardenPlot = {
	{ -- 1 Row
		{ --1 square in the row
			IsEmpty = true,
			IgnoreOnStart = true,  --will ignore the grid cell when initalizing the grid
			ItemData = {
				--Plant = ... --Current Plant Name
				--Position = {X = .., Y = ..} --The center of the PlantData
				--GrowthStage = ... --int
				--Orientation = ... --The current orientation
			}
		},
		{
			IsEmpty = true,
			IgnoreOnStart = true,
			ItemData = {}
		},
		{
			IsEmpty = true,
			IgnoreOnStart = true,
			ItemData = {}
		},
		{
			IsEmpty = true,
			IgnoreOnStart = true,
			ItemData = {}
		},
		{
			IsEmpty = true,
			IgnoreOnStart = true,
			ItemData = {}
		},
		{
			IsEmpty = true,
			IgnoreOnStart = true,
			ItemData = {}
		},
	},
	{
		{
			IsEmpty = true,
			IgnoreOnStart = true,
			ItemData = {}
		},
		{
			IsEmpty = true,
			IgnoreOnStart = true,
			ItemData = {}
		},
		{
			IsEmpty = true,
			IgnoreOnStart = true,
			ItemData = {}
		},
		{
			IsEmpty = true,
			IgnoreOnStart = true,
			ItemData = {}
		},
		{
			IsEmpty = true,
			IgnoreOnStart = true,
			ItemData = {}
		},
		{
			IsEmpty = true,
			IgnoreOnStart = true,
			ItemData = {}
		},
	},
	{
		{
			IsEmpty = true,
			IgnoreOnStart = true,
			ItemData = {}
		},
		{
			IsEmpty = true,
			IgnoreOnStart = true,
			ItemData = {}
		},
		{
			IsEmpty = true,
			IgnoreOnStart = true,
			ItemData = {}
		},
		{
			IsEmpty = true,
			IgnoreOnStart = true,
			ItemData = {}
		},
		{
			IsEmpty = true,
			IgnoreOnStart = true,
			ItemData = {}
		},
		{
			IsEmpty = true,
			IgnoreOnStart = true,
			ItemData = {}
		},
	},
	{
		{
			IsEmpty = true,
			IgnoreOnStart = true,
			ItemData = {}
		},
		{
			IsEmpty = true,
			IgnoreOnStart = true,
			ItemData = {}
		},
		{
			IsEmpty = true,
			IgnoreOnStart = true,
			ItemData = {}
		},
		{
			IsEmpty = true,
			IgnoreOnStart = true,
			ItemData = {}
		},
		{
			IsEmpty = true,
			IgnoreOnStart = true,
			ItemData = {}
		},
		{
			IsEmpty = true,
			IgnoreOnStart = true,
			ItemData = {}
		},
	},
	{
		{
			IsEmpty = true,
			IgnoreOnStart = true,
			ItemData = {}
		},
		{
			IsEmpty = true,
			IgnoreOnStart = true,
			ItemData = {}
		},
		{
			IsEmpty = true,
			IgnoreOnStart = true,
			ItemData = {}
		},
		{
			IsEmpty = true,
			IgnoreOnStart = true,
			ItemData = {}
		},
		{
			IsEmpty = true,
			IgnoreOnStart = true,
			ItemData = {}
		},
		{
			IsEmpty = true,
			IgnoreOnStart = true,
			ItemData = {}
		},
	},
	{
		{
			IsEmpty = true,
			IgnoreOnStart = true,
			ItemData = {}
		},
		{
			IsEmpty = true,
			IgnoreOnStart = true,
			ItemData = {}
		},
		{
			IsEmpty = true,
			IgnoreOnStart = true,
			ItemData = {}
		},
		{
			IsEmpty = true,
			IgnoreOnStart = true,
			ItemData = {}
		},
		{
			IsEmpty = true,
			IgnoreOnStart = true,
			ItemData = {}
		},
		{
			IsEmpty = true,
			IgnoreOnStart = true,
			ItemData = {}
		},
	},
}
DeathLoopData.DeathArea.ObstacleData[555708] = {

}
local targetId2
OnAnyLoad{function(triggerArgs)
	if GetMapName({}) == "DeathArea" then
		DebugPrint({Text = "@"..mod.." Trying to create obstacle " .. obsName .. " at Base Obstacle Id: ".. obsBase .." Offset: (" .. obsOffset.X .. ", " .. obsOffset.Y .. ")"})
		local targetId = SpawnObstacle({ Name = obsName, Group = "Standing", DestinationId = obsBase, OffsetX = obsOffset.X, OffsetY = obsOffset.Y })
		DebugPrint({Text = targetId})
		SetScale({ Id = targetId, Fraction = 1.6 })
		AngleTowardTarget({ Id = targetId, DestinationId = 556697 })
	end
	if GetMapName({}) == "E_Story01" then
		DebugPrint({Text = "@"..mod.." Trying to create obstacle " .. obsName .. " at Base Obstacle Id: ".. obsBase .." Offset: (" .. obsOffset.X .. ", " .. obsOffset.Y .. ")"})
		local targetId = SpawnObstacle({ Name = "ElysiumPlanter01", Group = "Standing", DestinationId = CurrentRun.Hero.ObjectId, OffsetX = 3700, OffsetY = -2750 })
		DebugPrint({Text = targetId})
		SetScale({ Id = targetId, Fraction = 0 })
		DebugPrint({Text = "@"..mod.." Trying to create obstacle " .. obsName .. " at Base Obstacle Id: ".. obsBase .." Offset: (" .. obsOffset.X .. ", " .. obsOffset.Y .. ")"})
		targetId2 = SpawnObstacle({ Name = obsName, Group = "Standing", DestinationId = CurrentRun.Hero.ObjectId, OffsetX = 0,  OffsetY = 0 })
		DebugPrint({Text = targetId2})
		SetScale({ Id = targetId2, Fraction = 1.6 })
	end
	--local obstacleName = "TartarusRubble02"
	--local obstacleId = SpawnObstacle({ Name = obstacleName, DestinationId = desId, OffsetX = offsetX, OffsetY = offsetY, ForceToValidLocation = true, SkipIfBlocked = true, Group = "Standing", })
	--AddToGroup({ Id = obstacleId, Name = "DestructibleGeo"})
	
	
	GardeningWithMomGardenPlot = {
		{ -- 1 Row
		{ --1 square in the row
			IsEmpty = true,
			IgnoreOnStart = true,  --will ignore the grid cell when initalizing the grid
			ItemData = {
				--Plant = ... --Current Plant Name
				--Position = {X = .., Y = ..} --The center of the PlantData
				--GrowthStage = ... --int
				--Orientation = ... --The current orientation
			}
		},
		{
			IsEmpty = true,
			IgnoreOnStart = true,
			ItemData = {}
		},
		{
			IsEmpty = true,
			IgnoreOnStart = true,
			ItemData = {}
		},
		{
			IsEmpty = true,
			IgnoreOnStart = true,
			ItemData = {}
		},
		{
			IsEmpty = true,
			IgnoreOnStart = true,
			ItemData = {}
		},
		{
			IsEmpty = true,
			IgnoreOnStart = true,
			ItemData = {}
		},
	},
	{
		{
			IsEmpty = true,
			IgnoreOnStart = true,
			ItemData = {}
		},
		{
			IsEmpty = true,
			IgnoreOnStart = true,
			ItemData = {}
		},
		{
			IsEmpty = true,
			IgnoreOnStart = true,
			ItemData = {}
		},
		{
			IsEmpty = true,
			IgnoreOnStart = true,
			ItemData = {}
		},
		{
			IsEmpty = true,
			IgnoreOnStart = true,
			ItemData = {}
		},
		{
			IsEmpty = true,
			IgnoreOnStart = true,
			ItemData = {}
		},
	},
	{
		{
			IsEmpty = true,
			IgnoreOnStart = true,
			ItemData = {}
		},
		{
			IsEmpty = true,
			IgnoreOnStart = true,
			ItemData = {}
		},
		{
			IsEmpty = true,
			IgnoreOnStart = true,
			ItemData = {}
		},
		{
			IsEmpty = true,
			IgnoreOnStart = true,
			ItemData = {}
		},
		{
			IsEmpty = true,
			IgnoreOnStart = true,
			ItemData = {}
		},
		{
			IsEmpty = true,
			IgnoreOnStart = true,
			ItemData = {}
		},
	},
	{
		{
			IsEmpty = true,
			IgnoreOnStart = true,
			ItemData = {}
		},
		{
			IsEmpty = true,
			IgnoreOnStart = true,
			ItemData = {}
		},
		{
			IsEmpty = true,
			IgnoreOnStart = true,
			ItemData = {}
		},
		{
			IsEmpty = true,
			IgnoreOnStart = true,
			ItemData = {}
		},
		{
			IsEmpty = true,
			IgnoreOnStart = true,
			ItemData = {}
		},
		{
			IsEmpty = true,
			IgnoreOnStart = true,
			ItemData = {}
		},
	},
	{
		{
			IsEmpty = true,
			IgnoreOnStart = true,
			ItemData = {}
		},
		{
			IsEmpty = true,
			IgnoreOnStart = true,
			ItemData = {}
		},
		{
			IsEmpty = true,
			IgnoreOnStart = true,
			ItemData = {}
		},
		{
			IsEmpty = true,
			IgnoreOnStart = true,
			ItemData = {}
		},
		{
			IsEmpty = true,
			IgnoreOnStart = true,
			ItemData = {}
		},
		{
			IsEmpty = true,
			IgnoreOnStart = true,
			ItemData = {}
		},
	},
	{
		{
			IsEmpty = true,
			IgnoreOnStart = true,
			ItemData = {}
		},
		{
			IsEmpty = true,
			IgnoreOnStart = true,
			ItemData = {}
		},
		{
			IsEmpty = true,
			IgnoreOnStart = true,
			ItemData = {}
		},
		{
			IsEmpty = true,
			IgnoreOnStart = true,
			ItemData = {}
		},
		{
			IsEmpty = true,
			IgnoreOnStart = true,
			ItemData = {}
		},
		{
			IsEmpty = true,
			IgnoreOnStart = true,
			ItemData = {}
		},
	},
	}
end}

function GardeningWithMom.LoadGreece()
	EncounterData.Story_Persephone_01.MaxAppearancesThisBiome = nil
	LeaveRoomWithNoDoor("", { NextMap = "E_Story01", ObjectId = 552607 })
end

function GardeningWithMom.LoadHouse()
	DeathAreaSwitchRoom( DeathLoopData.DeathAreaBedroom.ObstacleData[420896], { Name = "DeathArea", HeroStartPoint = 390004, HeroEndPoint = 390002, CheckBinkSetChange = true })
	
end
local gridMode = "Place" --Place for placing, Delete for deleteing, And Harvest for harvesting
function GardeningWithMom.OpenMenu()
    local screen = { Components = {} }
	screen.Name = "GardenBox"
	gridMode = "Place"
	if IsScreenOpen( screen.Name ) then
		return
	end
OnScreenOpened({ Flag = screen.Name, PersistCombatUI = true })
CurrentRun.CurrentRoom.DisableWeaponsExceptDash = false
	FreezePlayerUnit()
	EnableShopGamepadCursor()
	SetConfigOption({ Name = "FreeFormSelectWrapY", Value = false })
	SetConfigOption({ Name = "FreeFormSelectStepDistance", Value = 8 })
	SetConfigOption({ Name = "FreeFormSelectSuccessDistanceStep", Value = 8 })
	SetConfigOption({ Name = "FreeFormSelectRepeatDelay", Value = 0.6 })
	SetConfigOption({ Name = "FreeFormSelectRepeatInterval", Value = 0.1 })
	SetConfigOption({ Name = "FreeFormSelecSearchFromId", Value = 0 })
	HideCombatUI("GardenBox")
	PlaySound({ Name = "/SFX/Menu Sounds/ContractorMenuOpen" })
	local components = screen.Components
	--components.ShopBackground2 = CreateScreenComponent({ Name = "rectangle01", Group = "Combat_UI_World" })
	components.ShopBackground = CreateScreenComponent({ Name = "BoonInfoBacking", Group = "GardenBoxGroup", X = 1100, Y = 540 })
	
	components.CloseButton = CreateScreenComponent({ Name = "ButtonClose", Group = "GardenBoxGroup", Scale = 0.7 })
	Attach({ Id = components.CloseButton.Id, DestinationId = components.ShopBackground.Id, OffsetX = 135, OffsetY = 490 })
	components.CloseButton.OnPressedFunctionName = "GardeningWithMom.ClosePlanting"
	--components.CloseButton.ControlHotkey = "Cancel"
	local scale = 1.25
	SetAlpha({ Id = components.ShopBackground.Id, Fraction = 1, Duration = 0 })
	SetScale({ Id = components.ShopBackground.Id, Fraction = scale })
	SetColor({ Id = components.ShopBackground.Id, Color = {0.54509803921, 0.27058823529, 0.07450980392, 1} })
    --[[SetScaleX({ Id = components.ShopBackground2.Id, Fraction = 0.95 })
    SetScale({ Id = components.ShopBackground2.Id, Fraction = scale * 1.08333333333 })
	SetColor({ Id = components.ShopBackground2.Id, Color = {0, 0, 0, 1} })]]--

	-- Title
	CreateTextBox(MergeTables({ Id = components.ShopBackground.Id, Text = "GardeningWithMomModMainMenuTitle", FontSize = 32, OffsetX = -500, OffsetY = -445, Color = Color.White, Font = "SpectralSCLightTitling", ShadowBlur = 0, ShadowColor = {0,0,0,1}, ShadowOffset={0, 3}, Justification = "Center" }, LocalizationData.SellTraitScripts.ShopButton))
	local flavorTextOptions = { "GardeningWithMomModMainMenuFlavorText1", "GardeningWithMomModMainMenuFlavorText2", "GardeningWithMomModMainMenuFlavorText3", "GardeningWithMomModMainMenuFlavorText4"}
	local flavorText = GetRandomValue( flavorTextOptions )
	CreateTextBox(MergeTables({ Id = components.ShopBackground.Id, Text = flavorText,FontSize = 14, OffsetX = -500, OffsetY = 480, Width = 840, Color = Color.Gray, Font = "AlegreyaSansSCBold", ShadowBlur = 0, ShadowColor = {0,0,0,1}, ShadowOffset={0, 2}, Justification = "Center" }, LocalizationData.SellTraitScripts.ShopButton))

	CreateTextBox(MergeTables({ Id = components.ShopBackground.Id, Text = "GardeningWithMomModMainMenuSubheader",
			FontSize = 16,
            OffsetX = -500,
			OffsetY = -385, Width = 840,
			Color = {0.698, 0.702, 0.514, 1.0},
			Font = "AlegreyaSansSCRegular",
			ShadowBlur = 0, ShadowColor = {0,0,0,0}, ShadowOffset={0, 3},
			Justification = "Center",
		}, LocalizationData.SellTraitScripts.ShopButton))
    components.SwapOrientationButton = CreateScreenComponent({ Name = "ButtonRefund", Scale = 1, Group = "GardenBoxGroup", X = 1125, Y = 225 })
	components.SwapOrientationButton.OnPressedFunctionName = "GardeningWithMom.SwapOrientation"
	components.OrientationShower = CreateScreenComponent({ Name = "ButtonCodexRight", X = 1150 , Y = 225, Scale = 1, Sound = "/SFX/Menu Sounds/GeneralWhooshMENU", Group ="GardenBoxGroup" })

	local myDropdown = ErumiUILib.Dropdown.CreateDropdown(
		screen, {
			Name = "MyDropdown",
			Group = "GardenBoxGroup",
			Scale = {X = 0.15, Y = 0.9},
			Padding = {X = 0, Y = 5},
			X = 1125, Y = 325,
			GeneralOffset = {X = 0, Y = 0},
			GeneralFontSize = 23,
			Justification = "Center",
			Font = "AlegreyaSansSCBold",
			Items = {
				["Default"] = {
					event = function(dropdown)
						ErumiUILib.Dropdown.DisableEntry(dropdown, 1)
						gridMode = "Place"
					end,
					Text = "Planting"
				},
				{
					event = function(dropdown)
						ErumiUILib.Dropdown.EnableEntry(dropdown, 2)
						ErumiUILib.Dropdown.EnableEntry(dropdown, 3)
						ErumiUILib.Dropdown.DisableEntry(dropdown, 1)
						gridMode = "Place"
					end,
					Text = "Planting",
				},
				{
					event = function(dropdown)
						ErumiUILib.Dropdown.EnableEntry(dropdown, 1)
						ErumiUILib.Dropdown.EnableEntry(dropdown, 3)
						ErumiUILib.Dropdown.DisableEntry(dropdown, 2)
						gridMode = "Delete"
					end,
					Text = "Dig Up",
				},
				{
					event = function(dropdown)
						ErumiUILib.Dropdown.EnableEntry(dropdown, 1)
						ErumiUILib.Dropdown.EnableEntry(dropdown, 2)
						ErumiUILib.Dropdown.DisableEntry(dropdown, 3)
						gridMode = "Harvest"
					end,
					Text = "Harvest",
				},
			},
		})

	screen.KeepOpen = true

    GardeningWithMom.CreateMenuButtons(screen)

	thread( HandleWASDInput, screen )
	HandleScreenInput( screen )

end
function GardeningWithMom.ClosePlanting( screen, button )
	DisableShopGamepadCursor()
	SetConfigOption({ Name = "FreeFormSelectStepDistance", Value = 16 })
	SetConfigOption({ Name = "FreeFormSelectSuccessDistanceStep", Value = 8 })
	SetConfigOption({ Name = "FreeFormSelectRepeatDelay", Value = 0.0 })

	PlaySound({ Name = "/SFX/Menu Sounds/ContractorMenuClose" })
	CloseScreen( GetAllIds( screen.Components ) )
	UnfreezePlayerUnit()
	ToggleControl({ Names = { "Use", "Rush", "Gift", "Emote" }, Enabled = true })
	screen.KeepOpen = false
	OnScreenClosed({ Flag = screen.Name })

end
local CurrentPlantSelected = nil --The string name
local CurrentOrientation = "H" --A string "H" or Horizontal and "V" for Vertical
--SaveIgnores["CurrentPlantSelected"] = true
function GardeningWithMom.CreateMenuButtons(screen)
	local components = screen.Components
	--#region Create ScrollingList to show items
	local items = {}
	for k,v in pairs(PlantData) do
		if PlantAmount[k] > 0 then
			local newItem =	{
					event = function(dropdown)
						CurrentPlantSelected = k
					end,
					Text = k,
					ImageStyle = {
						Image = v.ImageStyle.Image,
						Offset = {X = -225, Y = 0},
						Scale = v.ImageStyle.Scale
					},
					Description = v.Description
				}
				table.insert(items, newItem)
		end
	end
	if #items > 0 then
		local myScroll = ErumiUILib.ScrollingList.CreateScrollingList(screen, {
				Name = "MyScrollingList", 
				Group = "GardenBoxGroup",
				Scale = {X = 0.6, Y = 1},
				Padding = {X = 0, Y = 5},
				X = 1550, Y = 115,
				ImageStyle = {
					Image = "GUI\\Screens\\SeasonalItem",
					Offset = {X = -225, Y = 0},
				},
				GeneralOffset = {X = -195, Y = -25},
				GeneralFontSize = 18,
				Justification = "Left",
				Font = "AlegreyaSansSCBold",
				ItemsPerPage = 9,
				ArrowStyle = {
					Offset = {X = 325, Y = 0},
					Scale = 1,
					CreationPositions = {Style = "TB"}
				},
				DescriptionFontSize = 13,
				DescriptionOffset = {X = -195, Y = 0},
				DescriptionColor = Color.Yellow,
				DeEnabledColor = {1,0,0,0.33},
				Items = items
			})
	end
	--#endregion
	--#region Create Button Grid
		local scale = 0.6
		local buttonStartXPos = 250
		local buttonStartYPos = 250
		local buttonPadXPos = 245 * scale
		local buttonPadYPos = 225 * scale
		local curXPos = buttonStartXPos
		local curYPos = buttonStartYPos
		for k = 1, 6 do
			--Iterate through rows
			for k2 = 1, 6 do
				--Iterate through cells
				local buttonKey = "GardenBoxCell:Pos{" .. k2 .. "," .. k .. "}"
				components[buttonKey] = CreateScreenComponent({ Name = "BoonSlot1", Group = "GardenBoxButtonGrid", Scale = scale, X = curXPos, Y = curYPos })
				SetScaleX({ Id = components["GardenBoxCell:Pos{" .. k2 .. "," .. k .. "}"].Id,  Fraction = 0.24519774011 })
				components[buttonKey].OnPressedFunctionName = "GardeningWithMom.GridButtonPressFunc"
				components[buttonKey].Position = {X = curXPos, Y = curYPos}
				components[buttonKey].Index = {X = k2, Y = k}
				components[buttonKey].IsGardeningGridButton = true
				components[buttonKey].screen = screen
				AttachLua({ Id = components[buttonKey].Id, Table = components[buttonKey] })
				curXPos = curXPos + buttonPadXPos
			end
			curYPos = curYPos + buttonPadYPos
			curXPos = buttonStartXPos
		end
		GardeningWithMom.LoadStoredGrid(screen)
	--#endregion
end

function GardeningWithMom.SwapOrientation(screen, button)
	local components = screen.Components
	if CurrentOrientation == "H" then
		CurrentOrientation = "V"
		Destroy({Id = components.OrientationShower.Id})
		components.OrientationShower = CreateScreenComponent({ Name = "ButtonCodexUp", X = 1150 , Y = 225, Scale = 0.7, Sound = "/SFX/Menu Sounds/GeneralWhooshMENU", Group ="GardenBoxGroup" })
	else
		CurrentOrientation = "H"
		Destroy({Id = components.OrientationShower.Id})
		components.OrientationShower = CreateScreenComponent({ Name = "ButtonCodexRight", X = 1150 , Y = 225, Scale = 1, Sound = "/SFX/Menu Sounds/GeneralWhooshMENU", Group ="GardenBoxGroup" })
	
	end
end
globEx = nil
SaveIgnores["globEx"] = true
--When displaying the image we always want to have it in the center of the mouse as much as possible, if that isnt possible then
--do the top left of the center cube
function GardeningWithMom.LoadStoredGrid(screen)
	local components = screen.Components
	--[[{ --1 square in the row
	IsEmpty = true,
	IgnoreOnStart = ..., --will ignore the grid cell when initalizing the grid
	ItemData = {
		--Plant = ... --Current Plant Name
		--Position = {X = .., Y = ..} --The center of the PlantData
		--GrowthStage = ... --int
		--Orientation = ... --The current orientation
	}
},]]--
	for k1 = 1, 6 do
		local v1 = GardeningWithMomGardenPlot[k1]
		for k2 = 1,6 do
			local v2 = v1[k2]
			if v2 ~= nil and v2.IsEmpty == false and v2.IgnoreOnStart == false and (v2.ItemData ~= nil or v2.ItemData ~= {}) then
					local buttonKey = "GardenBoxCell:Pos{" .. k2 .. "," .. k1 .. "}"
					CurrentOrientation = v2.ItemData.Orientation
					local button = components[buttonKey]
					CurrentPlantSelected = v2.ItemData.Plant
					GardeningWithMom.GridButtonPressFunc(button.screen, button)

			end
		end
	end
end

function GardeningWithMom.GridButtonPressFunc(screen, button)
	if CurrentPlantSelected == nil or button.IsGardeningGridButton ~= true then
		return
	end
	local screen = button.screen
	local components = screen.Components

	if gridMode == "Place" then
		local posData
		if CurrentOrientation == "H" then
			posData = PlantData[CurrentPlantSelected].Size.Horizontal
		elseif CurrentOrientation == "V" then
			posData = PlantData[CurrentPlantSelected].Size.Vertical
		end
		local canPlace = true
		local buttons = {}
		for k1,v1 in pairs(posData) do
			--iterate through rows
			for k2,v2 in pairs(v1) do
				--iterate through cells
				if v2 == 1 and gridMode == "Place" then
					local heightFromCenter = math.ceil(#posData / 2) - k1
					local widthFromCenter = math.ceil(#v1 / 2) - k2
					local gridPosX = button.Index.X - widthFromCenter
					local gridPosY = button.Index.Y - heightFromCenter
					local newButtonKey = "GardenBoxCell:Pos{" .. gridPosX .. "," .. gridPosY .. "}"
					local newButton = components[newButtonKey]
					table.insert(buttons, {button = newButton, widthFromCenter = widthFromCenter, heightFromCenter = heightFromCenter, k2 = k2, k1 = k1})
					if newButton == nil then
						canPlace = false
					end
					if newButton ~= nil and newButton.Occupied == true then
						thread(function()
							local imageKey = CurrentPlantSelected .. "TempImageBacking" .. button.Id .. "{" .. k2 .. ", " .. k1 .. "}"
							if components[imageKey.."RedShower"] ~= nil then
								Destroy({Id = components[imageKey.."RedShower"].Id})
							end
							if newButton.PlacedImage then
								components[imageKey.."RedShower"] = CreateScreenComponent({ Name = "rectangle01", Group = "GardenBoxButtonGridImageRedShower",Ambient = 0,Scale = 0.45, X = newButton.Position.X, Y = newButton.Position.Y })
								SetScaleX({Id = components[imageKey.."RedShower"].Id, Fraction = 0.6})
								SetColor({Color = {1,0,0,1}, Id= components[imageKey.."RedShower"].Id})
								wait(0.2)
								SetColor({Color = {1,1,1,0}, Id= components[imageKey.."RedShower"].Id})
								wait(0.2)
								SetColor({Color = {1,0,0,1}, Id= components[imageKey.."RedShower"].Id})
								wait(0.2)
								Destroy({Id = components[imageKey.."RedShower"].Id})
							end
						end)
						canPlace = false
					end
				end
			end
		end
		if canPlace then
			for k,v in pairs(buttons) do
				local newButton = v.button
				local isChild = true
				if v.widthFromCenter == 0 and v.heightFromCenter == 0 then
					isChild = false
				end
				if newButton ~= nil and newButton.Occupied ~= true then
					local imageKey = CurrentPlantSelected .. "ImageBacking" .. button.Id .. "{" .. v.k2 .. ", " .. v.k1 .. "}"
					if not isChild then
						local imageStyle = PlantData[CurrentPlantSelected].ImageStyle
						components[imageKey] = CreateScreenComponent({ Name = "BlankObstacle", Group = "GardenBoxButtonGridImage",Ambient = 0,Scale = 1, X = newButton.Position.X + imageStyle.GridOffset.X, Y = newButton.Position.Y + imageStyle.GridOffset.Y})
						SetAnimation({ DestinationId = components[imageKey].Id, Name = imageStyle.Image, Scale = imageStyle.GridScale })
						newButton.PlacedImage = components[imageKey]
					end
					SetColor({ Id = newButton.Id, Color = {1,0,0,1} })
					newButton.Occupied = true
					GardeningWithMomGardenPlot[newButton.Index.Y][newButton.Index.X] = { 
						IsEmpty = false,
						IgnoreOnStart = isChild,
						ItemData = {
							Plant = CurrentPlantSelected, --Current Plant Name
							Position = {X = button.Index.X, Y =button.Index.Y}, --The center of the PlantData
							GrowthStage = 1, --int
							Orientation = CurrentOrientation --The current orientation
						},
						SameGroupButtons = buttons
					}
				end
			end
		end
	end
	if gridMode == "Delete" then
		if button.Occupied == true then
			if button.PlacedImage ~= nil then
				Destroy({Id = button.PlacedImage.Id})
			end
			for k,v in pairs(GardeningWithMomGardenPlot[button.Index.Y][button.Index.X].SameGroupButtons) do
				local button = v.button
				if button.PlacedImage ~= nil then
					Destroy({Id = button.PlacedImage.Id})
				end
				SetColor({ Id = button.Id, Color = {1,1,1,1} })
				GardeningWithMomGardenPlot[button.Index.Y][button.Index.X] = {
					IsEmpty = true,
					IgnoreOnStart = true,
					ItemData = {}
				}
				button.Occupied = false
			end
			SetColor({ Id = button.Id, Color = {1,1,1,1} })
			GardeningWithMomGardenPlot[button.Index.Y][button.Index.X] = {
				IsEmpty = true,
				IgnoreOnStart = true,
				ItemData = {}
			}
			button.Occupied = false
		end
	end
end
OnMouseOver{"BoonSlot1", function (triggerArgs)
	if gridMode == "Place" then
		local button = triggerArgs.TriggeredByTable
		if CurrentPlantSelected == nil or button.IsGardeningGridButton ~= true then
			return
		end
		local screen = button.screen
		local components = screen.Components

		local posData
		if CurrentOrientation == "H" then
			posData = PlantData[CurrentPlantSelected].Size.Horizontal
		elseif CurrentOrientation == "V" then
			posData = PlantData[CurrentPlantSelected].Size.Vertical
		end
		
		for k1,v1 in pairs(posData) do
			--iterate through rows
			for k2,v2 in pairs(v1) do
				--iterate through cells
				if v2 == 1 then
					local heightFromCenter = math.ceil(#posData / 2) - k1
					local widthFromCenter = math.ceil(#v1 / 2) - k2
					local imageKey = CurrentPlantSelected .. "TempImageBacking" .. button.Id .. "{" .. k2 .. ", " .. k1 .. "}"
					local gridPosX = button.Index.X - widthFromCenter
					local gridPosY = button.Index.Y - heightFromCenter
					local newButtonKey = "GardenBoxCell:Pos{" .. gridPosX .. "," .. gridPosY .. "}" 
					local newButton = components[newButtonKey]
					if newButton ~= nil and widthFromCenter == 0 and heightFromCenter == 0 then
						local imageStyle = PlantData[CurrentPlantSelected].ImageStyle
						components[imageKey] = CreateScreenComponent({ Name = "BlankObstacle", Group = "GardenBoxButtonGridImage",Ambient = 0,Scale = 1, X = newButton.Position.X + imageStyle.GridOffset.X, Y = newButton.Position.Y + imageStyle.GridOffset.Y})
						SetAnimation({ DestinationId = components[imageKey].Id, Name = imageStyle.Image, Scale = imageStyle.GridScale })
						SetColor({ Id = components[imageKey].Id, Color = {1,1,1,0.33} })
					end			
				end
			end
		end
	end
end}
OnMouseOff{"BoonSlot1", function (triggerArgs)
	local button = triggerArgs.TriggeredByTable
	if CurrentPlantSelected == nil or button.IsGardeningGridButton ~= true then
		return
	end
	local screen = button.screen
	local components = screen.Components
	local imageKey = CurrentPlantSelected .. "TempImageBacking"
	for k,v in pairs(components) do
		if string.find(k, imageKey) then
			Destroy({Id = v.Id })
		end
	end
	
end}
