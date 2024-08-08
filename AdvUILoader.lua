--AdvUI Loader
--[[


                    AdvUI
                    | Made by br0kE
                    https://github.com/br0k3V/AdvUI/
                    
                    Inspired by Rayfield (https://github.com/SiriusSoftwareLtd/Rayfield) & Orion (https://github.com/shlexware/Orion)
                    
                    
                    
    Adv UI Library
    Copyright (C) 2024 br0kE

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.
    see <https://www.gnu.org/licenses/>.


]]

local UserInputService = game:GetService("UserInputService")
local tweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local AdvUI = {
	Ver = "Development 1.21",
	TextColor = Color3.fromRGB(240, 240, 240),
	Background = Color3.fromRGB(25, 25, 25),
	Topbar = Color3.fromRGB(34, 34, 34),
	ElementBackground = Color3.fromRGB(35, 35, 35),
	Shadow = Color3.fromRGB(20, 20, 20),
	NotificationBackground = Color3.fromRGB(29, 29, 29),
	TabBackground = Color3.fromRGB(80, 80, 80),
	Stroke = Color3.fromRGB(60, 60, 60),
	WindowName = nil,
}
local Interface
if game:GetService("RunService"):IsStudio() then
	Interface = LocalPlayer.PlayerGui["AdvUI Interface Elements"]
else
	Interface = game:GetObjects("rbxassetid://18829728507")[1]
end
local GUI = Instance.new("ScreenGui")
GUI.Name = "AdvInstance"
local Icons = {}
local function tween(frame, transparency)
	tweenService:Create(frame, TweenInfo.new(0.5), {Transparency = transparency}):Play()

	for _, v in pairs(frame:GetDescendants()) do
		if v:IsA("GuiObject") then
			if v:IsA("TextLabel") then
				tweenService:Create(v, TweenInfo.new(0.5), {TextTransparency = transparency}):Play()
			else
				tweenService:Create(v, TweenInfo.new(0.5), {Transparency = transparency}):Play()
			end
		end
	end
end
local Success, Response = pcall(function()
	Icons = HttpService:JSONDecode(game:HttpGetAsync("https://raw.githubusercontent.com/evoincorp/lucideblox/master/src/modules/util/icons.json")).icons
end)
local Initialized = false
function AdvUI:Initialize()
	print("Moving interface into CoreGui...")
	local success, response = pcall(function()
		GUI.Parent = game:GetService("CoreGui")
	end)
	if not success then
		warn("Interface failed to move into CoreGui. Error: "..response)
		print("Attempting to move into PlayerGui now.")
		local suc, res = pcall(function()
			GUI.Parent = LocalPlayer.PlayerGui
		end)
		if not suc then
			warn("Interface failed to move into PlayerGui..")
		else
			print("Interface moved into PlayerGui!")
			Initialized = true
			--properties
			GUI.IgnoreGuiInset = true
			GUI.Enabled = true
			GUI.Archivable = true
		end
	else
		print("Interface moved into CoreGui!")
		Initialized = true
		--properties
		GUI.IgnoreGuiInset = true
		GUI.Enabled = true
		GUI.Archivable = true
	end
end

function AdvUI:CreateNewNotification(text)
	if Initialized == false then
		error("Please initialize AdvUI with :Initialize() first!", 3)
	else
		local NewNotification = Interface.NewNotification:Clone()
		NewNotification.Parent = Interface
		NewNotification.Text.Text = text
		NewNotification.Visible = true
		tweenService:Create(NewNotification, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut), {Position = UDim2.new(0.726, 0,0.922, 0)}):Play()
		task.wait(5)
		tweenService:Create(NewNotification, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut), {Position = UDim2.new(1, 0,0.922, 0)}):Play()
	end
end

function AdvUI:CreateNewInterface(name)
	if Initialized == false then
		error("Please initialize AdvUI with :Initialize() first!", 3)
	else
		local NewInterface = Interface.NewInterface:Clone()
		NewInterface.WindowName.Text = name
		NewInterface.Window.Tabs_Other.Account.acc.Image = Players:GetUserThumbnailAsync(LocalPlayer.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size48x48)
		NewInterface.Window.Tabs_Other.Account.display.Text = LocalPlayer.DisplayName
		NewInterface.Visible = true
		NewInterface.Parent = GUI
		AdvUI.WindowName = name
		
		return NewInterface
	end
end

function AdvUI:CreateNewTab(interface, name)
	if Initialized == false then
		error("Please initialize AdvUI with :Initialize() first!", 3)
	else
		local NewButton = Interface.Elements.Tab:Clone()
		local NewTabFrame = Interface.NewInterface.Window.tab_element:Clone()
		NewTabFrame.Name = name
		NewTabFrame.Parent = interface.Window.TabFrames
		NewTabFrame.Visible = false
		NewButton.Parent = interface.Window.Tabs
		NewButton.text.Text = "      "..name
		NewButton.MouseButton1Click:Connect(function()
			for i,v in pairs(interface.Window.TabFrames:GetChildren()) do
				v.Visible = false
			end
			local ts = game:GetService("TweenService")
			interface.Window.TabFrames[name].Visible = true
			for i,v in pairs(interface.Window.Tabs:GetChildren()) do
				if v.Name ~= "UIListLayout" then
					local bgTween = ts:Create(v.text, TweenInfo.new(0.25), {BackgroundColor3 = Color3.fromRGB(80, 80, 80), TextColor3 = Color3.new(1, 1, 1)})
					bgTween:Play()
				end
			end
			local bgTween2 = ts:Create(NewButton.text, TweenInfo.new(0.25), {BackgroundColor3 = Color3.new(1, 1, 1), TextColor3 = Color3.new(0, 0, 0)})
			bgTween2:Play()
		end)
		NewButton.Visible = true
		return NewButton
	end
end

function AdvUI:CreateNewButton(interface, name, tab, ...)
	if Initialized == false then
		error("Please initialize AdvUI with :Initialize() first!", 3)
	end
	if interface.Window.TabFrames[tab] then
		local NewButton = Interface.Elements.Button:Clone()
		NewButton.Parent = interface.Window.TabFrames[tab]
		NewButton.text.Text = name
		NewButton.MouseButton1Click:Connect(...)
		NewButton.Visible = true
		return NewButton
	else
		error("Tab does not exist!", 3)
	end
end

function AdvUI:CreateNewSlider(interface, name, tab, ...)
	local e = ...
	if Initialized == false then
		error("Please initialize AdvUI with :Initialize() first!", 3)
	end
	if interface.Window.TabFrames[tab] then
		local NewSlider = Interface.Elements.Slider:Clone()
		NewSlider.Parent = interface.Window.TabFrames[tab]
		NewSlider.text.Text = name
		NewSlider.Visible = true
		local slider = NewSlider.bar.Slider
		local UIS = game:GetService('UserInputService')
		local player = game.Players.LocalPlayer
		local mouse = player:GetMouse()
		local isSliding = false 
		local text = NewSlider.text

		slider.MouseButton1Down:Connect(function()
			isSliding = true
		end)

		UIS.InputEnded:Connect(function(inp)
			if inp.UserInputType == Enum.UserInputType.MouseButton1 then
				isSliding = false
			end
		end)

		UIS.InputChanged:Connect(function(inp)
			if inp.UserInputType == Enum.UserInputType.MouseMovement then
				if isSliding == true then
					local mouseLoc = UIS:GetMouseLocation()
					local relativePos = mouseLoc-slider.AbsolutePosition
					local percentage = math.clamp(relativePos.X/slider.Parent.AbsoluteSize.X,0,2)
					game:GetService("TweenService"):Create(slider, TweenInfo.new(0.1), {Position = UDim2.new(percentage,0,1.302,0)}):Play()
					local perc = math.round(percentage*120)
					NewSlider.Percentage.Text = perc;
					({e})[1]()
				end
			end
		end)
		return NewSlider
	else
		error("Tab does not exist!", 3)
	end
end


Interface.Elements.Button.TextColor3 = AdvUI.TextColor
Interface.NewInterface.Window.BackgroundColor3 = AdvUI.Background
Interface.NewInterface.BackgroundColor3 = AdvUI.Topbar
Interface.NewInterface.Cover.BackgroundColor3 = AdvUI.Topbar
Interface.NewInterface.Window.Tabs_Other.Account.BackgroundColor3 = AdvUI.ElementBackground
Interface.NewNotification.BackgroundColor3 = AdvUI.NotificationBackground
Interface.Settings.ver.Text = "AdvUI version: "..AdvUI.Ver
Interface.NewInterface.RightButtons["_"].UIStroke.Color = AdvUI.Stroke
Interface.NewInterface.RightButtons["_"].UIStroke.Color = AdvUI.Stroke
print("[UI:ADV] Theme applied")
Interface.Settings:Clone().Parent = GUI
return AdvUI
