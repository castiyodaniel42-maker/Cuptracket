local P=game:GetService("Players").LocalPlayer
local F=workspace:WaitForChild("Cups")
local C={
Color3.fromRGB(255,40,40),
Color3.fromRGB(40,120,255),
Color3.fromRGB(40,255,80),
Color3.fromRGB(255,220,0),
Color3.fromRGB(190,50,255),
Color3.fromRGB(255,130,20)
}
local G=Instance.new("ScreenGui",P.PlayerGui)
G.Name="CupTracker"
G.ResetOnSpawn=false
local I=Instance.new("TextLabel",G)
I.Size=UDim2.fromOffset(300,55)
I.Position=UDim2.new(.5,-150,.08,0)
I.BackgroundColor3=Color3.fromRGB(25,25,25)
I.TextColor3=Color3.new(1,1,1)
I.TextScaled=true
local A={}
while true do
 for i,V in ipairs(F:GetChildren()) do
  if V:IsA("Model") or V:IsA("BasePart") then
   if not A[V] then
    local c=C[((i-1)%#C)+1]
    A[V]=c
    local H=Instance.new("Highlight")
    H.FillColor=c
    H.OutlineColor=c
    H.FillTransparency=.45
    H.Adornee=V
    H.Parent=V
   end
   if V:GetAttribute("ContainsPrize")==true then
    I.Text="VASO GANADOR: "..tostring(A[V])
   end
  end
 end
 task.wait(.1)
end