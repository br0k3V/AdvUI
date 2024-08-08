local UI = loadstring(game:HttpGet("https://raw.githubusercontent.com/br0k3V/AdvUI/main/AdvUILoader.lua"))()
module:Initialize()
module:CreateNewNotification("Testing notification?")
local int = module:CreateNewInterface("AdvUI Example") -- make a new interface (required) with the window name
module:CreateNewTab(int, "Testing") -- make a tab
module:CreateNewTab(int, "More Testing")
module:CreateNewSlider(int, "Testing slider", "Testing", function() -- name, tab and function
	print("slider")
	--the function will run every time the user drags the slider
end)
module:CreateNewButton(int, "Testing button", "Testing", function()-- name, tab and function
	print("hi")
	-- the function will run every time the user presses the button
end)
module:CreateNewButton(int, "More Testing button", "More Testing", function()-- name, tab and function
	print("hi")
	-- the function will run every time the user presses the button
end)
