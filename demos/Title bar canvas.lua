local ReGui = require(game.ReplicatedStorage.ReGui)
ReGui:Init()

local Window = ReGui:Window({
	Title = "Window",
	Size = UDim2.fromOffset(350, 300)
}):Center()

--// Fetch canvases
local TitleCanvas = Window.TitleBarCanvas
local Right = TitleCanvas.Right
local Left = TitleCanvas.Left

--// Collapse toggle button
Right:Button({
	Text = "Skibidi toilet",
	Callback = function()
		Window:ToggleCollapsed()
	end,
})

--// Help button
local Help = Left:RadioButton({
	Icon = 12905962634
})
ReGui:SetItemTooltip(Help, function(Canvas)
	Canvas:Label({
		Text = "Check github.com/depthso/ReGui"
	})
end)