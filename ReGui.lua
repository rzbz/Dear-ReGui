local a={cache={}}do do local b=function()local b,c,d={Services={},
OnInitConnections={}},get_hidden_gui or gethui,cloneref or function(b)return b
end local e=b.Services setmetatable(e,{__index=function(f,g)local h=game:
GetService(g)return d(h)end})local f,g=(e.CoreGui)function b:AddOnInit(h)local i
=self.OnInitConnections table.insert(i,h)end function b:CallOnInitConnections(h,
...)local i=self.OnInitConnections g=h for j,k in next,i do k(g,...)end end
function b:SetProperties(h,i)for j,k in next,i do pcall(function()h[j]=k end)end
end function b:NewClass(h,i)i=i or{}h.__index=h return setmetatable(i,h)end
function b:CheckConfig(h,i,j,k)if not h then return end for l,m in next,i do if
h[l]~=nil then continue end if k then if table.find(k,l)then continue end end if
j then m=m()end h[l]=m end return h end function b:ResolveUIParent()local h,i=g.
PlayerGui,g.Debug local j,k={[1]=function()local j=c()if j.Parent==f then return
end return j end,[2]=function()return f end,[3]=function()return h end},g:
CreateInstance'ScreenGui'for l,m in next,j do local n,o=pcall(m)if not n or not
o then continue end local p=pcall(function()k.Parent=o end)if not p then
continue end if i then g:Warn(`Step: {l} was chosen as the parent!: {o}`)end
return o end g:Warn'The ReGui container does not have a parent defined'return
nil end function b:GetChildOfClass(h,i)local j=h:FindFirstChildOfClass(i)if not
j then j=g:CreateInstance(i,h)end return j end function b:CheckAssetUrl(h)if
tonumber(h)then return`rbxassetid://{h}`end return h end function b:SetPadding(h
,i)if not h then return end self:SetProperties(h,{PaddingBottom=i,PaddingLeft=i,
PaddingRight=i,PaddingTop=i})end return b end function a.a()local c=a.cache.a if
not c then c={c=b()}a.cache.a=c end return c.c end end do local b=function()
local b,c=a.a(),{DefaultTweenInfo=TweenInfo.new(0.08)}local d=b.Services local e
=d.TweenService function c:Tween(f)local g,h,i=self.DefaultTweenInfo,f.Object,f.
NoAnimation local j,k,l,m=f.Tweeninfo or g,f.EndProperties,f.StartProperties,f.
Completed if l then b:SetProperties(h,l)end if i then b:SetProperties(h,k)if m
then m()end return end local n for o,p in next,k do local q={[o]=p}local r,s=
pcall(function()return e:Create(h,j,q)end)if not r then b:SetProperties(h,q)
continue end if not n then n=s end s:Play()end if m then if n then n.Completed:
Connect(m)else m()end end return n end function c:Animate(f)local g,h,i,j,k=f.
NoAnimation,f.Objects,f.Tweeninfo,(f.Completed)for l,m in next,h do local n=self
:Tween{NoAnimation=g,Object=l,Tweeninfo=i,EndProperties=m}if not k then k=n end
end if j then k.Completed:Connect(j)end return k end function c:
HeaderCollapseToggle(f)b:CheckConfig(f,{Rotations={Open=90,Closed=0}})local g,h,
i,j,k=f.Toggle,f.NoAnimation,f.Rotations,f.Collapsed,f.Tweeninfo local l=j and i
.Closed or i.Open self:Tween{Tweeninfo=k,NoAnimation=h,Object=g,EndProperties={
Rotation=l}}end function c:HeaderCollapse(f)local g,h,i,j,k,l,m,n,o,p,q=f.
Tweeninfo,f.Collapsed,f.ClosedSize,f.OpenSize,f.Toggle,f.Resize,f.Hide,f.
NoAnimation,f.NoAutomaticSize,f.IconRotations,f.Completed if not o then l.
AutomaticSize=Enum.AutomaticSize.None end if not h then m.Visible=true end self:
HeaderCollapseToggle{Tweeninfo=g,Collapsed=h,NoAnimation=n,Toggle=k,Rotations=p}
local r=self:Tween{Tweeninfo=g,NoAnimation=n,Object=l,StartProperties={Size=h
and j or i},EndProperties={Size=h and i or j},Completed=function()m.Visible=not
h if q then q()end if h then return end if o then return end l.Size=UDim2.
fromScale(1,0)l.AutomaticSize=Enum.AutomaticSize.Y end}return r end return c end
function a.b()local c=a.cache.b if not c then c={c=b()}a.cache.b=c end return c.
c end end do local b=function()local b={}b.__index=b local c=a.a()function b:
Fire(...)local d=self:GetConnections()if#d<=0 then return end for e,f in next,d
do f(...)end end function b:GetConnections()local d=self.Connections return d
end function b:Connect(d)local e=self:GetConnections()table.insert(e,d)end
function b:DisconnectConnections()local d=self:GetConnections()table.clear(d)end
function b:NewSignal()return c:NewClass(b,{Connections={}})end return b end
function a.c()local c=a.cache.c if not c then c={c=b()}a.cache.c=c end return c.
c end end do local b=function()return{VerifiedBadge=
'rbxasset://textures/ui/VerifiedBadgeNameIcon.png',Dot=
'rbxasset://textures/whiteCircle.png',Arrow=
'rbxasset://textures/ui/AvatarContextMenu_Arrow.png',Close=
'rbxasset://textures/loading/cancelButton.png',Checkmark=
'rbxassetid://6031094667',Cat='rbxassetid://16211812161',Script=
'rbxassetid://11570895459',Settings='rbxassetid://9743465390',Info=
'rbxassetid://18754976792',Move='rbxassetid://6710235139',Roblox=
'rbxassetid://7414445494',Warning='rbxassetid://11745872910',Audio=
'rbxassetid://302250236',Shop='rbxassetid://6473525198',CharacterDance=
'rbxassetid://11932783331',Pants='rbxassetid://10098755331',Home=
'rbxassetid://4034483344',Robux='rbxassetid://5986143282',Badge=
'rbxassetid://16170504068',SpawnLocation='rbxassetid://6400507398',Sword=
'rbxassetid://7485051715',Clover='rbxassetid://11999300014',Star=
'rbxassetid://3057073083',Code='rbxassetid://11348555035',Paw=
'rbxassetid://13001190533',Shield='rbxassetid://7461510428',Shield2=
'rbxassetid://7169354142',File='rbxassetid://7276823330',Book=
'rbxassetid://16061686835',Location='rbxassetid://13549782519',Puzzle=
'rbxassetid://8898417863',Discord='rbxassetid://84828491431270',Premium=
'rbxassetid://6487178625',Friend='rbxassetid://10885655986',User=
'rbxassetid://18854794412',Duplicate='rbxassetid://11833749507',ChatBox=
'rbxassetid://15839118471',ChatBox2='rbxassetid://15839116089',Devices=
'rbxassetid://4458812712',Weight='rbxassetid://9855685269',Image=
'rbxassetid://123311808092347',Profile='rbxassetid://13585614795',Admin=
'rbxassetid://11656483170',PaintBrush='rbxassetid://12111879608',Speed=
'rbxassetid://12641434961',NoConnection='rbxassetid://9795340967',Connection=
'rbxassetid://119759670842477',Globe='rbxassetid://18870359747',Box=
'rbxassetid://140217940575618',Crown='rbxassetid://18826490498',Control=
'rbxassetid://18979524646',Send='rbxassetid://18940312887',FastForward=
'rbxassetid://112963221295680',Pause='rbxassetid://109949100737970',Reload=
'rbxassetid://11570018242',Joystick='rbxassetid://18749336354',Controller=
'rbxassetid://11894535915',Lock='rbxassetid://17783082088',Calculator=
'rbxassetid://85861816563977',Sun='rbxassetid://13492317832',Moon=
'rbxassetid://8498174594',Prohibited='rbxassetid://5248916036',Flag=
'rbxassetid://251346532',Website='rbxassetid://98455290625865',Telegram=
'rbxassetid://115860270107061',MusicNote='rbxassetid://18187351229',Music=
'rbxassetid://253830398',Headphones='rbxassetid://1311321471',Phone=
'rbxassetid://8411963035',Smartphone='rbxassetid://14040313879',Desktop=
'rbxassetid://3120635703',Desktop2='rbxassetid://4728059490',Laptop=
'rbxassetid://4728059725',Server='rbxassetid://9692125126',Wedge=
'rbxassetid://9086583059',Drill='rbxassetid://11959189471',Character=
'rbxassetid://13285102351'}end function a.d()local c=a.cache.d if not c then c={
c=b()}a.cache.d=c end return c.c end end do local b=function()return{Light=
Color3.fromRGB(167,86,242),Dark=Color3.fromRGB(71,30,115),ExtraDark=Color3.
fromRGB(28,39,53),White=Color3.fromRGB(240,240,240),Gray=Color3.fromRGB(172,171,
175),Black=Color3.fromRGB(15,19,24),Yellow=Color3.fromRGB(230,180,0),Orange=
Color3.fromRGB(230,150,0),Green=Color3.fromRGB(130,188,91),Red=Color3.fromRGB(
255,69,69)}end function a.e()local c=a.cache.e if not c then c={c=b()}a.cache.e=
c end return c.c end end do local b=function()local b,c=a.e(),{}c.DarkTheme={
Values={AnimationTweenInfo=TweenInfo.new(0.08),TextFont=Font.fromEnum(Enum.Font.
RobotoMono),TextSize=14,Text=b.White,TextDisabled=b.Gray,ErrorText=b.Red,FrameBg
=b.Dark,FrameBgTransparency=0.4,FrameBgActive=b.Light,FrameBgTransparencyActive=
0.4,FrameRounding=UDim.new(0,0),SliderGrab=b.Light,ButtonsBg=b.Light,
CollapsingHeaderBg=b.Light,CollapsingHeaderText=b.White,CheckMark=b.Light,
ResizeGrab=b.Light,HeaderBg=b.Gray,HeaderBgTransparency=0.7,HistogramBar=b.
Yellow,ProgressBar=b.Yellow,RegionBg=b.Dark,RegionBgTransparency=0.1,Separator=b
.Gray,SeparatorTransparency=0.5,ConsoleLineNumbers=b.White,LabelPaddingTop=UDim.
new(0,0),LabelPaddingBottom=UDim.new(0,0),MenuBar=b.ExtraDark,
MenuBarTransparency=0.1,PopupCanvas=b.Black,TabTextPaddingTop=UDim.new(0,3),
TabTextPaddingBottom=UDim.new(0,8),TabText=b.Gray,TabBg=b.Dark,TabTextActive=b.
White,TabBgActive=b.Light,TabsBarBg=Color3.fromRGB(36,36,36),
TabsBarBgTransparency=1,TabPagePadding=UDim.new(0,8),ModalWindowDimBg=Color3.
fromRGB(230,230,230),ModalWindowDimTweenInfo=TweenInfo.new(0.2),WindowBg=b.Black
,WindowBgTransparency=0.05,Border=b.Gray,BorderTransparency=0.8,
BorderTransparencyActive=0.5,Title=b.White,TitleAlign=Enum.TextXAlignment.Left,
TitleBarBg=b.Black,TitleBarTransparency=0,TitleActive=b.White,TitleBarBgActive=b
.Dark,TitleBarTransparencyActive=0.05,TitleBarBgCollapsed=Color3.fromRGB(0,0,0),
TitleBarTransparencyCollapsed=0.6}}c.LightTheme={BaseTheme=c.DarkTheme,Values={
Text=b.Black,TextFont=Font.fromEnum(Enum.Font.Ubuntu),TextSize=14,FrameBg=b.Gray
,FrameBgTransparency=0.4,FrameBgActive=b.Light,FrameBgTransparencyActive=0.6,
SliderGrab=b.Light,ButtonsBg=b.Light,CollapsingHeaderText=b.Black,Separator=b.
Black,ConsoleLineNumbers=b.Yellow,MenuBar=Color3.fromRGB(219,219,219),
PopupCanvas=b.White,TabText=b.Black,TabTextActive=b.Black,WindowBg=b.White,
Border=b.Gray,ResizeGrab=b.Gray,Title=b.Black,TitleAlign=Enum.TextXAlignment.
Left,TitleBarBg=b.Gray,TitleActive=b.Black,TitleBarBgActive=Color3.fromRGB(186,
186,186),TitleBarBgCollapsed=b.Gray}}return c end function a.f()local c=a.cache.
f if not c then c={c=b()}a.cache.f=c end return c.c end end do local b=function(
)local b,c=(a.a())b:AddOnInit(function(d)c=d end)return{{Properties={'Center'},
Callback=function(d,e,f)local g=e.Position b:SetProperties(e,{Position=UDim2.
new(f:find'X'and 0.5 or g.X.Scale,g.X.Offset,f:find'Y'and 0.5 or g.Y.Scale,g.Y.
Offset),AnchorPoint=Vector2.new(f:find'X'and 0.5 or 0,f:find'Y'and 0.5 or 0)})
end},{Properties={'ElementStyle'},Callback=function(d,e,f)c:ApplyStyle(e,f)end},
{Properties={'ColorTag'},Callback=function(d,e,f)local g,h=d.Class,d.WindowClass
local i=g.NoAutoTheme if not h then return end if i then return end c:
UpdateColors{Object=e,Tag=f,NoAnimation=true,Theme=h.Theme}end},{Properties={
'Animation'},Callback=function(d,e,f)local g=d.Class.NoAnimation if g then
return end c:SetAnimation(e,f)end},{Properties={'Image'},Callback=function(d,e,f
)local g=d.WindowClass e.Image=b:CheckAssetUrl(f)c:DynamicImageTag(e,f,g)end},{
Properties={'Icon','IconSize','IconRotation','IconPadding'},Callback=function(d,
e,f)local g=e:FindFirstChild('Icon',true)if not g then c:Warn('No icon for',e)
return end local h=d.Class b:CheckConfig(h,{Icon='',IconSize=UDim2.fromScale(1,1
),IconRotation=0,IconPadding=UDim2.new(0,2)})local i=g.Parent:FindFirstChild
'UIPadding'b:SetPadding(i,h.IconPadding)local j=h.Icon j=b:CheckAssetUrl(j)local
k=d.WindowClass c:DynamicImageTag(g,j,k)b:SetProperties(g,{Visible=g~='',Image=b
:CheckAssetUrl(j),Size=h.IconSize,Rotation=h.IconRotation})end},{Properties={
'BorderThickness','Border','BorderColor'},Callback=function(d,e,f)local g=d.
Class local h=g.Border==true b:CheckConfig(g,{BorderTransparency=d:GetThemeKey
'BorderTransparencyActive',BorderColor=d:GetThemeKey'Border',BorderThickness=1,
BorderStrokeMode=Enum.ApplyStrokeMode.Border})local i=b:GetChildOfClass(e,
'UIStroke')b:SetProperties(i,{Transparency=g.BorderTransparency,Thickness=g.
BorderThickness,Color=g.BorderColor,ApplyStrokeMode=g.BorderStrokeMode,Enabled=h
})end},{Properties={'Ratio'},Callback=function(d,e,f)local g=d.Class b:
CheckConfig(g,{Ratio=1.3333333333333333,RatioAxis=Enum.DominantAxis.Height,
RatioAspectType=Enum.AspectType.ScaleWithParentSize})local h,i,j,k=g.Ratio,g.
RatioAxis,g.RatioAspectType,b:GetChildOfClass(e,'UIAspectRatioConstraint')b:
SetProperties(k,{DominantAxis=i,AspectType=j,AspectRatio=h})end},{Properties={
'FlexMode'},Callback=function(d,e,f)local g=b:GetChildOfClass(e,'UIFlexItem')g.
FlexMode=f end},{Properties={'CornerRadius'},Callback=function(d,e,f)local g=b:
GetChildOfClass(e,'UICorner')g.CornerRadius=f end},{Properties={'Fill'},Callback
=function(d,e,f)if f~=true then return end local g=d.Class b:CheckConfig(g,{Size
=UDim2.fromScale(1,1),UIFlexMode=Enum.UIFlexMode.Fill,AutomaticSize=Enum.
AutomaticSize.None})local h=b:GetChildOfClass(e,'UIFlexItem')h.FlexMode=g.
UIFlexMode e.Size=g.Size e.AutomaticSize=g.AutomaticSize end},{Properties={
'Label'},Callback=function(d,e,f)local g,h=d.Class,e:FindFirstChild'Label'if not
h then return end h.Text=tostring(f)function g:SetLabel(i)h.Text=i return self
end end},{Properties={'NoGradient'},WindowProperties={'NoGradients'},Callback=
function(d,e,f)local g=e:FindFirstChildOfClass'UIGradient'if not g then return
end g.Enabled=f end},{Properties={'UiPadding','PaddingBottom','PaddingTop',
'PaddingRight','PaddingTop'},Callback=function(d,e,f)f=f or 0 if typeof(f)==
'number'then f=UDim.new(0,f)end local g=d.Class local h=g.UiPadding if h then b:
CheckConfig(g,{PaddingBottom=f,PaddingLeft=f,PaddingRight=f,PaddingTop=f})end
local i=b:GetChildOfClass(e,'UIPadding')b:SetProperties(i,{PaddingBottom=g.
PaddingBottom,PaddingLeft=g.PaddingLeft,PaddingRight=g.PaddingRight,PaddingTop=g
.PaddingTop})end},{Properties={'Callback'},Callback=function(d,e)local f=d.Class
function f:SetCallback(g)self.Callback=g return self end function f:FireCallback
(g)self.Callback(e)return self end end},{Properties={'Value'},Callback=function(
d,e)local f=d.Class b:CheckConfig(f,{GetValue=function(g)return f.Value end})end
}}end function a.g()local c=a.cache.g if not c then c={c=b()}a.cache.g=c end
return c.c end end do local b=function()local b={}b.Coloring={MenuBar={
BackgroundColor3='MenuBar',BackgroundTransparency='MenuBarTransparency'},
FrameRounding={CornerRadius='FrameRounding'},PopupCanvas={BackgroundColor3=
'PopupCanvas'},ModalWindowDim={BackgroundColor3='ModalWindowDimBg'},Selectable=
'Button',MenuButton='Button',Separator={BackgroundColor3='Separator',
BackgroundTransparency='SeparatorTransparency'},Region={BackgroundColor3=
'RegionBg',BackgroundTransparency='RegionBgTransparency'},Label={TextColor3=
'Text',FontFace='TextFont',TextSize='TextSize'},ImageFollowsText={ImageColor3=
'Text'},ConsoleLineNumbers={TextColor3='ConsoleLineNumbers',FontFace='TextFont',
TextSize='TextSize'},ConsoleText='Label',LabelDisabled={TextColor3=
'TextDisabled',FontFace='TextFont',TextSize='TextSize'},Plot={BackgroundColor3=
'HistogramBar'},Header={BackgroundColor3='HeaderBg',BackgroundTransparency=
'HeaderBgTransparency'},WindowTitle={TextXAlignment='TitleAlign',FontFace=
'TextFont',TextSize='TextSize'},TitleBar={BackgroundColor3='TitleBarBgActive'},
Window={BackgroundColor3='WindowBg',BackgroundTransparency=
'WindowBgTransparency'},TitleBarBgCollapsed={BackgroundColor3=
'TitleBarBgCollapsed',BackgroundTransparency='TitleBarTransparencyCollapsed'},
TitleBarBgActive={BackgroundColor3='TitleBarBgActive',BackgroundTransparency=
'TitleBarTransparencyActive'},TitleBarBg={BackgroundColor3='TitleBarBg',
BackgroundTransparency='TitleBarTransparency'},TabsBar={BackgroundColor3=
'TabsBarBg',BackgroundTransparency='TabsBarBgTransparency'},Border={Color=
'Border',Transparency='BorderTransparency'},ResizeGrab={TextColor3='ResizeGrab'}
,BorderActive={Transparency='BorderTransparencyActive'},Frame={BackgroundColor3=
'FrameBg',BackgroundTransparency='FrameBgTransparency',TextColor3='Text',
FontFace='TextFont',TextSize='TextSize'},FrameActive={BackgroundColor3=
'FrameBgActive',BackgroundTransparency='FrameBgTransparencyActive'},SliderGrab={
BackgroundColor3='SliderGrab'},Button={BackgroundColor3='ButtonsBg',TextColor3=
'Text',FontFace='TextFont',TextSize='TextSize'},CollapsingHeader={FontFace=
'TextFont',TextSize='TextSize',TextColor3='CollapsingHeaderText',
BackgroundColor3='CollapsingHeaderBg'},Checkbox={BackgroundColor3='FrameBg'},
CheckMark={ImageColor3='CheckMark',BackgroundColor3='CheckMark'},RadioButton={
BackgroundColor3='ButtonsBg',TextColor3='Text',FontFace='TextFont',TextSize=
'TextSize'}}b.Styles={RadioButton={Animation='RadioButtons',CornerRadius=UDim.
new(1,0)},Button={Animation='Buttons'},CollapsingHeader={Animation='Buttons'},
TreeNode={Animation='TransparentButtons'},TransparentButton={Animation=
'TransparentButtons'}}b.Animations={Invisible={Connections={MouseEnter={Visible=
true},MouseLeave={Visible=false}},Init='MouseLeave'},Buttons={Connections={
MouseEnter={BackgroundTransparency=0.3},MouseLeave={BackgroundTransparency=0.7}}
,Init='MouseLeave'},TextButtons={Connections={MouseEnter={TextTransparency=0.3},
MouseLeave={TextTransparency=0.7}},Init='MouseLeave'},TransparentButtons={
Connections={MouseEnter={BackgroundTransparency=0.3},MouseLeave={
BackgroundTransparency=1}},Init='MouseLeave'},RadioButtons={Connections={
MouseEnter={BackgroundTransparency=0.5},MouseLeave={BackgroundTransparency=1}},
Init='MouseLeave'},Inputs={Connections={MouseEnter={BackgroundTransparency=0},
MouseLeave={BackgroundTransparency=0.5}},Init='MouseLeave'},Plots={Connections={
MouseEnter={BackgroundTransparency=0.3},MouseLeave={BackgroundTransparency=0}},
Init='MouseLeave'},Border={Connections={Selected={Transparency=0,Thickness=1},
Deselected={Transparency=0.7,Thickness=1}},Init='Selected'}}return b end
function a.h()local c=a.cache.h if not c then c={c=b()}a.cache.h=c end return c.
c end end end local b,c,d,e={Version='1.4.6',Author='Depso',License='MIT',
Repository='https://github.com/depthso/Dear-ReGui/',Debug=false,PrefabsId=
71968920594655,DefaultTitle='ReGui',ContainerName='ReGui',DoubleClickThreshold=
0.3,TooltipOffset=15,IniToSave={'Value'},ClassIgnored={'Visible','Text'},
Container=nil,Prefabs=nil,FocusedWindow=nil,HasTouchScreen=false,Services=nil,
Elements={},_FlagCache={},_ErrorCache={},Windows={},ActiveTooltips={},
IniSettings={},AnimationConnections={}},a.a(),a.b(),a.c()b.Services=c.Services b
.Animation=d b.Icons=a.d()b.Accent=a.e()b.ThemeConfigs=a.f()b.ElementFlags=a.g()
local f=a.h()b.ElementColors=f.Coloring b.Animations=f.Animations b.Styles=f.
Styles c:CallOnInitConnections(b)b.DynamicImages={[b.Icons.Arrow]=
'ImageFollowsText',[b.Icons.Close]='ImageFollowsText',[b.Icons.Dot]=
'ImageFollowsText'}local g=b.Services local h,i,j,k,l=g.HttpService,g.Players,g.
UserInputService,g.RunService,g.InsertService local m=i.LocalPlayer b.PlayerGui=
m.PlayerGui b.Mouse=m:GetMouse()local n=function()end function GetAndRemove(o,p)
local q=p[o]if q then p[o]=nil end return q end function MoveTableItem(o,p,q)
local r=table.find(o,p)if not r then return end local s=table.remove(o,r)table.
insert(o,q,s)end function Merge(o,p)for q,r in next,p do o[q]=r end end function
Copy(o,p)local q=table.clone(o)if p then Merge(q,p)end return q end function b:
Warn(...)warn('[ReGui]::',...)end function b:Error(...)local o=b:Concat({...},
' ')local p=`\n[ReGui]:: {o}`coroutine.wrap(error)(p)end function b:
IsDoubleClick(o)local p=self.DoubleClickThreshold return o<p end function b:
StyleContainers()local o=self.Container local p,q=o.Overlays,o.Windows self:
SetProperties(q,{OnTopOfCoreBlur=true})self:SetProperties(p,{OnTopOfCoreBlur=
true})end function b:Init(o)o=o or{}if self.Initialised then return end Merge(
self,o)Merge(self,{Initialised=true,HasGamepad=self:IsConsoleDevice(),
HasTouchScreen=self:IsMobileDevice()})self:CheckConfig(self,{ContainerParent=
function()return c:ResolveUIParent()end,Prefabs=function()return self:
LoadPrefabs()end},true)self:CheckConfig(self,{Container=function()return self:
InsertPrefab('Container',{Parent=self.ContainerParent,Name=self.ContainerName})
end},true)local p,q,r=self.Container,self.TooltipOffset,self.ActiveTooltips
local s,t=p.Overlays,0 self:StyleContainers()self.TooltipsContainer=self.
Elements:Overlay{Parent=s}j.InputBegan:Connect(function(u)if not self:
IsMouseEvent(u,true)then return end local v=tick()local w=v-t local x=self:
IsDoubleClick(w)t=x and 0 or v self:UpdateWindowFocuses()end)local u=function()
local u,v=self.TooltipsContainer,#r>0 u.Visible=v if not v then return end local
w,x=b:GetMouseLocation()local y=s.AbsolutePosition u.Position=UDim2.fromOffset(w
-y.X+q,x-y.Y+q)end k.RenderStepped:Connect(u)end function b:CheckImportState()if
self.Initialised then return end local o=self.PrefabsId local p=c:CheckAssetUrl(
o)local q,r=pcall(function()return l:LoadLocalAsset(p)end)self:Init{Prefabs=q
and r or nil}end function b:GetVersion()return self.Version end function b:
IsMobileDevice()return j.TouchEnabled end function b:IsConsoleDevice()return j.
GamepadEnabled end function b:GetScreenSize()return workspace.CurrentCamera.
ViewportSize end function b:LoadPrefabs()local o,p=self.PlayerGui,
'ReGui-Prefabs'local q=script:WaitForChild(p,2)if q then return q end local r=o:
WaitForChild(p,2)if r then return r end return nil end function b:CheckConfig(o,
p,q,r)return c:CheckConfig(o,p,q,r)end function b:CreateInstance(o,p,q)local r=
Instance.new(o,p)if q then local s=q.UsePropertiesList if not s then self:
SetProperties(r,q)else self:ApplyFlags{Object=r,Class=q}end end return r end
function b:ConnectMouseEvent(o,p)local q,r,s,t,u=p.Callback,p.DoubleClick,p.
OnlyMouseHovering,0 if s then u=self:DetectHover(s)end o.Activated:Connect(
function(...)local v=tick()local w=v-t if u and not u.Hovering then return end
if r then if not b:IsDoubleClick(w)then t=v return end t=0 end q(...)end)end
function b:GetAnimation(o)return o and self.Animation or TweenInfo.new(0)end
function b:DynamicImageTag(o,p,q)local r=self.DynamicImages local s=r[p]if not s
then return end if not q then return end q:TagElements{[o]=s}end function b:
GetDictSize(o)local p=0 for q,r in o do p+=1 end return p end function b:
RemoveAnimations(o)local p=self:GetAnimationData(o)local q=p.Connections for r,s
in next,q do s:Disconnect()end end function b:GetAnimationData(o)local p=self.
AnimationConnections local q=p[o]if q then return q end local r={Connections={}}
p[o]=r return r end function b:AddAnimationSignal(o,p)local q=self:
GetAnimationData(o)local r=q.Connections table.insert(r,p)end function b:
SetAnimationsEnabled(o)self.NoAnimations=not o end function b:SetAnimation(o,p,q
)q=q or o local r,s,t=self.Animations,self.HasTouchScreen,p if typeof(p)~=
'table'then t=r[p]end assert(t,`No animation data for Class {p}!`)self:
RemoveAnimations(q)local u,v,w,x,y=t.Init,t.Connections,t.Tweeninfo,t.
NoAnimation,self:GetAnimationData(o)local z,A,B,C,D,E=y.State,true,{},{}function
C:Reset(F)if not D then return end D(F)end function C:FireSignal(F,G)B[F](G)end
function C:Refresh(F)if not E then return end B[E](F)end function C:SetEnabled(F
)A=F end for F,G in next,v do local H,I=function(H)H=H==true E=F local I=self.
NoAnimations if I then return end if not A then return end y.State=F d:Tween{
NoAnimation=H or x,Object=o,Tweeninfo=w,EndProperties=G}end,q[F]if not s then
local J=I:Connect(H)self:AddAnimationSignal(q,J)end B[F]=H if F==u then D=H end
end if z then C:FireSignal(z)else C:Reset(true)end return C end function b:
ConnectDrag(o,p)self:CheckConfig(p,{DragStart=n,DragEnd=n,DragMovement=n,
OnDragStateChange=n})local q,r,s,t,u,v=p.DragStart,p.DragEnd,p.DragMovement,p.
OnDragStateChange,{StartAndEnd={Enum.UserInputType.MouseButton1,Enum.
UserInputType.Touch},Movement={Enum.UserInputType.MouseMovement,Enum.
UserInputType.Touch}},false local w,x,y=function(w,x)local y=w.UserInputType
return table.find(u[x],y)end,function(w)local x=w.Position return Vector2.new(x.
X,x.Y)end,function(w)self._DraggingDisabled=w v=w t(w)end local z=function(z)
local A,B,C=z.IsDragging,z.InputType,z.Callback return function(D)if z.
DraggingRequired~=v then return end if z.CheckDraggingDisabled and self.
_DraggingDisabled then return end if not w(D,B)then return end if z.UpdateState
then y(A)end local E=x(D)C(E)end end o.InputBegan:Connect(z{
CheckDraggingDisabled=true,DraggingRequired=false,UpdateState=true,IsDragging=
true,InputType='StartAndEnd',Callback=q})j.InputEnded:Connect(z{DraggingRequired
=true,UpdateState=true,IsDragging=false,InputType='StartAndEnd',Callback=r})j.
InputChanged:Connect(z{DraggingRequired=true,InputType='Movement',Callback=s})
end function b:MakeDraggable(o)local p,q,r,s,t,u=o.Move,o.Grab,o.
OnDragStateChange,{}function s:SetEnabled(v)local w=o.StateChanged self.Enabled=
v if w then w(self)end end function s:CanDrag(v)return self.Enabled end local v,
w,x,y,z=function(v)if not s:CanDrag()then return end local w=o.DragBegin u=v w(u
)end,function(v)if not s:CanDrag()then return end local w,x=v-u,o.OnUpdate x(w)
end,function(v)t=p.Position end,function(v)local w=UDim2.new(t.X.Scale,t.X.
Offset+v.X,t.Y.Scale,t.Y.Offset+v.Y)o:SetPosition(w)end,function(v,w)d:Tween{
Object=p,EndProperties={Position=w}}end self:CheckConfig(o,{Enabled=true,
OnUpdate=y,SetPosition=z,DragBegin=x})self:ConnectDrag(q,{DragStart=v,
DragMovement=w,OnDragStateChange=r})local A=o.Enabled s:SetEnabled(A)return s
end function b:MakeResizable(o)b:CheckConfig(o,{MinimumSize=Vector2.new(160,90),
MaximumSize=Vector2.new(math.huge,math.huge)})local p,q,r,s,t=o.MaximumSize,o.
MinimumSize,o.Resize,(o.OnUpdate)local u=b:InsertPrefab('ResizeGrab',{Parent=r})
local v,w,x=function(v)u.Visible=v.Enabled end,function(v)local w=t+v local x=
UDim2.fromOffset(math.clamp(w.X,q.X,p.X),math.clamp(w.Y,q.Y,p.Y))if s then s(x)
return end d:Tween{Object=r,EndProperties={Size=x}}end,function(v)t=r.
AbsoluteSize end local y=self:MakeDraggable{Grab=u,OnUpdate=w,DragBegin=x,
StateChanged=v}y.Grab=u return y end function b:IsMouseEvent(o,p)local q=o.
UserInputType.Name if p and q:find'Movement'then return end return q:find'Touch'
or q:find'Mouse'end function b:DetectHover(o,p)local q=p or{}q.Hovering=false
local r,s,t,u,v,w=q.OnInput,q.OnHoverChange,q.Anykey,q.MouseMove,q.MouseEnter,q.
MouseOnly local x=function(x,y,z)if x and w then if not b:IsMouseEvent(x,true)
then return end end if y~=nil then local A=q.Hovering q.Hovering=y if y~=A and s
then s(y)end end if not v and z then return end if r then local A=q.Hovering r(A
,x)return end end local y={o.MouseEnter:Connect(function()x(nil,true,true)end),o
.MouseLeave:Connect(function()x(nil,false,true)end)}if t or w then table.insert(
y,j.InputBegan:Connect(function(z)x(z)end))end if u then local z=o.MouseMoved:
Connect(function()x()end)table.insert(y,z)end function q:Disconnect()for z,A in
next,y do A:Disconnect()end end return q end function b:StackWindows()local o,p=
self.Windows,20 for q,r in next,o do local s,t=r.WindowFrame,UDim2.fromOffset(p*
q,p*q)r:Center()s.Position+=t end end function b:GetElementFlags(o)local p=self.
_FlagCache return p[o]end function b:UpdateColors(o)local p,q,r,s,t,u,v=o.Object
,o.Tag,o.NoAnimation,o.TagsList,o.Theme,o.Tweeninfo,self.ElementColors local w,x
,y=self:GetElementFlags(p),self.Debug,v[q]if typeof(y)=='string'then y=v[y]end
if typeof(q)=='table'then y=q elseif s then s[p]=q end if not y then return end
local z={}for A,B in next,y do local C=self:GetThemeKey(t,B)if w and w[A]then
continue end if not C then if x then self:Warn(`Color: '{B}' does not exist!`)
end continue end z[A]=C end d:Tween{Tweeninfo=u,Object=p,NoAnimation=r,
EndProperties=z}end function b:MultiUpdateColors(o)local p=o.Objects for q,r in
next,p do self:UpdateColors{TagsList=o.TagsList,Theme=o.Theme,NoAnimation=not o.
Animate,Tweeninfo=o.Tweeninfo,Object=q,Tag=r}end end function b:ApplyStyle(o,p)
local q=self.Styles local r=q[p]if not r then return end self:ApplyFlags{Object=
o,Class=r}end function b:ClassIgnores(o)local p=self.ClassIgnored local q=table.
find(p,o)return q and true or false end function b:MergeMetatables(o,p)local q,r
=self.Debug,{}r.__index=function(s,t)local u,v=self:ClassIgnores(t),o[t]if v~=
nil and not u then return v end local w,x=pcall(function()local w=p[t]return
self:PatchSelf(p,w)end)return w and x or nil end r.__newindex=function(s,t,u)
local v,w=self:ClassIgnores(t),typeof(u)=='function'local x=o[t]~=nil or w if x
and not v then o[t]=u return end xpcall(function()p[t]=u end,function(y)if q
then self:Warn(`Newindex Error: {p}.{t} = {u}\n{y}`)end o[t]=u end)end return
setmetatable({},r)end function b:Concat(o,p)local q=''for r,s in next,o do q..=
tostring(s)..(r~=#o and p or'')end return q end function b:GetValueFromAliases(o
,p)for q,r in o do local s=p[r]if s~=nil then return s end end return nil end
function b:RecursiveCall(o,p)for q,r in next,o:GetDescendants()do p(r)end end
function b:ApplyFlags(o)local p,q,r,s=self.ElementFlags,o.Object,o.Class,o.
WindowClass function o:GetThemeKey(t)if s then return s:GetThemeKey(t)else
return b:GetThemeKey(nil,t)end end self:SetProperties(q,r)for t,u in next,p do
local v,w,x,y=u.Properties,u.Callback,u.Recursive,u.WindowProperties local z=
self:GetValueFromAliases(v,r)if s and y and z==nil then z=self:
GetValueFromAliases(y,s)end if z==nil then continue end w(o,q,z)if x then self:
RecursiveCall(q,function(A)w(o,A,z)end)end end end function b:SetProperties(o,p)
return c:SetProperties(o,p)end function b:InsertPrefab(o,p)local q=self.Prefabs
local r=q.Prefabs local s=r:WaitForChild(o)local t=s:Clone()if p then local u=p.
UsePropertiesList if not u then self:SetProperties(t,p)else self:ApplyFlags{
Object=t,Class=p}end end return t end function b:GetContentSize(o,p)local q,r,s,
t=o:FindFirstChildOfClass'UIListLayout',o:FindFirstChildOfClass'UIPadding',(o:
FindFirstChildOfClass'UIStroke')if q and not p then t=q.AbsoluteContentSize else
t=o.AbsoluteSize end if r then local u,v,w,x=r.PaddingTop.Offset,r.PaddingBottom
.Offset,r.PaddingLeft.Offset,r.PaddingRight.Offset t+=Vector2.new(w+x,u+v)end if
s then local u=s.Thickness t+=Vector2.new(u/2,u/2)end return t end function b:
PatchSelf(o,p,...)if typeof(p)~='function'then return p,...end return function(q
,...)return p(o,...)end end function b:MakeCanvas(o)local p,q,r,s,t,u,v=self.
Elements,self.Debug,o.Element,o.WindowClass,o.Class,o.OnChildChange,e:NewSignal(
)if u then v:Connect(u)end if not s and q then self:Warn(`No WindowClass for {r}`
)self:Warn(o)end local w=c:NewClass(p,{Class=t,RawObject=r,WindowClass=s or
false,OnChildChange=v,Elements={}})local x={__index=function(x,y)local z=w[y]if
z~=nil then return self:PatchSelf(w,z)end local A=t[y]if A~=nil then return self
:PatchSelf(t,A)end local B=r[y]return self:PatchSelf(r,B)end,__newindex=function
(x,y,z)local A=t[y]~=nil if A then t[y]=z else r[y]=z end end}return
setmetatable({},x)end function b:GetIniData(o)local p,q=self.IniToSave,{}for r,s
in next,p do q[s]=o[s]end return q end function b:DumpIni(o)local p,q=self.
IniSettings,{}for r,s in next,p do q[r]=self:GetIniData(s)end if o then return h
:JSONEncode(q)end return q end function b:LoadIniIntoElement(o,p)local q={Value=
function(q)o:SetValue(q)end}for r,s in next,p do local t=q[r]if t then t(s)
continue end o[r]=s end end function b:LoadIni(o,p)local q=self.IniSettings
assert(o,'No Ini configuration was passed')if p then o=h:JSONDecode(o)end for r,
s in next,o do local t=q[r]self:LoadIniIntoElement(t,s)end end function b:
AddIniFlag(o,p)local q=self.IniSettings q[o]=p end function b:OnElementCreate(o)
local p,q,r,s,t=self._FlagCache,o.Flags,o.Object,o.Canvas,o.Class local u,v,w,x,
y,z=s.WindowClass,q.NoAutoTag,q.NoAutoFlags,q.ColorTag,q.NoStyle,q.IniFlag p[r]=
q if z then self:AddIniFlag(z,t)end if y then return end if not v and u then u:
TagElements{[r]=x}end if u then u:LoadStylesIntoElement(o)end if not w then self
:ApplyFlags{Object=r,Class=q,WindowClass=u}end end function b:VisualError(o,p,q)
local r=self.Initialised and o.Error if not r then self:Error('Class:',q)return
end o:Error{Parent=p,Text=q}end function b:WrapGeneration(o,p)local q,r,s=self.
_ErrorCache,p.Base,p.IgnoreDefaults return function(t,u,...)u=u or{}self:
CheckConfig(u,r)local v=u.CloneTable if v then u=table.clone(u)end local w,x,y=t
.RawObject,t.Elements,t.OnChildChange self:CheckConfig(u,{Parent=w,Name=u.
ColorTag},nil,s)if t==self then t=self.Elements end local z,A,B=pcall(o,t,u,...)
if z==false then if w then if q[w]then return end q[w]=A end self:VisualError(t,
w,A)self:Error('Class:',A)self:Error(debug.traceback())end if B==nil then B=A
end if y then y:Fire(A)end if B then if x then table.insert(x,B)end self:
OnElementCreate{Object=B,Flags=u,Class=A,Canvas=t}end return A,B end end
function b:DefineElement(o,p)local q,r,s=self.Elements,self.ThemeConfigs,self.
ElementColors local t,u,v,w,x,y=r.DarkTheme,p.Base,p.Create,p.Export,p.ThemeTags
,p.ColorData self:CheckConfig(u,{ColorTag=o,ElementStyle=o})if x then Merge(t,x)
end if y then Merge(s,y)end local z=self:WrapGeneration(v,p)if w then self[o]=z
end q[o]=z return z end function b:DefineGlobalFlag(o)local p=self.ElementFlags
table.insert(p,o)end function b:DefineTheme(o,p)local q=self.ThemeConfigs self:
CheckConfig(p,{BaseTheme=q.DarkTheme})local r=GetAndRemove('BaseTheme',p)local s
={BaseTheme=r,Values=p}q[o]=s return s end function b:GetMouseLocation()local o=
self.Mouse return o.X,o.Y end function b:SetWindowFocusesEnabled(o)self.
WindowFocusesEnabled=o end function b:UpdateWindowFocuses()local o,p=self.
Windows,self.WindowFocusesEnabled if not p then return end for q,r in o do local
s=r.HoverConnection if not s then continue end local t=s.Hovering if t then self
:SetFocusedWindow(r)return end end self:SetFocusedWindow(nil)end function b:
WindowCanFocus(o)if o.NoSelect then return false end if o.Collapsed then return
false end if o._SelectDisabled then return false end return true end function b:
GetFocusedWindow()return self.FocusedWindow end function b:BringWindowToFront(o)
local p,q=self.Windows,o.NoBringToFrontOnFocus if q then return end
MoveTableItem(p,o,1)end function b:SetFocusedWindow(o)local p,q=self:
GetFocusedWindow(),self.Windows if p==o then return end self.FocusedWindow=o if
o then local r=self:WindowCanFocus(o)if not r then return end self:
BringWindowToFront(o)end local r=#q for s,t in q do local u,v=self:
WindowCanFocus(t),t.WindowFrame if not u then continue end r-=1 if r then v.
ZIndex=r end local w=t==o t:SetFocused(w,r)end end function b:SetItemTooltip(o,p
)local q,r,s=self.Elements,self.TooltipsContainer,self.ActiveTooltips local t,u=
r:Canvas{Visible=false,UiPadding=UDim.new()}task.spawn(p,t)b:DetectHover(o,{
MouseMove=true,MouseEnter=true,OnHoverChange=function(v)if v then table.insert(s
,t)return end local w=table.find(s,t)table.remove(s,w)end,OnInput=function(v,w)u
.Visible=v end})end function b:CheckFlags(o,p)for q,r in next,o do local s=p[q]
if not s then continue end r(s)end end function b:GetThemeKey(o,p)local q=self.
ThemeConfigs if typeof(o)=='string'then o=q[o]end local r=q.DarkTheme o=o or r
local s,t=o.BaseTheme,o.Values local u=t[p]if u then return u end if s then
return self:GetThemeKey(s,p)end return end function b:SelectionGroup(o)local p,q
,r=false,function(p,q)for r,s in next,o do if typeof(s)=='Instance'then continue
end if s==q then continue end p(s)end end local s=function(s)if p then return
end p=true local t=r r=s:GetValue()if not t then t=r end q(function(u)u:
SetValue(t)end,s)p=false end q(function(t)t.Callback=s end)end local o=b.
Elements o.__index=o function o:GetObject()return self.RawObject end function o:
ApplyFlags(p,q)local r=self.WindowClass b:ApplyFlags{WindowClass=r,Object=p,
Class=q}end function o:Remove()local p,q,r=self.OnChildChange,self:GetObject(),
self.Class local s=r.Remove if s then return s(r)end if p then p:Fire(r or self)
end if r then table.clear(r)end q:Destroy()table.clear(self)end function o:
GetChildElements()local p=self.Elements return p end function o:
ClearChildElements()local p=self:GetChildElements()for q,r in next,p do r:
Destroy()end end function o:TagElements(p)local q,r=self.WindowClass,b.Debug if
not q then if r then b:Warn('No WindowClass for TagElements:',p)end return end q
:TagElements(p)end function o:GetThemeKey(p)local q=self.WindowClass if q then
return q:GetThemeKey(p)end return b:GetThemeKey(nil,p)end function o:
SetColorTags(p,q)local r=self.WindowClass if not r then return end local s,t=r.
TagsList,r.Theme b:MultiUpdateColors{Animate=q,Theme=t,TagsList=s,Objects=p}end
function o:SetElementFocused(p,q)local r,s,t,u=self.WindowClass,b.HasTouchScreen
,q.Focused,q.Animation b:SetAnimationsEnabled(not t)if not t and u then u:
Refresh()end if not r then return end if not s then return end local v=r.
ContentCanvas v.Interactable=not t end b:DefineElement('Dropdown',{Base={
ColorTag='PopupCanvas',Disabled=false,AutoClose=true,OnSelected=n},Create=
function(p,q)q.Parent=b.Container.Overlays local r,s,t,u,v=q.Selected,q.Items,q.
OnSelected,p:PopupCanvas(q)local w,x,y=b:MergeMetatables(q,u),{},function(w)t(w)
end function q:ClearEntries()for z,A in x do A:Remove()end end function q:
SetItems(z,A)local B=z[1]self:ClearEntries()for C,D in z do local E,F=B and D or
C,C==A or D==A local G=u:Selectable{Text=tostring(E),Selected=F,ZIndex=6,
Callback=function()return y(E)end}table.insert(x,G)end end if s then q:SetItems(
s,r)end return w,v end})b:DefineElement('OverlayScroll',{Base={ElementClass=
'OverlayScroll',Spacing=UDim.new(0,4)},Create=function(p,q)local r,s,t=p.
WindowClass,q.ElementClass,q.Spacing local u=b:InsertPrefab(s,q)local v,w=u:
FindFirstChild'ContentFrame'or u,u:FindFirstChild('UIListLayout',true)w.Padding=
t local x=b:MergeMetatables(p,q)local y=b:MakeCanvas{Element=v,WindowClass=r,
Class=x}function q:GetCanvasSize()return v.AbsoluteCanvasSize end return y,u end
})b:DefineElement('Overlay',{Base={ElementClass='Overlay'},Create=o.
OverlayScroll})b:DefineElement('Image',{Base={Image='',Callback=n},Create=
function(p,q)local r=b:InsertPrefab('Image',q)r.Activated:Connect(function(...)
local s=q.Callback return s(r,...)end)return r end})b:DefineElement(
'VideoPlayer',{Base={Video='',Callback=n},Create=function(p,q)local r=q.Video q.
Video=c:CheckAssetUrl(r)local s=b:InsertPrefab('VideoPlayer',q)return s end})b:
DefineElement('Button',{Base={Text='Button',DoubleClick=false,Callback=n},Create
=function(p,q)local r=b:InsertPrefab('Button',q)local s,t=b:MergeMetatables(q,r)
,q.DoubleClick function q:SetDisabled(u)self.Disabled=u end b:ConnectMouseEvent(
r,{DoubleClick=t,Callback=function(...)if q.Disabled then return end local u=q.
Callback return u(s,...)end})return s,r end})b:DefineElement('Selectable',{Base=
{Text='Selectable',Callback=n,Selected=false,Disabled=false,Size=UDim2.
fromScale(1,0),AutomaticSize=Enum.AutomaticSize.Y,TextXAlignment=Enum.
TextXAlignment.Left,AnimationTags={Selected='Buttons',Unselected=
'TransparentButtons'}},Create=function(p,q)local r,s,t,u=p.Class.AfterClick,q.
Selected,q.Disabled,b:InsertPrefab('Button',q)local v=b:MergeMetatables(q,u)u.
Activated:Connect(function(...)local w=q.Callback w(u,...)if r then r(u,...)end
end)function q:SetSelected(w)local x=self.AnimationTags local y=w and x.Selected
or x.Unselected self.Selected=w b:SetAnimation(u,y)return self end function q:
SetDisabled(w)self.Disabled=w u.Interactable=not w return self end q:
SetSelected(s)q:SetDisabled(t)return v,u end})b:DefineElement('ImageButton',{
Base={ElementStyle='Button',Callback=n},Create=o.Image})b:DefineElement(
'SmallButton',{Base={Text='Button',PaddingTop=UDim.new(),PaddingBottom=UDim.new(
),PaddingLeft=UDim.new(0,2),PaddingRight=UDim.new(0,2),ColorTag='Button',
ElementStyle='Button',Callback=n},Create=o.Button})b:DefineElement('Keybind',{
Base={Label='Keybind',ColorTag='Frame',Value=nil,DeleteKey=Enum.KeyCode.
Backspace,IgnoreGameProcessed=true,Enabled=true,Disabled=false,Callback=n,
OnKeybindSet=n,OnBlacklistedKeybindSet=n,KeyBlacklist={},UiPadding=UDim.new(),
AutomaticSize=Enum.AutomaticSize.None,Size=UDim2.new(0.3,0,0,19)},Create=
function(p,q)local r,s,t,u,v=q.Value,q.Label,q.Disabled,q.KeyBlacklist,b:
InsertPrefab('Button',q)local w,x,y,z=b:MergeMetatables(q,v),p:Label{Parent=v,
Text=s,Position=UDim2.new(1,4,0.5),AnchorPoint=Vector2.new(0,0.5)},function(w,
...)return w(v,...)end,function(w)return table.find(u,w)end function q:
SetDisabled(A)self.Disabled=A v.Interactable=not A p:SetColorTags({[x]=A and
'LabelDisabled'or'Label'},true)return self end function q:SetValue(A)local B,C=
self.OnKeybindSet,self.DeleteKey if A==C then A=nil end self.Value=A v.Text=A
and A.Name or'Not set'y(B,A)return self end function q:WaitForNewKey()self.
_WaitingForNewKey=true v.Text='...'v.Interactable=false end local A=function(A)
local B,C=A.KeyCode,A.UserInputType if C~=Enum.UserInputType.Keyboard then
return C end return B end local B=function(B)local C,D,E=q.
OnBlacklistedKeybindSet,q.Value,A(B)if not j.WindowFocused then return end if z(
E)then y(C,E)return end v.Interactable=true q._WaitingForNewKey=false if E.Name
=='Unknown'then return q:SetValue(D)end q:SetValue(E)return end local C=function
(C,D)local E,F,G,H,I,J=q.IgnoreGameProcessed,q.DeleteKey,q.Enabled,q.Value,q.
Callback,A(C)if q._WaitingForNewKey then B(C)return end if not G and v.
Interactable then return end if not E and D then return end if not H then return
end if J==F then return end if J.Name~=H.Name then return end y(I,J)end q:
SetValue(r)q:SetDisabled(t)q.Connection=j.InputBegan:Connect(C)v.Activated:
Connect(function()q:WaitForNewKey()end)b:SetAnimation(v,'Inputs')return w,v end}
)b:DefineElement('ArrowButton',{Base={Direction='Left',ColorTag='Button',Icon=b.
Icons.Arrow,Size=UDim2.fromOffset(21,21),IconSize=UDim2.fromScale(1,1),
IconPadding=UDim.new(0,4),Rotations={Left=180,Right=0}},Create=function(p,q)
local r,s=q.Direction,q.Rotations local t=s[r]q.IconRotation=t local u=b:
InsertPrefab('ArrowButton',q)u.Activated:Connect(function(...)local v=q.Callback
return v(u,...)end)return u end})b:DefineElement('Label',{Base={Font=
'Inconsolata'},ColorData={LabelPadding={PaddingTop='LabelPaddingTop',
PaddingBottom='LabelPaddingBottom'}},Create=function(p,q)local r,s,t,u,v,w,x,y=q
.Bold,q.Italic,q.Font,q.FontFace,Enum.FontWeight.Medium,Enum.FontWeight.Bold,
Enum.FontStyle.Normal,Enum.FontStyle.Italic local z,A,B=r and w or v,s and y or
x,r or s if not u and B then q.FontFace=Font.fromName(t,z,A)end local C=b:
InsertPrefab('Label',q)local D=C:FindFirstChildOfClass'UIPadding'p:TagElements{[
D]='LabelPadding'}return C end})b:DefineElement('Error',{Base={RichText=true,
TextWrapped=true},ColorData={Error={TextColor3='ErrorText',FontFace='TextFont'}}
,Create=function(p,q)local r=q.Text q.Text=`<b>\226\155\148 Error:</b> {r}`
return p:Label(q)end})local p={Engaged=false}p.__index=p function p:SetEngaged(q
)local r=self.WindowClass self.Engaged=q if r then r:SetCanvasInteractable(not q
)end end function p:IsHovering()local q=false self:Foreach(function(r)q=r.Popup:
IsMouseHovering()return q end)return q end function p:Foreach(q)local r=self.
Menus for s,t in next,r do local u=q(t)if u then break end end end function p:
SetFocusedMenu(q)self:Foreach(function(r)local s=r==q r:SetActiveState(s)end)end
function p:Close()self:SetEngaged(false)self:SetFocusedMenu(nil)end function p:
MenuItem(q)local r,s=self.Canvas,self.Menus local t=r:MenuButton(q)local u=r:
PopupCanvas{RelativeTo=t,MaxSizeX=210,Visible=false,AutoClose=false,AfterClick=
function()self:Close()end}local v={Popup=u,Button=t}b:DetectHover(t,{MouseEnter=
true,OnInput=function()if not self.Engaged then return end self:SetFocusedMenu(v
)end})function v:SetActiveState(w)u:SetPopupVisible(w)t:SetSelected(w)end t.
Activated:Connect(function()self:SetFocusedMenu(v)self:SetEngaged(true)end)table
.insert(s,v)return u,v end b:DefineElement('MenuBar',{Base={},Create=function(q,
r)local s,t=q.WindowClass,b:InsertPrefab('MenuBar',r)local u=b:MakeCanvas{
Element=t,WindowClass=s,Class=r}local v=c:NewClass(p,{WindowClass=s,Canvas=u,
Object=t,Menus={}})Merge(v,r)b:DetectHover(t,{MouseOnly=true,OnInput=function()
if not v.Engaged then return end if v:IsHovering()then return end v:Close()end})
local w=b:MergeMetatables(v,u)return w,t end})b:DefineElement('MenuButton',{Base
={Text='MenuButton',PaddingLeft=UDim.new(0,8),PaddingRight=UDim.new(0,8),Size=
UDim2.fromOffset(0,19),AutomaticSize=Enum.AutomaticSize.XY},Create=o.Selectable}
)local q={ColorTags={BGSelected={[true]='SelectedTab',[false]='DeselectedTab'},
LabelSelected={[true]='SelectedTabLabel',[false]='DeselectedTabLabel'}}}function
q:SetButtonSelected(r,s)if r.IsSelected==s then return end r.IsSelected=s local
t,u,v=self.NoAnimation,self.WindowClass,self.ColorTags local w,x,y,z,A=u.Theme,u
.TagsList,v.BGSelected,v.LabelSelected,r.TabButton local B=A.Button local C=B.
Label b:MultiUpdateColors{Animate=not t,Theme=w,TagsList=x,Objects={[B]=y[s],[C]
=z[s]}}end function q:CompareTabs(r,s)if not r then return false end return r.
MatchBy==s or r==s end function q:ForEachTab(r,s)local t,u=typeof(r)=='string',
self.Tabs for v,w in u do local x,y=w.Name,false if t then y=x==r else y=self:
CompareTabs(w,r)end s(w,y,v)end end function q:RemoveTab(r)local s,t=self.
OnTabRemove,self.Tabs self:ForEachTab(r,function(u,v,w)if not v then return end
local x,y=u.TabButton,u.OnClosure table.remove(t,w)x:Destroy()s(self,u)y(u)end)
return self end function q:CreateTab(r)r=r or{}b:CheckConfig(r,{Name='Tab',
AutoSize='Y',Focused=false,OnClosure=n})local s,t,u,v,w,x,y,z,A=self.
AutoSelectNewTabs,self.WindowClass,self.ParentCanvas,self.Tabs,self.TabsFrame,
self.OnTabCreate,r.Focused,r.Name,r.Icon local B,C=y or#v<=0 and s,b:
InsertPrefab('TabButton',r)C.Parent=w local D=C.Button local E,F=D:
FindFirstChildOfClass'UIPadding',D.Label F.Text=tostring(z)Merge(r,{TabButton=C}
)local G,H=function()self:SetActiveTab(r)end,{Closeable=function()local G=u:
RadioButton{Parent=D,Visible=not self.NoClose,Icon=b.Icons.Close,IconSize=UDim2.
fromOffset(11,11),LayoutOrder=3,ZIndex=2,UsePropertiesList=true,Callback=
function()self:RemoveTab(r)end}local H=G.Icon b:SetAnimation(H,{Connections={
MouseEnter={ImageTransparency=0},MouseLeave={ImageTransparency=1}},Init=
'MouseLeave'},C)end}D.Activated:Connect(G)b:CheckFlags(H,r)table.insert(v,r)if t
then t:TagElements{[E]='TabPadding'}end b:SetAnimation(D,'Buttons')self:
SetButtonSelected(r,B)u:ApplyFlags(C,r)local I=x(self,r)if B then self:
SetActiveTab(r)end return I or r end function q:SetActiveTab(r)local s,t,u,v,w,x
=nil,self.Tabs,self.NoAnimation,self.ActiveTab,self.OnActiveTabChange,typeof(r)
=='string'self:ForEachTab(r,function(y,z,A)if z then s=y end self:
SetButtonSelected(y,z)end)if not s then return self end if self:CompareTabs(s,v)
then return self end self.ActiveTab=s w(self,s,v)return self end b:
DefineElement('TabBar',{Base={AutoSelectNewTabs=true,OnActiveTabChange=n,
OnTabCreate=n,OnTabRemove=n},ColorData={DeselectedTab={BackgroundColor3='TabBg'}
,SelectedTab={BackgroundColor3='TabBgActive'},DeselectedTabLabel={FontFace=
'TextFont',TextColor3='TabText'},SelectedTabLabel={FontFace='TextFont',
TextColor3='TabTextActive'},TabsBarSeparator={BackgroundColor3='TabBgActive'},
TabPadding={PaddingTop='TabTextPaddingTop',PaddingBottom='TabTextPaddingBottom'}
,TabPagePadding={PaddingBottom='TabPagePadding',PaddingLeft='TabPagePadding',
PaddingRight='TabPagePadding',PaddingTop='TabPagePadding'}},Create=function(r,s)
local t,u,v=r.WindowClass,b:InsertPrefab('TabsBar',s),c:NewClass(q)local w,x=u.
Separator,u.TabsFrame local y=b:MakeCanvas{Element=x,WindowClass=t,Class=v}
Merge(v,s)Merge(v,{ParentCanvas=r,Object=u,TabsFrame=x,WindowClass=t,Tabs={}})r:
TagElements{[u]='TabsBar',[w]='TabsBarSeparator'}local z=b:MergeMetatables(y,u)
return z,u end})b:DefineElement('TabSelector',{Base={NoTabsBar=false,
OnActiveTabChange=n,OnTabCreate=n,OnTabRemove=n},Create=function(r,s)local t,u,v
,w=r.WindowClass,s.NoTabsBar,s.NoAnimation,b:InsertPrefab('TabSelector',s)local
x=w.Body local y=x.PageTemplate y.Visible=false local z,A=function(z,A,...)local
B,C,D=A.AutoSize,A.Name,y:Clone()local E=c:GetChildOfClass(D,'UIPadding')b:
SetProperties(D,{Parent=x,Name=C,AutomaticSize=Enum.AutomaticSize[B],Size=UDim2.
fromScale(B=='Y'and 1 or 0,B=='X'and 1 or 0)})r:TagElements{[E]='TabPagePadding'
}local F=b:MakeCanvas{Element=D,WindowClass=t,Class=A}s.OnTabCreate(z,A,...)
Merge(A,{Page=D,MatchBy=F})return F end,function(z,A,...)z:ForEachTab(A,function
(B,C,D)local E=B.Page E.Visible=C if not C then return end local F=r:GetThemeKey
'AnimationTweenInfo'd:Tween{Object=E,Tweeninfo=F,NoAnimation=v,StartProperties={
Position=UDim2.fromOffset(0,4)},EndProperties={Position=UDim2.fromOffset(0,0)}}
end)s.OnActiveTabChange(z,A,...)end local B=r:TabBar{Parent=w,Visible=not u,
OnTabCreate=z,OnActiveTabChange=A,OnTabRemove=function(B,C,...)C.Page:Remove()s.
OnTabRemove(...)end}local C=b:MergeMetatables(B,w)return C,w end})b:
DefineElement('RadioButton',{Base={Callback=n},Create=function(r,s)local t=b:
InsertPrefab('RadioButton',s)t.Activated:Connect(function(...)local u=s.Callback
return u(t,...)end)return t end})b:DefineElement('Checkbox',{Base={Label=
'Checkbox',IsRadio=false,Value=false,NoAutoTag=true,TickedImageSize=UDim2.
fromScale(1,1),UntickedImageSize=UDim2.fromScale(0,0),Callback=n,Disabled=false}
,Create=function(r,s)local t,u,v,w,x,y,z=s.IsRadio,s.Value,s.Label,s.
TickedImageSize,s.UntickedImageSize,s.Disabled,b:InsertPrefab('CheckBox',s)local
A,B=b:MergeMetatables(s,z),z.Tickbox local C=B.Tick C.Image=b.Icons.Checkmark
local D,E,F,G=B:FindFirstChildOfClass'UIPadding',c:GetChildOfClass(B,'UICorner')
,r:Label{Text=v,Parent=z,LayoutOrder=2},UDim.new(0,3)if t then C.
ImageTransparency=1 C.BackgroundTransparency=0 E.CornerRadius=UDim.new(1,0)else
G=UDim.new(0,2)end b:SetProperties(D,{PaddingBottom=G,PaddingLeft=G,PaddingRight
=G,PaddingTop=G})local H,I=function(...)local H=s.Callback return H(A,...)end,
function(H,I)local J,K=r:GetThemeKey'AnimationTweenInfo',H and w or x d:Tween{
Object=C,Tweeninfo=J,NoAnimation=I,EndProperties={Size=K}}end function s:
SetDisabled(J)self.Disabled=J z.Interactable=not J r:SetColorTags({[F]=J and
'LabelDisabled'or'Label'},true)return self end function s:SetValue(J,K)self.
Value=J I(J,K)H(J)return self end function s:SetTicked(...)b:Warn
'Checkbox:SetTicked is deprecated, please use :SetValue'return self:SetValue(...
)end function s:Toggle()local J=not self.Value self.Value=J self:SetValue(J)
return self end local J=function()s:Toggle()end z.Activated:Connect(J)B.
Activated:Connect(J)s:SetValue(u,true)s:SetDisabled(y)b:SetAnimation(B,'Buttons'
,z)r:TagElements{[C]='CheckMark',[B]='Checkbox'}return A,z end})b:DefineElement(
'Radiobox',{Base={IsRadio=true,CornerRadius=UDim.new(1,0)},Create=o.Checkbox})b:
DefineElement('PlotHistogram',{Base={ColorTag='Frame',Label='Histogram'},Create=
function(r,s)local t,u,v=s.Label,s.Points,b:InsertPrefab('Histogram',s)local w,x
=b:MergeMetatables(s,v),v.Canvas local y=x.PointTemplate y.Visible=false r:Label
{Text=t,Parent=v,Position=UDim2.new(1,4)}local z b:SetItemTooltip(v,function(A)z
=A:Label()end)Merge(s,{_Plots={},_Cache={}})function s:GetBaseValues()local A,B=
self.Minimum,self.Maximum if A and B then return A,B end local C=self._Plots for
D,E in C do local F=E.Value if not A or F<A then A=F end if not B or F>B then B=
F end end return A,B end function s:UpdateGraph()local A,B,C=self._Plots,self:
GetBaseValues()if not B or not C then return end local D=C-B for E,F in A do
local G,H=F.Point,F.Value local I=(H-B)/D I=math.clamp(I,0.05,1)G.Size=UDim2.
fromScale(1,I)end return self end function s:Plot(A)local B,C,D=self._Plots,{},y
:Clone()local E=D.Bar b:SetProperties(D,{Parent=x,Visible=true})local F,G=b:
DetectHover(D,{MouseEnter=true,OnInput=function()C:UpdateTooltip()end}),{Object=
D,Point=E,Value=A}function C:UpdateTooltip()local H=C:GetPointIndex()z.Text=`{H}:\t{
G.Value}`end function C:SetValue(H)G.Value=H s:UpdateGraph()if F.Hovering then
self:UpdateTooltip()end end function C:GetPointIndex()return table.find(B,G)end
function C:Remove(H)table.remove(B,self:GetPointIndex())D:Remove()s:UpdateGraph(
)end table.insert(B,G)self:UpdateGraph()b:SetAnimation(E,'Plots',D)r:TagElements
{[E]='Plot'}return C end function s:PlotGraph(A)local B=self._Cache local C=#B-#
A if C>=1 then for D=1,C do local E=table.remove(B,D)if E then E:Remove()end end
end for D,E in A do local F=B[D]if F then F:SetValue(E)continue end B[D]=self:
Plot(E)end return self end if u then s:PlotGraph(u)end return w,v end})b:
DefineElement('Viewport',{Base={IsRadio=true},Create=function(r,s)local t,u,v=s.
Model,s.Camera,b:InsertPrefab('Viewport',s)local w,x=b:MergeMetatables(s,v),v.
Viewport local y=x.WorldModel if not u then u=b:CreateInstance('Camera',x)u.
CFrame=CFrame.new(0,0,0)end Merge(s,{Camera=u,WorldModel=y,Viewport=x})function
s:SetCamera(z)self.Camera=z x.CurrentCamera=z return self end function s:
SetModel(z,A)local B=self.Clone y:ClearAllChildren()if B then z=z:Clone()end if
A then z:PivotTo(A)end z.Parent=y self.Model=z return z end if t then s:
SetModel(t)end s:SetCamera(u)return w,v end})b:DefineElement('InputText',{Base={
Value='',Placeholder='',Label='Input text',Callback=n,MultiLine=false,NoAutoTag=
true,Disabled=false},Create=function(r,s)local t,u,v,w,x,y=s.MultiLine,s.
Placeholder,s.Label,s.Disabled,s.Value,b:InsertPrefab('InputBox',s)local z=y.
Frame local A,B=z.Input,b:MergeMetatables(s,y)r:Label{Parent=y,Text=v,
AutomaticSize=Enum.AutomaticSize.X,Size=UDim2.fromOffset(0,19),Position=UDim2.
new(1,4),LayoutOrder=2}b:SetProperties(A,{PlaceholderText=u,MultiLine=t})local C
=function(...)local C=s.Callback C(B,...)end function s:SetValue(D)A.Text=
tostring(D)self.Value=D return self end function s:SetDisabled(D)self.Disabled=D
y.Interactable=not D r:SetColorTags({[v]=D and'LabelDisabled'or'Label'},true)
return self end function s:Clear()A.Text=''return self end local D=function()
local D=A.Text s.Value=D C(D)end A:GetPropertyChangedSignal'Text':Connect(D)s:
SetDisabled(w)s:SetValue(x)r:TagElements{[A]='Frame'}return B,y end})b:
DefineElement('InputInt',{Base={Value=0,Increment=1,Placeholder='',Label=
'Input Int',Callback=n},Create=function(r,s)local t,u,v,w,x,y=s.Value,s.
Placeholder,s.Label,s.Disabled,s.NoButtons,b:InsertPrefab('InputBox',s)local z,A
=b:MergeMetatables(s,y),y.Frame local B=A.Input B.PlaceholderText=u local C,D,E,
F=r:Button{Text='-',Parent=A,LayoutOrder=2,Ratio=1,AutomaticSize=Enum.
AutomaticSize.None,FlexMode=Enum.UIFlexMode.None,Size=UDim2.fromScale(1,1),
Visible=not x,Callback=function()s:Decrease()end},r:Button{Text='+',Parent=A,
LayoutOrder=3,Ratio=1,AutomaticSize=Enum.AutomaticSize.None,FlexMode=Enum.
UIFlexMode.None,Size=UDim2.fromScale(1,1),Visible=not x,Callback=function()s:
Increase()end},r:Label{Parent=y,Text=v,AutomaticSize=Enum.AutomaticSize.X,Size=
UDim2.fromOffset(0,19),Position=UDim2.new(1,4),LayoutOrder=4},function(...)local
C=s.Callback C(z,...)end function s:Increase()local G,H=self.Value,self.
Increment s:SetValue(G+H)end function s:Decrease()local G,H=self.Value,self.
Increment s:SetValue(G-H)end function s:SetDisabled(G)self.Disabled=G y.
Interactable=not G r:SetColorTags({[E]=G and'LabelDisabled'or'Label'},true)
return self end function s:SetValue(G)local H,I,J=self.Value,self.Minimum,self.
Maximum G=tonumber(G)if not G then G=H end if I and J then G=math.clamp(G,I,J)
end B.Text=G s.Value=G F(G)return self end local G=function()local G=B.Text s:
SetValue(G)end s:SetValue(t)s:SetDisabled(w)B.FocusLost:Connect(G)r:TagElements{
[D]='Button',[C]='Button',[B]='Frame'}return z,y end})b:DefineElement(
'InputTextMultiline',{Base={Label='',Size=UDim2.new(1,0,0,39),Border=false,
ColorTag='Frame'},Create=function(r,s)return r:Console(s)end})b:DefineElement(
'Console',{Base={Enabled=true,Value='',TextWrapped=false,Border=true,MaxLines=
300,LinesFormat='%s',Callback=n},Create=function(r,s)local t,u,v,w,x=s.ReadOnly,
s.LineNumbers,s.Value,s.Placeholder,b:InsertPrefab('Console',s)local y,z,A=b:
MergeMetatables(s,x),x.Source,x.Lines A.Visible=u function s:CountLines(B)local
C=z.Text:split'\n'local D=#C if D==1 and C[1]==''then return 0 end return D end
function s:UpdateLineNumbers()local B,C=self.LineNumbers,self.LinesFormat if not
B then return end local D=self:CountLines()A.Text=''for E=1,D do local F,G=C:
format(E),E~=D and'\n'or''A.Text..=`{F}{G}`end local E=A.AbsoluteSize.X z.Size=
UDim2.new(1,-E,0,0)return self end function s:CheckLineCount()local B=s.MaxLines
if not B then return end local C=z.Text local D=C:split'\n'if#D>B then local E=`{
D[1]}\\n`local F=C:sub(#E)self:SetValue(F)end return self end function s:
UpdateScroll()local B=x.AbsoluteCanvasSize x.CanvasPosition=Vector2.new(0,B.Y)
return self end function s:SetValue(B)if not self.Enabled then return end z.Text
=tostring(B)self:Update()return self end function s:GetValue()return z.Text end
function s:Clear()z.Text=''self:Update()return self end function s:AppendText(
...)local B,C=self:CountLines(true),b:Concat({...},' ')if B==0 then return self:
SetValue(C)end local D=self:GetValue()local E=`{D}\n{C}`self:SetValue(E)return
self end function s:Update()local B=self.AutoScroll self:CheckLineCount()self:
UpdateLineNumbers()if B then self:UpdateScroll()end end local B=function()local
B=s:GetValue()s:Update()s:Callback(B)end s:SetValue(v)b:SetProperties(z,s)b:
SetProperties(z,{TextEditable=not t,Parent=x,PlaceholderText=w})r:TagElements{[z
]='ConsoleText',[A]='ConsoleLineNumbers'}z:GetPropertyChangedSignal'Text':
Connect(B)return y,x end})b:DefineElement('Table',{Base={VerticalAlignment=Enum.
VerticalAlignment.Top,RowBackground=false,RowBgTransparency=0.87,Border=false,
Spacing=UDim.new(0,4)},Create=function(r,s)local t,u,v,w,x,y,z,A=r.WindowClass,s
.RowBgTransparency,s.RowBackground,s.Border,s.VerticalAlignment,s.MaxColumns,s.
Spacing,b:InsertPrefab('Table',s)local B,C,D,E,F=b:MergeMetatables(s,A),A.
RowTemp,0,{},w and v function s:Row(G)G=G or{}local H,I,J,K=G.IsHeader,0,{},C:
Clone()b:SetProperties(K,{Name='Row',Visible=true,Parent=A})local L=K:
FindFirstChildOfClass'UIListLayout'b:SetProperties(L,{VerticalAlignment=x,
Padding=not F and z or UDim.new(0,1)})if H then r:TagElements{[K]='Header'}else
D+=1 end if v and not H then local M=D%2~=1 and u or 1 K.BackgroundTransparency=
M end local M={}local N=b:MergeMetatables(M,K)function M:Column(O)O=O or{}b:
CheckConfig(O,{HorizontalAlign=Enum.HorizontalAlignment.Left,VerticalAlignment=
Enum.VerticalAlignment.Top})local P=K.ColumnTemp:Clone()local Q=P:
FindFirstChildOfClass'UIListLayout'b:SetProperties(Q,O)local R=P:
FindFirstChildOfClass'UIStroke'R.Enabled=w local S=P:FindFirstChildOfClass
'UIPadding'if not F then S:Destroy()end b:SetProperties(P,{Parent=K,Visible=true
,Name='Column'})return b:MakeCanvas{Element=P,WindowClass=t,Class=N}end function
M:NextColumn()I+=1 local O=I%y+1 local P=J[O]if not P then P=self:Column()J[O]=P
end return P end table.insert(E,M)return N end function s:NextRow()return self:
Row()end function s:HeaderRow()return self:Row{IsHeader=true}end function s:
ClearRows()D=0 for G,H in next,A:GetChildren()do if not H:IsA'Frame'then
continue end if H==C then continue end H:Destroy()end return s end return B,A
end})b:DefineElement('List',{Base={Spacing=4,HorizontalFlex=Enum.UIFlexAlignment
.None,VerticalFlex=Enum.UIFlexAlignment.None,HorizontalAlignment=Enum.
HorizontalAlignment.Left,VerticalAlignment=Enum.VerticalAlignment.Top,
FillDirection=Enum.FillDirection.Horizontal},Create=function(r,s)local t,u,v,w,x
,y,z,A=r.WindowClass,s.Spacing,s.HorizontalFlex,s.VerticalFlex,s.
HorizontalAlignment,s.VerticalAlignment,s.FillDirection,b:InsertPrefab('List',s)
local B,C=b:MergeMetatables(s,A),A.UIListLayout b:SetProperties(C,{Padding=UDim.
new(0,u),HorizontalFlex=v,VerticalFlex=w,HorizontalAlignment=x,VerticalAlignment
=y,FillDirection=z})local D=b:MakeCanvas{Element=A,WindowClass=t,Class=B}return
D,A end})b:DefineElement('CollapsingHeader',{Base={Title='Collapsing Header',
CollapseIcon=b.Icons.Arrow,Collapsed=true,Offset=0,NoAutoTag=true,NoAutoFlags=
true,IconPadding=UDim.new(0,4),Activated=n},Create=function(r,s)local t,u,v,w,x,
y,z,A,B,C,D,E=s.Title,s.Collapsed,s.ElementStyle,s.Offset,s.TitleBarProperties,s
.OpenOnDoubleClick,s.OpenOnArrow,s.CollapseIcon,s.IconPadding,s.Icon,s.NoArrow,b
:InsertPrefab('CollapsingHeader',s)local F=E.TitleBar local G,H=F.Collapse,F.
Icon r:ApplyFlags(H,{Image=C})local I,J=G.CollapseIcon,G.UIPadding c:SetPadding(
J,B)r:ApplyFlags(I,{Image=A})local K,L,M=r:Label{ColorTag='CollapsingHeader',
Parent=F,LayoutOrder=2},r:Indent{Class=s,Parent=E,Offset=w,LayoutOrder=2,Size=
UDim2.fromScale(1,0),AutomaticSize=Enum.AutomaticSize.None,PaddingTop=UDim.new(0
,4),PaddingBottom=UDim.new(0,1)}local N=function()local N=s.Activated N(L)end
function s:Remove()E:Destroy()table.clear(self)end function s:SetArrowVisible(O)
I.Visible=O end function s:SetTitle(O)K.Text=O end function s:SetVisible(O)E.
Visible=O end function s:SetIcon(O)local P=O and O~=''H.Visible=P if P then H.
Image=c:CheckAssetUrl(O)end end function s:SetCollapsed(O)self.Collapsed=O local
P,Q,R=b:GetContentSize(M),L:GetThemeKey'AnimationTweenInfo',UDim2.fromScale(1,0)
local S=R+UDim2.fromOffset(0,P.Y)d:HeaderCollapse{Tweeninfo=Q,Collapsed=O,Toggle
=I,Resize=M,Hide=M,ClosedSize=R,OpenSize=S}return self end local O=function()s:
SetCollapsed(not s.Collapsed)end if x then L:ApplyFlags(F,x)end if not z then b:
ConnectMouseEvent(F,{DoubleClick=y,Callback=O})end I.Activated:Connect(O)F.
Activated:Connect(N)s:SetCollapsed(u)s:SetTitle(t)s:SetArrowVisible(not D)b:
ApplyStyle(F,v)L:TagElements{[F]='CollapsingHeader'}return L,E end})b:
DefineElement('TreeNode',{Base={Offset=21,IconPadding=UDim.new(0,2),
TitleBarProperties={Size=UDim2.new(1,0,0,13)}},Create=o.CollapsingHeader})b:
DefineElement('Separator',{Base={NoAutoTag=true,NoAutoTheme=true},Create=
function(r,s)local t,u=s.Text,b:InsertPrefab('SeparatorText',s)r:Label{Text=
tostring(t),Visible=t~=nil,Parent=u,LayoutOrder=2,Size=UDim2.new(),PaddingLeft=
UDim.new(0,4),PaddingRight=UDim.new(0,4)}r:TagElements{[u.Left]='Separator',[u.
Right]='Separator'}return u end})b:DefineElement('Canvas',{Base={},Create=
function(r,s)local t,u,v=r.WindowClass,s.Scroll,s.Class or s local w=u and
'ScrollingCanvas'or'Canvas'local x=b:InsertPrefab(w,s)local y=b:MakeCanvas{
Element=x,WindowClass=t,Class=v}return y,x end})b:DefineElement(
'ScrollingCanvas',{Base={Scroll=true},Create=o.Canvas})b:DefineElement('Region',
{Base={Scroll=false,AutomaticSize=Enum.AutomaticSize.Y},Create=function(r,s)
local t,u=r.WindowClass,s.Scroll local v=u and'ScrollingCanvas'or'Canvas'local w
=b:InsertPrefab(v,s)local x=b:MakeCanvas{Element=w,WindowClass=t,Class=s}return
x,w end})b:DefineElement('Group',{Base={Scroll=false,AutomaticSize=Enum.
AutomaticSize.Y},Create=function(r,s)local t,u=r.WindowClass,b:InsertPrefab(
'Group',s)local v=b:MakeCanvas{Element=u,WindowClass=t,Class=s}return v,u end})b
:DefineElement('Indent',{Base={Offset=15,PaddingTop=UDim.new(),PaddingBottom=
UDim.new(),PaddingRight=UDim.new()},Create=function(r,s)local t=s.Offset s.
PaddingLeft=UDim.new(0,t)return r:Canvas(s)end})b:DefineElement('BulletText',{
Base={},Create=function(r,s)local t=s.Rows for u,v in next,t do local w=r:
Bullet(s)w:Label{Text=tostring(v),LayoutOrder=2,Size=UDim2.fromOffset(0,14)}end
end})b:DefineElement('Bullet',{Base={Padding=3,Icon=b.Icons.Dot,IconSize=UDim2.
fromOffset(5,5)},Create=function(r,s)local t,u,v=r.WindowClass,s.Padding,b:
InsertPrefab('Bullet',s)local w,x=b:MakeCanvas{Element=v,WindowClass=t,Class=r},
v.UIListLayout x.Padding=UDim.new(0,u)return w,v end})b:DefineElement('Row',{
Base={Spacing=4,Expanded=false,HorizontalFlex=Enum.UIFlexAlignment.None,
VerticalFlex=Enum.UIFlexAlignment.None},Create=function(r,s)local t,u,v,w,x,y=r.
WindowClass,s.Spacing,s.Expanded,s.HorizontalFlex,s.VerticalFlex,b:InsertPrefab(
'Row',s)local z,A=b:MergeMetatables(s,y),y:FindFirstChildOfClass'UIListLayout'A.
Padding=UDim.new(0,u)A.HorizontalFlex=w A.VerticalFlex=x local B=b:MakeCanvas{
Element=y,WindowClass=t,Class=z}function s:Expand()A.HorizontalFlex=Enum.
UIFlexAlignment.Fill return self end if v then s:Expand()end return B,y end})b:
DefineElement('SliderBase',{Base={Format='%.f',Label='',Type='Slider',Callback=n
,NoGrab=false,NoClick=false,Minimum=0,Maximum=100,ColorTag='Frame',Disabled=
false},Create=function(r,s)local t,u,v,w,x,y,z,A,B=s.Value or s.Minimum,s.Format
,s.Label,s.NoAnimation,s.NoGrab,s.NoClick,s.Type,s.Disabled,b:InsertPrefab
'Slider'local C=B.Track local D,E,F=C.Grab,C.ValueText,b:MergeMetatables(s,B)
local G,H,I=D.AbsoluteSize,b:SetAnimation(B,'Inputs'),r:Label{Parent=B,Text=v,
Position=UDim2.new(1,4),Size=UDim2.fromScale(0,1)}Merge(s,{Grab=D,Name=v})if z==
'Slider'then C.Position=UDim2.fromOffset(G.X/2,0)C.Size=UDim2.new(1,-G.X,1,0)end
local J,K={Slider=function(J)return{AnchorPoint=Vector2.new(0.5,0.5),Position=
UDim2.fromScale(J,0.5)}end,Progress=function(J)return{Size=UDim2.fromScale(J,1)}
end,Snap=function(J,K,L,M)local N=(math.round(K)-L)/M return{Size=UDim2.
fromScale(1/M,1),Position=UDim2.fromScale(N,0.5)}end},function(...)local J=s.
Callback return J(F,...)end function s:SetDisabled(L)self.Disabled=L B.
Interactable=not L r:SetColorTags({[I]=L and'LabelDisabled'or'Label'},true)
return self end function s:SetValueText(L)E.Text=tostring(L)end function s:
SetValue(L,M)local N,O,P,Q=r:GetThemeKey'AnimationTweenInfo',s.Minimum,s.Maximum
,L local R=P-O if not M then Q=(L-O)/R else L=O+(R*Q)end Q=math.clamp(Q,0,1)
local S=J[z](Q,L,O,P)d:Tween{Object=D,Tweeninfo=N,NoAnimation=w,EndProperties=S}
self.Value=L self:SetValueText(u:format(L,P))K(L)return self end local L,M=
function(L)r:SetColorTags({[B]=L and'FrameActive'or'Frame'},true)r:
SetElementFocused(B,{Focused=L,Animation=H})end,function()if s.Disabled then
return end if s.ReadOnly then return end return true end local N=function(N)if
not M()then return end local O,P,Q=C.AbsolutePosition.X,C.AbsoluteSize.X,N.X
local R=Q-O local S=math.clamp(R/P,0,1)s:SetValue(S,true)end local O,P=function(
...)if not M()then return end L(true)if not y then N(...)end end,function()L(
false)end D.Visible=not x s:SetValue(t)s:SetDisabled(A)r:TagElements{[E]='Label'
,[D]='SliderGrab'}b:ConnectDrag(C,{DragStart=O,DragMovement=N,DragEnd=P})return
F,B end})b:DefineElement('SliderEnum',{Base={Items={},Label='Slider Enum',Type=
'Snap',Minimum=1,Maximum=10,Value=1,Callback=n,ColorTag='Frame'},Create=function
(r,s)local t,u=s.Callback,s.Value local v=function(v,w)w=math.round(w)local x=v.
Items v.Maximum=#x return x[w]end s.Callback=function(w,x)local y=v(w,x)w:
SetValueText(y)s.Value=y return t(w,y)end v(s,u)return r:SliderBase(s)end})b:
DefineElement('SliderInt',{Base={Label='Slider Int',ColorTag='Frame'},Create=o.
SliderBase})b:DefineElement('SliderFloat',{Base={Label='Slider Float',Format=
'%.3f',ColorTag='Frame'},Create=o.SliderBase})b:DefineElement('DragInt',{Base={
Format='%.f',Label='Drag Int',Callback=n,Minimum=0,Maximum=100,ColorTag='Frame',
Disabled=false},Create=function(r,s)local t,u,v,w,x=s.Value or s.Minimum,s.
Format,s.Label,s.Disabled,b:InsertPrefab'Slider'local y,z=b:MergeMetatables(s,x)
,x.Track local A,B=z.ValueText,z.Grab B.Visible=false local C,D,E,F,G,H=r:Label{
Parent=x,Text=v,Position=UDim2.new(1,7),Size=UDim2.fromScale(0,1)},0,0,b:
SetAnimation(x,'Inputs'),function(...)local C=s.Callback return C(y,...)end
function s:SetValue(I,J)local K,L=self.Minimum,self.Maximum local M=L-K if not J
then D=((I-K)/M)*100 else I=K+(M*(D/100))end I=math.clamp(I,K,L)self.Value=I A.
Text=u:format(I,L)G(I)return self end function s:SetDisabled(I)self.Disabled=I r
:SetColorTags({[C]=I and'LabelDisabled'or'Label'},true)return self end local I,J
=function(I)r:SetColorTags({[x]=I and'FrameActive'or'Frame'},true)r:
SetElementFocused(x,{Focused=I,Animation=F})end,function()if s.Disabled then
return end if s.ReadOnly then return end return true end local K,L,M=function(K)
if not J()then return end I(true)H=K E=D end,function(K)if not J()then return
end local L=K.X-H.X local M=E+(L/2)D=math.clamp(M,0,100)s:SetValue(D,true)end,
function()I(false)end s:SetValue(t)s:SetDisabled(w)b:ConnectDrag(z,{DragStart=K,
DragEnd=M,DragMovement=L})r:TagElements{[A]='Label'}return y,x end})b:
DefineElement('DragFloat',{Base={Format='%.3f',Label='Drag Float',ColorTag=
'Frame'},Create=o.DragInt})b:DefineElement('MultiElement',{Base={Callback=n,
Label='',Disabled=false,BaseInputConfig={},InputConfigs={},Value={},Minimum={},
Maximum={},MultiCallback=n},Create=function(r,s)local t,u,v,w,x,y,z,A=s.Label,s.
BaseInputConfig,s.InputConfigs,s.InputType,s.Disabled,s.Value,s.Minimum,s.
Maximum assert(w,'No input type provided for MultiElement')local B,C=r:Row{
Spacing=4}local D,E,F,G,H=B:Row{Size=UDim2.fromScale(0.65,0),Expanded=true},B:
Label{Size=UDim2.fromScale(0.35,0),LayoutOrder=2,Text=t},b:MergeMetatables(s,B),
{},false local I=function()local I={}for J,K in G do I[J]=K:GetValue()end s.
Value=I return I end local function J(...)local K=s.MultiCallback K(F,...)end
local K=function()if#G~=#v then return end if not H then return end local K=I()
J(K)end function s:SetDisabled(L)self.Disabled=L r:SetColorTags({[E]=L and
'LabelDisabled'or'Label'},true)for M,N in G do N:SetDisabled(L)end end function
s:SetValue(L)H=false for M,N in L do local O=G[M]assert(O,`No input object for index: {
M}`)O:SetValue(N)end H=true J(L)end u=Copy(u,{Size=UDim2.new(1,0,0,19),Label='',
Callback=K})for L,M in v do local N=Copy(u,M)b:CheckConfig(N,{Minimum=z[L],
Maximum=A[L]})local O=D[w](D,N)table.insert(G,O)end Merge(s,{Row=D,Inputs=G})H=
true s:SetDisabled(x)s:SetValue(y)return F,C end})local r=function(r,s,t,u)b:
DefineElement(r,{Base={Label=r,Callback=n,InputType=s,InputConfigs=table.create(
t,{}),BaseInputConfig={}},Create=function(v,w)local x=(w.BaseInputConfig)if u
then Merge(x,u)end b:CheckConfig(x,{ReadOnly=w.ReadOnly,Format=w.Format})w.
MultiCallback=function(...)local y=w.Callback y(...)end return v:MultiElement(w)
end})end local s=function(s,t)b:DefineElement(s,{Base={Label=s,Callback=n,Value=
b.Accent.Light,Disabled=false,Minimum={0,0,0},Maximum={255,255,255,100},
BaseInputConfig={},InputConfigs={[1]={Format='R: %.f'},[2]={Format='G: %.f'},[3]
={Format='B: %.f'}}},Create=function(u,v)local w,x=v.Value,Copy(v,{Value={1,1,1}
,Callback=function(w,...)if v.ValueChanged then v:ValueChanged(...)end end})
local y,z=u[t](u,x)local A,B=b:MergeMetatables(v,y),y.Row local C,D=B:Button{
BackgroundTransparency=0,Size=UDim2.fromOffset(19,19),UiPadding=0,Text='',Ratio=
1,ColorTag='',ElementStyle=''},function(...)local C=v.Callback return C(A,...)
end local E=function(E)C.BackgroundColor3=E D(E)end function v:ValueChanged(F)
local G,H,I=F[1],F[2],F[3]local J=Color3.fromRGB(G,H,I)self.Value=J E(J)end
function v:SetValue(F)self.Value=F E(F)y:SetValue{math.round(F.R*255),math.
round(F.G*255),math.round(F.B*255)}end v:SetValue(w)return A,z end})end local t=
function(t,u)b:DefineElement(t,{Base={Label=t,Callback=n,Disabled=false,Value=
CFrame.new(10,10,10),Minimum=CFrame.new(0,0,0),Maximum=CFrame.new(100,100,100),
BaseInputConfig={},InputConfigs={[1]={Format='X: %.f'},[2]={Format='Y: %.f'},[3]
={Format='Z: %.f'}}},Create=function(v,w)local x,y,z=w.Value,w.Maximum,w.Minimum
local A=Copy(w,{Maximum={y.X,y.Y,y.Z},Minimum={z.X,z.Y,z.Z},Value={x.X,x.Y,x.Z},
Callback=function(A,...)if w.ValueChanged then w:ValueChanged(...)end end})local
B,C=v[u](v,A)local D=b:MergeMetatables(w,B)local E=function(...)local E=w.
Callback return E(D,...)end function w:ValueChanged(F)local G,H,I=F[1],F[2],F[3]
local J=CFrame.new(G,H,I)self.Value=J E(J)end function w:SetValue(F)self.Value=F
B:SetValue{math.round(F.X),math.round(F.Y),math.round(F.Z)}end w:SetValue(x)
return D,C end})end b:DefineElement('SliderProgress',{Base={Label=
'Slider Progress',Type='Progress',ColorTag='Frame'},Create=o.SliderBase})b:
DefineElement('ProgressBar',{Base={Label='Progress Bar',Type='Progress',ReadOnly
=true,MinValue=0,MaxValue=100,Format='% i%%',Interactable=false,ColorTag='Frame'
},Create=function(u,v)function v:SetPercentage(w)v:SetValue(w)end local w,x=u:
SliderBase(v)local y=w.Grab u:TagElements{[y]={BackgroundColor3='ProgressBar'}}
return w,x end})b:DefineElement('Combo',{Base={Value='',Placeholder='',Callback=
n,Items={},Disabled=false,WidthFitPreview=false,Label='Combo'},Create=function(u
,v)local w,x,y,z,A,B,C=v.Placeholder,v.NoAnimation,v.Selected,v.Label,v.Disabled
,v.WidthFitPreview,b:InsertPrefab('Combo',v)local D,E,F=b:MergeMetatables(v,C),(
C.Combo)local G,H,I=u:Label{Text=tostring(w),Parent=E,Name='ValueText'},u:
ArrowButton{Parent=E,Interactable=false,Size=UDim2.fromOffset(19,19),LayoutOrder
=2},u:Label{Text=z,Parent=C,LayoutOrder=2}if B then b:SetProperties(C,{
AutomaticSize=Enum.AutomaticSize.XY,Size=UDim2.new(0,0,0,0)})b:SetProperties(E,{
AutomaticSize=Enum.AutomaticSize.XY,Size=UDim2.fromScale(0,1)})end local J,K=
function(J,...)v:SetOpen(false)return v.Callback(D,J,...)end,function(J,K)local
L=u:GetThemeKey'AnimationTweenInfo'C.Interactable=not J d:HeaderCollapseToggle{
Tweeninfo=L,NoAnimation=K,Collapsed=not J,Toggle=H.Icon}end local function L()
local M,N=v.GetItems,v.Items if M then return M()end return N end function v:
SetValueText(M)G.Text=tostring(M)end function v:ClosePopup()if not F then return
end F:ClosePopup(true)end function v:SetDisabled(M)self.Disabled=M C.
Interactable=not M u:SetColorTags({[I]=M and'LabelDisabled'or'Label'},true)
return self end function v:SetValue(M)local N=L()local O=N[M]local P=O or M self
.Selected=M self.Value=P self:ClosePopup()if typeof(M)=='number'then self:
SetValueText(P)else self:SetValueText(M)end J(M,P)return self end function v:
SetOpen(M)local N=self.Selected self.Open=M K(M,x)if not M then self:ClosePopup(
)return end F=u:Dropdown{RelativeTo=E,Items=L(),Selected=N,OnSelected=function(
...)v:SetValue(...)end,OnClosed=function()self:SetOpen(false)end}return self end
local M=function()local M=v.Open v:SetOpen(not M)end E.Activated:Connect(M)K(
false,true)v:SetDisabled(A)if y then v:SetValue(y)end b:SetAnimation(E,'Inputs')
u:TagElements{[E]='Frame'}return D,C end})local u={TileBarConfig={Close={Image=b
.Icons.Close,IconPadding=UDim.new(0,3)},Collapse={Image=b.Icons.Arrow,
IconPadding=UDim.new(0,3)}},CloseCallback=n,Collapsible=true,Open=true,Focused=
false}function u:Tween(v)b:CheckConfig(v,{Tweeninfo=self:GetThemeKey
'AnimationTweenInfo'})return d:Tween(v)end function u:TagElements(v)local w,x=
self.TagsList,self.Theme b:MultiUpdateColors{Theme=x,TagsList=w,Objects=v}end
function u:MakeTitleBarCanvas()local v=self.TitleBar local w=b:MakeCanvas{
WindowClass=self,Element=v}self.TitleBarCanvas=w return w end function u:
AddDefaultTitleButtons()local v=self.TileBarConfig local w,x,y=v.Collapse,v.
Close,self.TitleBarCanvas if not y then y=self:MakeTitleBarCanvas()end b:
CheckConfig(self,{Toggle=y:RadioButton{Icon=w.Image,IconPadding=w.IconPadding,
LayoutOrder=1,Ratio=1,Size=UDim2.new(0,0),Callback=function()self:
ToggleCollapsed()end},CloseButton=y:RadioButton{Icon=x.Image,IconPadding=x.
IconPadding,LayoutOrder=3,Ratio=1,Size=UDim2.new(0,0),Callback=function()self:
Close()end},TitleLabel=y:Label{ColorTag='Title',LayoutOrder=2,Size=UDim2.new(1,0
),Active=false,Fill=true,ClipsDescendants=true,AutomaticSize=Enum.AutomaticSize.
XY}})self:TagElements{[self.TitleLabel]='WindowTitle'}end function u:Close()
local v=self.CloseCallback if v then local w=v(self)if w==false then return end
end self:Remove()end function u:SetVisible(v)local w,x=self.WindowFrame,self.
NoFocusOnAppearing self.Visible=v w.Visible=v if v and not x then b:
SetFocusedWindow(self)end return self end function u:ToggleVisibility(v)local w=
self.Visible self:SetVisible(not w)end function u:GetWindowSize()return self.
WindowFrame.AbsoluteSize end function u:GetTitleBarSizeY()local v=self.TitleBar
return v.Visible and v.AbsoluteSize.Y or 0 end function u:SetTitle(v)self.
TitleLabel.Text=tostring(v)return self end function u:SetPosition(v)self.
WindowFrame.Position=v return self end function u:SetSize(v,w)local x=self.
WindowFrame if typeof(v)=='Vector2'then v=UDim2.fromOffset(v.X,v.Y)end x.Size=v
self.Size=v return self end function u:SetCanvasInteractable(v)local w=self.Body
w.Interactable=v end function u:Center()local v=self:GetWindowSize()/2 local w=
UDim2.new(0.5,-v.X,0.5,-v.Y)self:SetPosition(w)return self end function u:
LoadStylesIntoElement(v)local w,x,y=v.Flags,v.Object,v.Canvas local z={
FrameRounding=function()if w.CornerRadius then return end if not y then return
end local z=x:FindFirstChild('FrameRounding',true)if not z then return end y:
TagElements{[z]='FrameRounding'}end}for A,B in z do local C=self:GetThemeKey(A)
if C==nil then continue end task.spawn(B,C)end end function u:SetTheme(v)local w
,x,y=b.ThemeConfigs,self.TagsList,self.WindowState v=v or self.Theme assert(w[v]
,`{v} is not a valid theme!`)self.Theme=v b:MultiUpdateColors{Animate=false,
Theme=v,Objects=x}self:SetFocusedColors(y)return self end function u:
SetFocusedColors(v)local w,x,y,z,A=self.WindowFrame,self.TitleBar,self.Theme,
self.TitleLabel,self:GetThemeKey'AnimationTweenInfo'local B=w:
FindFirstChildOfClass'UIStroke'local C={Focused={[B]='BorderActive',[x]=
'TitleBarBgActive',[z]={TextColor3='TitleActive'}},UnFocused={[B]='Border',[x]=
'TitleBarBg',[z]={TextColor3='Title'}},Collapsed={[B]='Border',[x]=
'TitleBarBgCollapsed',[z]={TextColor3='Title'}}}b:MultiUpdateColors{Tweeninfo=A,
Animate=true,Objects=C[v],Theme=y}end function u:SetFocused(v)v=v==nil and true
or v local w,x=self.Collapsed,self.WindowState if v then b:SetFocusedWindow(self
)end local y=w and'Collapsed'or v and'Focused'or'UnFocused'if y==x then return
end self.Focused=v self.WindowState=y self:SetFocusedColors(y)end function u:
GetThemeKey(v)return b:GetThemeKey(self.Theme,v)end function u:SetCollapsible(v)
self.Collapsible=v return self end function u:ToggleCollapsed(v)local w,x=self.
Collapsed,self.Collapsible if not v and not x then return self end self:
SetCollapsed(not w)return self end function u:SetCollapsed(v,w)local x,y,z,A,B,C
,D,E,F=self.WindowFrame,self.Body,self.Toggle,self.ResizeGrab,self.Size,self.
AutoSize,self:GetThemeKey'AnimationTweenInfo',self:GetWindowSize(),self:
GetTitleBarSizeY()local G,H=z.Icon,UDim2.fromOffset(E.X,F)self.Collapsed=v self:
SetCollapsible(false)self:SetFocused(not v)d:HeaderCollapse{Tweeninfo=D,
NoAnimation=w,Collapsed=v,Toggle=G,Resize=x,NoAutomaticSize=not C,Hide=y,
ClosedSize=H,OpenSize=B,Completed=function()self:SetCollapsible(true)end}self:
Tween{Object=A,NoAnimation=w,EndProperties={TextTransparency=v and 1 or 0.6,
Interactable=not v}}return self end function u:UpdateConfig(v)local w={
NoTitleBar=function(w)local x=self.TitleBar x.Visible=not w end,NoClose=function
(w)local x=self.CloseButton x.Visible=not w end,NoCollapse=function(w)local x=
self.Toggle x.Visible=not w end,NoTabsBar=function(w)local x=self.
WindowTabSelector if not x then return end local y=x.TabsBar y.Visible=not w end
,NoScrollBar=function(w)local x,y,z,A=w and 0 or 9,self.NoScroll,self.
WindowTabSelector,self.ContentCanvas if z then z.Body.ScrollBarThickness=x end
if not y then A.ScrollBarThickness=x end end,NoScrolling=function(w)local x,y,z=
self.NoScroll,self.WindowTabSelector,self.ContentCanvas if y then y.Body.
ScrollingEnabled=not w end if not x then z.ScrollingEnabled=not w end end,NoMove
=function(w)local x=self.DragConnection x:SetEnabled(not w)end,NoResize=function
(w)local x=self.ResizeConnection x:SetEnabled(not w)end,NoBackground=function(w)
local x,y=self:GetThemeKey'WindowBgTransparency',self.CanvasFrame y.
BackgroundTransparency=w and 1 or x end}Merge(self,v)for x,y in v do local z=w[x
]if z then z(y)end end return self end function u:Remove()local v,w,x=self.
WindowFrame,self.WindowClass,b.Windows local y=table.find(x,w)if y then table.
remove(x,y)end v:Destroy()end function u:MenuBar(v,...)local w,x=self.
ContentCanvas,self.ContentFrame v=v or{}Merge(v,{Parent=x,Layout=-1})return w:
MenuBar(v,...)end b:DefineElement('Window',{Export=true,Base={Theme='DarkTheme',
NoSelect=false,NoTabs=true,NoScroll=false,Collapsed=false,Visible=true,AutoSize=
false,MinimumSize=Vector2.new(160,90),OpenOnDoubleClick=true,NoAutoTheme=true,
NoWindowRegistor=false,NoBringToFrontOnFocus=false,IsDragging=false},Create=
function(v,w)b:CheckImportState()local x,y=b.Windows,b.Container.Windows b:
CheckConfig(w,{Parent=y,Title=b.DefaultTitle})local z,A,B,C,D,E,F,G,H,I,J=w.
NoDefaultTitleBarButtons,w.Collapsed,w.MinimumSize,w.Title,w.NoTabs,w.NoScroll,w
.Theme,w.AutomaticSize,w.NoWindowRegistor,w.AutoSelectNewTabs,w.Parent~=y local
K={Scroll=not E,Fill=not G and true or nil,UiPadding=UDim.new(0,D and 8 or 0),
AutoSelectNewTabs=I}if G then Merge(K,{AutomaticSize=G,Size=UDim2.new(1,0)})end
local L=b:InsertPrefab('Window',w)local M=L.Content local N,O=M.TitleBar,c:
NewClass(u)local P,Q,R,S=(b:MakeCanvas{Element=M,WindowClass=O,Class=O})local T,
U=P:Canvas(Copy(K,{Parent=M,CornerRadius=UDim.new(0,0)}))local V=b:MakeResizable
{MinimumSize=B,Resize=L,OnUpdate=function(V)O:SetSize(V,true)end}Merge(O,w)
Merge(O,{WindowFrame=L,ContentFrame=M,CanvasFrame=U,ResizeGrab=V.Grab,TitleBar=N
,Elements=o,TagsList={},_SelectDisabled=J,ResizeConnection=V,HoverConnection=b:
DetectHover(M),DragConnection=b:MakeDraggable{Grab=M,Move=L,SetPosition=function
(W,X)local Y=Q:GetThemeKey'AnimationTweenInfo'd:Tween{Tweeninfo=Y,Object=W.Move,
EndProperties={Position=X}}end,OnDragStateChange=function(W)O.IsDragging=W U.
Interactable=not W if W then b:SetFocusedWindow(S)end b:SetWindowFocusesEnabled(
not W)end}})if D then Q,R=T,U else Q,R=T:TabSelector(K)O.WindowTabSelector=Q end
S=b:MergeMetatables(O,Q)Merge(O,{ContentCanvas=Q,WindowClass=S,Body=R})b:
ConnectMouseEvent(M,{DoubleClick=true,OnlyMouseHovering=N,Callback=function(...)
if not O.OpenOnDoubleClick then return end if O.NoCollapse then return end O:
ToggleCollapsed()end})if not z then O:AddDefaultTitleButtons()end O:SetTitle(C)O
:SetCollapsed(A,true)O:SetTheme(F)O:UpdateConfig(w)O:SetFocused()if not H then
table.insert(x,S)end local W=V.Grab b:SetAnimation(W,'TextButtons')b:
SetFocusedWindow(S)S:TagElements{[W]='ResizeGrab',[N]='TitleBar',[U]='Window'}
return S,L end})b:DefineElement('TabsWindow',{Export=true,Base={NoTabs=false,
AutoSelectNewTabs=true},Create=function(v,w)return v:Window(w)end})b:
DefineElement('PopupCanvas',{Base={AutoClose=false,Scroll=false,Visible=true,
Spacing=UDim.new(0,1),AutomaticSize=Enum.AutomaticSize.XY,MaxSizeY=150,MinSizeX=
100,MaxSizeX=math.huge,OnClosed=n},Create=function(v,w)local x,y,z,A,B,C,D=w.
RelativeTo,w.MaxSizeY,w.MinSizeX,w.MaxSizeX,w.Visible,w.AutoClose,w.NoAnimation
w.Parent=b.Container.Overlays local E,F=v:OverlayScroll(w)local G=F.UIStroke
local H,I,J,K,L,M,N=G.Thickness,F.Parent.AbsolutePosition,(b:DetectHover(F,{
MouseOnly=true,OnInput=function(H,I)if H then return end if not F.Visible then
return end w:OnFocusLost()end}))function w:FetchScales()local O=E:GetCanvasSize(
)K=x.AbsolutePosition L=x.AbsoluteSize M=math.clamp(O.Y,L.Y,y)N=math.clamp(L.X,z
,A)end function w:UpdatePosition()F.Position=UDim2.fromOffset(K.X-I.X+H,K.Y-I.Y+
L.Y)end function w:GetScale(O)local P,Q=UDim2.fromOffset(N,M),UDim2.fromOffset(N
,0)return O and P or Q end function w:IsMouseHovering()return J.Hovering end
function w:OnFocusLost()local O=self.OnClosed self:SetPopupVisible(false)O(self)
if C then self:ClosePopup()end end function w:ClosePopup(O)self:SetPopupVisible(
false,D,O)J:Disconnect()F:Remove()end function w:SetPopupVisible(O,P)if F.
Visible==O then return end x.Interactable=not O self:UpdateScales(O,D,P)self.
Visible=O end function w:UpdateScales(O,P,Q)local R=E:GetThemeKey
'AnimationTweenInfo'O=O==nil and F.Visible or O w:FetchScales()w:UpdatePosition(
)local S=d:Tween{Tweeninfo=R,Object=F,NoAnimation=P,EndProperties={Size=w:
GetScale(O),Visible=O}}if S and Q then S.Completed:Wait()end end w:UpdateScales(
false,true)w:SetPopupVisible(B)E.OnChildChange:Connect(w.UpdateScales)return E,F
end})b:DefineElement('PopupModal',{Export=true,Base={NoAnimation=false,
NoCollapse=true,NoClose=true,NoResize=true,NoSelect=true,NoAutoFlags=true,
NoWindowRegistor=true,NoScroll=true},Create=function(v,w)local x,y,z=v.
WindowClass,(w.NoAnimation)w.Parent=b.Container.Overlays if x then z=x:
GetThemeKey'ModalWindowDimTweenInfo'w.Theme=x.Theme end local A=b:InsertPrefab(
'ModalEffect',w)local B=v:Window(Copy(w,{NoAutoFlags=false,Parent=A,AnchorPoint=
Vector2.new(0.5,0.5),Position=UDim2.fromScale(0.5,0.5),Size=UDim2.fromOffset(372
,38),AutomaticSize=Enum.AutomaticSize.Y}))function w:ClosePopup()d:Tween{Object=
A,Tweeninfo=z,NoAnimation=y,EndProperties={BackgroundTransparency=1},Completed=
function()A:Destroy()end}B:Close()end d:Tween{Object=A,Tweeninfo=z,NoAnimation=y
,StartProperties={BackgroundTransparency=1},EndProperties={
BackgroundTransparency=0.8}}v:TagElements{[A]='ModalWindowDim'}local C=b:
MergeMetatables(w,B)return C,A end})r('InputInt2','InputInt',2,{NoButtons=true})
r('InputInt3','InputInt',3,{NoButtons=true})r('InputInt4','InputInt',4,{
NoButtons=true})r('SliderInt2','SliderInt',2)r('SliderInt3','SliderInt',3)r(
'SliderInt4','SliderInt',4)r('SliderFloat2','SliderFloat',2)r('SliderFloat3',
'SliderFloat',3)r('SliderFloat4','SliderFloat',4)r('DragInt2','DragInt',2)r(
'DragInt3','DragInt',3)r('DragInt4','DragInt',4)r('DragFloat2','DragFloat',2)r(
'DragFloat3','DragFloat',3)r('DragFloat4','DragFloat',4)s('InputColor3',
'InputInt3')s('SliderColor3','SliderInt3')s('DragColor3','DragInt3')t(
'InputCFrame','InputInt3')t('SliderCFrame','SliderInt3')t('DragCFrame',
'DragInt3')return b
