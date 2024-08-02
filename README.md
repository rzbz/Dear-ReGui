<div align="center">
  <img src="https://github.com/user-attachments/assets/b220b562-519f-4914-afbf-f32ebf56dc5c"/>

  <b>An ImGui library for Roblox that doesn't require a RenderStep connection.</b>
  <br/>
  Perfect for beginners and performance.
</div>

> [!WARNING]
> This UI library is in **BETA** and you **WILL** experience problems\
> If you experience any, please open an issue.

- 👍 Any feedback or suggestions would be great
- 🔨 Please mention me when integrating this library **- depso.**

### Sources 📜
If you would like to customization or would like to edit the UI's elements further, edit the sources linked below:
- Prefabs: [Prefabs](https://create.roblox.com/store/asset/18364667141/Depso-ImGui)
- - Make sure you change UIAssetId under the `ImGui` configuration inside of the source code
- Library: [Source code](/ImGui.lua) 

### Demos
- The **demonstration window** can be found [here](/Demo%20window.lua) \
- More usage examples can be found on the [Wiki](https://github.com/depthso/Roblox-ImGUI/wiki).

<details>
<summary><h3>Gallery of projects using this 📜</h3></summary>
If you would like your content removed, please open an issue. 

<table>
	<tr>
		<td width="600">
			<h2>Roblox Therapy script</h2>
			https://www.youtube.com/watch?v=bNSkFvNlAK0
		</td>
		<td width="600">
			<img width="316" src="https://github.com/user-attachments/assets/cfffdbd2-6ba1-48f1-9b73-5b2d78878268">
		</td>
	</tr>
</table>
</details>

## Usage/documentation 🔧
For **documentation** and usage examples, please read the [**Wiki**](https://github.com/depthso/Roblox-ImGUI/wiki)

### Roblox Studio
If you would like to use this in Studio:
- Create a module script and paste the [library source code](/ImGui.lua)
- Download the [Prefabs UI](https://create.roblox.com/store/asset/18364667141/Depso-ImGui) and paste it under the module script

```lua
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ImGui = require(ReplicatedStorage.ImGui)
```

### Exploits
Reference detections have been mitigated using **cloneref** which compatibility is checked, \
if support is not found, for example using this in _studio_, you are still able to use it. 

```lua
local ImGui = loadstring(game:HttpGet('https://github.com/depthso/Roblox-ImGUI/raw/main/ImGui.lua'))()
```

<hr>

![image](https://github.com/user-attachments/assets/c050f9ba-f090-4738-90b7-b791b94133ec)
