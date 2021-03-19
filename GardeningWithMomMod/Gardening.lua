ModUtil.RegisterMod("GardeningWithMom")
GardeningWithMom = {

}

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
		ImageStyle = {Image = "Tilesets\\Gameplay\\Gameplay_StackUpgrade_01", Scale = 0.42, GridScale = 0.75},
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
		ImageStyle = {Image = "GUI\\Screens\\SeasonalItem", Scale = 0.52, GridScale = 1},
		Size = {
			Horizontal = {
				{0,1,0},
				{1,1,1},
				{0,1,0}
			},
			Vertical = {
				{0,1,0},
				{1,1,1},
				{0,1,0}
			}
		},
		Description = "SOOOO MANY WEEEEDS!!"
	},
	["Dark Bloom"] = {
		GrowthMax = 1,
		ImageStyle = { Image = "GUI\\Screens\\MirrorIcons\\priveleged status", Scale = 0.32, GridScale = 0.75},
		Size = {
			Horizontal = {
				{1, 1, 1}
			},
			Vertical = {
				{1},
				{1},
				{1}
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
    Name = "GardenBox",
    InteractDistance = 240,
    UseText = "UseGhostAdmin",
    OnUsedFunctionName = "GardeningWithMom.OpenMenu",
    AnimOffsetZ = 300,
}
OnAnyLoad{function(triggerArgs)
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
function GardeningWithMom.OpenMenu()
    local screen = { Components = {} }
	screen.Name = "GardenBox"

	if IsScreenOpen( screen.Name ) then
		return
	end
OnScreenOpened({ Flag = screen.Name, PersistCombatUI = true })
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
	components.CloseButton.OnPressedFunctionName = "CloseCuisineScreen"
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
    components.SwapOrientationButton = CreateScreenComponent({ Name = "ButtonRefund", Scale = 1, Group = "GardenBoxGroup", X = 1125, Y = 300 })
	components.SwapOrientationButton.OnPressedFunctionName = "GardeningWithMom.SwapOrientation"
	components.OrientationShower = CreateScreenComponent({ Name = "ButtonCodexRight", X = 1150 , Y = 300, Scale = 1, Sound = "/SFX/Menu Sounds/GeneralWhooshMENU", Group ="GardenBoxGroup" })
	
	screen.KeepOpen = true

    GardeningWithMom.CreateMenuButtons(screen)

	thread( HandleWASDInput, screen )
	HandleScreenInput( screen )

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
					    DebugPrint({Text = k .. " selected"})
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
		components.OrientationShower = CreateScreenComponent({ Name = "ButtonCodexUp", X = 1150 , Y = 300, Scale = 0.7, Sound = "/SFX/Menu Sounds/GeneralWhooshMENU", Group ="GardenBoxGroup" })
	else
		CurrentOrientation = "H"
		Destroy({Id = components.OrientationShower.Id})
		components.OrientationShower = CreateScreenComponent({ Name = "ButtonCodexRight", X = 1150 , Y = 300, Scale = 1, Sound = "/SFX/Menu Sounds/GeneralWhooshMENU", Group ="GardenBoxGroup" })
	
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
			globEx = v2
			if v2 ~= nil and v2.IsEmpty == false and v2.IgnoreOnStart == false and (v2.ItemData ~= nil or v2.ItemData ~= {}) then

					DebugPrint({Text = k1 .. ", " .. k2})
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

	local posData
	if CurrentOrientation == "H" then
		posData = PlantData[CurrentPlantSelected].Size.Horizontal
	elseif CurrentOrientation == "V" then
		posData = PlantData[CurrentPlantSelected].Size.Vertical
	end
	local canPlace = true
	for k1,v1 in pairs(posData) do
		--iterate through rows
		for k2,v2 in pairs(v1) do
			--iterate through cells
			if v2 == 1 then
				local heightFromCenter = math.ceil(#posData / 2) - k1
				local widthFromCenter = math.ceil(#v1 / 2) - k2
				local gridPosX = button.Index.X - widthFromCenter
				local gridPosY = button.Index.Y - heightFromCenter
				local newButtonKey = "GardenBoxCell:Pos{" .. gridPosX .. "," .. gridPosY .. "}"
				local newButton = components[newButtonKey]

				if newButton == nil or newButton.Occupied == true then
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
		for k1,v1 in pairs(posData) do
			--iterate through rows
			for k2,v2 in pairs(v1) do
				--iterate through cells
				if v2 == 1 then
					local heightFromCenter = math.ceil(#posData / 2) - k1
					local widthFromCenter = math.ceil(#v1 / 2) - k2
					local imageKey = CurrentPlantSelected .. "ImageBacking" .. button.Id .. "{" .. k2 .. ", " .. k1 .. "}"
					local gridPosX = button.Index.X - widthFromCenter
					local gridPosY = button.Index.Y - heightFromCenter
					local newButtonKey = "GardenBoxCell:Pos{" .. gridPosX .. "," .. gridPosY .. "}" 
					local newButton = components[newButtonKey]
					local isChild = true
					if widthFromCenter == 0 and heightFromCenter == 0 then
						isChild = false
					end
					if newButton ~= nil and newButton.Occupied ~= true then
						components[imageKey] = CreateScreenComponent({ Name = "BlankObstacle", Group = "GardenBoxButtonGridImage",Ambient = 0,Scale = 1, X = newButton.Position.X, Y = newButton.Position.Y })
						SetAnimation({ DestinationId = components[imageKey].Id, Name = PlantData[CurrentPlantSelected].ImageStyle.Image, Scale = PlantData[CurrentPlantSelected].ImageStyle.GridScale })
						SetColor({ Id = newButton.Id, Color = {1,0,0,1} })
						newButton.Occupied = true
						newButton.PlacedImage = components[imageKey]
						DebugPrint({Text = button.Index.Y})
						DebugPrint({Text = button.Index.X})
						GardeningWithMomGardenPlot[newButton.Index.Y][newButton.Index.X] = { 
							IsEmpty = false,
							IgnoreOnStart = isChild,
							ItemData = {
								Plant = CurrentPlantSelected, --Current Plant Name
								Position = {X = button.Index.X, Y =button.Index.Y}, --The center of the PlantData
								GrowthStage = 1, --int
								Orientation = CurrentOrientation --The current orientation
							}
						}
					end
				end
			end
		end
	end
end
OnMouseOver{"BoonSlot1", function (triggerArgs)
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
				if newButton ~= nil then
					components[imageKey] = CreateScreenComponent({ Name = "BlankObstacle", Group = "GardenBoxButtonGridImage",Ambient = 0,Scale = 1, X = newButton.Position.X, Y = newButton.Position.Y })
					SetAnimation({ DestinationId = components[imageKey].Id, Name = PlantData[CurrentPlantSelected].ImageStyle.Image, Scale =  PlantData[CurrentPlantSelected].ImageStyle.GridScale})
					if newButton.Occupied ~= true then
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