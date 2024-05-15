-- Gui to Lua
-- Version: 3.2

-- Instances:

--[[


                    br0k3UI
                    | Made by br0kE (br3kee on Discord)
                    https://github.com/br0k3V/br0k3UI-Library/
                    
                    
                    
                    
                    
    br0k3 UI Library
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
local br0k3UI = {}


-- VARIABLES
local version = "0.90 DEVELOPMENT"



-- FUNCTIONS
function br0k3UI.CreateWindow(name)
	script.Parent.Parent.Startup.Visible = true
	script.Parent.Parent.NewUIWindow.Title.Text = name
	if script.Parent.Parent.NewKeySystem.Visible then
		print("There is a key system opened!")
	end
end

function br0k3UI.HideWindow()
	script.Parent.Parent.NewUIWindow.Visible = false
end

function br0k3UI.CreateNotification(name, message)
	script.Parent.Parent.NewNotification.Title.Text = name
	script.Parent.Parent.NewNotification.Notif.Text = message
	script.Parent.Parent.NewNotification.Visible = true
	wait(4)
	script.Parent.Parent.NewNotification.Visible = false
end

function br0k3UI.DestroyLoader(name)
	script.Parent.Parent.Startup:Destroy()
	script.Parent.Parent.NewUIWindow.Title.Text = name
	wait(2)
	script.Parent.Parent.NewUIWindow.Visible = true
	if script.Parent.Parent.NewKeySystem.Visible then
		print("There is a key system opened!")
	end
end

function br0k3UI.CreateKeySystem(key, name)
	script.Parent.Parent.NewKeySystem.Visible = true
	script.Parent.Parent.NewKeySystem.Key.Value = key
	script.Parent.Parent.NewKeySystem.WindowName.Value = name
end

-- // BUTTONS AND STUFF

function br0k3UI.CreateButtonOne(name, callbackResponse)
	
	local BtnOne = script.Parent.Parent.NewUIWindow.PageONE.Button1.TextButton
	if BtnOne.Parent.Visible == false then
		script.Parent.Parent.NewUIWindow.PageONE.Button1.Title.Text = name
		BtnOne.Parent.Visible = true
	end
	
	BtnOne.MouseButton1Down:Connect(function()
		callbackResponse()
	end)
end

function br0k3UI.CreateButtonTwo(name, callbackResponse)

	local BtnTwo = script.Parent.Parent.NewUIWindow.PageONE.Button2.TextButton
	if BtnTwo.Parent.Visible == false then
		script.Parent.Parent.NewUIWindow.PageONE.Button2.Title.Text = name
		BtnTwo.Parent.Visible = true
	end
	
	BtnTwo.MouseButton1Down:Connect(function()
		callbackResponse()
	end)
end




return br0k3UI

local NewNotification = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Notif = Instance.new("TextLabel")
local Title = Instance.new("TextLabel")
local NewUIWindow = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local Title_2 = Instance.new("TextLabel")
local Expand = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local Pages = Instance.new("ScrollingFrame")
local UICorner_4 = Instance.new("UICorner")
local Page1 = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local Page2 = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local Page3 = Instance.new("TextButton")
local UICorner_7 = Instance.new("UICorner")
local Close = Instance.new("TextButton")
local UICorner_8 = Instance.new("UICorner")
local PageONE = Instance.new("ScrollingFrame")
local Button1 = Instance.new("Frame")
local UICorner_9 = Instance.new("UICorner")
local TextButton = Instance.new("TextButton")
local UICorner_10 = Instance.new("UICorner")
local Title_3 = Instance.new("TextLabel")
local Title_4 = Instance.new("TextLabel")
local Button2 = Instance.new("Frame")
local UICorner_11 = Instance.new("UICorner")
local TextButton_2 = Instance.new("TextButton")
local UICorner_12 = Instance.new("UICorner")
local Title_5 = Instance.new("TextLabel")
local Title_6 = Instance.new("TextLabel")
local NewKeySystem = Instance.new("Frame")
local UICorner_13 = Instance.new("UICorner")
local Title_7 = Instance.new("TextLabel")
local Close_2 = Instance.new("TextButton")
local UICorner_14 = Instance.new("UICorner")
local Welcome = Instance.new("TextLabel")
local PlayerPFP = Instance.new("ImageLabel")
local KeyTxt = Instance.new("TextBox")
local UICorner_15 = Instance.new("UICorner")
local Enter = Instance.new("TextLabel")
local ConfirmKey = Instance.new("TextButton")
local UICorner_16 = Instance.new("UICorner")
local Startup = Instance.new("Frame")
local UICorner_17 = Instance.new("UICorner")
local TextUI = Instance.new("TextLabel")
local TextUI_2 = Instance.new("TextLabel")
local TextUI_3 = Instance.new("TextLabel")

--Properties:

NewNotification.Name = "NewNotification"
NewNotification.Parent = game.StarterGui.ScreenGui
NewNotification.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
NewNotification.BorderColor3 = Color3.fromRGB(0, 0, 0)
NewNotification.BorderSizePixel = 0
NewNotification.Position = UDim2.new(0.565578997, 0, 0.816679537, 0)
NewNotification.Size = UDim2.new(0, 654, 0, 124)
NewNotification.Visible = false

UICorner.Parent = NewNotification

Notif.Name = "Notif"
Notif.Parent = NewNotification
Notif.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Notif.BackgroundTransparency = 1.000
Notif.BorderColor3 = Color3.fromRGB(0, 0, 0)
Notif.BorderSizePixel = 0
Notif.Position = UDim2.new(0.0214067269, 0, 0.319850802, 0)
Notif.Size = UDim2.new(0, 627, 0, 70)
Notif.Font = Enum.Font.GothamBold
Notif.Text = "This is an example notification from br0k3UI"
Notif.TextColor3 = Color3.fromRGB(255, 255, 255)
Notif.TextSize = 20.000
Notif.TextXAlignment = Enum.TextXAlignment.Left

Title.Name = "Title"
Title.Parent = NewNotification
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.0214067269, 0, 0.0859798342, 0)
Title.Size = UDim2.new(0, 504, 0, 22)
Title.Font = Enum.Font.GothamBold
Title.Text = "Notification"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 20.000
Title.TextXAlignment = Enum.TextXAlignment.Left

NewUIWindow.Name = "NewUIWindow"
NewUIWindow.Parent = game.StarterGui.ScreenGui
NewUIWindow.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
NewUIWindow.BorderColor3 = Color3.fromRGB(0, 0, 0)
NewUIWindow.BorderSizePixel = 0
NewUIWindow.Position = UDim2.new(0.290467054, 0, 0.227707103, 0)
NewUIWindow.Size = UDim2.new(0, 654, 0, 381)
NewUIWindow.Visible = false

UICorner_2.Parent = NewUIWindow

Title_2.Name = "Title"
Title_2.Parent = NewUIWindow
Title_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_2.BackgroundTransparency = 1.000
Title_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title_2.BorderSizePixel = 0
Title_2.Position = UDim2.new(0, 0, 0.0157480314, 0)
Title_2.Size = UDim2.new(0, 654, 0, 23)
Title_2.Font = Enum.Font.Gotham
Title_2.Text = "Example Window Name "
Title_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_2.TextSize = 14.000

Expand.Name = "Expand"
Expand.Parent = NewUIWindow
Expand.BackgroundColor3 = Color3.fromRGB(54, 54, 54)
Expand.BorderColor3 = Color3.fromRGB(0, 0, 0)
Expand.BorderSizePixel = 0
Expand.Position = UDim2.new(0.0214067269, 0, 0.0209973752, 0)
Expand.Rotation = -180.000
Expand.Size = UDim2.new(0, 32, 0, 21)
Expand.Font = Enum.Font.Gotham
Expand.Text = "^"
Expand.TextColor3 = Color3.fromRGB(255, 255, 255)
Expand.TextScaled = true
Expand.TextSize = 30.000
Expand.TextWrapped = true

UICorner_3.Parent = Expand

Pages.Name = "Pages"
Pages.Parent = NewUIWindow
Pages.Active = true
Pages.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
Pages.BorderColor3 = Color3.fromRGB(0, 0, 0)
Pages.BorderSizePixel = 0
Pages.Position = UDim2.new(0.483180434, 0, -0.67979002, 0)
Pages.Rotation = 270.000
Pages.Size = UDim2.new(0, 30, 0, 624)
Pages.ZIndex = 4
Pages.BottomImage = ""
Pages.CanvasPosition = Vector2.new(0, 138)
Pages.MidImage = ""
Pages.TopImage = ""

UICorner_4.Parent = Pages

Page1.Name = "Page1"
Page1.Parent = Pages
Page1.BackgroundColor3 = Color3.fromRGB(62, 62, 62)
Page1.BorderColor3 = Color3.fromRGB(0, 0, 0)
Page1.BorderSizePixel = 0
Page1.Position = UDim2.new(-1.34525955, 0, 0.254661947, 0)
Page1.Rotation = 90.000
Page1.Size = UDim2.new(0, 111, 0, 17)
Page1.Font = Enum.Font.Gotham
Page1.Text = "Page"
Page1.TextColor3 = Color3.fromRGB(255, 255, 255)
Page1.TextScaled = true
Page1.TextSize = 30.000
Page1.TextWrapped = true

UICorner_5.Parent = Page1

Page2.Name = "Page2"
Page2.Parent = Pages
Page2.BackgroundColor3 = Color3.fromRGB(62, 62, 62)
Page2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Page2.BorderSizePixel = 0
Page2.Position = UDim2.new(-1.34525955, 0, 0.407135218, 0)
Page2.Rotation = 90.000
Page2.Size = UDim2.new(0, 111, 0, 17)
Page2.Font = Enum.Font.Gotham
Page2.Text = "Page"
Page2.TextColor3 = Color3.fromRGB(255, 255, 255)
Page2.TextScaled = true
Page2.TextSize = 30.000
Page2.TextWrapped = true

UICorner_6.Parent = Page2

Page3.Name = "Page3"
Page3.Parent = Pages
Page3.BackgroundColor3 = Color3.fromRGB(62, 62, 62)
Page3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Page3.BorderSizePixel = 0
Page3.Position = UDim2.new(-1.34525955, 0, 0.560981333, 0)
Page3.Rotation = 90.000
Page3.Size = UDim2.new(0, 111, 0, 17)
Page3.Font = Enum.Font.Gotham
Page3.Text = "Page"
Page3.TextColor3 = Color3.fromRGB(255, 255, 255)
Page3.TextScaled = true
Page3.TextSize = 30.000
Page3.TextWrapped = true

UICorner_7.Parent = Page3

Close.Name = "Close"
Close.Parent = NewUIWindow
Close.BackgroundColor3 = Color3.fromRGB(54, 54, 54)
Close.BackgroundTransparency = 1.000
Close.BorderColor3 = Color3.fromRGB(0, 0, 0)
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.955657482, 0, 0.0183727033, 0)
Close.Rotation = -180.000
Close.Size = UDim2.new(0, 16, 0, 21)
Close.Font = Enum.Font.Gotham
Close.Text = "X"
Close.TextColor3 = Color3.fromRGB(255, 255, 255)
Close.TextSize = 15.000
Close.TextWrapped = true

UICorner_8.Parent = Close

PageONE.Name = "PageONE"
PageONE.Parent = NewUIWindow
PageONE.Active = true
PageONE.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
PageONE.BorderColor3 = Color3.fromRGB(0, 0, 0)
PageONE.BorderSizePixel = 0
PageONE.Position = UDim2.new(0.0321100913, 0, 0.207349077, 0)
PageONE.Size = UDim2.new(0, 620, 0, 293)

Button1.Name = "Button1"
Button1.Parent = PageONE
Button1.BackgroundColor3 = Color3.fromRGB(62, 62, 62)
Button1.BorderColor3 = Color3.fromRGB(0, 0, 0)
Button1.BorderSizePixel = 0
Button1.Position = UDim2.new(0, 0, -0.000101864134, 0)
Button1.Size = UDim2.new(0, 596, 0, 31)
Button1.Visible = false

UICorner_9.Parent = Button1

TextButton.Parent = Button1
TextButton.BackgroundColor3 = Color3.fromRGB(62, 62, 62)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0, 0, 0.114758894, 0)
TextButton.Size = UDim2.new(0, 596, 0, 27)
TextButton.Font = Enum.Font.Gotham
TextButton.Text = ""
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

UICorner_10.Parent = TextButton

Title_3.Name = "Title"
Title_3.Parent = Button1
Title_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_3.BackgroundTransparency = 1.000
Title_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title_3.BorderSizePixel = 0
Title_3.Position = UDim2.new(0.0117449667, 0, 0.112522252, 0)
Title_3.Size = UDim2.new(0, 170, 0, 23)
Title_3.ZIndex = 5
Title_3.Font = Enum.Font.Gotham
Title_3.Text = "Button"
Title_3.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_3.TextSize = 14.000
Title_3.TextXAlignment = Enum.TextXAlignment.Left

Title_4.Name = "Title"
Title_4.Parent = Button1
Title_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_4.BackgroundTransparency = 1.000
Title_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title_4.BorderSizePixel = 0
Title_4.Position = UDim2.new(0.916107357, 0, 0.177038372, 0)
Title_4.Size = UDim2.new(0, 50, 0, 23)
Title_4.ZIndex = 5
Title_4.Font = Enum.Font.Gotham
Title_4.Text = "button"
Title_4.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_4.TextSize = 14.000
Title_4.TextTransparency = 0.500
Title_4.TextXAlignment = Enum.TextXAlignment.Left

Button2.Name = "Button2"
Button2.Parent = PageONE
Button2.BackgroundColor3 = Color3.fromRGB(62, 62, 62)
Button2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Button2.BorderSizePixel = 0
Button2.Position = UDim2.new(0, 0, 0.0446689837, 0)
Button2.Size = UDim2.new(0, 596, 0, 32)
Button2.Visible = false

UICorner_11.Parent = Button2

TextButton_2.Parent = Button2
TextButton_2.BackgroundColor3 = Color3.fromRGB(62, 62, 62)
TextButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.BorderSizePixel = 0
TextButton_2.Position = UDim2.new(0, 0, 0.114757538, 0)
TextButton_2.Size = UDim2.new(0, 596, 0, 28)
TextButton_2.Font = Enum.Font.Gotham
TextButton_2.Text = ""
TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.TextScaled = true
TextButton_2.TextSize = 14.000
TextButton_2.TextWrapped = true

UICorner_12.Parent = TextButton_2

Title_5.Name = "Title"
Title_5.Parent = Button2
Title_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_5.BackgroundTransparency = 1.000
Title_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title_5.BorderSizePixel = 0
Title_5.Position = UDim2.new(0.0117449667, 0, 0.112522252, 0)
Title_5.Size = UDim2.new(0, 170, 0, 23)
Title_5.ZIndex = 5
Title_5.Font = Enum.Font.Gotham
Title_5.Text = "Button"
Title_5.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_5.TextSize = 14.000
Title_5.TextXAlignment = Enum.TextXAlignment.Left

Title_6.Name = "Title"
Title_6.Parent = Button2
Title_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_6.BackgroundTransparency = 1.000
Title_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title_6.BorderSizePixel = 0
Title_6.Position = UDim2.new(0.916107357, 0, 0.177038372, 0)
Title_6.Size = UDim2.new(0, 50, 0, 23)
Title_6.ZIndex = 5
Title_6.Font = Enum.Font.Gotham
Title_6.Text = "button"
Title_6.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_6.TextSize = 14.000
Title_6.TextTransparency = 0.500
Title_6.TextXAlignment = Enum.TextXAlignment.Left

NewKeySystem.Name = "NewKeySystem"
NewKeySystem.Parent = game.StarterGui.ScreenGui
NewKeySystem.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
NewKeySystem.BorderColor3 = Color3.fromRGB(0, 0, 0)
NewKeySystem.BorderSizePixel = 0
NewKeySystem.Position = UDim2.new(0.290467054, 0, 0.381842434, 0)
NewKeySystem.Size = UDim2.new(0, 654, 0, 215)
NewKeySystem.Visible = false

UICorner_13.Parent = NewKeySystem

Title_7.Name = "Title"
Title_7.Parent = NewKeySystem
Title_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_7.BackgroundTransparency = 1.000
Title_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title_7.BorderSizePixel = 0
Title_7.Position = UDim2.new(0, 0, 0.0157480314, 0)
Title_7.Size = UDim2.new(0, 654, 0, 23)
Title_7.Font = Enum.Font.Gotham
Title_7.Text = "Example Key System"
Title_7.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_7.TextSize = 14.000

Close_2.Name = "Close"
Close_2.Parent = NewKeySystem
Close_2.BackgroundColor3 = Color3.fromRGB(54, 54, 54)
Close_2.BackgroundTransparency = 1.000
Close_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Close_2.BorderSizePixel = 0
Close_2.Position = UDim2.new(0.955657482, 0, 0.0183727033, 0)
Close_2.Rotation = -180.000
Close_2.Size = UDim2.new(0, 16, 0, 21)
Close_2.Font = Enum.Font.Gotham
Close_2.Text = "X"
Close_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Close_2.TextSize = 15.000
Close_2.TextWrapped = true

UICorner_14.Parent = Close_2

Welcome.Name = "Welcome"
Welcome.Parent = NewKeySystem
Welcome.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Welcome.BackgroundTransparency = 1.000
Welcome.BorderColor3 = Color3.fromRGB(0, 0, 0)
Welcome.BorderSizePixel = 0
Welcome.Position = UDim2.new(0.152905196, 0, 0.166624844, 0)
Welcome.Size = UDim2.new(0, 504, 0, 35)
Welcome.Font = Enum.Font.GothamBold
Welcome.Text = "Welcome, killua"
Welcome.TextColor3 = Color3.fromRGB(255, 255, 255)
Welcome.TextSize = 20.000
Welcome.TextXAlignment = Enum.TextXAlignment.Left

PlayerPFP.Name = "PlayerPFP"
PlayerPFP.Parent = NewKeySystem
PlayerPFP.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PlayerPFP.BorderColor3 = Color3.fromRGB(0, 0, 0)
PlayerPFP.BorderSizePixel = 0
PlayerPFP.Position = UDim2.new(0.0366972461, 0, 0.111627907, 0)
PlayerPFP.Size = UDim2.new(0, 60, 0, 60)
PlayerPFP.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"

KeyTxt.Name = "KeyTxt"
KeyTxt.Parent = NewKeySystem
KeyTxt.BackgroundColor3 = Color3.fromRGB(104, 104, 104)
KeyTxt.BorderColor3 = Color3.fromRGB(0, 0, 0)
KeyTxt.BorderSizePixel = 0
KeyTxt.Position = UDim2.new(0.152905196, 0, 0.651162803, 0)
KeyTxt.Size = UDim2.new(0, 360, 0, 25)
KeyTxt.Font = Enum.Font.SourceSans
KeyTxt.Text = ""
KeyTxt.TextColor3 = Color3.fromRGB(0, 0, 0)
KeyTxt.TextSize = 14.000

UICorner_15.Parent = KeyTxt

Enter.Name = "Enter"
Enter.Parent = NewKeySystem
Enter.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Enter.BackgroundTransparency = 1.000
Enter.BorderColor3 = Color3.fromRGB(0, 0, 0)
Enter.BorderSizePixel = 0
Enter.Position = UDim2.new(0.152905196, 0, 0.487555087, 0)
Enter.Size = UDim2.new(0, 504, 0, 35)
Enter.Font = Enum.Font.Gotham
Enter.Text = "Please enter your key:"
Enter.TextColor3 = Color3.fromRGB(255, 255, 255)
Enter.TextSize = 20.000
Enter.TextXAlignment = Enum.TextXAlignment.Left

ConfirmKey.Name = "ConfirmKey"
ConfirmKey.Parent = NewKeySystem
ConfirmKey.BackgroundColor3 = Color3.fromRGB(54, 54, 54)
ConfirmKey.BorderColor3 = Color3.fromRGB(0, 0, 0)
ConfirmKey.BorderSizePixel = 0
ConfirmKey.Position = UDim2.new(0.715596318, 0, 0.651162803, 0)
ConfirmKey.Size = UDim2.new(0, 78, 0, 24)
ConfirmKey.Font = Enum.Font.Gotham
ConfirmKey.Text = "Confirm"
ConfirmKey.TextColor3 = Color3.fromRGB(255, 255, 255)
ConfirmKey.TextSize = 15.000
ConfirmKey.TextWrapped = true

UICorner_16.Parent = ConfirmKey

Startup.Name = "Startup"
Startup.Parent = game.StarterGui.ScreenGui
Startup.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
Startup.BorderColor3 = Color3.fromRGB(0, 0, 0)
Startup.BorderSizePixel = 0
Startup.Position = UDim2.new(0.420345485, 0, 0.228667453, 0)
Startup.Size = UDim2.new(0, 249, 0, 321)
Startup.Visible = false

UICorner_17.Parent = Startup

TextUI.Name = "TextUI"
TextUI.Parent = Startup
TextUI.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextUI.BackgroundTransparency = 1.000
TextUI.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextUI.BorderSizePixel = 0
TextUI.Position = UDim2.new(-0.0474191681, 0, 0.728150725, 0)
TextUI.Size = UDim2.new(0, 271, 0, 28)
TextUI.Font = Enum.Font.Gotham
TextUI.Text = "Loading.."
TextUI.TextColor3 = Color3.fromRGB(255, 255, 255)
TextUI.TextSize = 14.000

TextUI_2.Name = "TextUI"
TextUI_2.Parent = Startup
TextUI_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextUI_2.BackgroundTransparency = 1.000
TextUI_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextUI_2.BorderSizePixel = 0
TextUI_2.Position = UDim2.new(-0.0474190451, 0, 0.0427924879, 0)
TextUI_2.Size = UDim2.new(0, 271, 0, 28)
TextUI_2.Font = Enum.Font.Gotham
TextUI_2.Text = "This script uses br0k3UI"
TextUI_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextUI_2.TextSize = 14.000

TextUI_3.Name = "TextUI"
TextUI_3.Parent = Startup
TextUI_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextUI_3.BackgroundTransparency = 1.000
TextUI_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextUI_3.BorderSizePixel = 0
TextUI_3.Position = UDim2.new(0.0550513826, 0, 0.16050069, 0)
TextUI_3.Size = UDim2.new(0, 218, 0, 116)
TextUI_3.Font = Enum.Font.Gotham
TextUI_3.Text = "Inspired by Rayfield, br0k3UI provides a modern experience and simple configuration."
TextUI_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextUI_3.TextScaled = true
TextUI_3.TextSize = 14.000
TextUI_3.TextWrapped = true

-- Module Scripts:

local fake_module_scripts = {}

do -- nil.br0k3UI
	local script = Instance.new('ModuleScript', nil)
	script.Name = "br0k3UI"
	local function module_script()
		--[[
		
		
		                    br0k3UI
		                    | Made by br0kE (br3kee on Discord)
		                    https://github.com/br0k3V/br0k3UI-Library/
		                    
		                    
		                    
		                    
		                    
		    br0k3 UI Library
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
		local br0k3UI = {}
		
		
		-- VARIABLES
		local version = "0.90 DEVELOPMENT"
		
		
		
		-- FUNCTIONS
		function br0k3UI.CreateWindow(name)
			script.Parent.Parent.Startup.Visible = true
			script.Parent.Parent.NewUIWindow.Title.Text = name
			if script.Parent.Parent.NewKeySystem.Visible then
				print("There is a key system opened!")
			end
		end
		
		function br0k3UI.HideWindow()
			script.Parent.Parent.NewUIWindow.Visible = false
		end
		
		function br0k3UI.CreateNotification(name, message)
			script.Parent.Parent.NewNotification.Title.Text = name
			script.Parent.Parent.NewNotification.Notif.Text = message
			script.Parent.Parent.NewNotification.Visible = true
			wait(4)
			script.Parent.Parent.NewNotification.Visible = false
		end
		
		function br0k3UI.DestroyLoader(name)
			script.Parent.Parent.Startup:Destroy()
			script.Parent.Parent.NewUIWindow.Title.Text = name
			wait(2)
			script.Parent.Parent.NewUIWindow.Visible = true
			if script.Parent.Parent.NewKeySystem.Visible then
				print("There is a key system opened!")
			end
		end
		
		function br0k3UI.CreateKeySystem(key, name)
			script.Parent.Parent.NewKeySystem.Visible = true
			script.Parent.Parent.NewKeySystem.Key.Value = key
			script.Parent.Parent.NewKeySystem.WindowName.Value = name
		end
		
		-- // BUTTONS AND STUFF
		
		function br0k3UI.CreateButtonOne(name, callbackResponse)
			
			local BtnOne = script.Parent.Parent.NewUIWindow.PageONE.Button1.TextButton
			if BtnOne.Parent.Visible == false then
				script.Parent.Parent.NewUIWindow.PageONE.Button1.Title.Text = name
				BtnOne.Parent.Visible = true
			end
			
			BtnOne.MouseButton1Down:Connect(function()
				callbackResponse()
			end)
		end
		
		function br0k3UI.CreateButtonTwo(name, callbackResponse)
		
			local BtnTwo = script.Parent.Parent.NewUIWindow.PageONE.Button2.TextButton
			if BtnTwo.Parent.Visible == false then
				script.Parent.Parent.NewUIWindow.PageONE.Button2.Title.Text = name
				BtnTwo.Parent.Visible = true
			end
			
			BtnTwo.MouseButton1Down:Connect(function()
				callbackResponse()
			end)
		end
		
		
		
		
		return br0k3UI
	end
	fake_module_scripts[script] = module_script
end


-- Scripts:

local function FJDRYMH_fake_script() -- PlayerPFP.LocalScript 
	local script = Instance.new('LocalScript', PlayerPFP)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	local Players = game:GetService("Players")
	
	local player = Players.LocalPlayer
	
	-- Fetch the thumbnail
	local userId = player.UserId
	local thumbType = Enum.ThumbnailType.HeadShot
	local thumbSize = Enum.ThumbnailSize.Size60x60
	local content, isReady = Players:GetUserThumbnailAsync(userId, thumbType, thumbSize)
	
	-- Set the ImageLabel's content to the user thumbnail
	local imageLabel = script.Parent
	imageLabel.Image = content
	imageLabel.Size = UDim2.new(0, 60, 0, 60)
end
coroutine.wrap(FJDRYMH_fake_script)()
local function LPYBSB_fake_script() -- ConfirmKey.CKey 
	local script = Instance.new('LocalScript', ConfirmKey)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	script.Parent.MouseButton1Down:Connect(function()
		local key = script.Parent.Parent.Key
		local windowname = script.Parent.Parent.WindowName
		local txt = script.Parent.Parent.KeyTxt
		local br0k3UI = require(script.Parent.Parent.Parent.br0k3UI.br0k3UI)
		local k
		k = key.Value
		if txt.Text == k then
			script.Parent.Parent.Enter.Text = "Correct!"
			print("correct")
			script.Parent.Parent.Visible = false
			br0k3UI.CreateWindow(windowname)
		end
	end)
end
coroutine.wrap(LPYBSB_fake_script)()
local function YVSSX_fake_script() -- Startup.LocalScript 
	local script = Instance.new('LocalScript', Startup)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	function CheckVis ()
		if script.Parent.Visible == true then
			print("startup has been opened, waiting 2 seconds for to load")
			wait(2)
			script.Parent.Parent.NewUIWindow.Visible = true
		end
	end
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	while true do
		wait(1)
		CheckVis()
	end
end
coroutine.wrap(YVSSX_fake_script)()
