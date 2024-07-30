<div align="center">
  <img src="https://github.com/user-attachments/assets/b220b562-519f-4914-afbf-f32ebf56dc5c"/>

  <b>An ImGui library for Roblox that doesn't require a RenderStep connection.</b>
  <br/>
  Perfect for beginners and performance.
</div>

> [!WARNING]
> This UI library is in **BETA** and you **WILL** experience problems\
> If you experience any, please open an issue.

### Source 📜
If you would like to customization or would like to edit the UI's elements further, you do so by finding the prefabs [here](https://create.roblox.com/store/asset/18364667141/Depso-ImGui) \
The **demonstration window** can be found [here](/Demo%20window.lua)

### Notices 📢
- 👍 Any feedback or suggestions would be great
- 🔨 Please mention me when integrating this library **- depso.**

### Authors 🖋
- **[Depso](https://github.com/depthso)** - UI designer & Developer

<details>
<summary><h4>Gallery of projects using this 📜</h4></summary>
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
For **documentation** and usage examples, please read the [**Wiki**](/Wiki)

### Studio
If you would like to use this in Studio, create a module script and paste the source of the library into it. \
[Library source code](/ImGui.lua)

```lua
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ImGui = require(ReplicatedStorage.ImGui)
```

### Exploits
Using this on executors only requires a loadstring. 
Reference detections have been mitigated using cloneref which compatibility is checked, \
if support is not found, for example using this in studio, you are still able to use it. 

```lua
local ImGui = loadstring(game:HttpGet('https://github.com/depthso/Roblox-ImGUI/raw/main/ImGui.lua'))()
```

<hr>

![image](https://github.com/user-attachments/assets/c050f9ba-f090-4738-90b7-b791b94133ec)
