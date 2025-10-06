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
c end end do local b=function()return function(b)local c=b:Window{Title=
'Configuration saving',Size=UDim2.fromOffset(300,200)}local d,e=(c:Row())d:
Button{Text='Dump Ini',Callback=function()print(b:DumpIni(true))end}d:Button{
Text='Save Ini',Callback=function()e=b:DumpIni(true)end}d:Button{Text='Load Ini'
,Callback=function()if not e then warn'No save data!'return end b:LoadIni(e,true
)end}c:Separator()c:SliderInt{IniFlag='MySlider',Value=5,Minimum=1,Maximum=32}c:
Checkbox{IniFlag='MyCheckbox',Value=true}c:InputText{IniFlag='MyInput',Value=
'Hello world!'}c:Keybind{IniFlag='MyKeybind',Label=
'Keybind (w/ Q & Left-Click blacklist)',KeyBlacklist={Enum.UserInputType.
MouseButton1,Enum.KeyCode.Q}}local f=b:TabsWindow{Title='Tabs window!',Visible=
false,Size=UDim2.fromOffset(300,200)}for g,h in{'Avocado','Broccoli','Cucumber'}
do local i=f:CreateTab{Name=h}i:Label{Text=`This is the {h} tab!`}end local g=b.
Elements:Label{Parent=b.Container.Windows,Visible=false,UiPadding=UDim.new(0,8),
CornerRadius=UDim.new(0,2),Position=UDim2.fromOffset(10,10),Size=UDim2.
fromOffset(250,50),Border=true,BorderThickness=1,BorderColor=b.Accent.Gray,
BackgroundTransparency=0.4,BackgroundColor3=b.Accent.Black}game:GetService
'RunService'.RenderStepped:Connect(function(h)local i,j,k=math.round(1/h),
DateTime.now():FormatLocalTime('dddd h:mm:ss A','en-us'),`ReGui {b:GetVersion()}\n`
k..=`FPS: {i}\n`k..=`The time is {j}`g.Text=k end)local h=b:Window{Title=
'Dear ReGui Demo',Size=UDim2.new(0,400,0,300),NoScroll=true}:Center()local i=h:
MenuBar()local j=i:MenuItem{Text='Menu'}j:Selectable{Text='New'}j:Selectable{
Text='Open'}j:Selectable{Text='Save'}j:Selectable{Text='Save as'}j:Selectable{
Text='Exit',Callback=function()h:Close()end}local k=i:MenuItem{Text='Examples'}k
:Selectable{Text='Print hello world',Callback=function()print'Hello world!'end}k
:Selectable{Text='Tabs window',Callback=function()f:ToggleVisibility()end}k:
Selectable{Text='Configuration saving',Callback=function()c:ToggleVisibility()
end}k:Selectable{Text='Watermark',Callback=function()g.Visible=not g.Visible end
}h:Label{Text=`Dear ReGui says hello! ({b:GetVersion()})`}local l=h:
ScrollingCanvas{Fill=true,UiPadding=UDim.new(0,0)}local m=l:CollapsingHeader{
Title='Help'}m:Separator{Text='ABOUT THIS DEMO:'}m:BulletText{Rows={
[[Sections below are demonstrating many aspects of the library.]]}}m:Separator{
Text='PROGRAMMER GUIDE:'}m:BulletText{Rows={
[[See example FAQ, examples, and documentation at https://depso.gitbook.io/regui]]
}}m:Indent():BulletText{Rows={'See example applications in the /demo folder.'}}
local n=l:CollapsingHeader{Title='Configuration'}local o=n:TreeNode{Title=
'Backend Flags'}o:Checkbox{Label='ReGui:IsMobileDevice',Disabled=true,Value=b:
IsMobileDevice()}o:Checkbox{Label='ReGui:IsConsoleDevice',Disabled=true,Value=b:
IsConsoleDevice()}local p=n:TreeNode{Title='Style'}p:Combo{Selected='DarkTheme',
Label='Colors',Items=b.ThemeConfigs,Callback=function(q,r)h:SetTheme(r)end}local
q,r=l:CollapsingHeader{Title='Window options'}:Table{MaxColumns=3}:NextRow(),{
NoResize=false,NoTitleBar=false,NoClose=false,NoCollapse=false,OpenOnDoubleClick
=true,NoBringToFrontOnFocus=false,NoMove=false,NoSelect=false,NoScrollBar=false,
NoBackground=false}for s,t in pairs(r)do local u=q:NextColumn()u:Checkbox{Value=
t,Label=s,Callback=function(v,w)h:UpdateConfig{[s]=w}end}end local s,t,x=l:
CollapsingHeader{Title='Widgets'},{'Basic','Tooltips','Tree Nodes',
'Collapsing Headers','Bullets','Text','Images','Videos','Combo','Tabs',
'Plot widgets','Multi-component Widgets','Progress Bars','Picker Widgets',
'Code editor','Console','List layout','Indent','Viewport','Keybinds','Input',
'Text Input'},{Basic=function(s)s:Separator{Text='General'}local t=s:Row()local
u=t:Label{Text='Thanks for clicking me!',Visible=false,LayoutOrder=2}t:Button{
Callback=function()u.Visible=not u.Visible end}s:Checkbox()local v=s:Row()v:
Radiobox{Label='radio a'}v:Radiobox{Label='radio b'}v:Radiobox{Label='radio c'}
local w=s:Row()for x=1,7 do local y=x/7 w:Button{Text='Click',BackgroundColor3=
Color3.fromHSV(y,0.6,0.6)}end local x=s:Button{Text='Tooltip'}b:SetItemTooltip(x
,function(y)y:Label{Text='I am a tooltip'}end)s:Separator{Text='Inputs'}s:
InputText{Value='Hello world!'}s:InputText{Placeholder='Enter text here',Label=
'Input text (w/ hint)',Value=''}s:InputInt{Value=50}s:InputInt{Label=
'Input Int (w/ limit)',Value=5,Maximum=10,Minimum=1}s:Separator{Text='Drags'}s:
DragInt()s:DragInt{Maximum=100,Minimum=0,Label='Drag Int 0..100',Format='%d%%'}s
:DragFloat{Maximum=1,Minimum=0,Value=0.5}s:Separator{Text='Sliders'}s:SliderInt{
Format='%.d/%s',Value=5,Minimum=1,Maximum=32,ReadOnly=false}:SetValue(8)s:
SliderInt{Label='Slider Int (w/ snap)',Value=1,Minimum=1,Maximum=8,Type='Snap'}s
:SliderFloat{Label='Slider Float',Minimum=0,Maximum=1,Format='Ratio = %.3f'}s:
SliderFloat{Label='Slider Angle',Minimum=-360,Maximum=360,Format='%.f deg'}s:
SliderEnum{Items={'Fire','Earth','Air','Water'},Value=2}s:SliderEnum{Items={
'Fire','Earth','Air','Water'},Value=2,Disabled=true,Label='Disabled Enum'}s:
SliderProgress{Label='Progress Slider',Value=8,Minimum=1,Maximum=32}s:Separator{
Text='Selectors/Pickers'}s:InputColor3{Value=b.Accent.Light,Label='Color 1'}s:
SliderColor3{Value=b.Accent.Light,Label='Color 2'}s:InputCFrame{Value=CFrame.
new(1,1,1),Minimum=CFrame.new(0,0,0),Maximum=CFrame.new(200,100,50),Label=
'CFrame 1'}s:SliderCFrame{Value=CFrame.new(1,1,1),Minimum=CFrame.new(0,0,0),
Maximum=CFrame.new(200,100,50),Label='CFrame 2'}s:Combo{Selected=1,Items={'AAAA'
,'BBBB','CCCC','DDDD','EEEE','FFFF','GGGG','HHHH','IIIIIII','JJJJ','KKKKKKK'}}
end,Tooltips=function(s)s:Separator{Text='General'}local t=s:Button{Text='Basic'
,Size=UDim2.fromScale(1,0)}b:SetItemTooltip(t,function(u)u:Label{Text=
'I am a tooltip'}end)local u=s:Button{Text='Fancy',Size=UDim2.fromScale(1,0)}b:
SetItemTooltip(u,function(v)v:Label{Text='I am a fancy tooltip'}v:Image{Image=
18395893036}local w=v:Label()while wait()do w.Text=`Sin(time) = {math.sin(tick()
)}`end end)local v=s:Button{Text='Double tooltip',Size=UDim2.fromScale(1,0)}for
w=1,3 do b:SetItemTooltip(v,function(x)x:Label{Text=`I am tooltip {w}`}end)end
end,Videos=function(s)local t=s:VideoPlayer{Video=5608327482,Looped=true,Ratio=
1.7777777777777777,RatioAspectType=Enum.AspectType.FitWithinMaxSize,RatioAxis=
Enum.DominantAxis.Width,Size=UDim2.fromScale(1,1)}t:Play()local v=s:Row{Expanded
=true}v:Button{Text='Pause',Callback=function()t:Pause()end}v:Button{Text='Play'
,Callback=function()t:Play()end}if not t.IsLoaded then t.Loaded:Wait()end local
w=v:SliderInt{Format='%.f',Value=0,Minimum=0,Maximum=t.TimeLength,Callback=
function(w,x)t.TimePosition=x end}game:GetService'RunService'.RenderStepped:
Connect(function(x)w:SetValue(t.TimePosition)end)end,['Tree Nodes']=function(s)
for t=1,5 do local v=s:TreeNode{Title=`Child {t}`,Collapsed=t~=1}local w=v:Row()
w:Label{Text='Blah blah'}w:SmallButton{Text='Button'}end s:TreeNode{Title=`With icon & NoArrow`
,NoArrow=true,Icon=b.Icons.Image}end,['Collapsing Headers']=function(s)local t s
:Checkbox{Value=true,Label='Show 2nd header',Callback=function(v,w)if t then t:
SetVisible(w)end end}s:Checkbox{Value=true,Label='2nd has arrow',Callback=
function(v,w)if t then t:SetArrowVisible(w)end end}local v=s:CollapsingHeader{
Title='Header'}for w=1,5 do v:Label{Text=`Some content {w}`}end t=s:
CollapsingHeader{Title='Second Header'}for w=1,5 do t:Label{Text=`More content {
w}`}end end,Bullets=function(s)s:BulletText{Rows={'Bullet point 1',
'Bullet point 2\nOn multiple lines'}}s:TreeNode():BulletText{Rows={
'Another bullet point'}}s:Bullet():Label{Text='Bullet point 3 (two calls)'}s:
Bullet():SmallButton()end,Text=function(s)local t=s:TreeNode{Title=
'Colorful Text'}t:Label{TextColor3=Color3.fromRGB(255,0,255),Text='Pink',NoTheme
=true}t:Label{TextColor3=Color3.fromRGB(255,255,0),Text='Yellow',NoTheme=true}t:
Label{TextColor3=Color3.fromRGB(59,59,59),Text='Disabled',NoTheme=true}local v=s
:TreeNode{Title='Word Wrapping'}v:Label{Text=
[[This text should automatically wrap on the edge of the window. The current implementation for text wrapping follows simple rules suitable for English and possibly other languages.]]
,TextWrapped=true}local w v:SliderInt{Label='Wrap width',Value=400,Minimum=20,
Maximum=600,Callback=function(x,y)if not w then return end w.Size=UDim2.
fromOffset(y,0)end}v:Label{Text='Test paragraph:'}w=v:Label{Text=
[[The lazy dog is a good dog. This paragraph should fit. Testing a 1 character word. The quick brown fox jumps over the lazy dog.]]
,TextWrapped=true,Border=true,BorderColor=Color3.fromRGB(255,255,0),
AutomaticSize=Enum.AutomaticSize.Y,Size=UDim2.fromOffset(400,0)}end,Images=
function(s)s:Label{TextWrapped=true,Text=
[[Below we are displaying the icons (which are the ones builtin to ReGui in this demo). Hover the texture for a zoomed view!]]
}s:Label{TextWrapped=true,Text=`There is a total of {b:GetDictSize(b.Icons)} icons in this demo!`
}local t,v,w=(s:List{Border=true})b:SetItemTooltip(t,function(x)v=x:Label()w=x:
Image{Size=UDim2.fromOffset(50,50)}end)for x,y in b.Icons do local z=t:Image{
Image=y,Size=UDim2.fromOffset(30,30)}b:DetectHover(z,{MouseEnter=true,OnInput=
function()v.Text=x w.Image=y end})end end,Tabs=function(s)local t=s:TreeNode{
Title='Basic'}local v,w=t:TabSelector(),{'Avocado','Broccoli','Cucumber'}for x,y
in next,w do v:CreateTab{Name=y}:Label{Text=`This is the {y} tab!\nblah blah blah blah blah`
}end local x=s:TreeNode{Title='Advanced & Close Button'}local y,z=x:TabSelector(
),{'Artichoke','Beetroot','Celery','Daikon'}for A,B in next,z do local C=y:
CreateTab{Name=B,Closeable=true}C:Label{Text=`This is the {B} tab!\nblah blah blah blah blah`
}end x:Button{Text='Add tab',Callback=function()y:CreateTab{Closeable=true}:
Label{Text='I am an odd tab.'}end}end,['Plot widgets']=function(s)local t=s:
PlotHistogram{Points={0.6,0.1,1,0.5,0.92,0.1,0.2}}s:Button{Text=
'Generate new graph',Callback=function()local x={}for y=1,math.random(5,10)do
table.insert(x,math.random(1,10))end t:PlotGraph(x)end}end,[
'Multi-component Widgets']=function(s)s:Separator{Text='2-wide'}s:InputInt2{
Value={10,50},Minimum={0,0},Maximum={20,100},Callback=function(t,x)print('1:',x[
1],'2:',x[2])end}s:SliderInt2()s:SliderFloat2()s:DragInt2()s:DragFloat2()s:
Separator{Text='3-wide'}s:InputInt3()s:SliderInt3()s:SliderFloat3()s:DragInt3()s
:DragFloat3()s:Separator{Text='4-wide'}s:InputInt4()s:SliderInt4()s:
SliderFloat4()s:DragInt4()s:DragFloat4()end,['Progress Bars']=function(s)local t
=s:ProgressBar{Label='Loading...',Value=80}spawn(function()local x=0 while wait(
0.02)do x+=1 t:SetPercentage(x%100)end end)end,['Picker Widgets']=function(s)s:
Separator{Text='Color pickers'}s:DragColor3{Value=b.Accent.Light}s:SliderColor3{
Value=b.Accent.Red}s:InputColor3{Value=b.Accent.Green}s:Separator{Text=
'CFrame pickers'}s:DragCFrame{Value=CFrame.new(1,1,1),Minimum=CFrame.new(0,0,0),
Maximum=CFrame.new(200,100,50)}s:SliderCFrame()s:InputCFrame()end,['Code editor'
]=function(s)s:CodeEditor{Text='print("Hello from ReGui\'s editor!")',Editable=
true}end,Console=function(s)local t=s:TreeNode{Title='Basic'}local x,y=t:Console
{ReadOnly=true,AutoScroll=true,MaxLines=50},s:TreeNode{Title=
'Advanced & RichText'}local z,A=y:Console{ReadOnly=true,AutoScroll=true,RichText
=true,MaxLines=50},s:TreeNode{Title='Editor'}A:Console{Value=
"print('Hello world!')",LineNumbers=true}coroutine.wrap(function()while wait()do
local B=DateTime.now():FormatLocalTime('h:mm:ss A','en-us')z:AppendText(`<font color="rgb(240, 40, 10)">[Random]</font>`
,math.random())x:AppendText(`[{B}] Hello world!`)end end)()end,Combo=function(s)
s:Combo{WidthFitPreview=true,Label='WidthFitPreview',Selected=1,Items={
'AAAAAAAAAAAA','BBBBBBBB','CCCCC','DDD'}}s:Separator{Text='One-liner variants'}s
:Combo{Label='Combo 1 (array)',Selected=1,Items={'AAAA','BBBB','CCCC','DDDD',
'EEEE','FFFF','GGGG','HHHH','IIIIIII','JJJJ','KKKKKKK'}}s:Combo{Label=
'Combo 1 (dict)',Selected='AAA',Items={AAA='Apple',BBB='Banana',CCC='Orange'},
Callback=print}s:Combo{Label='Combo 2 (function)',Selected=1,GetItems=function()
return{'aaa','bbb','ccc'}end}end,Indent=function(s)s:Label{Text=
'This is not indented'}local t=s:Indent{Offset=30}t:Label{Text=
'This is indented by 30 pixels'}local x=t:Indent{Offset=30}x:Label{Text=
'This is indented by 30 more pixels'}end,Viewport=function(s)local t=b:
InsertPrefab'R15 Rig'local x=s:Viewport{Size=UDim2.new(1,0,0,200),Clone=true,
Model=t}local y=x.Model y:PivotTo(CFrame.new(0,-2.5,-5))local z=game:GetService
'RunService'z.RenderStepped:Connect(function(A)local B=CFrame.Angles(0,math.rad(
30*A),0)local C=y:GetPivot()*B y:PivotTo(C)end)end,['List layout']=function(s)
local t=s:List()for x=1,10 do t:Button{Text=`Resize the window! {x}`}end end,
Keybinds=function(s)local t=s:Checkbox{Value=true}s:Keybind{Label=
'Toggle checkbox',IgnoreGameProcessed=false,OnKeybindSet=function(x,y)warn(
'[OnKeybindSet] .Value ->',y)end,Callback=function(x,y)print(y)t:Toggle()end}s:
Keybind{Label='Keybind (w/ Q & Left-Click blacklist)',KeyBlacklist={Enum.
UserInputType.MouseButton1,Enum.KeyCode.Q}}s:Keybind{Label=
'Toggle UI visibility',Value=Enum.KeyCode.E,Callback=function()h:
ToggleVisibility()end}end,Input=function(s)s:InputText{Label='One Line Text'}s:
InputTextMultiline{Label='Multiline Text'}s:InputInt{Label='Input int'}end,[
'Text Input']=function(s)local t=s:TreeNode{Title='Multiline'}t:
InputTextMultiline{Size=UDim2.new(1,0,0,117),Value=
'/*The Pentium FOOF bug, shorthand for FO OF C7 C8,\r\n    the hexadecimal encoding of one offending instruction,\r\n    more formally, the invalid operand with locked CMPXCHG8B\r\n    instruction bug, is a design flaw in the majority of\r\n    Intel Pentium, Pentium MMX, and Pentium OverDrive\r\n    processors (all in the P5 microarchitecture).#\r\n    */'
}end}for y,z in t do local A,B=s:TreeNode{Title=z},x[z]if B then task.spawn(B,A)
end end local y=l:CollapsingHeader{Title='Popups & child windows'}local z=y:
TreeNode{Title='Popups'}local A=z:Row()local B=A:Label{Text='<None>',LayoutOrder
=2}A:Button{Text='Select..',Callback=function(C)local D,E={'Bream','Haddock',
'Mackerel','Pollock','Tilefish'},z:PopupCanvas{RelativeTo=C,MaxSizeX=200}E:
Separator{Text='Aquarium'}for F,G in D do E:Selectable{Text=G,Callback=function(
H)B.Text=G E:ClosePopup()end}end end}local C=y:TreeNode{Title='Child windows'}
local D=C:Window{Size=UDim2.fromOffset(300,200),NoMove=true,NoClose=true,
NoCollapse=true,NoResize=true}D:Label{Text='Hello, world!'}D:Button{Text='Save'}
D:InputText{Label='string'}D:SliderFloat{Label='float',Minimum=0,Maximum=1}local
E=y:TreeNode{Title='Modals'}E:Label{Text=
[[Modal windows are like popups but the user cannot close them by clicking outside.]]
,TextWrapped=true}E:Button{Text='Delete..',Callback=function()local F=E:
PopupModal{Title='Delete?'}F:Label{Text=
[[All those beautiful files will be deleted.
This operation cannot be undone!]],
TextWrapped=true}F:Separator()F:Checkbox{Value=false,Label=
"Don't ask me next time"}local G=F:Row{Expanded=true}G:Button{Text='Okay',
Callback=function()F:ClosePopup()end}G:Button{Text='Cancel',Callback=function()F
:ClosePopup()end}end}E:Button{Text='Stacked modals..',Callback=function()local F
=E:PopupModal{Title='Stacked 1'}F:Label{Text=`Hello from Stacked The First\nUsing Theme["ModalWindowDimBg"] behind it.`
,TextWrapped=true}F:Combo{Items={'aaaa','bbbb','cccc','dddd','eeee'}}F:
DragColor3{Value=Color3.fromRGB(102,178,0)}F:Button{Text='Add another modal..',
Callback=function()local G=E:PopupModal{Title='Stacked 2'}G:Label{Text=
'Hello from Stacked The Second!',TextWrapped=true}G:DragColor3{Value=Color3.
fromRGB(102,178,0)}G:Button{Text='Close',Callback=function()G:ClosePopup()end}
end}F:Button{Text='Close',Callback=function()F:ClosePopup()end}end}local F=l:
CollapsingHeader{Title='Tables & Columns'}local G=F:TreeNode{Title='Basic'}local
H=G:Table()for I=1,3 do local J=H:Row()for K=1,3 do local L=J:Column()for M=1,4
do L:Label{Text=`Row {M} Column {K}`}end end end local I=F:TreeNode{Title=
'Borders, background'}local J=I:Table{RowBackground=true,Border=true,MaxColumns=
3}for K=1,5 do local L=J:NextRow()for M=1,3 do local N=L:NextColumn()N:Label{
Text=`Hello {M},{K}`}end end local K=F:TreeNode{Title='With headers'}local L,M=K
:Table{Border=true,RowBackground=true,MaxColumns=3},{'One','Two','Three'}for N=1
,7 do if N==1 then A=L:HeaderRow()else A=L:Row()end for O,P in M do if N==1 then
local Q=A:Column()Q:Label{Text=P}continue end local Q=A:NextColumn()Q:Label{Text
=`Hello {O},{N}`}end end end end function a.d()local c=a.cache.d if not c then c
={c=b()}a.cache.d=c end return c.c end end do local b=function()return{Dot=
'rbxasset://textures/whiteCircle.png',Arrow=
'rbxasset://textures/ui/AvatarContextMenu_Arrow.png',Close=
'rbxasset://textures/loading/cancelButton.png',Checkmark=
'rbxasset://textures/ui/Lobby/Buttons/nine_slice_button.png',Cat=
'rbxassetid://16211812161',Script='rbxassetid://11570895459',Settings=
'rbxassetid://9743465390',Info='rbxassetid://18754976792',Move=
'rbxassetid://6710235139',Roblox='rbxassetid://7414445494',Warning=
'rbxassetid://11745872910',Audio='rbxassetid://302250236',Shop=
'rbxassetid://6473525198',CharacterDance='rbxassetid://11932783331',Pants=
'rbxassetid://10098755331',Home='rbxassetid://4034483344',Robux=
'rbxassetid://5986143282',Badge='rbxassetid://16170504068',SpawnLocation=
'rbxassetid://6400507398',Sword='rbxassetid://7485051715',Clover=
'rbxassetid://11999300014',Star='rbxassetid://3057073083',Code=
'rbxassetid://11348555035',Paw='rbxassetid://13001190533',Shield=
'rbxassetid://7461510428',Shield2='rbxassetid://7169354142',File=
'rbxassetid://7276823330',Book='rbxassetid://16061686835',Location=
'rbxassetid://13549782519',Puzzle='rbxassetid://8898417863',Discord=
'rbxassetid://84828491431270',Premium='rbxassetid://6487178625',Friend=
'rbxassetid://10885655986',User='rbxassetid://18854794412',Duplicate=
'rbxassetid://11833749507',ChatBox='rbxassetid://15839118471',ChatBox2=
'rbxassetid://15839116089',Devices='rbxassetid://4458812712',Weight=
'rbxassetid://9855685269',Image='rbxassetid://123311808092347',Profile=
'rbxassetid://13585614795',Admin='rbxassetid://11656483170',PaintBrush=
'rbxassetid://12111879608',Speed='rbxassetid://12641434961',NoConnection=
'rbxassetid://9795340967',Connection='rbxassetid://119759670842477',Globe=
'rbxassetid://18870359747',Box='rbxassetid://140217940575618',Crown=
'rbxassetid://18826490498',Control='rbxassetid://18979524646',Send=
'rbxassetid://18940312887',FastForward='rbxassetid://112963221295680',Pause=
'rbxassetid://109949100737970',Reload='rbxassetid://11570018242',Joystick=
'rbxassetid://18749336354',Controller='rbxassetid://11894535915',Lock=
'rbxassetid://17783082088',Calculator='rbxassetid://85861816563977',Sun=
'rbxassetid://13492317832',Moon='rbxassetid://8498174594',Prohibited=
'rbxassetid://5248916036',Flag='rbxassetid://251346532',Website=
'rbxassetid://98455290625865',Telegram='rbxassetid://115860270107061',MusicNote=
'rbxassetid://18187351229',Music='rbxassetid://253830398',Headphones=
'rbxassetid://1311321471',Phone='rbxassetid://8411963035',Smartphone=
'rbxassetid://14040313879',Desktop='rbxassetid://3120635703',Desktop2=
'rbxassetid://4728059490',Laptop='rbxassetid://4728059725',Server=
'rbxassetid://9692125126',Wedge='rbxassetid://9086583059',Drill=
'rbxassetid://11959189471',Character='rbxassetid://13285102351'}end function a.e
()local c=a.cache.e if not c then c={c=b()}a.cache.e=c end return c.c end end do
local b=function()return{Light=Color3.fromRGB(242,86,86),Dark=Color3.fromRGB(115
,30,30),ExtraDark=Color3.fromRGB(28,39,53),White=Color3.fromRGB(240,240,240),
Gray=Color3.fromRGB(172,171,175),Black=Color3.fromRGB(15,19,24),Yellow=Color3.
fromRGB(230,180,0),Orange=Color3.fromRGB(230,150,0),Green=Color3.fromRGB(130,188
,91),Red=Color3.fromRGB(255,69,69)}end function a.f()local c=a.cache.f if not c
then c={c=b()}a.cache.f=c end return c.c end end do local b=function()local b,c=
a.f(),{}c.DarkTheme={Values={AnimationTweenInfo=TweenInfo.new(0.08),TextFont=
Font.fromEnum(Enum.Font.RobotoMono),TextSize=14,Text=b.White,TextDisabled=b.Gray
,ErrorText=b.Red,FrameBg=b.Dark,FrameBgTransparency=0.4,FrameBgActive=b.Light,
FrameBgTransparencyActive=0.4,FrameRounding=UDim.new(0,0),SliderGrab=b.Light,
ButtonsBg=b.Light,CollapsingHeaderBg=b.Light,CollapsingHeaderText=b.White,
CheckMark=b.Light,ResizeGrab=b.Light,HeaderBg=b.Gray,HeaderBgTransparency=0.7,
HistogramBar=b.Yellow,ProgressBar=b.Yellow,RegionBg=b.Dark,RegionBgTransparency=
0.1,Separator=b.Gray,SeparatorTransparency=0.5,ConsoleLineNumbers=b.White,
LabelPaddingTop=UDim.new(0,0),LabelPaddingBottom=UDim.new(0,0),MenuBar=b.
ExtraDark,MenuBarTransparency=0.1,PopupCanvas=b.Black,TabTextPaddingTop=UDim.
new(0,3),TabTextPaddingBottom=UDim.new(0,8),TabText=b.Gray,TabBg=b.Dark,
TabTextActive=b.White,TabBgActive=b.Light,TabsBarBg=Color3.fromRGB(36,36,36),
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
Center,TitleBarBg=b.Gray,TitleActive=b.Black,TitleBarBgActive=Color3.fromRGB(186
,186,186),TitleBarBgCollapsed=b.Gray}}return c end function a.g()local c=a.cache
.g if not c then c={c=b()}a.cache.g=c end return c.c end end do local b=function
()local b,c=(a.a())b:AddOnInit(function(e)c=e end)return{{Properties={'Center'},
Callback=function(e,f,g)local h=f.Position b:SetProperties(f,{Position=UDim2.
new(g:find'X'and 0.5 or h.X.Scale,h.X.Offset,g:find'Y'and 0.5 or h.Y.Scale,h.Y.
Offset),AnchorPoint=Vector2.new(g:find'X'and 0.5 or 0,g:find'Y'and 0.5 or 0)})
end},{Properties={'ElementStyle'},Callback=function(e,f,g)c:ApplyStyle(f,g)end},
{Properties={'ColorTag'},Callback=function(e,f,g)local h,i=e.Class,e.WindowClass
local k=h.NoAutoTheme if not i then return end if k then return end c:
UpdateColors{Object=f,Tag=g,NoAnimation=true,Theme=i.Theme}end},{Properties={
'Animation'},Callback=function(e,f,g)local h=e.Class.NoAnimation if h then
return end c:SetAnimation(f,g)end},{Properties={'Image'},Callback=function(e,f,g
)local h=e.WindowClass f.Image=b:CheckAssetUrl(g)c:DynamicImageTag(f,g,h)end},{
Properties={'Icon','IconSize','IconRotation','IconPadding'},Callback=function(e,
f,g)local h=f:FindFirstChild('Icon',true)if not h then c:Warn('No icon for',f)
return end local i=e.Class b:CheckConfig(i,{Icon='',IconSize=UDim2.fromScale(1,1
),IconRotation=0,IconPadding=UDim2.new(0,2)})local k=h.Parent:FindFirstChild
'UIPadding'b:SetPadding(k,i.IconPadding)local l=i.Icon l=b:CheckAssetUrl(l)local
m=e.WindowClass c:DynamicImageTag(h,l,m)b:SetProperties(h,{Visible=h~='',Image=b
:CheckAssetUrl(l),Size=i.IconSize,Rotation=i.IconRotation})end},{Properties={
'BorderThickness','Border','BorderColor'},Callback=function(e,f,g)local h=e.
Class local i=h.Border==true b:CheckConfig(h,{BorderTransparency=e:GetThemeKey
'BorderTransparencyActive',BorderColor=e:GetThemeKey'Border',BorderThickness=1,
BorderStrokeMode=Enum.ApplyStrokeMode.Border})local k=b:GetChildOfClass(f,
'UIStroke')b:SetProperties(k,{Transparency=h.BorderTransparency,Thickness=h.
BorderThickness,Color=h.BorderColor,ApplyStrokeMode=h.BorderStrokeMode,Enabled=i
})end},{Properties={'Ratio'},Callback=function(e,f,g)local h=e.Class b:
CheckConfig(h,{Ratio=1.3333333333333333,RatioAxis=Enum.DominantAxis.Height,
RatioAspectType=Enum.AspectType.ScaleWithParentSize})local i,k,l,m=h.Ratio,h.
RatioAxis,h.RatioAspectType,b:GetChildOfClass(f,'UIAspectRatioConstraint')b:
SetProperties(m,{DominantAxis=k,AspectType=l,AspectRatio=i})end},{Properties={
'FlexMode'},Callback=function(e,f,g)local h=b:GetChildOfClass(f,'UIFlexItem')h.
FlexMode=g end},{Properties={'CornerRadius'},Callback=function(e,f,g)local h=b:
GetChildOfClass(f,'UICorner')h.CornerRadius=g end},{Properties={'Fill'},Callback
=function(e,f,g)if g~=true then return end local h=e.Class b:CheckConfig(h,{Size
=UDim2.fromScale(1,1),UIFlexMode=Enum.UIFlexMode.Fill,AutomaticSize=Enum.
AutomaticSize.None})local i=b:GetChildOfClass(f,'UIFlexItem')i.FlexMode=h.
UIFlexMode f.Size=h.Size f.AutomaticSize=h.AutomaticSize end},{Properties={
'Label'},Callback=function(e,f,g)local h,i=e.Class,f:FindFirstChild'Label'if not
i then return end i.Text=tostring(g)function h:SetLabel(k)i.Text=k return self
end end},{Properties={'NoGradient'},WindowProperties={'NoGradients'},Callback=
function(e,f,g)local h=f:FindFirstChildOfClass'UIGradient'if not h then return
end h.Enabled=g end},{Properties={'UiPadding','PaddingBottom','PaddingTop',
'PaddingRight','PaddingTop'},Callback=function(e,f,g)g=g or 0 if typeof(g)==
'number'then g=UDim.new(0,g)end local h=e.Class local i=h.UiPadding if i then b:
CheckConfig(h,{PaddingBottom=g,PaddingLeft=g,PaddingRight=g,PaddingTop=g})end
local k=b:GetChildOfClass(f,'UIPadding')b:SetProperties(k,{PaddingBottom=h.
PaddingBottom,PaddingLeft=h.PaddingLeft,PaddingRight=h.PaddingRight,PaddingTop=h
.PaddingTop})end},{Properties={'Callback'},Callback=function(e,f)local g=e.Class
function g:SetCallback(h)self.Callback=h return self end function g:FireCallback
(h)self.Callback(f)return self end end},{Properties={'Value'},Callback=function(
e,f)local g=e.Class b:CheckConfig(g,{GetValue=function(h)return g.Value end})end
}}end function a.h()local c=a.cache.h if not c then c={c=b()}a.cache.h=c end
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
function a.i()local c=a.cache.i if not c then c={c=b()}a.cache.i=c end return c.
c end end end local b,c,e,f={Version='1.4.6',Author='Depso',License='MIT',
Repository='https://github.com/depthso/Dear-ReGui/',Debug=false,PrefabsId=
71968920594655,DefaultTitle='ReGui',ContainerName='ReGui',DoubleClickThreshold=
0.3,TooltipOffset=15,IniToSave={'Value'},ClassIgnored={'Visible','Text'},
Container=nil,Prefabs=nil,FocusedWindow=nil,HasTouchScreen=false,Services=nil,
Elements={},_FlagCache={},_ErrorCache={},Windows={},ActiveTooltips={},
IniSettings={},AnimationConnections={}},a.a(),a.b(),a.c()b.DemoWindow=a.d()b.
Services=c.Services b.Animation=e b.Icons=a.e()b.Accent=a.f()b.ThemeConfigs=a.g(
)b.ElementFlags=a.h()local g=a.i()b.ElementColors=g.Coloring b.Animations=g.
Animations b.Styles=g.Styles c:CallOnInitConnections(b)b.DynamicImages={[b.Icons
.Arrow]='ImageFollowsText',[b.Icons.Close]='ImageFollowsText',[b.Icons.Dot]=
'ImageFollowsText'}local h=b.Services local i,k,l,m,n=h.HttpService,h.Players,h.
UserInputService,h.RunService,h.InsertService local o=k.LocalPlayer b.PlayerGui=
o.PlayerGui b.Mouse=o:GetMouse()local p=function()end function GetAndRemove(q,r)
local s=r[q]if s then r[q]=nil end return s end function MoveTableItem(q,r,s)
local t=table.find(q,r)if not t then return end local x=table.remove(q,t)table.
insert(q,s,x)end function Merge(q,r)for s,t in next,r do q[s]=t end end function
Copy(q,r)local s=table.clone(q)if r then Merge(s,r)end return s end function b:
Warn(...)warn('[ReGui]::',...)end function b:Error(...)local q=b:Concat({...},
' ')local r=`\n[ReGui]:: {q}`coroutine.wrap(error)(r)end function b:
IsDoubleClick(q)local r=self.DoubleClickThreshold return q<r end function b:
StyleContainers()local q=self.Container local r,s=q.Overlays,q.Windows self:
SetProperties(s,{OnTopOfCoreBlur=true})self:SetProperties(r,{OnTopOfCoreBlur=
true})end function b:Init(q)q=q or{}if self.Initialised then return end Merge(
self,q)Merge(self,{Initialised=true,HasGamepad=self:IsConsoleDevice(),
HasTouchScreen=self:IsMobileDevice()})self:CheckConfig(self,{ContainerParent=
function()return c:ResolveUIParent()end,Prefabs=function()return self:
LoadPrefabs()end},true)self:CheckConfig(self,{Container=function()return self:
InsertPrefab('Container',{Parent=self.ContainerParent,Name=self.ContainerName})
end},true)local r,s,t=self.Container,self.TooltipOffset,self.ActiveTooltips
local x,y=r.Overlays,0 self:StyleContainers()self.TooltipsContainer=self.
Elements:Overlay{Parent=x}l.InputBegan:Connect(function(z)if not self:
IsMouseEvent(z,true)then return end local A=tick()local B=A-y local C=self:
IsDoubleClick(B)y=C and 0 or A self:UpdateWindowFocuses()end)local z=function()
local z,A=self.TooltipsContainer,#t>0 z.Visible=A if not A then return end local
B,C=b:GetMouseLocation()local D=x.AbsolutePosition z.Position=UDim2.fromOffset(B
-D.X+s,C-D.Y+s)end m.RenderStepped:Connect(z)end function b:CheckImportState()if
self.Initialised then return end local q=self.PrefabsId local r=c:CheckAssetUrl(
q)local s,t=pcall(function()return n:LoadLocalAsset(r)end)self:Init{Prefabs=s
and t or nil}end function b:GetVersion()return self.Version end function b:
IsMobileDevice()return l.TouchEnabled end function b:IsConsoleDevice()return l.
GamepadEnabled end function b:GetScreenSize()return workspace.CurrentCamera.
ViewportSize end function b:LoadPrefabs()local q,r=self.PlayerGui,
'ReGui-Prefabs'local s=script:WaitForChild(r,2)if s then return s end local t=q:
WaitForChild(r,2)if t then return t end return nil end function b:CheckConfig(q,
r,s,t)return c:CheckConfig(q,r,s,t)end function b:CreateInstance(q,r,s)local t=
Instance.new(q,r)if s then local x=s.UsePropertiesList if not x then self:
SetProperties(t,s)else self:ApplyFlags{Object=t,Class=s}end end return t end
function b:ConnectMouseEvent(q,r)local s,t,x,y,z=r.Callback,r.DoubleClick,r.
OnlyMouseHovering,0 if x then z=self:DetectHover(x)end q.Activated:Connect(
function(...)local A=tick()local B=A-y if z and not z.Hovering then return end
if t then if not b:IsDoubleClick(B)then y=A return end y=0 end s(...)end)end
function b:GetAnimation(q)return q and self.Animation or TweenInfo.new(0)end
function b:DynamicImageTag(q,r,s)local t=self.DynamicImages local x=t[r]if not x
then return end if not s then return end s:TagElements{[q]=x}end function b:
GetDictSize(q)local r=0 for s,t in q do r+=1 end return r end function b:
RemoveAnimations(q)local r=self:GetAnimationData(q)local s=r.Connections for t,x
in next,s do x:Disconnect()end end function b:GetAnimationData(q)local r=self.
AnimationConnections local s=r[q]if s then return s end local t={Connections={}}
r[q]=t return t end function b:AddAnimationSignal(q,r)local s=self:
GetAnimationData(q)local t=s.Connections table.insert(t,r)end function b:
SetAnimationsEnabled(q)self.NoAnimations=not q end function b:SetAnimation(q,r,s
)s=s or q local t,x,y=self.Animations,self.HasTouchScreen,r if typeof(r)~=
'table'then y=t[r]end assert(y,`No animation data for Class {r}!`)self:
RemoveAnimations(s)local z,A,B,C,D=y.Init,y.Connections,y.Tweeninfo,y.
NoAnimation,self:GetAnimationData(q)local E,F,G,I,J,K=D.State,true,{},{}function
I:Reset(L)if not J then return end J(L)end function I:FireSignal(L,M)G[L](M)end
function I:Refresh(L)if not K then return end G[K](L)end function I:SetEnabled(L
)F=L end for L,M in next,A do local N,O=function(N)N=N==true K=L local O=self.
NoAnimations if O then return end if not F then return end D.State=L e:Tween{
NoAnimation=N or C,Object=q,Tweeninfo=B,EndProperties=M}end,s[L]if not x then
local P=O:Connect(N)self:AddAnimationSignal(s,P)end G[L]=N if L==z then J=N end
end if E then I:FireSignal(E)else I:Reset(true)end return I end function b:
ConnectDrag(q,r)self:CheckConfig(r,{DragStart=p,DragEnd=p,DragMovement=p,
OnDragStateChange=p})local s,t,x,y,z,A=r.DragStart,r.DragEnd,r.DragMovement,r.
OnDragStateChange,{StartAndEnd={Enum.UserInputType.MouseButton1,Enum.
UserInputType.Touch},Movement={Enum.UserInputType.MouseMovement,Enum.
UserInputType.Touch}},false local B,C,D=function(B,C)local D=B.UserInputType
return table.find(z[C],D)end,function(B)local C=B.Position return Vector2.new(C.
X,C.Y)end,function(B)self._DraggingDisabled=B A=B y(B)end local E=function(E)
local F,G,I=E.IsDragging,E.InputType,E.Callback return function(J)if E.
DraggingRequired~=A then return end if E.CheckDraggingDisabled and self.
_DraggingDisabled then return end if not B(J,G)then return end if E.UpdateState
then D(F)end local K=C(J)I(K)end end q.InputBegan:Connect(E{
CheckDraggingDisabled=true,DraggingRequired=false,UpdateState=true,IsDragging=
true,InputType='StartAndEnd',Callback=s})l.InputEnded:Connect(E{DraggingRequired
=true,UpdateState=true,IsDragging=false,InputType='StartAndEnd',Callback=t})l.
InputChanged:Connect(E{DraggingRequired=true,InputType='Movement',Callback=x})
end function b:MakeDraggable(q)local r,s,t,x,y,z=q.Move,q.Grab,q.
OnDragStateChange,{}function x:SetEnabled(A)local B=q.StateChanged self.Enabled=
A if B then B(self)end end function x:CanDrag(A)return self.Enabled end local A,
B,C,D,E=function(A)if not x:CanDrag()then return end local B=q.DragBegin z=A B(z
)end,function(A)if not x:CanDrag()then return end local B,C=A-z,q.OnUpdate C(B)
end,function(A)y=r.Position end,function(A)local B=UDim2.new(y.X.Scale,y.X.
Offset+A.X,y.Y.Scale,y.Y.Offset+A.Y)q:SetPosition(B)end,function(A,B)e:Tween{
Object=r,EndProperties={Position=B}}end self:CheckConfig(q,{Enabled=true,
OnUpdate=D,SetPosition=E,DragBegin=C})self:ConnectDrag(s,{DragStart=A,
DragMovement=B,OnDragStateChange=t})local F=q.Enabled x:SetEnabled(F)return x
end function b:MakeResizable(q)b:CheckConfig(q,{MinimumSize=Vector2.new(160,90),
MaximumSize=Vector2.new(math.huge,math.huge)})local r,s,t,x,y=q.MaximumSize,q.
MinimumSize,q.Resize,(q.OnUpdate)local z=b:InsertPrefab('ResizeGrab',{Parent=t})
local A,B,C=function(A)z.Visible=A.Enabled end,function(A)local B=y+A local C=
UDim2.fromOffset(math.clamp(B.X,s.X,r.X),math.clamp(B.Y,s.Y,r.Y))if x then x(C)
return end e:Tween{Object=t,EndProperties={Size=C}}end,function(A)y=t.
AbsoluteSize end local D=self:MakeDraggable{Grab=z,OnUpdate=B,DragBegin=C,
StateChanged=A}D.Grab=z return D end function b:IsMouseEvent(q,r)local s=q.
UserInputType.Name if r and s:find'Movement'then return end return s:find'Touch'
or s:find'Mouse'end function b:DetectHover(q,r)local s=r or{}s.Hovering=false
local t,x,y,z,A,B=s.OnInput,s.OnHoverChange,s.Anykey,s.MouseMove,s.MouseEnter,s.
MouseOnly local C=function(C,D,E)if C and B then if not b:IsMouseEvent(C,true)
then return end end if D~=nil then local F=s.Hovering s.Hovering=D if D~=F and x
then x(D)end end if not A and E then return end if t then local F=s.Hovering t(F
,C)return end end local D={q.MouseEnter:Connect(function()C(nil,true,true)end),q
.MouseLeave:Connect(function()C(nil,false,true)end)}if y or B then table.insert(
D,l.InputBegan:Connect(function(E)C(E)end))end if z then local E=q.MouseMoved:
Connect(function()C()end)table.insert(D,E)end function s:Disconnect()for E,F in
next,D do F:Disconnect()end end return s end function b:StackWindows()local q,r=
self.Windows,20 for s,t in next,q do local x,y=t.WindowFrame,UDim2.fromOffset(r*
s,r*s)t:Center()x.Position+=y end end function b:GetElementFlags(q)local r=self.
_FlagCache return r[q]end function b:UpdateColors(q)local r,s,t,x,y,z,A=q.Object
,q.Tag,q.NoAnimation,q.TagsList,q.Theme,q.Tweeninfo,self.ElementColors local B,C
,D=self:GetElementFlags(r),self.Debug,A[s]if typeof(D)=='string'then D=A[D]end
if typeof(s)=='table'then D=s elseif x then x[r]=s end if not D then return end
local E={}for F,G in next,D do local I=self:GetThemeKey(y,G)if B and B[F]then
continue end if not I then if C then self:Warn(`Color: '{G}' does not exist!`)
end continue end E[F]=I end e:Tween{Tweeninfo=z,Object=r,NoAnimation=t,
EndProperties=E}end function b:MultiUpdateColors(q)local r=q.Objects for s,t in
next,r do self:UpdateColors{TagsList=q.TagsList,Theme=q.Theme,NoAnimation=not q.
Animate,Tweeninfo=q.Tweeninfo,Object=s,Tag=t}end end function b:ApplyStyle(q,r)
local s=self.Styles local t=s[r]if not t then return end self:ApplyFlags{Object=
q,Class=t}end function b:ClassIgnores(q)local r=self.ClassIgnored local s=table.
find(r,q)return s and true or false end function b:MergeMetatables(q,r)local s,t
=self.Debug,{}t.__index=function(x,y)local z,A=self:ClassIgnores(y),q[y]if A~=
nil and not z then return A end local B,C=pcall(function()local B=r[y]return
self:PatchSelf(r,B)end)return B and C or nil end t.__newindex=function(x,y,z)
local A,B=self:ClassIgnores(y),typeof(z)=='function'local C=q[y]~=nil or B if C
and not A then q[y]=z return end xpcall(function()r[y]=z end,function(D)if s
then self:Warn(`Newindex Error: {r}.{y} = {z}\n{D}`)end q[y]=z end)end return
setmetatable({},t)end function b:Concat(q,r)local s=''for t,x in next,q do s..=
tostring(x)..(t~=#q and r or'')end return s end function b:GetValueFromAliases(q
,r)for s,t in q do local x=r[t]if x~=nil then return x end end return nil end
function b:RecursiveCall(q,r)for s,t in next,q:GetDescendants()do r(t)end end
function b:ApplyFlags(q)local r,s,t,x=self.ElementFlags,q.Object,q.Class,q.
WindowClass function q:GetThemeKey(y)if x then return x:GetThemeKey(y)else
return b:GetThemeKey(nil,y)end end self:SetProperties(s,t)for y,z in next,r do
local A,B,C,D=z.Properties,z.Callback,z.Recursive,z.WindowProperties local E=
self:GetValueFromAliases(A,t)if x and D and E==nil then E=self:
GetValueFromAliases(D,x)end if E==nil then continue end B(q,s,E)if C then self:
RecursiveCall(s,function(F)B(q,F,E)end)end end end function b:SetProperties(q,r)
return c:SetProperties(q,r)end function b:InsertPrefab(q,r)local s=self.Prefabs
local t=s.Prefabs local x=t:WaitForChild(q)local y=x:Clone()if r then local z=r.
UsePropertiesList if not z then self:SetProperties(y,r)else self:ApplyFlags{
Object=y,Class=r}end end return y end function b:GetContentSize(q,r)local s,t,x,
y=q:FindFirstChildOfClass'UIListLayout',q:FindFirstChildOfClass'UIPadding',(q:
FindFirstChildOfClass'UIStroke')if s and not r then y=s.AbsoluteContentSize else
y=q.AbsoluteSize end if t then local z,A,B,C=t.PaddingTop.Offset,t.PaddingBottom
.Offset,t.PaddingLeft.Offset,t.PaddingRight.Offset y+=Vector2.new(B+C,z+A)end if
x then local z=x.Thickness y+=Vector2.new(z/2,z/2)end return y end function b:
PatchSelf(q,r,...)if typeof(r)~='function'then return r,...end return function(s
,...)return r(q,...)end end function b:MakeCanvas(q)local r,s,t,x,y,z,A=self.
Elements,self.Debug,q.Element,q.WindowClass,q.Class,q.OnChildChange,f:NewSignal(
)if z then A:Connect(z)end if not x and s then self:Warn(`No WindowClass for {t}`
)self:Warn(q)end local B=c:NewClass(r,{Class=y,RawObject=t,WindowClass=x or
false,OnChildChange=A,Elements={}})local C={__index=function(C,D)local E=B[D]if
E~=nil then return self:PatchSelf(B,E)end local F=y[D]if F~=nil then return self
:PatchSelf(y,F)end local G=t[D]return self:PatchSelf(t,G)end,__newindex=function
(C,D,E)local F=y[D]~=nil if F then y[D]=E else t[D]=E end end}return
setmetatable({},C)end function b:GetIniData(q)local r,s=self.IniToSave,{}for t,x
in next,r do s[x]=q[x]end return s end function b:DumpIni(q)local r,s=self.
IniSettings,{}for t,x in next,r do s[t]=self:GetIniData(x)end if q then return i
:JSONEncode(s)end return s end function b:LoadIniIntoElement(q,r)local s={Value=
function(s)q:SetValue(s)end}for t,x in next,r do local y=s[t]if y then y(x)
continue end q[t]=x end end function b:LoadIni(q,r)local s=self.IniSettings
assert(q,'No Ini configuration was passed')if r then q=i:JSONDecode(q)end for t,
x in next,q do local y=s[t]self:LoadIniIntoElement(y,x)end end function b:
AddIniFlag(q,r)local s=self.IniSettings s[q]=r end function b:OnElementCreate(q)
local r,s,t,x,y=self._FlagCache,q.Flags,q.Object,q.Canvas,q.Class local z,A,B,C,
D,E=x.WindowClass,s.NoAutoTag,s.NoAutoFlags,s.ColorTag,s.NoStyle,s.IniFlag r[t]=
s if E then self:AddIniFlag(E,y)end if D then return end if not A and z then z:
TagElements{[t]=C}end if z then z:LoadStylesIntoElement(q)end if not B then self
:ApplyFlags{Object=t,Class=s,WindowClass=z}end end function b:VisualError(q,r,s)
local t=self.Initialised and q.Error if not t then self:Error('Class:',s)return
end q:Error{Parent=r,Text=s}end function b:WrapGeneration(q,r)local s,t,x=self.
_ErrorCache,r.Base,r.IgnoreDefaults return function(y,z,...)z=z or{}self:
CheckConfig(z,t)local A=z.CloneTable if A then z=table.clone(z)end local B,C,D=y
.RawObject,y.Elements,y.OnChildChange self:CheckConfig(z,{Parent=B,Name=z.
ColorTag},nil,x)if y==self then y=self.Elements end local E,F,G=pcall(q,y,z,...)
if E==false then if B then if s[B]then return end s[B]=F end self:VisualError(y,
B,F)self:Error('Class:',F)self:Error(debug.traceback())end if G==nil then G=F
end if D then D:Fire(F)end if G then if C then table.insert(C,G)end self:
OnElementCreate{Object=G,Flags=z,Class=F,Canvas=y}end return F,G end end
function b:DefineElement(q,r)local s,t,x=self.Elements,self.ThemeConfigs,self.
ElementColors local y,z,A,B,C,D=t.DarkTheme,r.Base,r.Create,r.Export,r.ThemeTags
,r.ColorData self:CheckConfig(z,{ColorTag=q,ElementStyle=q})if C then Merge(y,C)
end if D then Merge(x,D)end local E=self:WrapGeneration(A,r)if B then self[q]=E
end s[q]=E return E end function b:DefineGlobalFlag(q)local r=self.ElementFlags
table.insert(r,q)end function b:DefineTheme(q,r)local s=self.ThemeConfigs self:
CheckConfig(r,{BaseTheme=s.DarkTheme})local t=GetAndRemove('BaseTheme',r)local x
={BaseTheme=t,Values=r}s[q]=x return x end function b:GetMouseLocation()local q=
self.Mouse return q.X,q.Y end function b:SetWindowFocusesEnabled(q)self.
WindowFocusesEnabled=q end function b:UpdateWindowFocuses()local q,r=self.
Windows,self.WindowFocusesEnabled if not r then return end for s,t in q do local
x=t.HoverConnection if not x then continue end local y=x.Hovering if y then self
:SetFocusedWindow(t)return end end self:SetFocusedWindow(nil)end function b:
WindowCanFocus(q)if q.NoSelect then return false end if q.Collapsed then return
false end if q._SelectDisabled then return false end return true end function b:
GetFocusedWindow()return self.FocusedWindow end function b:BringWindowToFront(q)
local r,s=self.Windows,q.NoBringToFrontOnFocus if s then return end
MoveTableItem(r,q,1)end function b:SetFocusedWindow(q)local r,s=self:
GetFocusedWindow(),self.Windows if r==q then return end self.FocusedWindow=q if
q then local t=self:WindowCanFocus(q)if not t then return end self:
BringWindowToFront(q)end local t=#s for x,y in s do local z,A=self:
WindowCanFocus(y),y.WindowFrame if not z then continue end t-=1 if t then A.
ZIndex=t end local B=y==q y:SetFocused(B,t)end end function b:SetItemTooltip(q,r
)local s,t,x=self.Elements,self.TooltipsContainer,self.ActiveTooltips local y,z=
t:Canvas{Visible=false,UiPadding=UDim.new()}task.spawn(r,y)b:DetectHover(q,{
MouseMove=true,MouseEnter=true,OnHoverChange=function(A)if A then table.insert(x
,y)return end local B=table.find(x,y)table.remove(x,B)end,OnInput=function(A,B)z
.Visible=A end})end function b:CheckFlags(q,r)for s,t in next,q do local x=r[s]
if not x then continue end t(x)end end function b:GetThemeKey(q,r)local s=self.
ThemeConfigs if typeof(q)=='string'then q=s[q]end local t=s.DarkTheme q=q or t
local x,y=q.BaseTheme,q.Values local z=y[r]if z then return z end if x then
return self:GetThemeKey(x,r)end return end function b:SelectionGroup(q)local r,s
,t=false,function(r,s)for t,x in next,q do if typeof(x)=='Instance'then continue
end if x==s then continue end r(x)end end local x=function(x)if r then return
end r=true local y=t t=x:GetValue()if not y then y=t end s(function(z)z:
SetValue(y)end,x)r=false end s(function(y)y.Callback=x end)end local q=b.
Elements q.__index=q function q:GetObject()return self.RawObject end function q:
ApplyFlags(r,s)local t=self.WindowClass b:ApplyFlags{WindowClass=t,Object=r,
Class=s}end function q:Remove()local r,s,t=self.OnChildChange,self:GetObject(),
self.Class local x=t.Remove if x then return x(t)end if r then r:Fire(t or self)
end if t then table.clear(t)end s:Destroy()table.clear(self)end function q:
GetChildElements()local r=self.Elements return r end function q:
ClearChildElements()local r=self:GetChildElements()for s,t in next,r do t:
Destroy()end end function q:TagElements(r)local s,t=self.WindowClass,b.Debug if
not s then if t then b:Warn('No WindowClass for TagElements:',r)end return end s
:TagElements(r)end function q:GetThemeKey(r)local s=self.WindowClass if s then
return s:GetThemeKey(r)end return b:GetThemeKey(nil,r)end function q:
SetColorTags(r,s)local t=self.WindowClass if not t then return end local x,y=t.
TagsList,t.Theme b:MultiUpdateColors{Animate=s,Theme=y,TagsList=x,Objects=r}end
function q:SetElementFocused(r,s)local t,x,y,z=self.WindowClass,b.HasTouchScreen
,s.Focused,s.Animation b:SetAnimationsEnabled(not y)if not y and z then z:
Refresh()end if not t then return end if not x then return end local A=t.
ContentCanvas A.Interactable=not y end b:DefineElement('Dropdown',{Base={
ColorTag='PopupCanvas',Disabled=false,AutoClose=true,OnSelected=p},Create=
function(r,s)s.Parent=b.Container.Overlays local t,x,y,z,A=s.Selected,s.Items,s.
OnSelected,r:PopupCanvas(s)local B,C,D=b:MergeMetatables(s,z),{},function(B)y(B)
end function s:ClearEntries()for E,F in C do F:Remove()end end function s:
SetItems(E,F)local G=E[1]self:ClearEntries()for I,J in E do local K,L=G and J or
I,I==F or J==F local M=z:Selectable{Text=tostring(K),Selected=L,ZIndex=6,
Callback=function()return D(K)end}table.insert(C,M)end end if x then s:SetItems(
x,t)end return B,A end})b:DefineElement('OverlayScroll',{Base={ElementClass=
'OverlayScroll',Spacing=UDim.new(0,4)},Create=function(r,s)local t,x,y=r.
WindowClass,s.ElementClass,s.Spacing local z=b:InsertPrefab(x,s)local A,B=z:
FindFirstChild'ContentFrame'or z,z:FindFirstChild('UIListLayout',true)B.Padding=
y local C=b:MergeMetatables(r,s)local D=b:MakeCanvas{Element=A,WindowClass=t,
Class=C}function s:GetCanvasSize()return A.AbsoluteCanvasSize end return D,z end
})b:DefineElement('Overlay',{Base={ElementClass='Overlay'},Create=q.
OverlayScroll})b:DefineElement('Image',{Base={Image='',Callback=p},Create=
function(r,s)local t=b:InsertPrefab('Image',s)t.Activated:Connect(function(...)
local x=s.Callback return x(t,...)end)return t end})b:DefineElement(
'VideoPlayer',{Base={Video='',Callback=p},Create=function(r,s)local t=s.Video s.
Video=c:CheckAssetUrl(t)local x=b:InsertPrefab('VideoPlayer',s)return x end})b:
DefineElement('Button',{Base={Text='Button',DoubleClick=false,Callback=p},Create
=function(r,s)local t=b:InsertPrefab('Button',s)local x,y=b:MergeMetatables(s,t)
,s.DoubleClick function s:SetDisabled(z)self.Disabled=z end b:ConnectMouseEvent(
t,{DoubleClick=y,Callback=function(...)if s.Disabled then return end local z=s.
Callback return z(x,...)end})return x,t end})b:DefineElement('Selectable',{Base=
{Text='Selectable',Callback=p,Selected=false,Disabled=false,Size=UDim2.
fromScale(1,0),AutomaticSize=Enum.AutomaticSize.Y,TextXAlignment=Enum.
TextXAlignment.Left,AnimationTags={Selected='Buttons',Unselected=
'TransparentButtons'}},Create=function(r,s)local t,x,y,z=r.Class.AfterClick,s.
Selected,s.Disabled,b:InsertPrefab('Button',s)local A=b:MergeMetatables(s,z)z.
Activated:Connect(function(...)local B=s.Callback B(z,...)if t then t(z,...)end
end)function s:SetSelected(B)local C=self.AnimationTags local D=B and C.Selected
or C.Unselected self.Selected=B b:SetAnimation(z,D)return self end function s:
SetDisabled(B)self.Disabled=B z.Interactable=not B return self end s:
SetSelected(x)s:SetDisabled(y)return A,z end})b:DefineElement('ImageButton',{
Base={ElementStyle='Button',Callback=p},Create=q.Image})b:DefineElement(
'SmallButton',{Base={Text='Button',PaddingTop=UDim.new(),PaddingBottom=UDim.new(
),PaddingLeft=UDim.new(0,2),PaddingRight=UDim.new(0,2),ColorTag='Button',
ElementStyle='Button',Callback=p},Create=q.Button})b:DefineElement('Keybind',{
Base={Label='Keybind',ColorTag='Frame',Value=nil,DeleteKey=Enum.KeyCode.
Backspace,IgnoreGameProcessed=true,Enabled=true,Disabled=false,Callback=p,
OnKeybindSet=p,OnBlacklistedKeybindSet=p,KeyBlacklist={},UiPadding=UDim.new(),
AutomaticSize=Enum.AutomaticSize.None,Size=UDim2.new(0.3,0,0,19)},Create=
function(r,s)local t,x,y,z,A=s.Value,s.Label,s.Disabled,s.KeyBlacklist,b:
InsertPrefab('Button',s)local B,C,D,E=b:MergeMetatables(s,A),r:Label{Parent=A,
Text=x,Position=UDim2.new(1,4,0.5),AnchorPoint=Vector2.new(0,0.5)},function(B,
...)return B(A,...)end,function(B)return table.find(z,B)end function s:
SetDisabled(F)self.Disabled=F A.Interactable=not F r:SetColorTags({[C]=F and
'LabelDisabled'or'Label'},true)return self end function s:SetValue(F)local G,I=
self.OnKeybindSet,self.DeleteKey if F==I then F=nil end self.Value=F A.Text=F
and F.Name or'Not set'D(G,F)return self end function s:WaitForNewKey()self.
_WaitingForNewKey=true A.Text='...'A.Interactable=false end local F=function(F)
local G,I=F.KeyCode,F.UserInputType if I~=Enum.UserInputType.Keyboard then
return I end return G end local G=function(G)local I,J,K=s.
OnBlacklistedKeybindSet,s.Value,F(G)if not l.WindowFocused then return end if E(
K)then D(I,K)return end A.Interactable=true s._WaitingForNewKey=false if K.Name
=='Unknown'then return s:SetValue(J)end s:SetValue(K)return end local I=function
(I,J)local K,L,M,N,O,P=s.IgnoreGameProcessed,s.DeleteKey,s.Enabled,s.Value,s.
Callback,F(I)if s._WaitingForNewKey then G(I)return end if not M and A.
Interactable then return end if not K and J then return end if not N then return
end if P==L then return end if P.Name~=N.Name then return end D(O,P)end s:
SetValue(t)s:SetDisabled(y)s.Connection=l.InputBegan:Connect(I)A.Activated:
Connect(function()s:WaitForNewKey()end)b:SetAnimation(A,'Inputs')return B,A end}
)b:DefineElement('ArrowButton',{Base={Direction='Left',ColorTag='Button',Icon=b.
Icons.Arrow,Size=UDim2.fromOffset(21,21),IconSize=UDim2.fromScale(1,1),
IconPadding=UDim.new(0,4),Rotations={Left=180,Right=0}},Create=function(r,s)
local t,x=s.Direction,s.Rotations local y=x[t]s.IconRotation=y local z=b:
InsertPrefab('ArrowButton',s)z.Activated:Connect(function(...)local A=s.Callback
return A(z,...)end)return z end})b:DefineElement('Label',{Base={Font=
'Inconsolata'},ColorData={LabelPadding={PaddingTop='LabelPaddingTop',
PaddingBottom='LabelPaddingBottom'}},Create=function(r,s)local t,x,y,z,A,B,C,D=s
.Bold,s.Italic,s.Font,s.FontFace,Enum.FontWeight.Medium,Enum.FontWeight.Bold,
Enum.FontStyle.Normal,Enum.FontStyle.Italic local E,F,G=t and B or A,x and D or
C,t or x if not z and G then s.FontFace=Font.fromName(y,E,F)end local I=b:
InsertPrefab('Label',s)local J=I:FindFirstChildOfClass'UIPadding'r:TagElements{[
J]='LabelPadding'}return I end})b:DefineElement('Error',{Base={RichText=true,
TextWrapped=true},ColorData={Error={TextColor3='ErrorText',FontFace='TextFont'}}
,Create=function(r,s)local t=s.Text s.Text=`<b>\226\155\148 Error:</b> {t}`
return r:Label(s)end})local r={Engaged=false}r.__index=r function r:SetEngaged(s
)local t=self.WindowClass self.Engaged=s if t then t:SetCanvasInteractable(not s
)end end function r:IsHovering()local s=false self:Foreach(function(t)s=t.Popup:
IsMouseHovering()return s end)return s end function r:Foreach(s)local t=self.
Menus for x,y in next,t do local z=s(y)if z then break end end end function r:
SetFocusedMenu(s)self:Foreach(function(t)local x=t==s t:SetActiveState(x)end)end
function r:Close()self:SetEngaged(false)self:SetFocusedMenu(nil)end function r:
MenuItem(s)local t,x=self.Canvas,self.Menus local y=t:MenuButton(s)local z=t:
PopupCanvas{RelativeTo=y,MaxSizeX=210,Visible=false,AutoClose=false,AfterClick=
function()self:Close()end}local A={Popup=z,Button=y}b:DetectHover(y,{MouseEnter=
true,OnInput=function()if not self.Engaged then return end self:SetFocusedMenu(A
)end})function A:SetActiveState(B)z:SetPopupVisible(B)y:SetSelected(B)end y.
Activated:Connect(function()self:SetFocusedMenu(A)self:SetEngaged(true)end)table
.insert(x,A)return z,A end b:DefineElement('MenuBar',{Base={},Create=function(s,
t)local x,y=s.WindowClass,b:InsertPrefab('MenuBar',t)local z=b:MakeCanvas{
Element=y,WindowClass=x,Class=t}local A=c:NewClass(r,{WindowClass=x,Canvas=z,
Object=y,Menus={}})Merge(A,t)b:DetectHover(y,{MouseOnly=true,OnInput=function()
if not A.Engaged then return end if A:IsHovering()then return end A:Close()end})
local B=b:MergeMetatables(A,z)return B,y end})b:DefineElement('MenuButton',{Base
={Text='MenuButton',PaddingLeft=UDim.new(0,8),PaddingRight=UDim.new(0,8),Size=
UDim2.fromOffset(0,19),AutomaticSize=Enum.AutomaticSize.XY},Create=q.Selectable}
)local s={ColorTags={BGSelected={[true]='SelectedTab',[false]='DeselectedTab'},
LabelSelected={[true]='SelectedTabLabel',[false]='DeselectedTabLabel'}}}function
s:SetButtonSelected(t,x)if t.IsSelected==x then return end t.IsSelected=x local
y,z,A=self.NoAnimation,self.WindowClass,self.ColorTags local B,C,D,E,F=z.Theme,z
.TagsList,A.BGSelected,A.LabelSelected,t.TabButton local G=F.Button local I=G.
Label b:MultiUpdateColors{Animate=not y,Theme=B,TagsList=C,Objects={[G]=D[x],[I]
=E[x]}}end function s:CompareTabs(t,x)if not t then return false end return t.
MatchBy==x or t==x end function s:ForEachTab(t,x)local y,z=typeof(t)=='string',
self.Tabs for A,B in z do local C,D=B.Name,false if y then D=C==t else D=self:
CompareTabs(B,t)end x(B,D,A)end end function s:RemoveTab(t)local x,y=self.
OnTabRemove,self.Tabs self:ForEachTab(t,function(z,A,B)if not A then return end
local C,D=z.TabButton,z.OnClosure table.remove(y,B)C:Destroy()x(self,z)D(z)end)
return self end function s:CreateTab(t)t=t or{}b:CheckConfig(t,{Name='Tab',
AutoSize='Y',Focused=false,OnClosure=p})local x,y,z,A,B,C,D,E,F=self.
AutoSelectNewTabs,self.WindowClass,self.ParentCanvas,self.Tabs,self.TabsFrame,
self.OnTabCreate,t.Focused,t.Name,t.Icon local G,I=D or#A<=0 and x,b:
InsertPrefab('TabButton',t)I.Parent=B local J=I.Button local K,L=J:
FindFirstChildOfClass'UIPadding',J.Label L.Text=tostring(E)Merge(t,{TabButton=I}
)local M,N=function()self:SetActiveTab(t)end,{Closeable=function()local M=z:
RadioButton{Parent=J,Visible=not self.NoClose,Icon=b.Icons.Close,IconSize=UDim2.
fromOffset(11,11),LayoutOrder=3,ZIndex=2,UsePropertiesList=true,Callback=
function()self:RemoveTab(t)end}local N=M.Icon b:SetAnimation(N,{Connections={
MouseEnter={ImageTransparency=0},MouseLeave={ImageTransparency=1}},Init=
'MouseLeave'},I)end}J.Activated:Connect(M)b:CheckFlags(N,t)table.insert(A,t)if y
then y:TagElements{[K]='TabPadding'}end b:SetAnimation(J,'Buttons')self:
SetButtonSelected(t,G)z:ApplyFlags(I,t)local O=C(self,t)if G then self:
SetActiveTab(t)end return O or t end function s:SetActiveTab(t)local x,y,z,A,B,C
=nil,self.Tabs,self.NoAnimation,self.ActiveTab,self.OnActiveTabChange,typeof(t)
=='string'self:ForEachTab(t,function(D,E,F)if E then x=D end self:
SetButtonSelected(D,E)end)if not x then return self end if self:CompareTabs(x,A)
then return self end self.ActiveTab=x B(self,x,A)return self end b:
DefineElement('TabBar',{Base={AutoSelectNewTabs=true,OnActiveTabChange=p,
OnTabCreate=p,OnTabRemove=p},ColorData={DeselectedTab={BackgroundColor3='TabBg'}
,SelectedTab={BackgroundColor3='TabBgActive'},DeselectedTabLabel={FontFace=
'TextFont',TextColor3='TabText'},SelectedTabLabel={FontFace='TextFont',
TextColor3='TabTextActive'},TabsBarSeparator={BackgroundColor3='TabBgActive'},
TabPadding={PaddingTop='TabTextPaddingTop',PaddingBottom='TabTextPaddingBottom'}
,TabPagePadding={PaddingBottom='TabPagePadding',PaddingLeft='TabPagePadding',
PaddingRight='TabPagePadding',PaddingTop='TabPagePadding'}},Create=function(t,x)
local y,z,A=t.WindowClass,b:InsertPrefab('TabsBar',x),c:NewClass(s)local B,C=z.
Separator,z.TabsFrame local D=b:MakeCanvas{Element=C,WindowClass=y,Class=A}
Merge(A,x)Merge(A,{ParentCanvas=t,Object=z,TabsFrame=C,WindowClass=y,Tabs={}})t:
TagElements{[z]='TabsBar',[B]='TabsBarSeparator'}local E=b:MergeMetatables(D,z)
return E,z end})b:DefineElement('TabSelector',{Base={NoTabsBar=false,
OnActiveTabChange=p,OnTabCreate=p,OnTabRemove=p},Create=function(t,x)local y,z,A
,B=t.WindowClass,x.NoTabsBar,x.NoAnimation,b:InsertPrefab('TabSelector',x)local
C=B.Body local D=C.PageTemplate D.Visible=false local E,F=function(E,F,...)local
G,I,J=F.AutoSize,F.Name,D:Clone()local K=c:GetChildOfClass(J,'UIPadding')b:
SetProperties(J,{Parent=C,Name=I,AutomaticSize=Enum.AutomaticSize[G],Size=UDim2.
fromScale(G=='Y'and 1 or 0,G=='X'and 1 or 0)})t:TagElements{[K]='TabPagePadding'
}local L=b:MakeCanvas{Element=J,WindowClass=y,Class=F}x.OnTabCreate(E,F,...)
Merge(F,{Page=J,MatchBy=L})return L end,function(E,F,...)E:ForEachTab(F,function
(G,I,J)local K=G.Page K.Visible=I if not I then return end local L=t:GetThemeKey
'AnimationTweenInfo'e:Tween{Object=K,Tweeninfo=L,NoAnimation=A,StartProperties={
Position=UDim2.fromOffset(0,4)},EndProperties={Position=UDim2.fromOffset(0,0)}}
end)x.OnActiveTabChange(E,F,...)end local G=t:TabBar{Parent=B,Visible=not z,
OnTabCreate=E,OnActiveTabChange=F,OnTabRemove=function(G,I,...)I.Page:Remove()x.
OnTabRemove(...)end}local I=b:MergeMetatables(G,B)return I,B end})b:
DefineElement('RadioButton',{Base={Callback=p},Create=function(t,x)local y=b:
InsertPrefab('RadioButton',x)y.Activated:Connect(function(...)local z=x.Callback
return z(y,...)end)return y end})b:DefineElement('Checkbox',{Base={Label=
'Checkbox',IsRadio=false,Value=false,NoAutoTag=true,TickedImageSize=UDim2.
fromScale(1,1),UntickedImageSize=UDim2.fromScale(0,0),Callback=p,Disabled=false}
,Create=function(t,x)local y,z,A,B,C,D,E=x.IsRadio,x.Value,x.Label,x.
TickedImageSize,x.UntickedImageSize,x.Disabled,b:InsertPrefab('CheckBox',x)local
F,G=b:MergeMetatables(x,E),E.Tickbox local I=G.Tick I.Image=b.Icons.Checkmark
local J,K,L,M=G:FindFirstChildOfClass'UIPadding',c:GetChildOfClass(G,'UICorner')
,t:Label{Text=A,Parent=E,LayoutOrder=2},UDim.new(0,3)if y then I.
ImageTransparency=1 I.BackgroundTransparency=0 K.CornerRadius=UDim.new(1,0)else
M=UDim.new(0,2)end b:SetProperties(J,{PaddingBottom=M,PaddingLeft=M,PaddingRight
=M,PaddingTop=M})local N,O=function(...)local N=x.Callback return N(F,...)end,
function(N,O)local P,Q=t:GetThemeKey'AnimationTweenInfo',N and B or C e:Tween{
Object=I,Tweeninfo=P,NoAnimation=O,EndProperties={Size=Q}}end function x:
SetDisabled(P)self.Disabled=P E.Interactable=not P t:SetColorTags({[L]=P and
'LabelDisabled'or'Label'},true)return self end function x:SetValue(P,Q)self.
Value=P O(P,Q)N(P)return self end function x:SetTicked(...)b:Warn
'Checkbox:SetTicked is deprecated, please use :SetValue'return self:SetValue(...
)end function x:Toggle()local P=not self.Value self.Value=P self:SetValue(P)
return self end local P=function()x:Toggle()end E.Activated:Connect(P)G.
Activated:Connect(P)x:SetValue(z,true)x:SetDisabled(D)b:SetAnimation(G,'Buttons'
,E)t:TagElements{[I]='CheckMark',[G]='Checkbox'}return F,E end})b:DefineElement(
'Radiobox',{Base={IsRadio=true,CornerRadius=UDim.new(1,0)},Create=q.Checkbox})b:
DefineElement('PlotHistogram',{Base={ColorTag='Frame',Label='Histogram'},Create=
function(t,x)local y,z,A=x.Label,x.Points,b:InsertPrefab('Histogram',x)local B,C
=b:MergeMetatables(x,A),A.Canvas local D=C.PointTemplate D.Visible=false t:Label
{Text=y,Parent=A,Position=UDim2.new(1,4)}local E b:SetItemTooltip(A,function(F)E
=F:Label()end)Merge(x,{_Plots={},_Cache={}})function x:GetBaseValues()local F,G=
self.Minimum,self.Maximum if F and G then return F,G end local I=self._Plots for
J,K in I do local L=K.Value if not F or L<F then F=L end if not G or L>G then G=
L end end return F,G end function x:UpdateGraph()local F,G,I=self._Plots,self:
GetBaseValues()if not G or not I then return end local J=I-G for K,L in F do
local M,N=L.Point,L.Value local O=(N-G)/J O=math.clamp(O,0.05,1)M.Size=UDim2.
fromScale(1,O)end return self end function x:Plot(F)local G,I,J=self._Plots,{},D
:Clone()local K=J.Bar b:SetProperties(J,{Parent=C,Visible=true})local L,M=b:
DetectHover(J,{MouseEnter=true,OnInput=function()I:UpdateTooltip()end}),{Object=
J,Point=K,Value=F}function I:UpdateTooltip()local N=I:GetPointIndex()E.Text=`{N}:\t{
M.Value}`end function I:SetValue(N)M.Value=N x:UpdateGraph()if L.Hovering then
self:UpdateTooltip()end end function I:GetPointIndex()return table.find(G,M)end
function I:Remove(N)table.remove(G,self:GetPointIndex())J:Remove()x:UpdateGraph(
)end table.insert(G,M)self:UpdateGraph()b:SetAnimation(K,'Plots',J)t:TagElements
{[K]='Plot'}return I end function x:PlotGraph(F)local G=self._Cache local I=#G-#
F if I>=1 then for J=1,I do local K=table.remove(G,J)if K then K:Remove()end end
end for J,K in F do local L=G[J]if L then L:SetValue(K)continue end G[J]=self:
Plot(K)end return self end if z then x:PlotGraph(z)end return B,A end})b:
DefineElement('Viewport',{Base={IsRadio=true},Create=function(t,x)local y,z,A=x.
Model,x.Camera,b:InsertPrefab('Viewport',x)local B,C=b:MergeMetatables(x,A),A.
Viewport local D=C.WorldModel if not z then z=b:CreateInstance('Camera',C)z.
CFrame=CFrame.new(0,0,0)end Merge(x,{Camera=z,WorldModel=D,Viewport=C})function
x:SetCamera(E)self.Camera=E C.CurrentCamera=E return self end function x:
SetModel(E,F)local G=self.Clone D:ClearAllChildren()if G then E=E:Clone()end if
F then E:PivotTo(F)end E.Parent=D self.Model=E return E end if y then x:
SetModel(y)end x:SetCamera(z)return B,A end})b:DefineElement('InputText',{Base={
Value='',Placeholder='',Label='Input text',Callback=p,MultiLine=false,NoAutoTag=
true,Disabled=false},Create=function(t,x)local y,z,A,B,C,D=x.MultiLine,x.
Placeholder,x.Label,x.Disabled,x.Value,b:InsertPrefab('InputBox',x)local E=D.
Frame local F,G=E.Input,b:MergeMetatables(x,D)t:Label{Parent=D,Text=A,
AutomaticSize=Enum.AutomaticSize.X,Size=UDim2.fromOffset(0,19),Position=UDim2.
new(1,4),LayoutOrder=2}b:SetProperties(F,{PlaceholderText=z,MultiLine=y})local I
=function(...)local I=x.Callback I(G,...)end function x:SetValue(J)F.Text=
tostring(J)self.Value=J return self end function x:SetDisabled(J)self.Disabled=J
D.Interactable=not J t:SetColorTags({[A]=J and'LabelDisabled'or'Label'},true)
return self end function x:Clear()F.Text=''return self end local J=function()
local J=F.Text x.Value=J I(J)end F:GetPropertyChangedSignal'Text':Connect(J)x:
SetDisabled(B)x:SetValue(C)t:TagElements{[F]='Frame'}return G,D end})b:
DefineElement('InputInt',{Base={Value=0,Increment=1,Placeholder='',Label=
'Input Int',Callback=p},Create=function(t,x)local y,z,A,B,C,D=x.Value,x.
Placeholder,x.Label,x.Disabled,x.NoButtons,b:InsertPrefab('InputBox',x)local E,F
=b:MergeMetatables(x,D),D.Frame local G=F.Input G.PlaceholderText=z local I,J,K,
L=t:Button{Text='-',Parent=F,LayoutOrder=2,Ratio=1,AutomaticSize=Enum.
AutomaticSize.None,FlexMode=Enum.UIFlexMode.None,Size=UDim2.fromScale(1,1),
Visible=not C,Callback=function()x:Decrease()end},t:Button{Text='+',Parent=F,
LayoutOrder=3,Ratio=1,AutomaticSize=Enum.AutomaticSize.None,FlexMode=Enum.
UIFlexMode.None,Size=UDim2.fromScale(1,1),Visible=not C,Callback=function()x:
Increase()end},t:Label{Parent=D,Text=A,AutomaticSize=Enum.AutomaticSize.X,Size=
UDim2.fromOffset(0,19),Position=UDim2.new(1,4),LayoutOrder=4},function(...)local
I=x.Callback I(E,...)end function x:Increase()local M,N=self.Value,self.
Increment x:SetValue(M+N)end function x:Decrease()local M,N=self.Value,self.
Increment x:SetValue(M-N)end function x:SetDisabled(M)self.Disabled=M D.
Interactable=not M t:SetColorTags({[K]=M and'LabelDisabled'or'Label'},true)
return self end function x:SetValue(M)local N,O,P=self.Value,self.Minimum,self.
Maximum M=tonumber(M)if not M then M=N end if O and P then M=math.clamp(M,O,P)
end G.Text=M x.Value=M L(M)return self end local M=function()local M=G.Text x:
SetValue(M)end x:SetValue(y)x:SetDisabled(B)G.FocusLost:Connect(M)t:TagElements{
[J]='Button',[I]='Button',[G]='Frame'}return E,D end})b:DefineElement(
'InputTextMultiline',{Base={Label='',Size=UDim2.new(1,0,0,39),Border=false,
ColorTag='Frame'},Create=function(t,x)return t:Console(x)end})b:DefineElement(
'Console',{Base={Enabled=true,Value='',TextWrapped=false,Border=true,MaxLines=
300,LinesFormat='%s',Callback=p},Create=function(t,x)local y,z,A,B,C=x.ReadOnly,
x.LineNumbers,x.Value,x.Placeholder,b:InsertPrefab('Console',x)local D,E,F=b:
MergeMetatables(x,C),C.Source,C.Lines F.Visible=z function x:CountLines(G)local
I=E.Text:split'\n'local J=#I if J==1 and I[1]==''then return 0 end return J end
function x:UpdateLineNumbers()local G,I=self.LineNumbers,self.LinesFormat if not
G then return end local J=self:CountLines()F.Text=''for K=1,J do local L,M=I:
format(K),K~=J and'\n'or''F.Text..=`{L}{M}`end local K=F.AbsoluteSize.X E.Size=
UDim2.new(1,-K,0,0)return self end function x:CheckLineCount()local G=x.MaxLines
if not G then return end local I=E.Text local J=I:split'\n'if#J>G then local K=`{
J[1]}\\n`local L=I:sub(#K)self:SetValue(L)end return self end function x:
UpdateScroll()local G=C.AbsoluteCanvasSize C.CanvasPosition=Vector2.new(0,G.Y)
return self end function x:SetValue(G)if not self.Enabled then return end E.Text
=tostring(G)self:Update()return self end function x:GetValue()return E.Text end
function x:Clear()E.Text=''self:Update()return self end function x:AppendText(
...)local G,I=self:CountLines(true),b:Concat({...},' ')if G==0 then return self:
SetValue(I)end local J=self:GetValue()local K=`{J}\n{I}`self:SetValue(K)return
self end function x:Update()local G=self.AutoScroll self:CheckLineCount()self:
UpdateLineNumbers()if G then self:UpdateScroll()end end local G=function()local
G=x:GetValue()x:Update()x:Callback(G)end x:SetValue(A)b:SetProperties(E,x)b:
SetProperties(E,{TextEditable=not y,Parent=C,PlaceholderText=B})t:TagElements{[E
]='ConsoleText',[F]='ConsoleLineNumbers'}E:GetPropertyChangedSignal'Text':
Connect(G)return D,C end})b:DefineElement('Table',{Base={VerticalAlignment=Enum.
VerticalAlignment.Top,RowBackground=false,RowBgTransparency=0.87,Border=false,
Spacing=UDim.new(0,4)},Create=function(t,x)local y,z,A,B,C,D,E,F=t.WindowClass,x
.RowBgTransparency,x.RowBackground,x.Border,x.VerticalAlignment,x.MaxColumns,x.
Spacing,b:InsertPrefab('Table',x)local G,I,J,K,L=b:MergeMetatables(x,F),F.
RowTemp,0,{},B and A function x:Row(M)M=M or{}local N,O,P,Q=M.IsHeader,0,{},I:
Clone()b:SetProperties(Q,{Name='Row',Visible=true,Parent=F})local R=Q:
FindFirstChildOfClass'UIListLayout'b:SetProperties(R,{VerticalAlignment=C,
Padding=not L and E or UDim.new(0,1)})if N then t:TagElements{[Q]='Header'}else
J+=1 end if A and not N then local S=J%2~=1 and z or 1 Q.BackgroundTransparency=
S end local S={}local T=b:MergeMetatables(S,Q)function S:Column(U)U=U or{}b:
CheckConfig(U,{HorizontalAlign=Enum.HorizontalAlignment.Left,VerticalAlignment=
Enum.VerticalAlignment.Top})local V=Q.ColumnTemp:Clone()local W=V:
FindFirstChildOfClass'UIListLayout'b:SetProperties(W,U)local X=V:
FindFirstChildOfClass'UIStroke'X.Enabled=B local Y=V:FindFirstChildOfClass
'UIPadding'if not L then Y:Destroy()end b:SetProperties(V,{Parent=Q,Visible=true
,Name='Column'})return b:MakeCanvas{Element=V,WindowClass=y,Class=T}end function
S:NextColumn()O+=1 local U=O%D+1 local V=P[U]if not V then V=self:Column()P[U]=V
end return V end table.insert(K,S)return T end function x:NextRow()return self:
Row()end function x:HeaderRow()return self:Row{IsHeader=true}end function x:
ClearRows()J=0 for M,N in next,F:GetChildren()do if not N:IsA'Frame'then
continue end if N==I then continue end N:Destroy()end return x end return G,F
end})b:DefineElement('List',{Base={Spacing=4,HorizontalFlex=Enum.UIFlexAlignment
.None,VerticalFlex=Enum.UIFlexAlignment.None,HorizontalAlignment=Enum.
HorizontalAlignment.Left,VerticalAlignment=Enum.VerticalAlignment.Top,
FillDirection=Enum.FillDirection.Horizontal},Create=function(t,x)local y,z,A,B,C
,D,E,F=t.WindowClass,x.Spacing,x.HorizontalFlex,x.VerticalFlex,x.
HorizontalAlignment,x.VerticalAlignment,x.FillDirection,b:InsertPrefab('List',x)
local G,I=b:MergeMetatables(x,F),F.UIListLayout b:SetProperties(I,{Padding=UDim.
new(0,z),HorizontalFlex=A,VerticalFlex=B,HorizontalAlignment=C,VerticalAlignment
=D,FillDirection=E})local J=b:MakeCanvas{Element=F,WindowClass=y,Class=G}return
J,F end})b:DefineElement('CollapsingHeader',{Base={Title='Collapsing Header',
CollapseIcon=b.Icons.Arrow,Collapsed=true,Offset=0,NoAutoTag=true,NoAutoFlags=
true,IconPadding=UDim.new(0,4),Activated=p},Create=function(t,x)local y,z,A,B,C,
D,E,F,G,I,J,K=x.Title,x.Collapsed,x.ElementStyle,x.Offset,x.TitleBarProperties,x
.OpenOnDoubleClick,x.OpenOnArrow,x.CollapseIcon,x.IconPadding,x.Icon,x.NoArrow,b
:InsertPrefab('CollapsingHeader',x)local L=K.TitleBar local M,N=L.Collapse,L.
Icon t:ApplyFlags(N,{Image=I})local O,P=M.CollapseIcon,M.UIPadding c:SetPadding(
P,G)t:ApplyFlags(O,{Image=F})local Q,R,S=t:Label{ColorTag='CollapsingHeader',
Parent=L,LayoutOrder=2},t:Indent{Class=x,Parent=K,Offset=B,LayoutOrder=2,Size=
UDim2.fromScale(1,0),AutomaticSize=Enum.AutomaticSize.None,PaddingTop=UDim.new(0
,4),PaddingBottom=UDim.new(0,1)}local T=function()local T=x.Activated T(R)end
function x:Remove()K:Destroy()table.clear(self)end function x:SetArrowVisible(U)
O.Visible=U end function x:SetTitle(U)Q.Text=U end function x:SetVisible(U)K.
Visible=U end function x:SetIcon(U)local V=U and U~=''N.Visible=V if V then N.
Image=c:CheckAssetUrl(U)end end function x:SetCollapsed(U)self.Collapsed=U local
V,W,X=b:GetContentSize(S),R:GetThemeKey'AnimationTweenInfo',UDim2.fromScale(1,0)
local Y=X+UDim2.fromOffset(0,V.Y)e:HeaderCollapse{Tweeninfo=W,Collapsed=U,Toggle
=O,Resize=S,Hide=S,ClosedSize=X,OpenSize=Y}return self end local U=function()x:
SetCollapsed(not x.Collapsed)end if C then R:ApplyFlags(L,C)end if not E then b:
ConnectMouseEvent(L,{DoubleClick=D,Callback=U})end O.Activated:Connect(U)L.
Activated:Connect(T)x:SetCollapsed(z)x:SetTitle(y)x:SetArrowVisible(not J)b:
ApplyStyle(L,A)R:TagElements{[L]='CollapsingHeader'}return R,K end})b:
DefineElement('TreeNode',{Base={Offset=21,IconPadding=UDim.new(0,2),
TitleBarProperties={Size=UDim2.new(1,0,0,13)}},Create=q.CollapsingHeader})b:
DefineElement('Separator',{Base={NoAutoTag=true,NoAutoTheme=true},Create=
function(t,x)local y,z=x.Text,b:InsertPrefab('SeparatorText',x)t:Label{Text=
tostring(y),Visible=y~=nil,Parent=z,LayoutOrder=2,Size=UDim2.new(),PaddingLeft=
UDim.new(0,4),PaddingRight=UDim.new(0,4)}t:TagElements{[z.Left]='Separator',[z.
Right]='Separator'}return z end})b:DefineElement('Canvas',{Base={},Create=
function(t,x)local y,z,A=t.WindowClass,x.Scroll,x.Class or x local B=z and
'ScrollingCanvas'or'Canvas'local C=b:InsertPrefab(B,x)local D=b:MakeCanvas{
Element=C,WindowClass=y,Class=A}return D,C end})b:DefineElement(
'ScrollingCanvas',{Base={Scroll=true},Create=q.Canvas})b:DefineElement('Region',
{Base={Scroll=false,AutomaticSize=Enum.AutomaticSize.Y},Create=function(t,x)
local y,z=t.WindowClass,x.Scroll local A=z and'ScrollingCanvas'or'Canvas'local B
=b:InsertPrefab(A,x)local C=b:MakeCanvas{Element=B,WindowClass=y,Class=x}return
C,B end})b:DefineElement('Group',{Base={Scroll=false,AutomaticSize=Enum.
AutomaticSize.Y},Create=function(t,x)local y,z=t.WindowClass,b:InsertPrefab(
'Group',x)local A=b:MakeCanvas{Element=z,WindowClass=y,Class=x}return A,z end})b
:DefineElement('Indent',{Base={Offset=15,PaddingTop=UDim.new(),PaddingBottom=
UDim.new(),PaddingRight=UDim.new()},Create=function(t,x)local y=x.Offset x.
PaddingLeft=UDim.new(0,y)return t:Canvas(x)end})b:DefineElement('BulletText',{
Base={},Create=function(t,x)local y=x.Rows for z,A in next,y do local B=t:
Bullet(x)B:Label{Text=tostring(A),LayoutOrder=2,Size=UDim2.fromOffset(0,14)}end
end})b:DefineElement('Bullet',{Base={Padding=3,Icon=b.Icons.Dot,IconSize=UDim2.
fromOffset(5,5)},Create=function(t,x)local y,z,A=t.WindowClass,x.Padding,b:
InsertPrefab('Bullet',x)local B,C=b:MakeCanvas{Element=A,WindowClass=y,Class=t},
A.UIListLayout C.Padding=UDim.new(0,z)return B,A end})b:DefineElement('Row',{
Base={Spacing=4,Expanded=false,HorizontalFlex=Enum.UIFlexAlignment.None,
VerticalFlex=Enum.UIFlexAlignment.None},Create=function(t,x)local y,z,A,B,C,D=t.
WindowClass,x.Spacing,x.Expanded,x.HorizontalFlex,x.VerticalFlex,b:InsertPrefab(
'Row',x)local E,F=b:MergeMetatables(x,D),D:FindFirstChildOfClass'UIListLayout'F.
Padding=UDim.new(0,z)F.HorizontalFlex=B F.VerticalFlex=C local G=b:MakeCanvas{
Element=D,WindowClass=y,Class=E}function x:Expand()F.HorizontalFlex=Enum.
UIFlexAlignment.Fill return self end if A then x:Expand()end return G,D end})b:
DefineElement('SliderBase',{Base={Format='%.f',Label='',Type='Slider',Callback=p
,NoGrab=false,NoClick=false,Minimum=0,Maximum=100,ColorTag='Frame',Disabled=
false},Create=function(t,x)local y,z,A,B,C,D,E,F,G=x.Value or x.Minimum,x.Format
,x.Label,x.NoAnimation,x.NoGrab,x.NoClick,x.Type,x.Disabled,b:InsertPrefab
'Slider'local I=G.Track local J,K,L=I.Grab,I.ValueText,b:MergeMetatables(x,G)
local M,N,O=J.AbsoluteSize,b:SetAnimation(G,'Inputs'),t:Label{Parent=G,Text=A,
Position=UDim2.new(1,4),Size=UDim2.fromScale(0,1)}Merge(x,{Grab=J,Name=A})if E==
'Slider'then I.Position=UDim2.fromOffset(M.X/2,0)I.Size=UDim2.new(1,-M.X,1,0)end
local P,Q={Slider=function(P)return{AnchorPoint=Vector2.new(0.5,0.5),Position=
UDim2.fromScale(P,0.5)}end,Progress=function(P)return{Size=UDim2.fromScale(P,1)}
end,Snap=function(P,Q,R,S)local T=(math.round(Q)-R)/S return{Size=UDim2.
fromScale(1/S,1),Position=UDim2.fromScale(T,0.5)}end},function(...)local P=x.
Callback return P(L,...)end function x:SetDisabled(R)self.Disabled=R G.
Interactable=not R t:SetColorTags({[O]=R and'LabelDisabled'or'Label'},true)
return self end function x:SetValueText(R)K.Text=tostring(R)end function x:
SetValue(R,S)local T,U,V,W=t:GetThemeKey'AnimationTweenInfo',x.Minimum,x.Maximum
,R local X=V-U if not S then W=(R-U)/X else R=U+(X*W)end W=math.clamp(W,0,1)
local Y=P[E](W,R,U,V)e:Tween{Object=J,Tweeninfo=T,NoAnimation=B,EndProperties=Y}
self.Value=R self:SetValueText(z:format(R,V))Q(R)return self end local R,S=
function(R)t:SetColorTags({[G]=R and'FrameActive'or'Frame'},true)t:
SetElementFocused(G,{Focused=R,Animation=N})end,function()if x.Disabled then
return end if x.ReadOnly then return end return true end local T=function(T)if
not S()then return end local U,V,W=I.AbsolutePosition.X,I.AbsoluteSize.X,T.X
local X=W-U local Y=math.clamp(X/V,0,1)x:SetValue(Y,true)end local U,V=function(
...)if not S()then return end R(true)if not D then T(...)end end,function()R(
false)end J.Visible=not C x:SetValue(y)x:SetDisabled(F)t:TagElements{[K]='Label'
,[J]='SliderGrab'}b:ConnectDrag(I,{DragStart=U,DragMovement=T,DragEnd=V})return
L,G end})b:DefineElement('SliderEnum',{Base={Items={},Label='Slider Enum',Type=
'Snap',Minimum=1,Maximum=10,Value=1,Callback=p,ColorTag='Frame'},Create=function
(t,x)local y,z=x.Callback,x.Value local A=function(A,B)B=math.round(B)local C=A.
Items A.Maximum=#C return C[B]end x.Callback=function(B,C)local D=A(B,C)B:
SetValueText(D)x.Value=D return y(B,D)end A(x,z)return t:SliderBase(x)end})b:
DefineElement('SliderInt',{Base={Label='Slider Int',ColorTag='Frame'},Create=q.
SliderBase})b:DefineElement('SliderFloat',{Base={Label='Slider Float',Format=
'%.3f',ColorTag='Frame'},Create=q.SliderBase})b:DefineElement('DragInt',{Base={
Format='%.f',Label='Drag Int',Callback=p,Minimum=0,Maximum=100,ColorTag='Frame',
Disabled=false},Create=function(t,x)local y,z,A,B,C=x.Value or x.Minimum,x.
Format,x.Label,x.Disabled,b:InsertPrefab'Slider'local D,E=b:MergeMetatables(x,C)
,C.Track local F,G=E.ValueText,E.Grab G.Visible=false local I,J,K,L,M,N=t:Label{
Parent=C,Text=A,Position=UDim2.new(1,7),Size=UDim2.fromScale(0,1)},0,0,b:
SetAnimation(C,'Inputs'),function(...)local I=x.Callback return I(D,...)end
function x:SetValue(O,P)local Q,R=self.Minimum,self.Maximum local S=R-Q if not P
then J=((O-Q)/S)*100 else O=Q+(S*(J/100))end O=math.clamp(O,Q,R)self.Value=O F.
Text=z:format(O,R)M(O)return self end function x:SetDisabled(O)self.Disabled=O t
:SetColorTags({[I]=O and'LabelDisabled'or'Label'},true)return self end local O,P
=function(O)t:SetColorTags({[C]=O and'FrameActive'or'Frame'},true)t:
SetElementFocused(C,{Focused=O,Animation=L})end,function()if x.Disabled then
return end if x.ReadOnly then return end return true end local Q,R,S=function(Q)
if not P()then return end O(true)N=Q K=J end,function(Q)if not P()then return
end local R=Q.X-N.X local S=K+(R/2)J=math.clamp(S,0,100)x:SetValue(J,true)end,
function()O(false)end x:SetValue(y)x:SetDisabled(B)b:ConnectDrag(E,{DragStart=Q,
DragEnd=S,DragMovement=R})t:TagElements{[F]='Label'}return D,C end})b:
DefineElement('DragFloat',{Base={Format='%.3f',Label='Drag Float',ColorTag=
'Frame'},Create=q.DragInt})b:DefineElement('MultiElement',{Base={Callback=p,
Label='',Disabled=false,BaseInputConfig={},InputConfigs={},Value={},Minimum={},
Maximum={},MultiCallback=p},Create=function(t,x)local y,z,A,B,C,D,E,F=x.Label,x.
BaseInputConfig,x.InputConfigs,x.InputType,x.Disabled,x.Value,x.Minimum,x.
Maximum assert(B,'No input type provided for MultiElement')local G,I=t:Row{
Spacing=4}local J,K,L,M,N=G:Row{Size=UDim2.fromScale(0.65,0),Expanded=true},G:
Label{Size=UDim2.fromScale(0.35,0),LayoutOrder=2,Text=y},b:MergeMetatables(x,G),
{},false local O=function()local O={}for P,Q in M do O[P]=Q:GetValue()end x.
Value=O return O end local function P(...)local Q=x.MultiCallback Q(L,...)end
local Q=function()if#M~=#A then return end if not N then return end local Q=O()
P(Q)end function x:SetDisabled(R)self.Disabled=R t:SetColorTags({[K]=R and
'LabelDisabled'or'Label'},true)for S,T in M do T:SetDisabled(R)end end function
x:SetValue(R)N=false for S,T in R do local U=M[S]assert(U,`No input object for index: {
S}`)U:SetValue(T)end N=true P(R)end z=Copy(z,{Size=UDim2.new(1,0,0,19),Label='',
Callback=Q})for R,S in A do local T=Copy(z,S)b:CheckConfig(T,{Minimum=E[R],
Maximum=F[R]})local U=J[B](J,T)table.insert(M,U)end Merge(x,{Row=J,Inputs=M})N=
true x:SetDisabled(C)x:SetValue(D)return L,I end})local t=function(t,x,y,z)b:
DefineElement(t,{Base={Label=t,Callback=p,InputType=x,InputConfigs=table.create(
y,{}),BaseInputConfig={}},Create=function(A,B)local C=(B.BaseInputConfig)if z
then Merge(C,z)end b:CheckConfig(C,{ReadOnly=B.ReadOnly,Format=B.Format})B.
MultiCallback=function(...)local D=B.Callback D(...)end return A:MultiElement(B)
end})end local x=function(x,y)b:DefineElement(x,{Base={Label=x,Callback=p,Value=
b.Accent.Light,Disabled=false,Minimum={0,0,0},Maximum={255,255,255,100},
BaseInputConfig={},InputConfigs={[1]={Format='R: %.f'},[2]={Format='G: %.f'},[3]
={Format='B: %.f'}}},Create=function(z,A)local B,C=A.Value,Copy(A,{Value={1,1,1}
,Callback=function(B,...)if A.ValueChanged then A:ValueChanged(...)end end})
local D,E=z[y](z,C)local F,G=b:MergeMetatables(A,D),D.Row local I,J=G:Button{
BackgroundTransparency=0,Size=UDim2.fromOffset(19,19),UiPadding=0,Text='',Ratio=
1,ColorTag='',ElementStyle=''},function(...)local I=A.Callback return I(F,...)
end local K=function(K)I.BackgroundColor3=K J(K)end function A:ValueChanged(L)
local M,N,O=L[1],L[2],L[3]local P=Color3.fromRGB(M,N,O)self.Value=P K(P)end
function A:SetValue(L)self.Value=L K(L)D:SetValue{math.round(L.R*255),math.
round(L.G*255),math.round(L.B*255)}end A:SetValue(B)return F,E end})end local y=
function(y,z)b:DefineElement(y,{Base={Label=y,Callback=p,Disabled=false,Value=
CFrame.new(10,10,10),Minimum=CFrame.new(0,0,0),Maximum=CFrame.new(100,100,100),
BaseInputConfig={},InputConfigs={[1]={Format='X: %.f'},[2]={Format='Y: %.f'},[3]
={Format='Z: %.f'}}},Create=function(A,B)local C,D,E=B.Value,B.Maximum,B.Minimum
local F=Copy(B,{Maximum={D.X,D.Y,D.Z},Minimum={E.X,E.Y,E.Z},Value={C.X,C.Y,C.Z},
Callback=function(F,...)if B.ValueChanged then B:ValueChanged(...)end end})local
G,I=A[z](A,F)local J=b:MergeMetatables(B,G)local K=function(...)local K=B.
Callback return K(J,...)end function B:ValueChanged(L)local M,N,O=L[1],L[2],L[3]
local P=CFrame.new(M,N,O)self.Value=P K(P)end function B:SetValue(L)self.Value=L
G:SetValue{math.round(L.X),math.round(L.Y),math.round(L.Z)}end B:SetValue(C)
return J,I end})end b:DefineElement('SliderProgress',{Base={Label=
'Slider Progress',Type='Progress',ColorTag='Frame'},Create=q.SliderBase})b:
DefineElement('ProgressBar',{Base={Label='Progress Bar',Type='Progress',ReadOnly
=true,MinValue=0,MaxValue=100,Format='% i%%',Interactable=false,ColorTag='Frame'
},Create=function(z,A)function A:SetPercentage(B)A:SetValue(B)end local B,C=z:
SliderBase(A)local D=B.Grab z:TagElements{[D]={BackgroundColor3='ProgressBar'}}
return B,C end})b:DefineElement('Combo',{Base={Value='',Placeholder='',Callback=
p,Items={},Disabled=false,WidthFitPreview=false,Label='Combo'},Create=function(z
,A)local B,C,D,E,F,G,I=A.Placeholder,A.NoAnimation,A.Selected,A.Label,A.Disabled
,A.WidthFitPreview,b:InsertPrefab('Combo',A)local J,K,L=b:MergeMetatables(A,I),(
I.Combo)local M,N,O=z:Label{Text=tostring(B),Parent=K,Name='ValueText'},z:
ArrowButton{Parent=K,Interactable=false,Size=UDim2.fromOffset(19,19),LayoutOrder
=2},z:Label{Text=E,Parent=I,LayoutOrder=2}if G then b:SetProperties(I,{
AutomaticSize=Enum.AutomaticSize.XY,Size=UDim2.new(0,0,0,0)})b:SetProperties(K,{
AutomaticSize=Enum.AutomaticSize.XY,Size=UDim2.fromScale(0,1)})end local P,Q=
function(P,...)A:SetOpen(false)return A.Callback(J,P,...)end,function(P,Q)local
R=z:GetThemeKey'AnimationTweenInfo'I.Interactable=not P e:HeaderCollapseToggle{
Tweeninfo=R,NoAnimation=Q,Collapsed=not P,Toggle=N.Icon}end local function R()
local S,T=A.GetItems,A.Items if S then return S()end return T end function A:
SetValueText(S)M.Text=tostring(S)end function A:ClosePopup()if not L then return
end L:ClosePopup(true)end function A:SetDisabled(S)self.Disabled=S I.
Interactable=not S z:SetColorTags({[O]=S and'LabelDisabled'or'Label'},true)
return self end function A:SetValue(S)local T=R()local U=T[S]local V=U or S self
.Selected=S self.Value=V self:ClosePopup()if typeof(S)=='number'then self:
SetValueText(V)else self:SetValueText(S)end P(S,V)return self end function A:
SetOpen(S)local T=self.Selected self.Open=S Q(S,C)if not S then self:ClosePopup(
)return end L=z:Dropdown{RelativeTo=K,Items=R(),Selected=T,OnSelected=function(
...)A:SetValue(...)end,OnClosed=function()self:SetOpen(false)end}return self end
local S=function()local S=A.Open A:SetOpen(not S)end K.Activated:Connect(S)Q(
false,true)A:SetDisabled(F)if D then A:SetValue(D)end b:SetAnimation(K,'Inputs')
z:TagElements{[K]='Frame'}return J,I end})local z={TileBarConfig={Close={Image=b
.Icons.Close,IconPadding=UDim.new(0,3)},Collapse={Image=b.Icons.Arrow,
IconPadding=UDim.new(0,3)}},CloseCallback=p,Collapsible=true,Open=true,Focused=
false}function z:Tween(A)b:CheckConfig(A,{Tweeninfo=self:GetThemeKey
'AnimationTweenInfo'})return e:Tween(A)end function z:TagElements(A)local B,C=
self.TagsList,self.Theme b:MultiUpdateColors{Theme=C,TagsList=B,Objects=A}end
function z:MakeTitleBarCanvas()local A=self.TitleBar local B=b:MakeCanvas{
WindowClass=self,Element=A}self.TitleBarCanvas=B return B end function z:
AddDefaultTitleButtons()local A=self.TileBarConfig local B,C,D=A.Collapse,A.
Close,self.TitleBarCanvas if not D then D=self:MakeTitleBarCanvas()end b:
CheckConfig(self,{Toggle=D:RadioButton{Icon=B.Image,IconPadding=B.IconPadding,
LayoutOrder=1,Ratio=1,Size=UDim2.new(0,0),Callback=function()self:
ToggleCollapsed()end},CloseButton=D:RadioButton{Icon=C.Image,IconPadding=C.
IconPadding,LayoutOrder=3,Ratio=1,Size=UDim2.new(0,0),Callback=function()self:
SetVisible(false)end},TitleLabel=D:Label{ColorTag='Title',LayoutOrder=2,Size=
UDim2.new(1,0),Active=false,Fill=true,ClipsDescendants=true,AutomaticSize=Enum.
AutomaticSize.XY}})self:TagElements{[self.TitleLabel]='WindowTitle'}end function
z:Close()local A=self.CloseCallback if A then local B=A(self)if B==false then
return end end self:Remove()end function z:SetVisible(A)local B,C=self.
WindowFrame,self.NoFocusOnAppearing self.Visible=A B.Visible=A if A and not C
then b:SetFocusedWindow(self)end return self end function z:ToggleVisibility(A)
local B=self.Visible self:SetVisible(not B)end function z:GetWindowSize()return
self.WindowFrame.AbsoluteSize end function z:GetTitleBarSizeY()local A=self.
TitleBar return A.Visible and A.AbsoluteSize.Y or 0 end function z:SetTitle(A)
self.TitleLabel.Text=tostring(A)return self end function z:SetPosition(A)self.
WindowFrame.Position=A return self end function z:SetSize(A,B)local C=self.
WindowFrame if typeof(A)=='Vector2'then A=UDim2.fromOffset(A.X,A.Y)end C.Size=A
self.Size=A return self end function z:SetCanvasInteractable(A)local B=self.Body
B.Interactable=A end function z:Center()local A=self:GetWindowSize()/2 local B=
UDim2.new(0.5,-A.X,0.5,-A.Y)self:SetPosition(B)return self end function z:
LoadStylesIntoElement(A)local B,C,D=A.Flags,A.Object,A.Canvas local E={
FrameRounding=function()if B.CornerRadius then return end if not D then return
end local E=C:FindFirstChild('FrameRounding',true)if not E then return end D:
TagElements{[E]='FrameRounding'}end}for F,G in E do local I=self:GetThemeKey(F)
if I==nil then continue end task.spawn(G,I)end end function z:SetTheme(A)local B
,C,D=b.ThemeConfigs,self.TagsList,self.WindowState A=A or self.Theme assert(B[A]
,`{A} is not a valid theme!`)self.Theme=A b:MultiUpdateColors{Animate=false,
Theme=A,Objects=C}self:SetFocusedColors(D)return self end function z:
SetFocusedColors(A)local B,C,D,E,F=self.WindowFrame,self.TitleBar,self.Theme,
self.TitleLabel,self:GetThemeKey'AnimationTweenInfo'local G=B:
FindFirstChildOfClass'UIStroke'local I={Focused={[G]='BorderActive',[C]=
'TitleBarBgActive',[E]={TextColor3='TitleActive'}},UnFocused={[G]='Border',[C]=
'TitleBarBg',[E]={TextColor3='Title'}},Collapsed={[G]='Border',[C]=
'TitleBarBgCollapsed',[E]={TextColor3='Title'}}}b:MultiUpdateColors{Tweeninfo=F,
Animate=true,Objects=I[A],Theme=D}end function z:SetFocused(A)A=A==nil and true
or A local B,C=self.Collapsed,self.WindowState if A then b:SetFocusedWindow(self
)end local D=B and'Collapsed'or A and'Focused'or'UnFocused'if D==C then return
end self.Focused=A self.WindowState=D self:SetFocusedColors(D)end function z:
GetThemeKey(A)return b:GetThemeKey(self.Theme,A)end function z:SetCollapsible(A)
self.Collapsible=A return self end function z:ToggleCollapsed(A)local B,C=self.
Collapsed,self.Collapsible if not A and not C then return self end self:
SetCollapsed(not B)return self end function z:SetCollapsed(A,B)local C,D,E,F,G,I
,J,K,L=self.WindowFrame,self.Body,self.Toggle,self.ResizeGrab,self.Size,self.
AutoSize,self:GetThemeKey'AnimationTweenInfo',self:GetWindowSize(),self:
GetTitleBarSizeY()local M,N=E.Icon,UDim2.fromOffset(K.X,L)self.Collapsed=A self:
SetCollapsible(false)self:SetFocused(not A)e:HeaderCollapse{Tweeninfo=J,
NoAnimation=B,Collapsed=A,Toggle=M,Resize=C,NoAutomaticSize=not I,Hide=D,
ClosedSize=N,OpenSize=G,Completed=function()self:SetCollapsible(true)end}self:
Tween{Object=F,NoAnimation=B,EndProperties={TextTransparency=A and 1 or 0.6,
Interactable=not A}}return self end function z:UpdateConfig(A)local B={
NoTitleBar=function(B)local C=self.TitleBar C.Visible=not B end,NoClose=function
(B)local C=self.CloseButton C.Visible=not B end,NoCollapse=function(B)local C=
self.Toggle C.Visible=not B end,NoTabsBar=function(B)local C=self.
WindowTabSelector if not C then return end local D=C.TabsBar D.Visible=not B end
,NoScrollBar=function(B)local C,D,E,F=B and 0 or 9,self.NoScroll,self.
WindowTabSelector,self.ContentCanvas if E then E.Body.ScrollBarThickness=C end
if not D then F.ScrollBarThickness=C end end,NoScrolling=function(B)local C,D,E=
self.NoScroll,self.WindowTabSelector,self.ContentCanvas if D then D.Body.
ScrollingEnabled=not B end if not C then E.ScrollingEnabled=not B end end,NoMove
=function(B)local C=self.DragConnection C:SetEnabled(not B)end,NoResize=function
(B)local C=self.ResizeConnection C:SetEnabled(not B)end,NoBackground=function(B)
local C,D=self:GetThemeKey'WindowBgTransparency',self.CanvasFrame D.
BackgroundTransparency=B and 1 or C end}Merge(self,A)for C,D in A do local E=B[C
]if E then E(D)end end return self end function z:Remove()local A,B,C=self.
WindowFrame,self.WindowClass,b.Windows local D=table.find(C,B)if D then table.
remove(C,D)end A:Destroy()end function z:MenuBar(A,...)local B,C=self.
ContentCanvas,self.ContentFrame A=A or{}Merge(A,{Parent=C,Layout=-1})return B:
MenuBar(A,...)end b:DefineElement('Window',{Export=true,Base={Theme='DarkTheme',
NoSelect=false,NoTabs=true,NoScroll=false,Collapsed=false,Visible=true,AutoSize=
false,MinimumSize=Vector2.new(160,90),OpenOnDoubleClick=true,NoAutoTheme=true,
NoWindowRegistor=false,NoBringToFrontOnFocus=false,IsDragging=false},Create=
function(A,B)b:CheckImportState()local C,D=b.Windows,b.Container.Windows b:
CheckConfig(B,{Parent=D,Title=b.DefaultTitle})local E,F,G,I,J,K,L,M,N,O,P=B.
NoDefaultTitleBarButtons,B.Collapsed,B.MinimumSize,B.Title,B.NoTabs,B.NoScroll,B
.Theme,B.AutomaticSize,B.NoWindowRegistor,B.AutoSelectNewTabs,B.Parent~=D local
Q={Scroll=not K,Fill=not M and true or nil,UiPadding=UDim.new(0,J and 8 or 0),
AutoSelectNewTabs=O}if M then Merge(Q,{AutomaticSize=M,Size=UDim2.new(1,0)})end
local R=b:InsertPrefab('Window',B)local S=R.Content local T,U=S.TitleBar,c:
NewClass(z)local V,W,X,Y=(b:MakeCanvas{Element=S,WindowClass=U,Class=U})local Z,
_=V:Canvas(Copy(Q,{Parent=S,CornerRadius=UDim.new(0,0)}))local aa=b:
MakeResizable{MinimumSize=G,Resize=R,OnUpdate=function(aa)U:SetSize(aa,true)end}
Merge(U,B)Merge(U,{WindowFrame=R,ContentFrame=S,CanvasFrame=_,ResizeGrab=aa.Grab
,TitleBar=T,Elements=q,TagsList={},_SelectDisabled=P,ResizeConnection=aa,
HoverConnection=b:DetectHover(S),DragConnection=b:MakeDraggable{Grab=S,Move=R,
SetPosition=function(ab,ac)local ad=W:GetThemeKey'AnimationTweenInfo'e:Tween{
Tweeninfo=ad,Object=ab.Move,EndProperties={Position=ac}}end,OnDragStateChange=
function(ab)U.IsDragging=ab _.Interactable=not ab if ab then b:SetFocusedWindow(
Y)end b:SetWindowFocusesEnabled(not ab)end}})if J then W,X=Z,_ else W,X=Z:
TabSelector(Q)U.WindowTabSelector=W end Y=b:MergeMetatables(U,W)Merge(U,{
ContentCanvas=W,WindowClass=Y,Body=X})b:ConnectMouseEvent(S,{DoubleClick=true,
OnlyMouseHovering=T,Callback=function(...)if not U.OpenOnDoubleClick then return
end if U.NoCollapse then return end U:ToggleCollapsed()end})if not E then U:
AddDefaultTitleButtons()end U:SetTitle(I)U:SetCollapsed(F,true)U:SetTheme(L)U:
UpdateConfig(B)U:SetFocused()if not N then table.insert(C,Y)end local ab=aa.Grab
b:SetAnimation(ab,'TextButtons')b:SetFocusedWindow(Y)Y:TagElements{[ab]=
'ResizeGrab',[T]='TitleBar',[_]='Window'}return Y,R end})b:DefineElement(
'TabsWindow',{Export=true,Base={NoTabs=false,AutoSelectNewTabs=true},Create=
function(aa,ab)return aa:Window(ab)end})b:DefineElement('PopupCanvas',{Base={
AutoClose=false,Scroll=false,Visible=true,Spacing=UDim.new(0,1),AutomaticSize=
Enum.AutomaticSize.XY,MaxSizeY=150,MinSizeX=100,MaxSizeX=math.huge,OnClosed=p},
Create=function(aa,ab)local ac,ad,A,B,C,D,E=ab.RelativeTo,ab.MaxSizeY,ab.
MinSizeX,ab.MaxSizeX,ab.Visible,ab.AutoClose,ab.NoAnimation ab.Parent=b.
Container.Overlays local F,G=aa:OverlayScroll(ab)local I=G.UIStroke local J,K,L,
M,N,O,P=I.Thickness,G.Parent.AbsolutePosition,(b:DetectHover(G,{MouseOnly=true,
OnInput=function(J,K)if J then return end if not G.Visible then return end ab:
OnFocusLost()end}))function ab:FetchScales()local Q=F:GetCanvasSize()M=ac.
AbsolutePosition N=ac.AbsoluteSize O=math.clamp(Q.Y,N.Y,ad)P=math.clamp(N.X,A,B)
end function ab:UpdatePosition()G.Position=UDim2.fromOffset(M.X-K.X+J,M.Y-K.Y+N.
Y)end function ab:GetScale(Q)local R,S=UDim2.fromOffset(P,O),UDim2.fromOffset(P,
0)return Q and R or S end function ab:IsMouseHovering()return L.Hovering end
function ab:OnFocusLost()local Q=self.OnClosed self:SetPopupVisible(false)Q(self
)if D then self:ClosePopup()end end function ab:ClosePopup(Q)self:
SetPopupVisible(false,E,Q)L:Disconnect()G:Remove()end function ab:
SetPopupVisible(Q,R)if G.Visible==Q then return end ac.Interactable=not Q self:
UpdateScales(Q,E,R)self.Visible=Q end function ab:UpdateScales(Q,R,S)local T=F:
GetThemeKey'AnimationTweenInfo'Q=Q==nil and G.Visible or Q ab:FetchScales()ab:
UpdatePosition()local U=e:Tween{Tweeninfo=T,Object=G,NoAnimation=R,EndProperties
={Size=ab:GetScale(Q),Visible=Q}}if U and S then U.Completed:Wait()end end ab:
UpdateScales(false,true)ab:SetPopupVisible(C)F.OnChildChange:Connect(ab.
UpdateScales)return F,G end})b:DefineElement('PopupModal',{Export=true,Base={
NoAnimation=false,NoCollapse=true,NoClose=true,NoResize=true,NoSelect=true,
NoAutoFlags=true,NoWindowRegistor=true,NoScroll=true},Create=function(aa,ab)
local ac,ad,A=aa.WindowClass,(ab.NoAnimation)ab.Parent=b.Container.Overlays if
ac then A=ac:GetThemeKey'ModalWindowDimTweenInfo'ab.Theme=ac.Theme end local B=b
:InsertPrefab('ModalEffect',ab)local C=aa:Window(Copy(ab,{NoAutoFlags=false,
Parent=B,AnchorPoint=Vector2.new(0.5,0.5),Position=UDim2.fromScale(0.5,0.5),Size
=UDim2.fromOffset(372,38),AutomaticSize=Enum.AutomaticSize.Y}))function ab:
ClosePopup()e:Tween{Object=B,Tweeninfo=A,NoAnimation=ad,EndProperties={
BackgroundTransparency=1},Completed=function()B:Destroy()end}C:Close()end e:
Tween{Object=B,Tweeninfo=A,NoAnimation=ad,StartProperties={
BackgroundTransparency=1},EndProperties={BackgroundTransparency=0.8}}aa:
TagElements{[B]='ModalWindowDim'}local D=b:MergeMetatables(ab,C)return D,B end})
t('InputInt2','InputInt',2,{NoButtons=true})t('InputInt3','InputInt',3,{
NoButtons=true})t('InputInt4','InputInt',4,{NoButtons=true})t('SliderInt2',
'SliderInt',2)t('SliderInt3','SliderInt',3)t('SliderInt4','SliderInt',4)t(
'SliderFloat2','SliderFloat',2)t('SliderFloat3','SliderFloat',3)t('SliderFloat4'
,'SliderFloat',4)t('DragInt2','DragInt',2)t('DragInt3','DragInt',3)t('DragInt4',
'DragInt',4)t('DragFloat2','DragFloat',2)t('DragFloat3','DragFloat',3)t(
'DragFloat4','DragFloat',4)x('InputColor3','InputInt3')x('SliderColor3',
'SliderInt3')x('DragColor3','DragInt3')y('InputCFrame','InputInt3')y(
'SliderCFrame','SliderInt3')y('DragCFrame','DragInt3')return b
