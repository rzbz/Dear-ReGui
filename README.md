# Roblox ImGUI
ImGUI for Roblox that **doesn't need a RenderStep connection.** \
Perfect for beginners and **performance**.

If you would like to customization the UI further, you can find the prefabs [here](https://create.roblox.com/store/asset/18364667141/Depso-ImGui)

### Notices
**This UI library is in BETA and you WILL experience problems**
Please report these to the issues.

👍 Any feedback or suggestions would be great \
🔨 Please mention me when integrating this library **- depso.**

<hr>

![image](https://github.com/user-attachments/assets/c050f9ba-f090-4738-90b7-b791b94133ec)


# Usage
<details>
<summary>Creating a window</summary>

Size and Position are both properties of the GUI object. 
Title is not and therefore any addional properities to the class will \
be applied to the properities. For example declaring `BackgroundTransparency` \
in the config of the Window or any element will be passed to the properities.

```lua
local ImGui = require(game.ReplicatedStorage.ImGui)

local Window = ImGui:CreateWindow({
	Title = "Window",
	Size = UDim2.fromOffset(350, 300), --// Roblox property 
	Position = UDim2.new(0.5, 0, 0, 70), --// Roblox property 
})
```
![image](https://github.com/user-attachments/assets/18cedbb1-70e8-4c3a-b258-97434030d6f4)
</details>

<details>
<summary>Adding tabs</summary>
  
`Visible` is a default Roblox property and therefore declares if the tab is shown.
Addionally, you can show a tab by using `Window:ShowTab(ExampleTab)`
  
```lua
local ExampleTab = Window:CreateTab({
	Name = "Example",
	Visible = true 
})
ExampleTab:Label({
	Text = "Hello world!"
})

local ExampleTab2 = Window:CreateTab({
	Name = "Example 2"
})
ExampleTab2:Label({
	Text = "Hello world!"
})
```

![image](https://github.com/user-attachments/assets/2511f58d-c0b6-4515-9d43-7de84bb691af)

</details>

<details>
<summary>Changing the colors (Gray theme)</summary>

```lua
local Window = ImGui:CreateWindow({
	Title = "Window",
	Size = UDim2.fromOffset(350, 300),
	Position = UDim2.new(0.5, 0, 0, 70),
	
	--// Styles
	NoGradientAll = true,
	Colors = {
		Window = {
			BackgroundColor3 = Color3.fromRGB(40, 40, 40),
			BackgroundTransparency = 0.1,
			ResizeGrip = {
				TextColor3 = Color3.fromRGB(80, 80, 80)
			},
			
			TitleBar = {
				BackgroundColor3 = Color3.fromRGB(25, 25, 25),
				[{
					Recursive = true,
					Name = "ToggleButton"
				}] = {
					BackgroundColor3 = Color3.fromRGB(80, 80, 80)
				}
			},
			ToolBar = {
				TabButton = {
					BackgroundColor3 = Color3.fromRGB(80, 80, 80)
				}
			},
		},
		CheckBox = {
			Tickbox = {
				BackgroundColor3 = Color3.fromRGB(20, 20, 20),
				Tick = {
					ImageColor3 = Color3.fromRGB(255, 255, 255)
				}
			}
		},
		Slider = {
			Grab = {
				BackgroundColor3 = Color3.fromRGB(60, 60, 60)
			},
			BackgroundColor3 = Color3.fromRGB(20, 20, 20)
		},
		CollapsingHeader = {
			TitleBar = {
				BackgroundColor3 = Color3.fromRGB(20, 20, 20)
			}
		}
	}
})


local ExampleTab = Window:CreateTab({
	Name = "Example",
	Visible = true
})
ExampleTab:Label({
	Text = "Hello world!"
})

local ExampleTab2 = Window:CreateTab({
	Name = "Example 2"
})
ExampleTab2:Label({
	Text = "Hello world!"
})
```

![image](https://github.com/user-attachments/assets/20cbbf76-6af9-41cf-be69-fefd9ad68c69)

</details>

### Elements

<details>
<summary>Sliders</summary>

```lua
local Sliders = DemosTab:CollapsingHeader({
	Title = "Sliders",
})

Sliders:Slider({
	Label = "Slider",
	Format = "%.d/%s",
	Value = 5,
	MinValue = 1,
	MaxValue = 32,
	ReadOnly = false,

	Callback = function(self, Value)
		print(self.Name, Value)
	end,
}):SetValue(8)

Sliders:ProgressSlider({
	Label = "Progress Slider",
	Value = 8,
	MinValue = 1,
	MaxValue = 32,
})

--// Rounded (CornerRadius)
Sliders:ProgressSlider({
	Label = "Progress Slider",
	CornerRadius = UDim.new(1, 0),
	Value = 8,
	MinValue = 1,
	MaxValue = 32,
})
Sliders:Slider({
	Label = "Rounded Slider",
	CornerRadius = UDim.new(1, 0),
	Value = 8,
	MinValue = 1,
	MaxValue = 32,
})


local ProgressBar = Sliders:ProgressBar({
	Label = "Loading...",
	Percentage = 80
})
coroutine.wrap(function()
	local Percentage = 0
	while wait(.02) do
		Percentage += 1
		ProgressBar:SetPercentage(Percentage % 100)
	end
end)()
```

![image](https://github.com/user-attachments/assets/7b4f41c6-df3e-4ba4-a6fb-245efeef8cec)

</details>

<details>
<summary>Keybinds</summary>
  
```lua
local Keybinds = DemosTab:CollapsingHeader({
	Title = "Keybinds"
})
local TestCheckbox = Keybinds:Checkbox({
	Label = "Check box",
	Value = true
})

Keybinds:Keybind({
	Label = "Toggle checkbox",
	Value = Enum.KeyCode.Q,
	IgnoreGameProcessed = false,
	Callback = function(self, KeyCode)
		print(KeyCode)
		TestCheckbox:Toggle()
	end,
})

Keybinds:Keybind({
	Label = "Toggle UI",
	Value = Enum.KeyCode.E,
	Callback = function()
		Window:SetVisible(not Window.Visible)
	end,
})
```

![image](https://github.com/user-attachments/assets/7e272cfb-df05-4aa7-8712-6adacf697358)

</details>

<details>
<summary>Console</summary>
  
```lua
local Row2 = ConsoleTab:Row()

ConsoleTab:Separator({
	Text = "Console Example:"
})

local Console = ConsoleTab:Console({
	Text = "Console example",
	ReadOnly = true,
	LineNumbers = false,
	Border = false,
	Fill = true,
	Enabled = true,
	AutoScroll = true,
	RichText = true,
	MaxLines = 50
})

Row2:Button({
	Text = "Clear",
	Callback = Console.Clear
})
Row2:Button({
	Text = "Copy"
})
Row2:Button({
	Text = "Pause",
	Callback = function(self)
		local Paused = shared.Pause
		Paused = not (Paused or false)
		shared.Pause = Paused
		
		self.Text = Paused and "Paused" or "Pause"
		Console.Enabled = not Paused
	end,
})
Row2:Fill() --// Resize contents to fill

coroutine.wrap(function()
	while wait() do
		local Date = DateTime.now():FormatLocalTime("h:mm:ss A", "en-us")
		
		Console:AppendText( --// Passed parameters will be concatenated 
			`<font color="rgb(240, 40, 10)">[Random Math]</font>`, 
			math.random()
		)
		Console:AppendText(
			`[{Date}] {Console}`
		)
	end
end)()
```

![image](https://github.com/user-attachments/assets/2989e7a8-fb26-4b0e-9b56-3d7c1136f729)

</details>

<details>
<summary>Tables</summary>

<details>
 <summary>Example 1 (Randomization)</summary>
  
```lua
local TablesTab = Window:CreateTab({
	Name = "Tables"
})
local Table = TablesTab:Table({
	RowBackground = true,
	Border = true,
	RowsFill = false,
	Size = UDim2.fromScale(1, 0)
})

coroutine.wrap(function()
	local Rows = 10
	local random = Random.new()
	while wait(1) do
		Table:ClearRows()
		
		for i = 1,Rows do
			local Row = Table:CreateRow()

			local Columns = random:NextInteger(1, 8)
			for x = 1, Columns do
				local Column = Row:CreateColumn()
				Column:Label({
					Text = `#{x}`
				})
			end
		end
	end
end)()
```

![image](https://github.com/user-attachments/assets/26129cf0-8231-46d9-af55-5fb8ebf343f5)
</details>

<details>
 <summary>Example 2 </summary>
  
```lua
local Credits = CreditsTab:Table({
	Border = false,
	Align = "Top"
}):CreateRow()

local Column1 = Credits:CreateColumn()
Column1:Image({
	Image = 8825666803,
	Ratio = 16 / 9,
	AspectType = Enum.AspectType.FitWithinMaxSize,
	Size = UDim2.fromScale(1, 1)
})
Column1:Label({
	Text = "Sus dog bozo"
})

Credits:CreateColumn():Label({
	Text = [[This UI library was created by depso.
Please report any issues or suggestions to the Github and use the correct tags.

Thanks.]],
	TextWrapped = true,
	RichText = true
})
```

![image](https://github.com/user-attachments/assets/41b193b6-fc80-490d-a8d5-94e4bb111d3d)
</details>
</details>

<details>
<summary>Rows</summary>
  
```lua
local ButtonsGrid = DemosTab:CollapsingHeader({
	Title = "Row grid",
})
local ButtonsRow = ButtonsGrid:Row()
for i = 1,5 do
	ButtonsRow:Button({
		Text = "Hello"
	})
end
ButtonsRow:Fill()

local CheckBoxesRow = ButtonsGrid:Row()
for i = 1,3 do
	CheckBoxesRow:Checkbox({
		Label = "Checkbox"
	})
end
CheckBoxesRow:Fill()
```

![image](https://github.com/user-attachments/assets/28538895-f197-4c54-a9e2-8179b4117202)

</details>

## Examples

<details>
<summary>Key system</summary>

```lua
local KeySystem = ImGui:CreateWindow({
	Title = "Key system",
	TabsBar = false,
	AutoSize = "Y",
	NoCollapse = true,
	NoResize = true,
	NoClose = true
}):Center()
	
local Content = KeySystem:CreateTab({
	Visible = true
})

local Key = Content:InputText({
	Label = "Key",
	PlaceHolder = "Key here",
	Value = "",
})

Content:Button({
	Text = "Enter",
	Callback = function()
		if Key:GetValue() == "bozo" then
			KeySystem:Close()
		else
			Key:SetLabel("Wrong key!")
		end
	end,
})
```

![image](https://github.com/user-attachments/assets/b4e87882-9389-49a1-b8b1-05f25495a2f6)

</details>

<details>
<summary>Watermark</summary>

```lua
local RunService = game:GetService("RunService")
local Watermark = ImGui:CreateWindow({
	Position = UDim2.fromOffset(10,10),
	NoSelectEffect = true,
	CornerRadius = UDim.new(0, 4),
	AutoSize = "XY",
	TabsBar = false,
	NoResize = true,
	NoDrag = true,
	NoTitleBar = true,
	
	Border = true,
	BorderThickness = 2, 
	BackgroundTransparency = 0.8,
}):CreateTab({
	Visible = true
})
	
local StatsRow = Watermark:Row({
	Spacing = 10
})

StatsRow:Label({
	Text = "ShortMastersMZ.com",
	TextColor3 = Color3.fromRGB(255, 255, 0)
})
local FPSLabel = StatsRow:Label()
local TimeLabel = Watermark:Label()

RunService.RenderStepped:Connect(function(v)
	FPSLabel.Text = `FPS: {math.round(1/v)} `
	TimeLabel.Text = `The time is {DateTime.now():FormatLocalTime("dddd h:mm:ss A", "en-us")} `
end)
```

![image](https://github.com/user-attachments/assets/c3b54a32-ad11-4f86-af4e-2679f0e39fbd)

</details>

<details>
<summary>Viewport demo</summary>

```lua
local RunService = game:GetService("RunService")
local Window = ImGui:CreateWindow({
	TabsBar = false,
	Position = UDim2.fromOffset(10,70),
	NoCollapse = true,
	NoResize = true,
	NoDrag = true,
	NoTitleBar = true, 
	AutoSize = "Y",
}):CreateTab({
	Visible = true
})

local Rig: Model = ImGui.Prefabs["R15 Rig"] --// "R6 Rig"
local Viewport = Window:Viewport({
	Size = UDim2.new(1, 0, 0, 200),
	Clone = true, --// Otherwise will parent
	Model = Rig,
	Border = false
})

--// Spin rig
local NewRig = Viewport.Model
NewRig:PivotTo(CFrame.new(0, -2.5, -5))
RunService.RenderStepped:Connect(function(deltaTime)
	local YRotation = 30 * deltaTime
	local cFrame = NewRig:GetPivot() * CFrame.Angles(0,math.rad(YRotation),0)
	NewRig:PivotTo(cFrame)
end)
```

![image](https://github.com/user-attachments/assets/c3f3ff70-6400-460a-a653-8931ca0dda72)

</details>
