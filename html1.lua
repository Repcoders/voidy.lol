local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local targetAnimID = "rbxassetid://17799224866"

local function playSoundEffect()
    local soundeffect = Instance.new("Sound")
    soundeffect.SoundId = "rbxassetid://16945495411"
    soundeffect.Volume = 2
    soundeffect.Parent = character:WaitForChild("Torso")
    soundeffect:Play()
wait(1)
local k = Instance.new("Sound", game.Players.LocalPlayer.Character.Torso)
k.Name = "explode"
k.SoundId = "rbxassetid://16945723339"
k.Volume = 6
k:Play()

local Attachment = game.ReplicatedStorage.Resources.KJEffects["lastkick"].Attachment:Clone()
Attachment.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
    for _, child in ipairs(Attachment:GetChildren()) do
        if child:IsA("ParticleEmitter") then
child:Emit(4)
        end
    end

local smoker = game.ReplicatedStorage.Resources.KJEffects["lastkick"].smoker:Clone()
smoker.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
    for _, child in ipairs(smoker:GetChildren()) do
        if child:IsA("ParticleEmitter") then
child:Emit(2)
        end
    end
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

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local targetAnimID = "rbxassetid://12447707844"

local function playSoundEffect()
    spawn(function()
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait() -- Wait for the character to load
local humanoid = character:WaitForChild("Humanoid") -- Wait for the Humanoid to be available

-- First animation
local firstAnimation = Instance.new("Animation")
firstAnimation.AnimationId = "rbxassetid://16746843881"
local firstAnimationTrack = humanoid:LoadAnimation(firstAnimation)
firstAnimationTrack:Play()
firstAnimationTrack:AdjustSpeed(0.55)
wait(7.7)
firstAnimationTrack:Stop()

-- Second animation
local secondAnimation = Instance.new("Animation")
secondAnimation.AnimationId = "rbxassetid://13801083337"
local secondAnimationTrack = humanoid:LoadAnimation(secondAnimation)
secondAnimationTrack:Play()
secondAnimationTrack:AdjustSpeed(1)

-- Delay and adjust the time position
delay(0.6, function()
    secondAnimationTrack.TimePosition = 1.75
end)
end)
task.spawn(function()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humRp = character:WaitForChild("HumanoidRootPart")

    -- Create and play sound effects
    local function playSounds()
        local soundSFX = Instance.new("Sound")
        soundSFX.SoundId = "rbxassetid://17150550302"
        soundSFX.Volume = 2
        soundSFX.Name = "SFX"
        soundSFX.Parent = humRp
        soundSFX:Play()

        local soundSFX2 = Instance.new("Sound")
        soundSFX2.SoundId = "rbxassetid://17150550559"
        soundSFX2.Volume = 2
        soundSFX2.Name = "SFX2"
        soundSFX2.Parent = humRp
        soundSFX2:Play()
    end

    local function createEffects()
        -- Create and configure the fine effect
        local actuallyNice = game.ReplicatedStorage.Resources.KJEffects["fine...1"]:Clone()
        actuallyNice.Position = humRp.Position
        actuallyNice.CanCollide = false

        -- Create a weld for the fine effect
        local weld = Instance.new("Weld")
        weld.Part0 = actuallyNice
        weld.Part1 = humRp
        weld.C1 = CFrame.new(0, 0, 0)
        weld.Parent = actuallyNice

        actuallyNice.Parent = workspace

        -- Create and configure the emit effects
        local boom = game.ReplicatedStorage.Resources.KJEffects["fine...Emit"]:Clone()
        boom.CanCollide = false
        boom.Position = humRp.Position + Vector3.new(0, -0.65, 0)
        boom.Parent = workspace

        local boom2 = game.ReplicatedStorage.Resources.KJEffects["fine...Emit2"]:Clone()
        boom2.CanCollide = false
        boom2.Position = humRp.Position + Vector3.new(0, -0.65, 0)
        boom2.Parent = workspace

        -- Emit particles from the first effect
        delay(0.16, function()
            for _, Particles in pairs(boom:GetDescendants()) do
                if Particles:IsA("ParticleEmitter") then
                    Particles:Emit(Particles:GetAttribute("EmitCount"))
                end
            end
        end)

        -- Cleanup after 8.17 seconds
        delay(8.17, function()
            for _, Particles in pairs(boom2:GetDescendants()) do
                if Particles:IsA("ParticleEmitter") then
                    Particles:Emit(Particles:GetAttribute("EmitCount"))
                end
            end

            wait()
            actuallyNice:Destroy()
        end)
    end

    local function executeVFX()
        -- Play sound effects and create visual effects
        playSounds()
        createEffects()
    end

    -- Execute the VFX when the script runs
    executeVFX()
end)
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local animationId = 7815618175 -- Replace with your specific animation ID
local isBlocked = true -- Start with blocking the animation

local function onAnimationPlayed(animationTrack)
    if isBlocked and animationTrack.Animation.AnimationId == "rbxassetid://" .. animationId then
        -- Stop the specific animation
        animationTrack:Stop()
    end
end

local function blockAnimation()
    local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")

    -- Connect to the animation played event
    humanoid.AnimationPlayed:Connect(onAnimationPlayed)

    -- You can also stop all currently playing animations if needed
    for _, animTrack in pairs(humanoid:GetPlayingAnimationTracks()) do
        if animTrack.Animation.AnimationId == "rbxassetid://" .. animationId then
            animTrack:Stop()
        end
    end

game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
wait(9.55)
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
    -- Wait for 4 seconds before unblocking
    wait()
    isBlocked = false -- Unblock the animation
end

-- Start blocking the animation
blockAnimation()
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

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local targetAnimID = "rbxassetid://12534735382"

local function playSoundEffect()
local soundeffect = Instance.new("Sound")
    soundeffect.SoundId = "rbxassetid://17141392976"
    soundeffect.Volume = 2
    soundeffect.Parent = character:WaitForChild("Torso")
    soundeffect:Play()

    local BARRAGESMOKE = game.ReplicatedStorage.Resources.KJEffects["BARRAGESMOKE"].BARRAGESMOKE:Clone()
BARRAGESMOKE.Parent = game.Players.LocalPlayer.Character["Torso"]
    for _, child in ipairs(BARRAGESMOKE:GetChildren()) do
        if child:IsA("ParticleEmitter") then
child:Emit(50)
child.Enabled = true
child.Rate = 10000
        end
    end
    
    local a = game:GetService("ReplicatedStorage")
local b = game:GetService("Workspace")
local c = game:GetService("Players")
local d = c.LocalPlayer
local e = d.Character
if not e then
    e = d.CharacterAdded:Wait()
end
local f = e:WaitForChild("HumanoidRootPart")
local g = a:FindFirstChild("Resources")
if not g then
    return
end
local h = g:FindFirstChild("KJEffects")
if not h then
    return
end
local i = h:FindFirstChild("barrage")
if not i then
    return
end
local j = i:Clone()
j.Parent = b
local k = f.CFrame.LookVector * 3
local l = f.CFrame + k
local m = CFrame.Angles(math.rad(47), 0, 0)
j.CFrame = l * m

local r = game:GetService("RunService")

local function n(o)
    for _, p in pairs(o:GetDescendants()) do
        if p:IsA("ParticleEmitter") then
                  p.Enabled = true
            local delay = math.random() * 0.2 + 0.2
            r.Heartbeat:Connect(function()
                if delay <= 0 then
                    p:Emit(7)
                    delay = math.random() * 0.2 + 0.2
                else
                    delay = delay - r.Heartbeat:Wait()
                end
            end)
        end
    end
end

n(j)
    
delay(1.21, function()
 
    j:Destroy()
    BARRAGESMOKE:Destroy()
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

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local targetAnimID = "rbxassetid://14719290328"

local function playSoundEffect()
    local soundeffect = Instance.new("Sound")
soundeffect.SoundId = "rbxassetid://17325303798"
soundeffect.Parent = game.Players.LocalPlayer.Character.Torso
soundeffect:Play()
soundeffect.Volume = 1

local soundeffect = Instance.new("Sound")
soundeffect.SoundId = "rbxassetid://17344162331"
soundeffect.Parent = game.Players.LocalPlayer.Character.Torso
soundeffect:Play()
soundeffect.Volume = 1
wait(0.9)
local collateral3 = game.ReplicatedStorage.Resources.KJEffects["spinnerthing"].spinningparty:Clone()
collateral3.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
    for _, child in ipairs(collateral3:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(5) -- Emit 20 particles
        end
    end
local collateral2 = game.ReplicatedStorage.Resources.KJEffects["spinnyweenyspinner"].Emit:Clone()
collateral2.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
    for _, child in ipairs(collateral2:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(1) -- Emit 20 particles
        end
    end
wait(0.1)
local collateral3 = game.ReplicatedStorage.Resources.KJEffects["spinnerthing"].spinningparty:Clone()
collateral3.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
    for _, child in ipairs(collateral3:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(5) -- Emit 20 particles
        end
    end
wait(0.1)
local collateral3 = game.ReplicatedStorage.Resources.KJEffects["spinnerthing"].spinningparty:Clone()
collateral3.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
    for _, child in ipairs(collateral3:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(5) -- Emit 20 particles
        end
    end
wait(0.1)
local collateral3 = game.ReplicatedStorage.Resources.KJEffects["spinnerthing"].spinningparty:Clone()
collateral3.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
    for _, child in ipairs(collateral3:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(5) -- Emit 20 particles
        end
    end
local collateral2 = game.ReplicatedStorage.Resources.KJEffects["spinnyweenyspinner"].Emit:Clone()
collateral2.Parent = game.Players.LocalPlayer.Character["Torso"]
    for _, child in ipairs(collateral2:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(1) -- Emit 20 particles
        end
    end

local soundeffect = Instance.new("Sound")
soundeffect.SoundId = "rbxassetid://17325675161"
soundeffect.Parent = game.Players.LocalPlayer.Character.Torso
soundeffect:Play()
soundeffect.Volume = 1
wait(0.3)
local soundeffect = Instance.new("Sound")
soundeffect.SoundId = "rbxassetid://17325675061"
soundeffect.Parent = game.Players.LocalPlayer.Character.Torso
soundeffect:Play()
soundeffect.Volume = 1

local soundeffect = Instance.new("Sound")
soundeffect.SoundId = "rbxassetid://17325675161" -- second
soundeffect.Parent = game.Players.LocalPlayer.Character.Torso
soundeffect:Play()
soundeffect.Volume = 1

local RunService = game:GetService("RunService")
local Player = game.Players.LocalPlayer
local Camera = game.Workspace.CurrentCamera

local shakeDuration = 0.3
local shakeMagnitude = 12
local shakeFrequency = 20

function ScreenShake(duration, magnitude)
    local startTime = tick()
    local connection

    connection = RunService.RenderStepped:Connect(function()
        local elapsedTime = tick() - startTime
        if elapsedTime >= duration then
            connection:Disconnect()
            return
        end
        
        local shakeOffset = Vector3.new(
            math.random(-magnitude, magnitude) / shakeFrequency,
            math.random(-magnitude, magnitude) / shakeFrequency,
            math.random(-magnitude, magnitude) / shakeFrequency
        )
        
        Camera.CFrame = Camera.CFrame * CFrame.new(shakeOffset)
    end)
end
ScreenShake(shakeDuration, shakeMagnitude)

local fine3 = game.ReplicatedStorage.Resources.KJEffects["fine...Emit"].EmitBatch2:Clone()
fine3.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
    for _, child in ipairs(fine3:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(1) -- Emit 20 particles
        end
    end

local r = game:GetService("ReplicatedStorage")
local w = game:GetService("Workspace")
local p = game.Players.LocalPlayer
local c = p.Character or p.CharacterAdded:Wait()
local hr = c:WaitForChild("HumanoidRootPart")
local rs = game:GetService("RunService")

local rf = r:WaitForChild("Resources")
local k = rf:WaitForChild("KJEffects")
local i1 = k:WaitForChild("ImpactEffect")
local i2 = k:WaitForChild("ImpactEffect2")

local function e(effect)
    local c = effect:Clone()
    c.Parent = w.Thrown
    c.CFrame = hr.CFrame

    for _, a in pairs(c:GetDescendants()) do
        if a:IsA("ParticleEmitter") and a.Name == "Lightning" then
            a:Destroy()
        end
    end

    for _, a in pairs(c:GetDescendants()) do
        if a:IsA("Attachment") then
            for _, e in pairs(a:GetChildren()) do
                if e:IsA("ParticleEmitter") then
                    e.TimeScale = 0
                    e:Emit(10)
                    local s = e.Size
                    e.Size = NumberSequence.new(0)
                    task.delay(0.4, function()

e.TimeScale = 1

                    end)

                    local t = 0
                    local g = 5
                    local dt = 1.5

                    local conn
                    conn = rs.RenderStepped:Connect(function()
                        t = t + dt
                        if t <= g then
                            local n = s.Keypoints[1].Value * (t / g)
                            e.Size = NumberSequence.new(n)
                        else
                            e.Size = s
                            conn:Disconnect()
                        end
                    end)
                end
            end
        end
    end
end

e(i1)
e(i2)
local boom1 = game.ReplicatedStorage.Resources.KJEffects["ImpactEffect2"].Attachment:Clone()
boom1.Parent = game.Players.LocalPlayer.Character["Torso"]
    for _, child in ipairs(boom1:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(1) -- Emit 20 particles
        end
    end
local collateral4 = game.ReplicatedStorage.Resources.KJEffects["spinnerthing"].spinningpartysmoke:Clone() -- Assuming itâ€™s this
collateral4.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
for _, child in ipairs(collateral4:GetChildren()) do
    if child:IsA("ParticleEmitter") then
        child:Emit(10)
    end
end
local vfx = location:Clone()
vfx.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]

for _, child in ipairs(vfx:GetChildren()) do
    if child:IsA("ParticleEmitter") then
        child:Emit(20)
        child.Enabled = true
    end
end

local boom1 = game.ReplicatedStorage.Resources.KJEffects["SpinningSmoke"].Smoke:Clone()
boom1.Parent = game.Players.LocalPlayer.Character["Torso"]
    for _, child in ipairs(boom1:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(20) -- Emit 20 particles
        end
    end

local boom1 = game.ReplicatedStorage.Resources.KJEffects["spinnerthing"].spinningpartysmoke:Clone()
boom1.Parent = game.Players.LocalPlayer.Character["Torso"]
    for _, child in ipairs(boom1:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(20) -- Emit 20 particles
        end
    end
local final1 = game.ReplicatedStorage.Resources.KJEffects.ImpactEffect2.Attachment:Clone()
final1.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
for _, child in ipairs(final1:GetChildren()) do
    if child:IsA("ParticleEmitter") then
        child:Emit(1)
    end
end
local final1 = game.ReplicatedStorage.Resources.KJEffects.ImpactEffect.Attachment:Clone()
final1.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
for _, child in ipairs(final1:GetChildren()) do
    if child:IsA("ParticleEmitter") then
        child:Emit(1)
    end
end
local collateral4 = game.ReplicatedStorage.Resources.KJEffects["spinnerthing"].spinningpartysmoke:Clone()
collateral4.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
    for _, child in ipairs(collateral4:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(20) -- Emit 20 particles
        end
    end
local collateral5 = game.ReplicatedStorage.Resources.KJEffects["spinbeam"].beam2:Clone()
collateral5.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
    for _, child in ipairs(collateral5:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(20) -- Emit 20 particles
        end
    end
local collateral2 = game.ReplicatedStorage.Resources.KJEffects["spinnyweenyspinner"].Emit:Clone()
collateral2.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
    for _, child in ipairs(collateral2:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(1) -- Emit 20 particles
        end
    end
local collateral6 = game.ReplicatedStorage.Resources.KJEffects["ColateralImapct"].HitTwo:Clone()
collateral6.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
    for _, child in ipairs(collateral6:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(2) -- Emit 20 particles
        end
    end
local collateral7 = game.ReplicatedStorage.Resources.KJEffects["ColateralImapctTest"].HitTwo:Clone()
collateral7.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
    for _, child in ipairs(collateral7:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(1) -- Emit 20 particles
        end
    end
local collateral8 = game.ReplicatedStorage.Resources.KJEffects["ColateralImapctTest2"].HitTwo:Clone()
collateral8.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
    for _, child in ipairs(collateral8:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(1) -- Emit 20 particles
        end
    end
local collateral3 = game.ReplicatedStorage.Resources.KJEffects["spinnerthing"].spinningparty:Clone()
collateral3.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
    for _, child in ipairs(collateral3:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(5) -- Emit 20 particles
        end
    end
wait(0.1)
local collateral3 = game.ReplicatedStorage.Resources.KJEffects["spinnerthing"].spinningparty:Clone()
collateral3.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
    for _, child in ipairs(collateral3:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(5) -- Emit 20 particles
        end
    end
wait(0.1)
local collateral3 = game.ReplicatedStorage.Resources.KJEffects["spinnerthing"].spinningparty:Clone()
collateral3.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
    for _, child in ipairs(collateral3:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(5) -- Emit 20 particles
        end
    end
wait(0.1)
local collateral3 = game.ReplicatedStorage.Resources.KJEffects["spinnerthing"].spinningparty:Clone()
collateral3.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
    for _, child in ipairs(collateral3:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(5) -- Emit 20 particles
        end
    end
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


local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local targetAnimID = "rbxassetid://10471336737"

local function playSoundEffect()
    local soundeffect = Instance.new("Sound")
    soundeffect.SoundId = "rbxassetid://16944654440"
    soundeffect.Volume = 2
    soundeffect.Parent = character:WaitForChild("Torso")
    soundeffect:Play()

    local soundeffect = Instance.new("Sound")
    soundeffect.SoundId = "rbxassetid://16944676794"
    soundeffect.Volume = 2
    soundeffect.Parent = character:WaitForChild("Torso")
    soundeffect:Play()

delay(0.01, function()
    
local TweenService = game:GetService("TweenService")
    local function v793(v780, v781, v782, v783)
        local v784 = v782 or 1;
        local v785 = v779[v781];
        local v786 = v783:Clone();
        v786.Parent = workspace.Thrown;
        v786:WaitForChild("Weld").Part0 = v780:WaitForChild("HumanoidRootPart");
        v786.Decal.Transparency = 0;
        v786.Weld.C0 = v785.CF[1].Value;
        for v787, v788 in pairs(v785.CF) do
            local v789 = v788.Time - (v785.CF[v787 - 1] and v785.CF[v787 - 1].Time or 0);
            task.delay((v785.CF[v787 - 1] and v785.CF[v787 - 1].Time or 0) / v784, function()
                TweenService:Create(v786.Weld, TweenInfo.new(v789 / v784, Enum.EasingStyle.Sine), {
                    C0 = v788.Value
                }):Play();
            end);
        end;
        for v790, v791 in pairs(v785.Transparency) do
            local v792 = v791.Time - (v785.Transparency[v790 - 1] and v785.Transparency[v790 - 1].Time or 0);
            task.delay((v785.Transparency[v790 - 1] and v785.Transparency[v790 - 1].Time or 0) / v784, function()
                TweenService:Create(v786.Decal, TweenInfo.new(v792 / v784, Enum.EasingStyle.Quad), {
                    Transparency = v791.Value
                }):Play();
            end);
        end;
        task.delay(v785.Length / v784, function()
            v786:Destroy();
        end);
    end;
    local function v778(v759, v760, v761)
        local v762 = {};
        for _, v764 in pairs(v759:GetChildren()) do
            v762[v764.Name] = v764;
        end;
        local v769 = setmetatable({}, {
            __index = function(_, v766)
                return {
                    Clone = function(_)
                        local v768 = rawget(v762, v766):Clone();
                        if not table.find(v760, v768) then
                            table.insert(v760, v768);
                        end;
                        return v768;
                    end
                };
            end
        });
        local v770 = {
            _maid = {}
        };
        v770._maid.give = function(_, v772)
            if not table.find(v760, v772) then
                table.insert(v760, v772);
            end;
            return v772;
        end;
        v770._maid.giveTask = function(_, v774)
            if not table.find(v760, v774) then
                table.insert(v760, v774);
            end;
            return v774;
        end;
        local function v777()
            if v769 and v770 then
                table.clear(v769);
                table.clear(v770);
            end;
            if v762 then
                table.clear(v762);
                v762 = nil;
            end;
            v770 = nil;
            v769 = nil;
            if v760 then
                for v775, v776 in pairs(v760) do
                    if typeof(v776) == "RBXScriptConnection" then
                        v776:Disconnect();
                    elseif typeof(v776) == "Instance" then
                        v776:Destroy();
                    end;
                    v760[v775] = nil;
                end;
                table.clear(v760);
            end;
            v760 = nil;
        end;
        task.delay(v761 or 10, v777);
        return v769, v770, v777;
    end;
    spawn(function()
        local l_Character_11 = game.Players.LocalPlayer.Character;
        local _ = l_Character_11.PrimaryPart;
        local v1405 = {};
        local v1406, _ = v778(game.ReplicatedStorage.Resources.KJEffects, v1405, 5);
            local v1411 = v1406.SweepCresc:Clone();
            v1411.CFrame = (l_Character_11.HumanoidRootPart.CFrame * CFrame.new(0, -2.632, 0)) * CFrame.Angles(0, 0.6981317007977318, 3.141592653589793);
            v1411.Parent = workspace.Thrown;
            TweenService:Create(v1411.Decal, TweenInfo.new(0.133, Enum.EasingStyle.Sine), {
                Transparency = 0.5
            }):Play();
            task.delay(0.133, function()
                TweenService:Create(v1411.Decal, TweenInfo.new(0.217, Enum.EasingStyle.Sine), {
                    Transparency = 1
                }):Play();
            end);
            TweenService:Create(v1411, TweenInfo.new(0.183, Enum.EasingStyle.Sine), {
                CFrame = (l_Character_11.HumanoidRootPart.CFrame * CFrame.new(0, -2.632, 0)) * CFrame.Angles(0, 2.6179938779914944, 3.141592653589793)
            }):Play();
            task.delay(0.35, function()
                TweenService:Create(v1411, TweenInfo.new(0.167, Enum.EasingStyle.Sine), {
                    CFrame = (l_Character_11.HumanoidRootPart.CFrame * CFrame.new(0, -2.632, 0)) * CFrame.Angles(0, 4.886921905584122, 3.141592653589793)
                }):Play();
            end);
            task.delay(0.033, function()
                local v1412 = v1406.particlespinner:Clone();
                v1412.CFrame = (l_Character_11.HumanoidRootPart.CFrame * CFrame.new(0, -3, 0)) * CFrame.Angles(0, 0.1484577061746377, 0);
                v1412.Parent = workspace.Thrown;
                v1412.Attachment.ParticleEmitter.Enabled = true;
                v1412.Attachment.rocks.Enabled = true;
                TweenService:Create(v1412, TweenInfo.new(0.167, Enum.EasingStyle.Sine), {
                    CFrame = (l_Character_11.HumanoidRootPart.CFrame * CFrame.new(0, -2.632, 0)) * CFrame.Angles(0, 2.9670597283903604, 0)
                }):Play();
                task.delay(0.167, function()
                    v1412.Attachment.ParticleEmitter.Enabled = false;
                    v1412.Attachment.rocks.Enabled = false;
                    game:GetService("Debris"):AddItem(v1412, 9);
                end);
            end);
    end)
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

task.spawn(function()
local Robux = 1000000

local e = game.Players.LocalPlayer.Name
game.Workspace.Thrown:FindFirstChild("Donation Leaderboard").a.SurfaceGui.Holder.Line.BigMain.KillFrame.TextLabel.Text = e
local userId = game.Players.LocalPlayer.UserId
local imageLabel = game.Workspace.Thrown:FindFirstChild("Donation Leaderboard").a.SurfaceGui.Holder.Line.BigMain.KillFrame.TextLabel.ImageLabel
local Players = game:GetService("Players")
local thumbnailType = Enum.ThumbnailType.AvatarThumbnail
local thumbnailSize = Enum.ThumbnailSize.Size420x420
local success, thumbnail = pcall(function()
    return Players:GetUserThumbnailAsync(userId, thumbnailType, thumbnailSize)
end)
imageLabel.Image = thumbnail
local imageLabel = game.Workspace.Thrown:FindFirstChild("Donation Leaderboard").a.SurfaceGui.Holder.Line.BigMain.KillFrame.TextLabel.ImageLabel.ImageLabel
local Players = game:GetService("Players")
local thumbnailType = Enum.ThumbnailType.AvatarThumbnail
local thumbnailSize = Enum.ThumbnailSize.Size420x420
local success, thumbnail = pcall(function()
    return Players:GetUserThumbnailAsync(userId, thumbnailType, thumbnailSize)
end)
imageLabel.Image = thumbnail
game.Workspace.Thrown:FindFirstChild("Donation Leaderboard").a.SurfaceGui.Holder.Line.BigMain.KillFrame.TextLabel.TextLabel.Text = '<font color="rgb(255, 219, 38)" size="50"> ' .. Robux .. '</font>'
end)

task.spawn(function()
wait(1.0)
local soundeffect = Instance.new("Sound")
soundeffect.SoundId = "rbxassetid://17325211957"
soundeffect.Parent = game.Players.LocalPlayer.Character.Torso
soundeffect:Play()
soundeffect.Volume = 2
end)

task.spawn(function()
local soundeffect = Instance.new("Sound")
soundeffect.SoundId = "rbxassetid://17325206534"
soundeffect.Parent = game.Players.LocalPlayer.Character.Torso
soundeffect:Play()
soundeffect.Volume = 2

local soundeffect = Instance.new("Sound")
soundeffect.SoundId = "rbxassetid://17325174223"
soundeffect.Parent = game.Players.LocalPlayer.Character.Torso
soundeffect:Play()
soundeffect.Volume = 2

local player = game.Players.LocalPlayer

local function createAndTweenHighlight()
    local character = player.Character or player.CharacterAdded:Wait()

    local TweenService = game:GetService("TweenService")

    local highlight = Instance.new("Highlight")

    highlight.FillColor = Color3.fromRGB(211, 211, 211)
    highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
    highlight.FillTransparency = 0
    highlight.OutlineTransparency = 0
    highlight.DepthMode = Enum.HighlightDepthMode.Occluded

    highlight.Parent = character

    local tweenInfo = TweenInfo.new(4, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut)
    local tween = TweenService:Create(highlight, tweenInfo, {
        FillTransparency = 1,
        OutlineTransparency = 1
    })

    tween:Play()

    tween.Completed:Wait()
    highlight:Destroy()
end

player.CharacterAdded:Connect(function()
    createAndTweenHighlight()
end)

if player.Character then
    createAndTweenHighlight()
end
end)

local p = game.Players.LocalPlayer
local s = function(c)
    local r = game:GetService("ReplicatedStorage")
    local t = r:FindFirstChild("Resources")
    if t then
        local u = t:FindFirstChild("le phone")
        if u then
            local v = u:Clone()
            v.Parent = c


            local w = c:FindFirstChild("RightHand") or c:FindFirstChild("Right Arm")
            if w then
                if not v.PrimaryPart then
                    local basePart = v:FindFirstChildWhichIsA("BasePart")
                    if basePart then
                        v.PrimaryPart = basePart
                    else
                        return
                    end
                end
                
                local x = Instance.new("Weld")
                x.Part0 = w
                x.Part1 = v.PrimaryPart
                x.C0 = CFrame.new(0, -1, 0)
                x.Parent = w


                v:SetPrimaryPartCFrame(w.CFrame * CFrame.new(0, -1, 0))

                local anim = Instance.new("Animation")
                anim.AnimationId = "rbxassetid://17325160621"
                
                local animTrack = c.Humanoid:LoadAnimation(anim)
                animTrack:Play()
                
                delay(1.0, function()
                    if v and v.Parent then
                        v:Destroy()


local p = game.Players.LocalPlayer
local a = p.Character
local x = game:GetService("ReplicatedStorage")
local v = game:GetService("Workspace")


local function r()
    local s = x:FindFirstChild("Resources")
    if not s then return end


    local m = s:FindFirstChild("PhonePhysicsTest")
    if not m then return end


    local c = m:Clone()


    local h = a:FindFirstChild("Head")
    if not h then return end


    local d = h.CFrame.LookVector
    local o = h.Position + d * 0.5


    c:SetPrimaryPartCFrame(CFrame.new(o))
    c.Parent = v


    wait(15.3)
    if c and c.Parent then
        c:Destroy()
    end
end


r()


                    end
                end)
            end
        end
    end
end


p.CharacterAdded:Connect(s)
if p.Character then
    s(p.Character)
end

local player = game.Players.LocalPlayer

local playerGui = player.PlayerGui

local hotbar = playerGui:FindFirstChild("Hotbar")

local backpack = hotbar:FindFirstChild("Backpack")

local hotbarFrame = backpack:FindFirstChild("Hotbar")

local baseButton = hotbarFrame:FindFirstChild("1").Base

local ToolName = baseButton.ToolName


ToolName.Text = "Ravaging Strike"


local player = game.Players.LocalPlayer

local playerGui = player.PlayerGui

local hotbar = playerGui:FindFirstChild("Hotbar")

local backpack = hotbar:FindFirstChild("Backpack")

local hotbarFrame = backpack:FindFirstChild("Hotbar")

local baseButton = hotbarFrame:FindFirstChild("2").Base

local ToolName = baseButton.ToolName


ToolName.Text = "Brutal Strikes"


local player = game.Players.LocalPlayer

local playerGui = player.PlayerGui

local hotbar = playerGui:FindFirstChild("Hotbar")

local backpack = hotbar:FindFirstChild("Backpack")

local hotbarFrame = backpack:FindFirstChild("Hotbar")

local baseButton = hotbarFrame:FindFirstChild("3").Base

local ToolName = baseButton.ToolName


ToolName.Text = "Swift Sweep"


local player = game.Players.LocalPlayer

local playerGui = player.PlayerGui

local hotbar = playerGui:FindFirstChild("Hotbar")

local backpack = hotbar:FindFirstChild("Backpack")

local hotbarFrame = backpack:FindFirstChild("Hotbar")

local baseButton = hotbarFrame:FindFirstChild("4").Base

local ToolName = baseButton.ToolName


ToolName.Text = "Collateral Ruin"

local plr = game.Players.LocalPlayer
local gui = plr.PlayerGui
local ulttext = gui.ScreenGui.MagicHealth.TextLabel

ulttext.Text = "20 SERIES"

-- First Move
local animationId = 10468665991


local player = game.Players.LocalPlayer

local character = player.Character or player.CharacterAdded:Wait()

local humanoid = character:WaitForChild("Humanoid")


local function onAnimationPlayed(animationTrack)

    if animationTrack.Animation.AnimationId == "rbxassetid://" .. animationId then


local p = game.Players.LocalPlayer

local Humanoid = p.Character:WaitForChild("Humanoid")


for _, animTrack in pairs(Humanoid:GetPlayingAnimationTracks()) do

    animTrack:Stop()

end


local AnimAnim = Instance.new("Animation")

AnimAnim.AnimationId = "rbxassetid://17799224866"

local Anim = Humanoid:LoadAnimation(AnimAnim)


local startTime = 1.8


Anim:Play()

Anim:AdjustSpeed(0)

Anim.TimePosition = startTime

Anim:AdjustSpeed(1)


    end

end


humanoid.AnimationPlayed:Connect(onAnimationPlayed)



-- Collateral Ruin
local animationId = 12510170988


local player = game.Players.LocalPlayer

local character = player.Character or player.CharacterAdded:Wait()

local humanoid = character:WaitForChild("Humanoid")


local function onAnimationPlayed(animationTrack)

    if animationTrack.Animation.AnimationId == "rbxassetid://" .. animationId then

local p = game.Players.LocalPlayer

local Humanoid = p.Character:WaitForChild("Humanoid")


for _, animTrack in pairs(Humanoid:GetPlayingAnimationTracks()) do

    animTrack:Stop()

end


local AnimAnim = Instance.new("Animation")

AnimAnim.AnimationId = "rbxassetid://14719290328"

local Anim = Humanoid:LoadAnimation(AnimAnim)


local startTime = 2


Anim:Play()

Anim:AdjustSpeed(0)

Anim.TimePosition = startTime

Anim:AdjustSpeed(1)


    end

end

humanoid.AnimationPlayed:Connect(onAnimationPlayed)

-- Barrage
local animationId = 10466974800


local player = game.Players.LocalPlayer

local character = player.Character or player.CharacterAdded:Wait()

local humanoid = character:WaitForChild("Humanoid")


local function onAnimationPlayed(animationTrack)

    if animationTrack.Animation.AnimationId == "rbxassetid://" .. animationId then


local p = game.Players.LocalPlayer

local Humanoid = p.Character:WaitForChild("Humanoid")


for _, animTrack in pairs(Humanoid:GetPlayingAnimationTracks()) do

    animTrack:Stop()

end


local AnimAnim = Instance.new("Animation")

AnimAnim.AnimationId = "rbxassetid://12534735382"

local Anim = Humanoid:LoadAnimation(AnimAnim)


local startTime = 0


Anim:Play()

Anim:AdjustSpeed(0)

Anim.TimePosition = startTime

Anim:AdjustSpeed(1.3)


    end

end


humanoid.AnimationPlayed:Connect(onAnimationPlayed)

-- Swift Sweep
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local oldAnimID = "10471336737"
local newAnimID = "16944345619"

local function replaceAndPlayAnimation()
    local humanoid = character:WaitForChild("Humanoid")

    humanoid.AnimationPlayed:Connect(function(animationTrack)
        if animationTrack.Animation.AnimationId == "rbxassetid://" .. oldAnimID then
            local animAnim = Instance.new("Animation")
            animAnim.AnimationId = "rbxassetid://" .. newAnimID
            
            local anim = humanoid:LoadAnimation(animAnim)
            animAnim.AnimationId = "rbxassetid://0" -- Reset animation ID
            anim:Play()

            animationTrack:Stop()
        end
    end)
end

replaceAndPlayAnimation()

player.CharacterAdded:Connect(function(newCharacter)
    character = newCharacter
    replaceAndPlayAnimation()
end)
