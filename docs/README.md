# Dear ReGui
Dear ReGui is a retained dear ImGui library remake designed for Roblox!
This is perfect for beginners and performance.

Demo place: https://www.roblox.com/games/136436665525145/ReGui-Demo

## Documentation
- https://depso.gitbook.io/regui

## Notices
- ReGui is still in beta, please report any bugs by opening an issue on Github
- Any feedback or suggestions would be great
- If you would like to fork this, please read the [Forking guide](#forking-guide) section
  
## ReGui Usage
- See the [Getting Started & Integration](#getting-started--integration) section for more details

## Demos/Usage examples
- The demo window can be found [here](/Demo%20window.lua)
- More usage examples and element documentation can be found on the [Wiki](https://github.com/depthso/Roblox-ImGUI/wiki)

```lua
local Window = ReGui:Window({
	Title = "Hello world!",
	Size = UDim2.fromOffset(300, 200)
})

Window:Label({Text="Hello, world!"})
Window:Button({
	Text = "Save",
	Callback = function()
		MySaveFunction()
	end,
})
Window:InputText({Label="string"})
Window:Slider({Label="float", Format="%.1f/%s", Minium=0, Maxium=1})
```

<img src="https://github.com/user-attachments/assets/9181571f-39c3-42bc-8677-3a433c92e6e3" width="400px">


## Getting Started & Integration
Integrating Dear ImGui within your script requires a prefabs base to provide elements \
Using `:Init` to overwrite the default configuration, point `Prefabs` to the prefabs Gui instance

<table>
  <tr>
    <th>Type</th>
  </tr>
  <tr>
    <td>Roblox</td>
    <td>
	    
```lua
-- Replace 'game.ReplicatedStorage.ReGui' with the location of the ReGui module
local ReGui = require(game.ReplicatedStorage.ReGui)
ReGui:Init()
```

</td>
  </tr>
  <tr>
    <td>External</td>
    <td>
	    
Reference detections have been mitigated using **cloneref** which compatibility is checked, \
if support is not found, for example using this in _studio_, you are still able to use it

```lua
local ReGui = loadstring(game:HttpGet('https://raw.githubusercontent.com/depthso/Dear-ReGui/refs/heads/main/ReGui.lua'))()
local PrefabsId = `rbxassetid://{ReGui.PrefabsId}`

--// Externally import the Prefabs asset
ReGui:Init({
	Prefabs = game:GetService("InsertService"):LoadLocalAsset(PrefabsId)
})
```
</td>
  </tr>
</table>

## Gallery
<table>
	<tr>
		<td width="600">
			Demo window
			<img src="https://github.com/user-attachments/assets/0b9028a1-4615-4ddb-a2cc-0068653f562e">
		</td>
		<td width="600">
			Demo Window + Light Theme
			<img src="https://github.com/user-attachments/assets/2c6eab9a-83c9-4b1b-b589-f9debbe21d84">
		</td>
	</tr>
</table>

## Forking guide
- If you would like to create a fork of ReGui, please read the steps below for the category

### Custom Prefabs
Using custom prefabs with ReGUI is very simple. 
To use custom prefabs you can point the library's `Prefabs` to the custom prefabs in the `:Init` call. For externally using custom prefabs, replace `rbxassetid://{ReGui.PrefabsId}` with `rbxassetid://PrefabsID` and replace `PrefabsID` with the id of your custom prefabs that you have published on Roblox.

ReGui prefabs asset: [Prefabs Gui - Roblox](https://create.roblox.com/store/asset/71968920594655)

---
<img src="/docs/images/Dear ReGui.png" width="40%">
