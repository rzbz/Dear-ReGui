# Dear ReGui
Dear ReGui is a retained dear ImGui library remake designed to be used on Roblox!
This is perfect for beginners and performance.

Demo place: https://www.roblox.com/games/136436665525145/ReGui-Demo \
Documentation: https://depso.gitbook.io/regui

## Notices
- ReGui is still in beta, please report any bugs by opening an issue on Github
- Any feedback or suggestions would be great
- If you would like to fork this, please read the [Forking](#forking) section
- Technical documentation and addional infomation such as commonly asked questions can be found on the Gitbook documentation
  
## Usage
ReGui can be used on any GUI type you want such as CoreGui, PlayerGui, BillboardGui, PluginGui, and SurfaceGui.
Installation is as simple as importing the rbxm model into your project and connecting a client script to begin using it!

ReGui requires prefabs as it does not generate the base elments required for many elements such as the Window.

See the [Getting Started - Installing](https://depso.gitbook.io/regui/getting-started/installing) section for more details

Once you have installed ReGUI into your project, it can be used by any client script anywhere!
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
Window:Slider({Label="float", Format="%.1f/%s", Minimum=0, Maximum=1})
```

<img src="https://github.com/user-attachments/assets/9181571f-39c3-42bc-8677-3a433c92e6e3" width="400px">

## Demo
The best way to learn ReGUI is to look through the Demo window which comes bundled with ReGUI.
The demo window is updated every significant update such as an addition of an element or a flag has been renamed.

https://github.com/depthso/Dear-ReGui/blob/main/Demo%20window.lua

## Gallery
<table>
	<tr>
		<td width="400">
			Demo window
			<img src="https://github.com/user-attachments/assets/0b9028a1-4615-4ddb-a2cc-0068653f562e">
		</td>
		<td width="600">
			Advanced customization example
			<img src="https://github.com/user-attachments/assets/c2e9be5d-819b-4620-9a0f-b99f42e21886">
		</td>
	</tr>
</table>

## Forking
If you would like to create a fork of ReGui, please read the steps below

### Custom Prefabs
Using custom prefabs with ReGUI is very simple. 
To use custom prefabs you can point the library's `Prefabs` to the custom prefabs in the `:Init` call. For externally using custom prefabs, replace `rbxassetid://{ReGui.PrefabsId}` with `rbxassetid://PrefabsID` and replace `PrefabsID` with the id of your custom prefabs that you have published on Roblox.

ReGui prefabs asset: [Prefabs Gui - Roblox](https://create.roblox.com/store/asset/71968920594655)

---
<img src="/docs/images/Dear ReGui.png" width="30%">
