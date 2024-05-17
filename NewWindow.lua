-- Gui to Lua
-- Version: 3.2

-- Instances:

local NewUIWindow = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Title = Instance.new("TextLabel")
local Expand = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local Pages = Instance.new("ScrollingFrame")
local UICorner_3 = Instance.new("UICorner")
local Frame = Instance.new("Frame")
local PageONE = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local UIListLayout = Instance.new("UIListLayout")
local Close = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local TemplateElements = Instance.new("Folder")
local buttons = Instance.new("Folder")
local Button1 = Instance.new("Frame")
local UICorner_6 = Instance.new("UICorner")
local TextButton = Instance.new("TextButton")
local UICorner_7 = Instance.new("UICorner")
local Nm = Instance.new("TextLabel")
local element = Instance.new("TextLabel")
local pages = Instance.new("Folder")
local PageONE_2 = Instance.new("ScrollingFrame")
local Frame_2 = Instance.new("Frame")
local UIListLayout_2 = Instance.new("UIListLayout")
local toggles = Instance.new("Folder")
local Toggle1 = Instance.new("Frame")
local UICorner_8 = Instance.new("UICorner")
local TextButton_2 = Instance.new("TextButton")
local UICorner_9 = Instance.new("UICorner")
local Nm_2 = Instance.new("TextLabel")
local element_2 = Instance.new("TextLabel")
local ToggleBtn = Instance.new("TextButton")
local UICorner_10 = Instance.new("UICorner")
local Home = Instance.new("ScrollingFrame")
local Frame_3 = Instance.new("Frame")
local PlayerPFP = Instance.new("ImageLabel")
local UICorner_11 = Instance.new("UICorner")
local UILibLink = Instance.new("TextLabel")
local WelcomeUser = Instance.new("TextLabel")
local UIListLayout_3 = Instance.new("UIListLayout")

--Properties:

NewUIWindow.Name = "NewUIWindow"
NewUIWindow.Parent = game.StarterGui.GUI
NewUIWindow.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
NewUIWindow.BorderColor3 = Color3.fromRGB(0, 0, 0)
NewUIWindow.BorderSizePixel = 0
NewUIWindow.Position = UDim2.new(0.290467054, 0, 0.227707103, 0)
NewUIWindow.Size = UDim2.new(0, 654, 0, 381)
NewUIWindow.Visible = false

UICorner.Parent = NewUIWindow

Title.Name = "Title"
Title.Parent = NewUIWindow
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0, 0, 0.0157480314, 0)
Title.Size = UDim2.new(0, 654, 0, 23)
Title.Font = Enum.Font.Gotham
Title.Text = "Example Window Name "
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 14.000

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

UICorner_2.Parent = Expand

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
Pages.MidImage = ""
Pages.TopImage = ""

UICorner_3.Parent = Pages

Frame.Parent = Pages
Frame.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(-5.61510611, 0, 0.261185855, 0)
Frame.Rotation = 90.000
Frame.Size = UDim2.new(0, 368, 0, 17)

PageONE.Name = "PageONE"
PageONE.Parent = Frame
PageONE.BackgroundColor3 = Color3.fromRGB(62, 62, 62)
PageONE.BorderColor3 = Color3.fromRGB(0, 0, 0)
PageONE.BorderSizePixel = 0
PageONE.Position = UDim2.new(-0.035326086, 0, -1.8729893e-16, 0)
PageONE.Size = UDim2.new(0, 111, 0, 17)
PageONE.Font = Enum.Font.Gotham
PageONE.Text = "Home"
PageONE.TextColor3 = Color3.fromRGB(255, 255, 255)
PageONE.TextScaled = true
PageONE.TextSize = 30.000
PageONE.TextWrapped = true

UICorner_4.CornerRadius = UDim.new(9, 0)
UICorner_4.Parent = PageONE

UIListLayout.Parent = Frame
UIListLayout.FillDirection = Enum.FillDirection.Horizontal
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
UIListLayout.Padding = UDim.new(0.00999999978, 0)

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

UICorner_5.Parent = Close

TemplateElements.Name = "TemplateElements"
TemplateElements.Parent = NewUIWindow

buttons.Name = "buttons"
buttons.Parent = TemplateElements

Button1.Name = "Button1"
Button1.Parent = buttons
Button1.BackgroundColor3 = Color3.fromRGB(62, 62, 62)
Button1.BorderColor3 = Color3.fromRGB(0, 0, 0)
Button1.BorderSizePixel = 0
Button1.Position = UDim2.new(0.0321100913, 0, 0.207247242, 0)
Button1.Size = UDim2.new(0, 596, 0, 31)
Button1.Visible = false
Button1.ZIndex = 2

UICorner_6.Parent = Button1

TextButton.Parent = Button1
TextButton.BackgroundColor3 = Color3.fromRGB(62, 62, 62)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0, 0, -0.0188062117, 0)
TextButton.Size = UDim2.new(0, 596, 0, 31)
TextButton.ZIndex = 10
TextButton.Font = Enum.Font.Gotham
TextButton.Text = ""
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

UICorner_7.Parent = TextButton

Nm.Name = "Nm"
Nm.Parent = TextButton
Nm.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Nm.BackgroundTransparency = 1.000
Nm.BorderColor3 = Color3.fromRGB(0, 0, 0)
Nm.BorderSizePixel = 0
Nm.Position = UDim2.new(0.0117449667, 0, 0.112522252, 0)
Nm.Size = UDim2.new(0, 170, 0, 23)
Nm.ZIndex = 5
Nm.Font = Enum.Font.Gotham
Nm.Text = "Button"
Nm.TextColor3 = Color3.fromRGB(255, 255, 255)
Nm.TextSize = 14.000
Nm.TextXAlignment = Enum.TextXAlignment.Left

element.Name = "element"
element.Parent = TextButton
element.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
element.BackgroundTransparency = 1.000
element.BorderColor3 = Color3.fromRGB(0, 0, 0)
element.BorderSizePixel = 0
element.Position = UDim2.new(0.916107357, 0, 0.177038372, 0)
element.Size = UDim2.new(0, 50, 0, 23)
element.ZIndex = 5
element.Font = Enum.Font.Gotham
element.Text = "button"
element.TextColor3 = Color3.fromRGB(255, 255, 255)
element.TextSize = 14.000
element.TextTransparency = 0.500
element.TextXAlignment = Enum.TextXAlignment.Left

pages.Name = "pages"
pages.Parent = TemplateElements

PageONE_2.Name = "PageONE"
PageONE_2.Parent = pages
PageONE_2.Active = true
PageONE_2.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
PageONE_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
PageONE_2.BorderSizePixel = 0
PageONE_2.Position = UDim2.new(0.0321100913, 0, 0.207349077, 0)
PageONE_2.Size = UDim2.new(0, 620, 0, 293)

Frame_2.Parent = PageONE_2
Frame_2.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
Frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_2.BorderSizePixel = 0
Frame_2.Size = UDim2.new(0, 598, 0, 293)

UIListLayout_2.Parent = Frame_2
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_2.Padding = UDim.new(0.0199999996, 0)

toggles.Name = "toggles"
toggles.Parent = TemplateElements

Toggle1.Name = "Toggle1"
Toggle1.Parent = toggles
Toggle1.BackgroundColor3 = Color3.fromRGB(62, 62, 62)
Toggle1.BorderColor3 = Color3.fromRGB(0, 0, 0)
Toggle1.BorderSizePixel = 0
Toggle1.Position = UDim2.new(0.0321100913, 0, 0.207247242, 0)
Toggle1.Size = UDim2.new(0, 596, 0, 31)
Toggle1.Visible = false
Toggle1.ZIndex = 2

UICorner_8.Parent = Toggle1

TextButton_2.Parent = Toggle1
TextButton_2.BackgroundColor3 = Color3.fromRGB(62, 62, 62)
TextButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.BorderSizePixel = 0
TextButton_2.Position = UDim2.new(0, 0, -0.0188062117, 0)
TextButton_2.Size = UDim2.new(0, 598, 0, 31)
TextButton_2.ZIndex = 10
TextButton_2.Font = Enum.Font.Gotham
TextButton_2.Text = ""
TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.TextScaled = true
TextButton_2.TextSize = 14.000
TextButton_2.TextWrapped = true

UICorner_9.Parent = TextButton_2

Nm_2.Name = "Nm"
Nm_2.Parent = TextButton_2
Nm_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Nm_2.BackgroundTransparency = 1.000
Nm_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Nm_2.BorderSizePixel = 0
Nm_2.Position = UDim2.new(0.0117449667, 0, 0.112522252, 0)
Nm_2.Size = UDim2.new(0, 170, 0, 23)
Nm_2.ZIndex = 5
Nm_2.Font = Enum.Font.Gotham
Nm_2.Text = "Toggle"
Nm_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Nm_2.TextSize = 14.000
Nm_2.TextXAlignment = Enum.TextXAlignment.Left

element_2.Name = "element"
element_2.Parent = TextButton_2
element_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
element_2.BackgroundTransparency = 1.000
element_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
element_2.BorderSizePixel = 0
element_2.Position = UDim2.new(0.916107357, 0, 0.177038372, 0)
element_2.Size = UDim2.new(0, 50, 0, 23)
element_2.ZIndex = 5
element_2.Font = Enum.Font.Gotham
element_2.Text = "toggle"
element_2.TextColor3 = Color3.fromRGB(255, 255, 255)
element_2.TextSize = 14.000
element_2.TextTransparency = 0.500
element_2.TextXAlignment = Enum.TextXAlignment.Left

ToggleBtn.Name = "ToggleBtn"
ToggleBtn.Parent = Toggle1
ToggleBtn.BackgroundColor3 = Color3.fromRGB(79, 79, 79)
ToggleBtn.BorderColor3 = Color3.fromRGB(0, 0, 0)
ToggleBtn.BorderSizePixel = 0
ToggleBtn.Position = UDim2.new(0.864093959, 0, 0.190490231, 0)
ToggleBtn.Size = UDim2.new(0, 21, 0, 20)
ToggleBtn.ZIndex = 10
ToggleBtn.Font = Enum.Font.Gotham
ToggleBtn.Text = ""
ToggleBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
ToggleBtn.TextScaled = true
ToggleBtn.TextSize = 14.000
ToggleBtn.TextWrapped = true

UICorner_10.Parent = ToggleBtn

Home.Name = "Home"
Home.Parent = NewUIWindow
Home.Active = true
Home.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
Home.BorderColor3 = Color3.fromRGB(0, 0, 0)
Home.BorderSizePixel = 0
Home.Position = UDim2.new(0.0321100913, 0, 0.207349077, 0)
Home.Size = UDim2.new(0, 620, 0, 293)

Frame_3.Parent = Home
Frame_3.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
Frame_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_3.BorderSizePixel = 0
Frame_3.Size = UDim2.new(0, 598, 0, 293)

PlayerPFP.Name = "PlayerPFP"
PlayerPFP.Parent = Frame_3
PlayerPFP.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PlayerPFP.BackgroundTransparency = 1.000
PlayerPFP.BorderColor3 = Color3.fromRGB(0, 0, 0)
PlayerPFP.BorderSizePixel = 0
PlayerPFP.Position = UDim2.new(0.0408725291, 0, 0.0448001176, 0)
PlayerPFP.Size = UDim2.new(0, 60, 0, 57)
PlayerPFP.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"

UICorner_11.Parent = PlayerPFP

UILibLink.Name = "UILibLink"
UILibLink.Parent = Frame_3
UILibLink.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UILibLink.BackgroundTransparency = 1.000
UILibLink.BorderColor3 = Color3.fromRGB(0, 0, 0)
UILibLink.BorderSizePixel = 0
UILibLink.Position = UDim2.new(0.158835933, 0, 0.0474427529, 0)
UILibLink.Size = UDim2.new(0, 487, 0, 15)
UILibLink.Font = Enum.Font.Gotham
UILibLink.Text = "Want to try this UI library? https://github.com/br0k3V/br0k3UI-Library"
UILibLink.TextColor3 = Color3.fromRGB(255, 255, 255)
UILibLink.TextScaled = true
UILibLink.TextSize = 14.000
UILibLink.TextWrapped = true
UILibLink.TextXAlignment = Enum.TextXAlignment.Left

WelcomeUser.Name = "WelcomeUser"
WelcomeUser.Parent = Frame_3
WelcomeUser.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
WelcomeUser.BackgroundTransparency = 1.000
WelcomeUser.BorderColor3 = Color3.fromRGB(0, 0, 0)
WelcomeUser.BorderSizePixel = 0
WelcomeUser.Position = UDim2.new(0.158835933, 0, 0.0976460427, 0)
WelcomeUser.Size = UDim2.new(0, 328, 0, 24)
WelcomeUser.Font = Enum.Font.Gotham
WelcomeUser.Text = "Welcome, killua"
WelcomeUser.TextColor3 = Color3.fromRGB(255, 255, 255)
WelcomeUser.TextScaled = true
WelcomeUser.TextSize = 14.000
WelcomeUser.TextWrapped = true
WelcomeUser.TextXAlignment = Enum.TextXAlignment.Left

UIListLayout_3.Parent = Home
UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_3.Padding = UDim.new(0.0199999996, 0)

-- Scripts:

local function AWOWE_fake_script() -- PageONE.LocalScript 
	local script = Instance.new('LocalScript', PageONE)

	script.Parent.MouseButton1Down:Connect(function()
		script.Parent.Parent.Parent.Parent.Home.Visible = true
	end)
end
coroutine.wrap(AWOWE_fake_script)()
local function PEAKCFI_fake_script() -- Close.LocalScript 
	local script = Instance.new('LocalScript', Close)

	script.Parent.MouseButton1Down:Connect(function()
		script.Parent.Parent.Visible = false
		local br0k3UI = require(game.StarterGui.GUI.br0k3UI.br0k3UI)
		local UIS = game:GetService("UserInputService")
		script.Parent.Parent.Parent.CloseNotif.Visible = true
		wait(3)
		script.Parent.Parent.Parent.CloseNotif.Visible = false
		
	
		local function onInputBegan(input, _gameProcessed)
			if input.KeyCode == Enum.KeyCode.RightShift then
				print("Reopening br0k3UI")
				script.Parent.Parent.Visible = true
			end
		end
	
		UIS.InputBegan:Connect(onInputBegan)
	end)
end
coroutine.wrap(PEAKCFI_fake_script)()
-- NewUIWindow.FrameProperties is disabled.
local function XJSB_fake_script() -- PlayerPFP.LocalScript 
	local script = Instance.new('LocalScript', PlayerPFP)

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
coroutine.wrap(XJSB_fake_script)()
local function PUCIGRN_fake_script() -- WelcomeUser.LocalScript 
	local script = Instance.new('LocalScript', WelcomeUser)

	local player = game.Players.LocalPlayer
	script.Parent.Text = "Welcome, " .. player.Name
end
coroutine.wrap(PUCIGRN_fake_script)()
