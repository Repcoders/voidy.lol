local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local targetAnimID = "rbxassetid://15955393872"

local function playSoundEffect()
    local soundeffect = Instance.new("Sound")
    soundeffect.SoundId = "rbxassetid://13558438668"
    soundeffect.Volume = 0
    soundeffect.Parent = character:WaitForChild("Torso")
    soundeffect:Play()

l=game.Players.LocalPlayer
c=l.Character or l.CharacterAdded:Wait()
t=c:WaitForChild("Torso")
r=game.ReplicatedStorage.Resources.Ring:Clone()
r.Anchored=true
r.CanCollide=false
r.Size=Vector3.new(6.5,0.5,6.5)
r.Parent=c
h=c:WaitForChild("Head")
p=t.Position-Vector3.new(0,t.Size.Y/2,0)
r.Position=(h.Position+p)/2
r.CFrame=CFrame.new(r.Position,r.Position+t.CFrame.LookVector)*CFrame.Angles(math.rad(90),0,0)
function g(p)
s=r.Size
e=Vector3.new(9,0.5,9)
d=0.07
st=0.02
n=d/st
for i=0,n do
a=i/n
r.Size=s:Lerp(e,a)
r.Transparency=a
wait(st)
end
r:Destroy()
end
g(r)

local k = Instance.new("Sound", game.Players.LocalPlayer.Character.Torso)
k.Name = "ku"
k.SoundId = "rbxassetid://18443048724"
k.Volume = 1
k:Play()

local v = Instance.new("Sound", game.Players.LocalPlayer.Character.Torso)
v.Name = "kv"
v.SoundId = "rbxassetid://18443049348"
v.Volume = 1
v:Play()

local r = game:GetService("ReplicatedStorage")
local p = game:GetService("Players").LocalPlayer

local function m()
    local res = r:FindFirstChild("Resources")
    if not res then return end

    local k = res:FindFirstChild("KJEffects")
    if not k then return end

    local j = k:FindFirstChild("KJWallCombo")
    if not j then return end

    local s = j:FindFirstChild("slam")
    if not s or not s:IsA("BasePart") then return end

    local c = s:Clone()
    local playerPos = p.Character.HumanoidRootPart.Position
    local offset = p.Character.HumanoidRootPart.CFrame.LookVector * 3
    c.CFrame = CFrame.new(playerPos + offset, playerPos)
    c.Parent = workspace
    
    for _, a in pairs(c:GetDescendants()) do
        if a:IsA("Attachment") then
            for _, v in pairs(a:GetDescendants()) do
                if v:IsA("ParticleEmitter") then
                    v:Emit(4)
                end
            end
        end
    end
end

m()

local p = game.Players.LocalPlayer
local Humanoid = p.Character:WaitForChild("Humanoid")

local AnimAnim = Instance.new("Animation")
AnimAnim.AnimationId = "rbxassetid://18447913645"
local Anim = Humanoid:LoadAnimation(AnimAnim)
AnimAnim.AnimationId = "rbxassetid://0"
Anim:Play()

local r = game:GetService("RunService")
local t = game:GetService("TweenService")
local c = workspace.CurrentCamera
local h = game.Players.LocalPlayer.Character

local function s(d)
    if not d then return end

    local o = c.CFrame
    local e = 0
    local con

    h.Humanoid.AutoRotate = false
    c.CameraType = Enum.CameraType.Scriptable

    con = r.RenderStepped:Connect(function(dt)
        e = e + dt * 60
        local k = d[math.ceil(e)]

        if k then
            t:Create(c, TweenInfo.new(0.0005, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
                CFrame = h.HumanoidRootPart.CFrame * k.cframe,
                FieldOfView = k.fov
            }):Play()
        else
            con:Disconnect()
            c.FieldOfView = 70
            h.Humanoid.AutoRotate = true
            c.CameraType = Enum.CameraType.Custom
            c.CFrame = o
        end
    end)
end

local m = require(game.ReplicatedStorage.Cutscenes.KJ)

local d = m
if d then
    s(d)
end

local V_123 = game.Players.LocalPlayer
local V_456 = V_123.Character or V_123.CharacterAdded:Wait()
local V_789 = V_456:WaitForChild("HumanoidRootPart")

local function V_101()
    local V_112 = workspace:FindFirstChild("Live")
    if not V_112 then return end

    local V_131 = V_112:FindFirstChild("Weakest Dummy")
    if not V_131 then return end

    local V_415 = V_131:Clone()
    V_415.Parent = workspace
    
    local V_516 = V_789.Position + (V_789.CFrame.LookVector * 2)
    local V_718 = CFrame.new(V_516, V_789.Position)
    V_415:SetPrimaryPartCFrame(V_718)

    local V_720 = V_415:FindFirstChildOfClass("Humanoid")
    if V_720 then
        local V_819 = Instance.new("Animation")
        V_819.AnimationId = "rbxassetid://18447915110"
        local V_920 = V_720:LoadAnimation(V_819)
        V_920:Play()
    end
end

V_101()

task.delay(1.4, function()
    
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    
    local ImpactFrames = Instance.new("Folder")
    ImpactFrames.Name = "ImpactFrames"
    ImpactFrames.Parent = ScreenGui
    
    local imageIds = {
        "rbxassetid://18439449672",
        "rbxassetid://18439449322",
        "rbxassetid://18439448827",
        "rbxassetid://18439449322",
        "rbxassetid://18439448569",
        "rbxassetid://18439448279",
        "rbxassetid://18439448279",
        "rbxassetid://18439447816",
        "rbxassetid://18439447528",
        "rbxassetid://18439447248",
        "rbxassetid://18439446937",
        "rbxassetid://18439446621",
        "rbxassetid://18439446312",
        "rbxassetid://18439445892",
        "rbxassetid://18439445557",
        "rbxassetid://18439445557",
        "rbxassetid://18439444854",
        "rbxassetid://18439444197",
        "rbxassetid://18439443641",
        "rbxassetid://18439443091",
        "rbxassetid://18439442732",
        "rbxassetid://18439442280",
        "rbxassetid://18439441717",
        "rbxassetid://18439441301",
        "rbxassetid://18439439276",
        "rbxassetid://18439438892",
        "rbxassetid://18439438588",
        "rbxassetid://18439438325",
        "rbxassetid://18439437897",
        "rbxassetid://18439437436",
        "rbxassetid://18439436945",
        "rbxassetid://18439436647",
        "rbxassetid://18439418311",
        "rbxassetid://18439436436",
        "rbxassetid://18439436154",
        "rbxassetid://18439435769",
        "rbxassetid://18439435367",
        "rbxassetid://18439435078",
        "rbxassetid://18439434634",
        "rbxassetid://18439434365",
        "rbxassetid://18439433887",
        "rbxassetid://18439433322",
        "rbxassetid://18439432946",
        "rbxassetid://18439432512",
        "rbxassetid://18439432070",
        "rbxassetid://18439431561",
        "rbxassetid://18439431285",
        "rbxassetid://18439430917",
        "rbxassetid://18439430536",
        "rbxassetid://18439430081",
        "rbxassetid://18439429154",
        "rbxassetid://18439428804",
        "rbxassetid://18439428359",
        "rbxassetid://18443661388",
        "rbxassetid://18439426773",
        "rbxassetid://18439426388",
        "rbxassetid://18439425936",
        "rbxassetid://18439425421",
        "rbxassetid://18439424913",
        "rbxassetid://18439424277",
        "rbxassetid://18439423773",
        "rbxassetid://18439423480",
        "rbxassetid://18439423074",
        "rbxassetid://18439422402",
        "rbxassetid://18439422036",
        "rbxassetid://18439421605",
        "rbxassetid://18439421256",
        "rbxassetid://18439420866",
        "rbxassetid://18439420496",
        "rbxassetid://18439420101",
        "rbxassetid://18439419463",
        "rbxassetid://18439418712",
        "rbxassetid://18439418311"
    }
    
    for i = 1, 73 do
        local ImageLabel = Instance.new("ImageLabel")
        ImageLabel.Name = i
        ImageLabel.Size = UDim2.new(0.005, 0, 0, 0)
        ImageLabel.Position = UDim2.new(0, 0, 0, 0)
        ImageLabel.ImageTransparency = 0
        ImageLabel.BackgroundTransparency = 1
        ImageLabel.Visible = true
        ImageLabel.Parent = ImpactFrames
        if imageIds[i] then
            ImageLabel.Image = imageIds[i]
        end
        task.wait()
    end
    
    for i = 1, 73 do
        ImpactFrames:GetChildren()[i].Size = UDim2.new(1, 0, 1, 100)
        ImpactFrames:GetChildren()[i].Position = UDim2.new(0, 0, 0, -100)
        task.wait(0.033)
        ImpactFrames:GetChildren()[i].ImageTransparency = 1
    end
    
    ScreenGui:Destroy()
    
end)


delay(2.8, function()

local r = game:GetService("ReplicatedStorage")
local p = game:GetService("Players").LocalPlayer

local function m()
    local a = r:FindFirstChild("Resources")
    if not a then return end

    local b = a:FindFirstChild("KJEffects")
    if not b then return end

    local c = b:FindFirstChild("KJWallCombo")
    if not c then return end

    local d = c:FindFirstChild("UserAura")
    if not d or not d:IsA("Folder") then return end

    local e = p.Character:FindFirstChild("Torso")
    if not e then return end

    for _, f in pairs(d:GetChildren()) do
        if f:IsA("ParticleEmitter") then
            local g = f:Clone()
            g.Parent = e
            g.Enabled = true
            g.Rate = 50
            g:Emit(2)
        end
    end
end

m()

local p = game.Players.LocalPlayer
local c = p.Character
local h = c:FindFirstChild("HumanoidRootPart")

local f = game.ReplicatedStorage.Resources.KJEffects.KJWallCombo.hold
local g = f:Clone()
g.Parent = workspace
g.CFrame = h.CFrame * CFrame.new(0, 0, -1.9)

for _, a in ipairs(g:GetDescendants()) do
    if a:IsA("Attachment") then
        for _, b in ipairs(a:GetChildren()) do
            if b:IsA("ParticleEmitter") then
                b.Enabled = true
            end
        end
    end
end

local p = game.Players.LocalPlayer
local c = p.Character
local f = game.ReplicatedStorage.Resources.KJEffects.KJWallCombo.feet
local g = f:Clone()
g.Parent = workspace

local lLeg = c:FindFirstChild("Left Leg")
if lLeg then
    g.CFrame = lLeg.CFrame * CFrame.Angles(math.rad(-90), 0, 0)
end

for _, a in ipairs(g:GetDescendants()) do
    if a:IsA("Attachment") then
        for _, b in ipairs(a:GetChildren()) do
            if b:IsA("ParticleEmitter") then
                b:Emit(2)
            end
        end
    end
end

delay(0.6, function()
local p = game.Players.LocalPlayer
local c = p.Character or p.CharacterAdded:Wait()

local function s(t)
    for _, ch in ipairs(t:GetChildren()) do
        if ch:IsA("ParticleEmitter") then
            ch.Rate = 0
        end
    end
end

c:WaitForChild("HumanoidRootPart")

local t = c:FindFirstChild("Torso")

if t then
    s(t)
end

end)

end)

delay(5.89, function()

local p = workspace:FindFirstChild("hold")

if p then
    local aNames = {"2", "1", "Attachment"}
    
    for _, c in ipairs(p:GetChildren()) do
        if c:IsA("Attachment") and table.find(aNames, c.Name) then
            for _, d in ipairs(c:GetChildren()) do
                if d:IsA("ParticleEmitter") then
                    d.Rate = 0
                elseif d:IsA("Attachment") then
                    for _, e in ipairs(d:GetChildren()) do
                        if e:IsA("ParticleEmitter") then
                            e.Rate = 0
                        end
                    end
                end
            end
        end
    end
end
    
local p = game.Players.LocalPlayer
local c = p.Character
local h = c:FindFirstChild("HumanoidRootPart")

local function d(e)
    local f = game.ReplicatedStorage.Resources.KJEffects.KJWallCombo[e]
    local g = f:Clone()
    g.Parent = workspace
    g.CFrame = h.CFrame * CFrame.new(3, 0, 0) * CFrame.Angles(0, math.pi / 2, 0)
    
    for _, a in ipairs(g:GetDescendants()) do
        if a:IsA("Attachment") then
            for _, b in ipairs(a:GetChildren()) do
                if b:IsA("ParticleEmitter") then
                    b:Emit(2.1)
                end
            end
        end
    end
end

d("FinalImpact")
d("FinalImpactHUGEignore")

local k = Instance.new("Sound", game.Players.LocalPlayer.Character.Torso)
k.Name = "KOKUSEN"
k.SoundId = "rbxassetid://18443813318"
k.Volume = 1
k:Play()

end)

delay(8.04, function()
  
local ws = game:GetService("Workspace")

local function dpm()
    local parts = {"FinalImpact", "slam", "hold", "FinalImpactHUGEignore"}
    for _, n in pairs(parts) do
        local p = ws:FindFirstChild(n)
        if p then
            p:Destroy()
        end
    end
end

local function main()
    local m = ws:FindFirstChild("Weakest Dummy")
    if m and m:IsA("Model") then
        m:Destroy()
    end
    dpm()
end

main()

end)
end

local function setupAnimationEffect()
    local humanoid = character:WaitForChild("Humanoid")
    humanoid.AnimationPlayed:Connect(function(animationTrack)
        if animationTrack.Animation.AnimationId == targetAnimID then
            playSoundEffect()
        end
    end)
end

setupAnimationEffect()
player.CharacterAdded:Connect(function(newCharacter)
    character = newCharacter
    setupAnimationEffect()
end)