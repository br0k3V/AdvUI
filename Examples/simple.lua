local br0k3UI = loadstring(game:HttpGet("https://raw.githubusercontent.com/br0k3V/br0k3UI-Library/main/br0k3_ui.lua", true))()

br0k3UI.CreateKeySystem("epic key", "br0k3UI Example") -- creates a new key system (functions in Getting Started)
-- create buttons after the key system or before the key system
br0k3UI.CreateButton("br0k3UI Button", function()
	print("br0k3UI button pressed")
end)
br0k3UI.CreateNotification("br0k3UI", "epic")
