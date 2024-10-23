local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

-- Define the target and replacement animation IDs
local oldAnimID = "13716964686"
local newAnimID = "17292549897"
local soundEffectId = "rbxassetid://17292555531"

-- Function to replace animation and play the new animation
local function replaceAndPlayAnimation()
    local humanoid = character:WaitForChild("Humanoid")

    -- Hook into AnimationPlayed event
    humanoid.AnimationPlayed:Connect(function(animationTrack)
        -- Check if the played animation has the old animation ID
        if animationTrack.Animation.AnimationId == "rbxassetid://" .. oldAnimID then
            local animAnim = Instance.new("Animation")
            animAnim.AnimationId = "rbxassetid://" .. newAnimID
            
            local anim = humanoid:LoadAnimation(animAnim)
            anim:Play()

            -- Play the sound effect
            local soundEffect = Instance.new("Sound")
            soundEffect.SoundId = soundEffectId
            soundEffect.Parent = character:WaitForChild("Torso")
            soundEffect.Volume = 2.5
            soundEffect:Play()

            -- Stop the old animation
            animationTrack:Stop()
        end
    end)
end

-- Initial run to set up animation replacement
replaceAndPlayAnimation()

-- Update the function if the player's character changes
player.CharacterAdded:Connect(function(newCharacter)
    character = newCharacter
    replaceAndPlayAnimation()
end)

local soundeffect = Instance.new("Sound")
soundeffect.SoundId = "rbxassetid://3398620867"
soundeffect.Parent = game.Players.LocalPlayer.Character.Torso
soundeffect:Play()
soundeffect.Volume = 2.5

game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "NOTIFICATION!",
    Text = "Five seasons by lloydgarmadon43",
    Duration = 15,
    Icon = "rbxassetid://17140853847"
})

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "Notice"
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local background = Instance.new("Frame")
background.Parent = screenGui
background.Size = UDim2.new(0.6, 0, 0.2, 0)
background.Position = UDim2.new(0.2, 0, 0.35, 0)
background.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
background.BackgroundTransparency = 0.5 
background.BorderSizePixel = 0

local uiCorner = Instance.new("UICorner")
uiCorner.CornerRadius = UDim.new(0, 15)
uiCorner.Parent = background

local textLabel = Instance.new("TextLabel")
textLabel.Parent = background
textLabel.Size = UDim2.new(1, 0, 1, 0)
textLabel.BackgroundTransparency = 1
textLabel.TextScaled = true
textLabel.Font = Enum.Font.SourceSans
textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
textLabel.TextStrokeTransparency = 0.8
textLabel.Text = "NOTICE\nThis character is still in early development and you have access to it due to early access gamepass. The character will have more moves in the future and is being actively worked on. Thank you!"
textLabel.TextWrapped = true

local function fadeOut(duration)
    local fadeTime = 1
    local fadeSteps = 30
    local waitTime = fadeTime / fadeSteps

    wait(duration)

    for i = 1, fadeSteps do
        background.BackgroundTransparency = background.BackgroundTransparency + (0.5 / fadeSteps)
        textLabel.TextTransparency = textLabel.TextTransparency + (1 / fadeSteps)
        textLabel.TextStrokeTransparency = textLabel.TextStrokeTransparency + (1 / fadeSteps)
        wait(waitTime)
    end

    screenGui:Destroy()
end

fadeOut(3)

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local oldAnimID = "15955393872"
local newAnimID = "18447913645"

local function playCinematic()
    function Cinematic(moduleData)
        local RunService = game:GetService("RunService")
        local TweenService = game:GetService("TweenService")
        local localPlayer = Players.LocalPlayer
        local character = localPlayer.Character or localPlayer.CharacterAdded:Wait()
        local camera = game.Workspace.CurrentCamera
        local CinematicsModule = moduleData
        local CurrentCameraCFrame = camera.CFrame
        local FrameTime = 0
        local Connection

        character.Humanoid.AutoRotate = false
        camera.CameraType = Enum.CameraType.Scriptable

        Connection = RunService.RenderStepped:Connect(function(DT)
            FrameTime += DT * 60
            local NeededFrame = CinematicsModule[math.ceil(FrameTime)]

            if NeededFrame then
                TweenService:Create(camera, TweenInfo.new(0.015, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
                    CFrame = character.HumanoidRootPart.CFrame * NeededFrame.cframe
                }):Play()
                camera.FieldOfView = NeededFrame.fov
            else
                Connection:Disconnect()
                camera.FieldOfView = 70
                character.Humanoid.AutoRotate = true
                camera.CameraType = Enum.CameraType.Custom
                camera.CFrame = CurrentCameraCFrame
            end
        end)
    end

    Cinematic(loadstring(game:HttpGet('https://raw.githubusercontent.com/AlperPro/shhh/main/wallcombo.lua'))())
end

local function replaceAndPlayAnimation()
    local humanoid = character:WaitForChild("Humanoid")

    humanoid.AnimationPlayed:Connect(function(animationTrack)
        if animationTrack.Animation.AnimationId == "rbxassetid://" .. oldAnimID then
            local anim = Instance.new("Animation")
            anim.AnimationId = "rbxassetid://" .. newAnimID
            
            local playAnim = humanoid:LoadAnimation(anim)
            anim.AnimationId = "rbxassetid://0"
            playAnim:Play()

            animationTrack:Stop()
            playCinematic()

            local soundEffect1 = Instance.new("Sound")
            soundEffect1.SoundId = "rbxassetid://18443049348"
            soundEffect1.Parent = character:WaitForChild("Torso")
            soundEffect1.Volume = 15
            soundEffect1:Play()

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

            local soundEffect2 = Instance.new("Sound")
            soundEffect2.SoundId = "rbxassetid://18443048724"
            soundEffect2.Parent = character:WaitForChild("Torso")
            soundEffect2.Volume = 15
            soundEffect2:Play()

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
                    v:Emit(1)
                end
            end
        end
    end
end

m()

            local ScreenGui = Instance.new("ScreenGui")
            ScreenGui.Parent = Players.LocalPlayer:WaitForChild("PlayerGui")

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

            for i = 1, #imageIds do
                local ImageLabel = Instance.new("ImageLabel")
                ImageLabel.Name = tostring(i)
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
            
            for i = 1, #imageIds do
                ImpactFrames:GetChildren()[i].Size = UDim2.new(1, 0, 1, 100)
                ImpactFrames:GetChildren()[i].Position = UDim2.new(0, 0, 0, -100)
                task.wait(0.03)
                ImpactFrames:GetChildren()[i].ImageTransparency = 1
            end
            
            ScreenGui:Destroy()

local soundeffect = Instance.new("Sound")
soundeffect.SoundId = "rbxassetid://18443813318"
soundeffect.Parent = game.Players.LocalPlayer.Character.Torso
soundeffect:Play()
soundeffect.Volume = 15

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
        end
    end)
end

replaceAndPlayAnimation()

player.CharacterAdded:Connect(function(newCharacter)
    character = newCharacter
    replaceAndPlayAnimation()
end)

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

-- Define the target animation ID
local targetAnimID = "rbxassetid://10469493270"

-- Function to play a sound effect
local function playSoundEffect()
    local soundeffect = Instance.new("Sound")
    soundeffect.SoundId = "rbxassetid://17325528680"  -- Replace with your sound asset ID
    soundeffect.Volume = 2.5
    soundeffect.Parent = character:WaitForChild("Torso")  -- Attach the sound to the character's torso
    soundeffect:Play()  -- Play the sound
end

-- Function to play sound effect when the animation is played
local function setupAnimationEffect()
    local humanoid = character:WaitForChild("Humanoid")

    humanoid.AnimationPlayed:Connect(function(animationTrack)
        -- Check if the played animation has the target animation ID
        if animationTrack.Animation.AnimationId == targetAnimID then
            playSoundEffect()  -- Play the sound effect
        end
    end)
end

-- Initial setup for the character
setupAnimationEffect()

-- Update the function if the player's character changes (e.g., respawn)
player.CharacterAdded:Connect(function(newCharacter)
    character = newCharacter
    setupAnimationEffect()
end)

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

-- Define the target animation ID
local targetAnimID = "rbxassetid://10469630950"

-- Function to play a sound effect
local function playSoundEffect()
    local soundeffect = Instance.new("Sound")
    soundeffect.SoundId = "rbxassetid://17325528583"  -- Replace with your sound asset ID
    soundeffect.Volume = 2.5
    soundeffect.Parent = character:WaitForChild("Torso")  -- Attach the sound to the character's torso
    soundeffect:Play()  -- Play the sound
end

-- Function to play sound effect when the animation is played
local function setupAnimationEffect()
    local humanoid = character:WaitForChild("Humanoid")

    humanoid.AnimationPlayed:Connect(function(animationTrack)
        -- Check if the played animation has the target animation ID
        if animationTrack.Animation.AnimationId == targetAnimID then
            playSoundEffect()  -- Play the sound effect
        end
    end)
end

-- Initial setup for the character
setupAnimationEffect()

-- Update the function if the player's character changes (e.g., respawn)
player.CharacterAdded:Connect(function(newCharacter)
    character = newCharacter
    setupAnimationEffect()
end)

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

-- Define the target animation ID
local targetAnimID = "rbxassetid://10469639222"

-- Function to play a sound effect
local function playSoundEffect()
    local soundeffect = Instance.new("Sound")
    soundeffect.SoundId = "rbxassetid://17325528509"  -- Replace with your sound asset ID
    soundeffect.Volume = 2.5
    soundeffect.Parent = character:WaitForChild("Torso")  -- Attach the sound to the character's torso
    soundeffect:Play()  -- Play the sound
end

-- Function to play sound effect when the animation is played
local function setupAnimationEffect()
    local humanoid = character:WaitForChild("Humanoid")

    humanoid.AnimationPlayed:Connect(function(animationTrack)
        -- Check if the played animation has the target animation ID
        if animationTrack.Animation.AnimationId == targetAnimID then
            playSoundEffect()  -- Play the sound effect
        end
    end)
end

-- Initial setup for the character
setupAnimationEffect()

-- Update the function if the player's character changes (e.g., respawn)
player.CharacterAdded:Connect(function(newCharacter)
    character = newCharacter
    setupAnimationEffect()
end)

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

-- Define the target animation ID
local targetAnimID = "rbxassetid://10469643643"

-- Function to play a sound effect
local function playSoundEffect()
    local soundeffect = Instance.new("Sound")
    soundeffect.SoundId = "rbxassetid://17325528401"  -- Replace with your sound asset ID
    soundeffect.Volume = 2.5
    soundeffect.Parent = character:WaitForChild("Torso")  -- Attach the sound to the character's torso
    soundeffect:Play()  -- Play the sound
end

-- Function to play sound effect when the animation is played
local function setupAnimationEffect()
    local humanoid = character:WaitForChild("Humanoid")

    humanoid.AnimationPlayed:Connect(function(animationTrack)
        -- Check if the played animation has the target animation ID
        if animationTrack.Animation.AnimationId == targetAnimID then
            playSoundEffect()  -- Play the sound effect
        end
    end)
end

-- Initial setup for the character
setupAnimationEffect()

-- Update the function if the player's character changes (e.g., respawn)
player.CharacterAdded:Connect(function(newCharacter)
    character = newCharacter
    setupAnimationEffect()
end)

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

-- Define the target and replacement animation IDs
local oldAnimID = "12447707844"
local newAnimID = "17140902079"

-- Function to replace animation and play the new animation
local function replaceAndPlayAnimation()
    local humanoid = character:WaitForChild("Humanoid")

    -- Hook into AnimationPlayed event
    humanoid.AnimationPlayed:Connect(function(animationTrack)
        -- Check if the played animation has the old animation ID
        if animationTrack.Animation.AnimationId == "rbxassetid://" .. oldAnimID then
            local animAnim = Instance.new("Animation")
            animAnim.AnimationId = "rbxassetid://" .. newAnimID
            
            local anim = humanoid:LoadAnimation(animAnim)
            animAnim.AnimationId = "rbxassetid://0" -- Reset animation ID
            anim:Play()

            -- Stop the old animation
            animationTrack:Stop()
        end
    end)
end

-- Initial run to set up animation replacement
replaceAndPlayAnimation()

-- Update the function if the player's character changes
player.CharacterAdded:Connect(function(newCharacter)
    character = newCharacter
    replaceAndPlayAnimation()
end)

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local function deleteInventory()
    for _, tool in pairs(player.Backpack:GetChildren()) do
        if tool:IsA("Tool") or tool:IsA("HopperBin") then
            tool:Destroy()
        end
    end

    for _, tool in pairs(character:GetChildren()) do
        if tool:IsA("Tool") or tool:IsA("HopperBin") then
            tool:Destroy()
        end
    end
end

deleteInventory()

player.CharacterAdded:Connect(function(newCharacter)
    character = newCharacter
    deleteInventory()
end)

local Players = game:GetService("Players")

        local player = Players.LocalPlayer
        
        local character = player.Character or player.CharacterAdded:Wait()
        
        local humanoid = character:WaitForChild("Humanoid")
        
        
        local animationIdsToStop = {
        
            [10469493270] = true,
        
            [10469630950] = true,
        
            [10469639222] = true,
        
            [10469643643] = true,
        
        }
        
        
        local replacementAnimations = {
        
            ["10469643643"] = "rbxassetid://17325537719",
        
            ["10469639222"] = "rbxassetid://17325522388",
        
            ["10469630950"] = "rbxassetid://17325513870",
        
            ["10469493270"] = "rbxassetid://17325510002",
        
        }
        
        
        local queue = {}
        
        local isAnimating = false
        
        
        local function playReplacementAnimation(animationId)
        
            if isAnimating then
        
                table.insert(queue, animationId)
        
                return
        
            end
        
           
        
            isAnimating = true
        
            local replacementAnimationId = replacementAnimations[tostring(animationId)]
        
            if replacementAnimationId then
        
                local AnimAnim = Instance.new("Animation")
        
                AnimAnim.AnimationId = replacementAnimationId
        
                local Anim = humanoid:LoadAnimation(AnimAnim)
        
                AnimAnim.AnimationId = "rbxassetid://0"
        
                Anim:Play()
        
               
        
                Anim.Stopped:Connect(function()
        
                    isAnimating = false
        
                    if #queue > 0 then
        
                        local nextAnimationId = table.remove(queue, 1)
        
                        playReplacementAnimation(nextAnimationId)
        
                    end
        
                end)
        
            else
        
                isAnimating = false
        
            end
        
        end
        
        
        local function stopSpecificAnimations()
        
            for _, track in ipairs(humanoid:GetPlayingAnimationTracks()) do
        
                local animationId = tonumber(track.Animation.AnimationId:match("%d+"))
        
                if animationIdsToStop[animationId] then
        
                    track:Stop()
        
                end
        
            end
        
        end
        
        
        local function onAnimationPlayed(animationTrack)
        
            local animationId = tonumber(animationTrack.Animation.AnimationId:match("%d+"))
        
            if animationIdsToStop[animationId] then
        
                stopSpecificAnimations()
        
                animationTrack:Stop()
        
               
        
                local replacementAnimationId = replacementAnimations[tostring(animationId)]
        
                if replacementAnimationId then
        
                    playReplacementAnimation(animationId)
        
                end
        
            end
        
        end
        
        
        humanoid.AnimationPlayed:Connect(onAnimationPlayed)
        
        
        local player = game.Players.LocalPlayer
        
        local character = player.Character or player.CharacterAdded:Wait()
        
        local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
        
        
        local function onBodyVelocityAdded(bodyVelocity)
        
            if bodyVelocity:IsA("BodyVelocity") then
        
                bodyVelocity.Velocity = Vector3.new(bodyVelocity.Velocity.X, 0, bodyVelocity.Velocity.Z)
        
            end
        
        end
        
        
        character.DescendantAdded:Connect(onBodyVelocityAdded)
        
        
        for _, descendant in pairs(character:GetDescendants()) do
        
            onBodyVelocityAdded(descendant)
        
        end
        
        
        player.CharacterAdded:Connect(function(newCharacter)
        
            character = newCharacter
        
            humanoidRootPart = character:WaitForChild("HumanoidRootPart")
        
            character.DescendantAdded:Connect(onBodyVelocityAdded)
        
           
        
            for _, descendant in pairs(character:GetDescendants()) do
        
                onBodyVelocityAdded(descendant)
        
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


                -- Play the animation
                local anim = Instance.new("Animation")
                anim.AnimationId = "rbxassetid://17325160621"
                
                local animTrack = c.Humanoid:LoadAnimation(anim)
                animTrack:Play()


                -- Create and play the sound
                local sound = Instance.new("Sound")
                sound.SoundId = "rbxassetid://17325174223"
                sound.Parent = c.Torso or c:FindFirstChild("UpperTorso") -- Adjust if using R6 or R15
                sound:Play()
                
                -- Delete the model after 1.0 seconds
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

local plr = game.Players.LocalPlayer
local gui = plr.PlayerGui
local ulttext = gui.ScreenGui.MagicHealth.TextLabel

ulttext.Text = "20 SERIES"

local a = game:GetService("StarterGui")
a:SetCore("SendNotification", {
    Title = "NOTIFICATION";
    Text = "Ravage Made By DiabloX8 On Discord.";
    Duration = 5;
    Icon = "rbxassetid://17140853847"
})

local p = game.Players.LocalPlayer
local r = p.Backpack:FindFirstChild("Ravage")
if r then
    local a = r:Destroy()
end

local p = game.Players.LocalPlayer
local b = p.Backpack
local t = Instance.new("Tool")
t.Name = "Ravage"
t.RequiresHandle = false

local c = true
local d = 28

t.Activated:Connect(function()
    
if not c then
        return
    end
    
    c = false

    delay(d, function()
        c = true
    end)
    
local b = 28
local c = game.Players.LocalPlayer
local d = c:WaitForChild("PlayerGui")
local e = d:WaitForChild("Hotbar")
local f = e:WaitForChild("Backpack")
local g = f:WaitForChild("Hotbar")

for n = 1, 13 do
    local h = g:FindFirstChild(tostring(n))
    if h then
        local i = h:FindFirstChild("Base")
        if i then
            local j = i:FindFirstChild("ToolName")
            if j and j.Text == "Ravage" then
                local k = f:WaitForChild("LocalScript"):WaitForChild("Cooldown")
                local l = k:Clone()

                l.Parent = h
                l.BackgroundColor3 = Color3.fromRGB(255, 78, 78)

                local m = l.Size
                local n = UDim2.new(m.X.Scale, m.X.Offset, 0, 0)

                spawn(function()
                    local o = tick()
                    local p = l.Size

                    while tick() - o < b do
                        local q = tick() - o
                        local r = q / b

                        local s = UDim2.new(
                            p.X.Scale,
                            p.X.Offset,
                            p.Y.Scale * (1 - r),
                            p.Y.Offset * (1 - r)
                        )

                        l.Size = s
                        wait()
                    end

                    l.Size = n
                    l:Destroy()
                end)
            end
        end
    end
end
    
local p = game.Players.LocalPlayer
local c = p.Character or p.CharacterAdded:Wait()
local h = c:WaitForChild("HumanoidRootPart")
h.Anchored = true
 
 delay(0.9, function()
    
local p = game.Players.LocalPlayer
local c = p.Character or p.CharacterAdded:Wait()
local h = c:WaitForChild("HumanoidRootPart")
h.Anchored = false
    
end)

local a = "rbxassetid://7815618175"
local b = game.Players.LocalPlayer
local c = b.Character or b.CharacterAdded:Wait()
local d = c:WaitForChild("Humanoid")
local e = game:GetService("RunService")

local f

local function checkAnimation()
    for _, g in ipairs(d:GetPlayingAnimationTracks()) do
        if g.Animation.AnimationId == a then
            g:Stop()
        end
    end
end

f = e.RenderStepped:Connect(checkAnimation)

task.delay(0.9, function()
    f:Disconnect()
end)

local P = game.Players.LocalPlayer
   local H = P.Character:WaitForChild("Humanoid")

    local A = Instance.new("Animation")
     A.AnimationId = "rbxassetid://16945573694"
      local T = H:LoadAnimation(A)
       A.AnimationId = "rbxassetid://0"
        T:Play()

local k = Instance.new("Sound", game.Players.LocalPlayer.Character.Torso)
k.Name = "start"
k.SoundId = "rbxassetid://16945495411"
k.Volume = 2
k:Play()

task.delay(0.67, function()
  
  local p = game.Players.LocalPlayer
local c = p.Character or p.CharacterAdded:Wait()
local r = c:WaitForChild("HumanoidRootPart")

local o = r.Position
local d = r.CFrame.LookVector * 4
local params = RaycastParams.new()
params.FilterDescendantsInstances = {c}

local res = workspace:Raycast(o, d, params)

if res and res.Instance.Parent:FindFirstChild("HumanoidRootPart") then
    local m = res.Instance.Parent
    local h = m:FindFirstChild("HumanoidRootPart")
    local hu = m:FindFirstChild("Humanoid")

    if h and hu then
        h.CFrame = r.CFrame * CFrame.new(0, 0, -3)
        h.CFrame = CFrame.lookAt(h.Position, r.Position)

        local a = Instance.new("Animation")
        a.AnimationId = "rbxassetid://16945557433"
        local t = hu:LoadAnimation(a)
        t:Play()
      
local P = game.Players.LocalPlayer
   local H = P.Character:WaitForChild("Humanoid")

    local A = Instance.new("Animation")
     A.AnimationId = "rbxassetid://16945550029"
      local T = H:LoadAnimation(A)
       A.AnimationId = "rbxassetid://0"
        T:Play()
     
local a = "rbxassetid://7815618175"
local b = game.Players.LocalPlayer
local c = b.Character or b.CharacterAdded:Wait()
local d = c:WaitForChild("Humanoid")
local e = game:GetService("RunService")

local f

local function checkAnimation()
    for _, g in ipairs(d:GetPlayingAnimationTracks()) do
        if g.Animation.AnimationId == a then
            g:Stop()
        end
    end
end

f = e.RenderStepped:Connect(checkAnimation)

task.delay(6.2, function()
    f:Disconnect()
end)
  
  task.spawn(function()
   
   task.delay(5.1, function()
    
    task.spawn(function()
     
task.spawn(function()
     
local R = game:GetService("RunService")
local P = game.Players.LocalPlayer
local C = workspace.CurrentCamera

local M = 1
local D = 0.3
local RD = 0.3

local OC = C.CFrame

local function s(d, m, rd)
    local st = tick()
    local c

    c = R.RenderStepped:Connect(function()
        local e = tick() - st
        if e < d then
            local sx = math.random(-m, m)
            local sy = math.random(-m, m)
            C.CFrame = C.CFrame * CFrame.Angles(math.rad(sx), math.rad(sy), 0)
        else
            c:Disconnect()
            wait(rd)
        end
    end)
end

s(D, M, RD)

    end)
     
     local Attachment = game.ReplicatedStorage.Resources.KJEffects["lastkick"].Attachment:Clone()
Attachment.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
    for _, child in ipairs(Attachment:GetChildren()) do
        if child:IsA("ParticleEmitter") then
child:Emit(7)
        end
    end

local smoker = game.ReplicatedStorage.Resources.KJEffects["lastkick"].smoker:Clone()
smoker.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
    for _, child in ipairs(smoker:GetChildren()) do
        if child:IsA("ParticleEmitter") then
child:Emit(8)
        end
    end
     
    end)
    
    local r = game:GetService("ReplicatedStorage")
local p = game.Players.LocalPlayer
local c = p.Character or p.CharacterAdded:Wait()
local h = c:WaitForChild("HumanoidRootPart")
local e = r:WaitForChild("Resources"):WaitForChild("KJEffects")
local s = {"Start", "End", "KickShockwave", "KickShockwave2"}

for _, v in ipairs(s) do
    local f = e:WaitForChild(v):Clone()
    f.Parent = workspace
    f.CFrame = h.CFrame * CFrame.new(0, 0, -5) * CFrame.Angles(math.rad(-90), 0, 0)

    task.delay(0.05, function()
        f:Destroy()
    end)
end
    
   end)
    
delay(5.4, function()
   
 local k = Instance.new("Sound", game.Players.LocalPlayer.Character.Torso)
k.Name = "explode"
k.SoundId = "rbxassetid://16945723339"
k.Volume = 2
k:Play()
 
 task.delay(0.8, function()
  
  local p = game.Workspace:FindFirstChild("NoRotation")
if p then
    p:Destroy()
end
  
 end)

end)
    
local k = Instance.new("Sound", game.Players.LocalPlayer.Character.Torso)
k.Name = "hit (1)"
k.SoundId = "rbxassetid://16945517708"
k.Volume = 2
k:Play()

local k = Instance.new("Sound", game.Players.LocalPlayer.Character.Torso)
k.Name = "consecutive"
k.SoundId = "rbxassetid://16945593216"
k.Volume = 2
k:Play()

local k = Instance.new("Sound", game.Players.LocalPlayer.Character.Torso)
k.Name = "wind"
k.SoundId = "rbxassetid://16945691441"
k.Volume = 2
k:Play()
  
local p = game.Players.LocalPlayer
local c = p.Character or p.CharacterAdded:Wait()
local h = c:WaitForChild("HumanoidRootPart")

local a = Instance.new("Part")
a.Size = Vector3.new(1, 1, 1)
a.Anchored = true
a.CanCollide = true
a.Position = h.Position
a.Transparency = 1
a.Name = "NoRotation"
a.Parent = workspace

local w = Instance.new("WeldConstraint")
w.Part0 = a
w.Part1 = h
w.Parent = a
    
  end)
  
  local rs = game:GetService("ReplicatedStorage")
local ws = game:GetService("Workspace")
local plr = game.Players.LocalPlayer

local r = rs:WaitForChild("Resources")
local k = r:WaitForChild("KJEffects")
local p = k:WaitForChild("Ultikwind1")

local c = p:Clone()
c.Parent = ws:WaitForChild("Thrown")

local char = plr.Character or plr.CharacterAdded:Wait()
local hrp = char:WaitForChild("HumanoidRootPart")

local pos = hrp.Position + (hrp.CFrame.LookVector * 2)
c.Position = pos
c.CFrame = CFrame.new(pos, hrp.Position) * CFrame.Angles(0, math.rad(-90), 0)

for _, v in ipairs(c:GetChildren()) do
    if v:IsA("SpecialMesh") then
        v.Scale = Vector3.new(0.14, 0.30, 0.30)
    end
end

task.delay(0.04, function()

c:Destroy()

end)
  
task.delay(1.19, function()
 
local p = game.Players.LocalPlayer
local c = p.Character or p.CharacterAdded:Wait()
local h = c:WaitForChild("HumanoidRootPart")

local r = game:GetService("ReplicatedStorage")
local rs = r.Resources
local ke = rs.KJEffects
local p1 = ke["1and2"]
local p2 = ke["1and2smoke"]

local p1_c = p1:Clone()
p1_c.CFrame = h.CFrame * CFrame.new(0, 0, -3)

local p2_c = p2:Clone()
p2_c.CFrame = h.CFrame * CFrame.new(0, 0, -5)

local t = c:FindFirstChild("Thrown") or Instance.new("Folder", c)
t.Name = "Thrown"

p1_c.Parent = t
p2_c.Parent = t

local a1 = p1_c:FindFirstChild("1and2")
if a1 then
    for _, e in pairs(a1:GetDescendants()) do
        if e:IsA("ParticleEmitter") then
            e:Emit(28)
        end
    end
end

local a2 = p2_c:FindFirstChild("1and2smoke")
if a2 then
    for _, e in pairs(a2:GetDescendants()) do
        if e:IsA("ParticleEmitter") then
            e:Emit(18)
        end
    end
end

  task.delay(0.48, function()
   
    local p = game.Players.LocalPlayer
local c = p.Character or p.CharacterAdded:Wait()
local h = c:WaitForChild("HumanoidRootPart")

local r = game:GetService("ReplicatedStorage")
local rs = r.Resources
local ke = rs.KJEffects
local p1 = ke["1and2"]
local p2 = ke["1and2smoke"]

local p1_c = p1:Clone()
p1_c.CFrame = h.CFrame * CFrame.new(0, 0, -3)

local p2_c = p2:Clone()
p2_c.CFrame = h.CFrame * CFrame.new(0, 0, -5)

local t = c:FindFirstChild("Thrown") or Instance.new("Folder", c)
t.Name = "Thrown"

p1_c.Parent = t
p2_c.Parent = t

local a1 = p1_c:FindFirstChild("1and2")
if a1 then
    for _, e in pairs(a1:GetDescendants()) do
        if e:IsA("ParticleEmitter") then
            e:Emit(28)
        end
    end
end

local a2 = p2_c:FindFirstChild("1and2smoke")
if a2 then
    for _, e in pairs(a2:GetDescendants()) do
        if e:IsA("ParticleEmitter") then
            e:Emit(18)
        end
    end
end
    
delay(0.5, function()

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
    
local p = game.Players.LocalPlayer
local c = p.Character or p.CharacterAdded:Wait()

local function d()
    local t = c:WaitForChild("Torso")
    local a = t:FindFirstChild("BARRAGESMOKE")
    
    if a then
        a:Destroy()
    end
end

d()

local TweenService = game:GetService("TweenService")

local v820 = {
    Character = game.Players.LocalPlayer.Character,
    ShowaveCF = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 9, 0) * CFrame.Angles(0, 0, math.rad(90)),
    CF = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame,
}

local function v483(params)
    local origin = params.orig
    local direction = params.dir
    local ray = Ray.new(origin, direction)
    local part, position = workspace:FindPartOnRay(ray)
    return part, position
end

local _ = v820.Character.PrimaryPart
local v1398 = game.ReplicatedStorage:WaitForChild("Resources"):WaitForChild("KJEffects")
local l_CF_0 = v820.CF
local l_ShowaveCF_0 = v820.ShowaveCF
local v1402 = v1398:WaitForChild("uppercutimpact"):Clone()
local v3 = TweenService

v1402.CFrame = l_CF_0
v1402.Parent = workspace:WaitForChild("Thrown")

v3:Create(v1402, TweenInfo.new(0.06, Enum.EasingStyle.Circular, Enum.EasingDirection.Out), {
    CFrame = v1402.CFrame * CFrame.new(0, 7.076, 0)
}):Play()

v3:Create(v1402:FindFirstChild("Mesh"), TweenInfo.new(0.06, Enum.EasingStyle.Circular, Enum.EasingDirection.Out), {
    Scale = Vector3.new(0.7, 0, 0)
}):Play()

local v1403 = v1398:WaitForChild("uppercutmesh"):Clone()
v1403.CFrame = l_ShowaveCF_0
v1403.Parent = workspace:WaitForChild("Thrown")

v3:Create(v1403, TweenInfo.new(0.25, Enum.EasingStyle.Circular, Enum.EasingDirection.Out), {
    CFrame = v1403.CFrame * CFrame.new(-11.931, 0, 0) * CFrame.Angles(-math.pi, 0, 0)
}):Play()

v3:Create(v1403:FindFirstChild("Mesh"), TweenInfo.new(0.25, Enum.EasingStyle.Circular, Enum.EasingDirection.Out), {
    Scale = Vector3.new(0, 0.6, 0.6)
}):Play()

v3:Create(v1403:FindFirstChild("Decal"), TweenInfo.new(0.25, Enum.EasingStyle.Circular, Enum.EasingDirection.Out), {
    Transparency = 1
}):Play()

local v1404, v1405 = v483({
    orig = l_CF_0.Position + Vector3.yAxis, 
    dir = Vector3.new(0, -50, 0)
})
if v1404 then
    local l_Color_0 = v1404.Color
    local v1407 = v1398:WaitForChild("UPPERCUTSMOKE"):Clone()
    v1407.Size = Vector3.new(5, 5, 5)
    v1407.Position = v1405
    v1407.Parent = workspace:WaitForChild("Thrown")
    v1407.UPPERCUTSMOKE["1"].Color = ColorSequence.new(l_Color_0)
    v1407.UPPERCUTSMOKE["2"].Color = ColorSequence.new(l_Color_0)
    for _, child in ipairs(v1407:GetChildren()) do
        if child:IsA("ParticleEmitter") then
            child:Emit(6)
        end
    end
    game:GetService("Debris"):AddItem(v1407, 2)
end

game:GetService("Debris"):AddItem(v1403, 1)
game:GetService("Debris"):AddItem(v1402, 1)

local UPPERCUTSMOKE = game.ReplicatedStorage.Resources.KJEffects["UPPERCUTSMOKE"].UPPERCUTSMOKE:Clone()
UPPERCUTSMOKE.Parent = game.Players.LocalPlayer.Character:WaitForChild("Torso")
for _, child in ipairs(UPPERCUTSMOKE:GetChildren()) do
    if child:IsA("ParticleEmitter") then
        child:Emit(6)
    end
end
  
task.delay(0.7, function()
 
 local r = game.ReplicatedStorage.Resources.KJEffects
local s = r["Left Leg"].speedlines:Clone()
local t = r["Left Leg"].starries:Clone()

s.Parent = game.Players.LocalPlayer.Character["Left Leg"]
t.Parent = game.Players.LocalPlayer.Character["Left Leg"]

if s:IsA("ParticleEmitter") then
    s.Enabled = true
    s.Rate = 10000
    s:Emit(11)
end

if t:IsA("ParticleEmitter") then
    t.Enabled = true
    t.Rate = 10000
    t:Emit(11)
 
 task.delay(1.2, function()
  
  t.Rate = 0
  t:Emit(11)
  
  s.Rate = 0
  s:Emit(11)
  
 end)
 
end
  
  local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local torso = character:WaitForChild("HumanoidRootPart")


local function createRock(size)
    local rock = Instance.new("Part")
    rock.Size = size
    rock.Shape = Enum.PartType.Block
    rock.Anchored = false
    rock.CanCollide = true
    rock.Material = Enum.Material.Slate
    rock.BrickColor = BrickColor.Gray()
    rock.Parent = workspace

    local bodyAngularVelocity = Instance.new("BodyAngularVelocity")
    bodyAngularVelocity.MaxTorque = Vector3.new(4000, 4000, 4000)
    bodyAngularVelocity.P = 3000
    bodyAngularVelocity.Parent = rock

    local randomDirection = Vector3.new(
        math.random() * 2 - 1,
        math.random() * 2 - 1,
        math.random() * 2 - 1
    ).unit
    local spinSpeed = math.random(50, 150)
    bodyAngularVelocity.AngularVelocity = randomDirection * spinSpeed

    return rock, bodyAngularVelocity
end

local function rotateRocks(rotationSpeed, fallDelay, launchSpeed, verticalForce, spinSpeed, slideSpeed, slideDuration, shrinkDuration)
    local rocks = {}
    local numberOfRocks = 12  
    local radius = 10
    local rockHeight = 0.3

    for i = 1, numberOfRocks do
        local angle = (i / numberOfRocks) * math.pi * 2
        local size = Vector3.new(0.3, 0.3, 0.3)
        if i % 2 == 0 then
            size = Vector3.new(0.65, 0.65, 0.65)
        end
        local rock, bodyAngularVelocity = createRock(size)
        local offsetX = math.cos(angle) * radius
        local offsetZ = math.sin(angle) * radius

        rock.Position = torso.Position + Vector3.new(offsetX, rockHeight, offsetZ)
        table.insert(rocks, { rock = rock, bodyAngularVelocity = bodyAngularVelocity })
    end

    local runService = game:GetService("RunService")
    local startTime = tick()
    local connection
    connection = runService.RenderStepped:Connect(function()
        local elapsed = tick() - startTime
        local angleStep = (elapsed * rotationSpeed) % (math.pi * 2)

        if elapsed >= 0.6 then
            rotationSpeed = math.max(rotationSpeed * 0.95, 1)
        end

        for i, rockData in ipairs(rocks) do
            local rock = rockData.rock
            local angle = (i / numberOfRocks) * math.pi * 2 + angleStep
            local offsetX = math.cos(angle) * radius
            local offsetZ = math.sin(angle) * radius
            rock.Position = torso.Position + Vector3.new(offsetX, rockHeight, offsetZ)
        end

        if elapsed >= fallDelay then
            connection:Disconnect()
            for _, rockData in ipairs(rocks) do
                local rock = rockData.rock
                local bodyAngularVelocity = rockData.bodyAngularVelocity
                if bodyAngularVelocity then
                    bodyAngularVelocity:Destroy()
                end

                local tangentialVelocity = launchSpeed * (1 + math.random(-10, 10) / 100)  
                local bodyVelocity = Instance.new("BodyVelocity")
                local outwardDirection = (rock.Position - torso.Position).unit
                local randomHorizontal = Vector3.new(math.random(-1, 1), 0, math.random(-1, 1)) * 0.3  
                bodyVelocity.Velocity = (outwardDirection + randomHorizontal).unit * tangentialVelocity + Vector3.new(0, verticalForce, 0)
                bodyVelocity.P = 1000
                bodyVelocity.Parent = rock

                local dust = Instance.new("ParticleEmitter")
                dust.Texture = "rbxassetid://3527866534"  
                dust.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 2), NumberSequenceKeypoint.new(1, 0)})
                dust.Lifetime = NumberRange.new(0.5, 1)
                dust.Rate = 100
                dust.Speed = NumberRange.new(5, 10)
                dust.Parent = rock
                dust:Emit(50)

                rock.Touched:Connect(function(hit)
                    if hit:IsA("Terrain") or (hit:IsA("BasePart") and hit.CanCollide) then
                        bodyVelocity:Destroy()

                        local glideVelocity = outwardDirection * slideSpeed
                        local glideStartTime = tick()

                        local glideConnection
                        glideConnection = runService.RenderStepped:Connect(function()
                            local glideElapsed = tick() - glideStartTime
                            if glideElapsed >= slideDuration then
                                glideConnection:Disconnect()
                                rock.Velocity = Vector3.new(0, 0, 0)


                                local shrinkStartTime = tick()
                                local shrinkConnection
                                shrinkConnection = runService.RenderStepped:Connect(function()
                                    local shrinkElapsed = tick() - shrinkStartTime
                                    local scale = math.max(0, rock.Size.X * (1 - (shrinkElapsed / shrinkDuration)))
                                    rock.Size = Vector3.new(scale, scale, scale)
                                    rock.Position = rock.Position - Vector3.new(0, (rock.Size.Y - scale) / 2, 0)

                                    if scale <= 0 then
                                        shrinkConnection:Disconnect()
                                        rock:Destroy()
                                    end
                                end)
                            else
                                rock.Velocity = glideVelocity * (1 - (glideElapsed / slideDuration))
                            end
                        end)
                    end
                end)
            end
        end
    end)
end


local rotationSpeed = 12
local fallDelay = 0.65
local launchSpeed = 25
local verticalForce = -10
local spinSpeed = 1200
local slideSpeed = 30
local slideDuration = 0.7
local shrinkDuration = 2.5

rotateRocks(rotationSpeed, fallDelay, launchSpeed, verticalForce, spinSpeed, slideSpeed, slideDuration, shrinkDuration)

local a = game.ReplicatedStorage.Resources.KJEffects["RUNAROUNDWIND"].RUNAROUNDWIND:Clone()
a.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
    for _, b in ipairs(a:GetChildren()) do
        if b:IsA("ParticleEmitter") then
            b:Emit(5)
            b.Rate = 145
            b.Enabled = true

task.delay(0.6, function()

b.Rate = 0

end)

        end
    end

local r = game.ReplicatedStorage:FindFirstChild("Resources")
if r then
    local k = r:FindFirstChild("KJEffects")
    if k then
        local p = k:FindFirstChild("spinbeam")
        if p then
            local d = p:Clone()
            local c = game.Players.LocalPlayer.Character
            local hrp = c and c:FindFirstChild("HumanoidRootPart")
            if hrp then
                d.Parent = game.Workspace:FindFirstChild("Thrown") or Instance.new("Folder", game.Workspace)
                d.CFrame = hrp.CFrame * CFrame.new(0, -2, 11)

                local b = d:FindFirstChild("beam2")
                if b then
                    local beams = b:GetDescendants()
                    for _, beam in ipairs(beams) do
                        if beam:IsA("Beam") then
                            beam.Enabled = true
                            beam.Transparency = NumberSequence.new(1)

                            local g = 0.8
                            local s = (1 - g) / 10
                            local ct = 1
                            local rs = game:GetService("RunService")

                            for i = 1, 10 do
                                rs.Heartbeat:Wait()
                                ct = ct - s
                                beam.Transparency = NumberSequence.new(ct)
                            end

                            task.delay(0.28, function()
                                local f = (1 - g) / 10
                                for i = 1, 10 do
                                    rs.Heartbeat:Wait()
                                    g = g + f
                                    beam.Transparency = NumberSequence.new(math.min(g, 1))
                                end
                            end)
                        end
                    end
                end
            end
        end
    end
end
  
end)

end)

end)
    
  end)
  
end)
      
    end
end
  
end)
    
end)
t.Parent = b

local tool = Instance.new("Tool")
tool.Name = "Swift Sweep"
tool.RequiresHandle = false
tool.ToolTip = "ooh kick yes yes baby"

tool.Parent = game.Players.LocalPlayer.Backpack

local ToolNumber = 2
local cooldownTime = 10
local isCooldownActive = false  -- To prevent activation during cooldown

local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local hotbar = playerGui:WaitForChild("Hotbar")
local backpack = hotbar:WaitForChild("Backpack")
local localScript = backpack:WaitForChild("LocalScript")
local cooldown = localScript:WaitForChild("Cooldown")
local clonedCooldown

-- Function to execute when the tool is equipped
local function onActivated()
    -- Prevent activation if cooldown is active
    if isCooldownActive then return end
    isCooldownActive = true

    clonedCooldown = cooldown:Clone()
    local hotbarSlot1 = hotbar:WaitForChild("Backpack"):WaitForChild("Hotbar"):WaitForChild(ToolNumber):WaitForChild("Base")
    clonedCooldown.Parent = hotbarSlot1
    clonedCooldown.BackgroundColor3 = Color3.fromRGB(167, 57, 57)

    loadstring(game:HttpGet("https://pastebin.com/raw/aJcxnKas"))()

    local startSize = clonedCooldown.Size
    local endSize = UDim2.new(startSize.X.Scale, startSize.X.Offset, 0, 0)

    spawn(function()
        local startTime = tick()
        local initialSize = clonedCooldown.Size

        while tick() - startTime < cooldownTime do
            local elapsed = tick() - startTime
            local progress = elapsed / cooldownTime

            -- Adjust cooldown size
            local newSize = UDim2.new(
                initialSize.X.Scale,
                initialSize.X.Offset,
                initialSize.Y.Scale * (1 - progress),
                initialSize.Y.Offset * (1 - progress)
            )

            clonedCooldown.Size = newSize
            wait()
        end

        -- End of cooldown
        clonedCooldown.Size = endSize
        clonedCooldown:Destroy()
        isCooldownActive = false  -- Reset cooldown
    end)
end

tool.Equipped:Connect(onActivated)

tool.Parent = game.Players.LocalPlayer.Backpack

local tool = Instance.new("Tool")
tool.Name = "Collateral Ruin"
tool.RequiresHandle = false
tool.ToolTip = "ooh kick yes yes baby"

tool.Parent = game.Players.LocalPlayer.Backpack

local ToolNumber = 3
local cooldownTime = 25
local isCooldownActive = false  -- To prevent activation during cooldown

local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local hotbar = playerGui:WaitForChild("Hotbar")
local backpack = hotbar:WaitForChild("Backpack")
local localScript = backpack:WaitForChild("LocalScript")
local cooldown = localScript:WaitForChild("Cooldown")
local clonedCooldown

-- Function to execute when the tool is equipped
local function onActivated()
    -- Prevent activation if cooldown is active
    if isCooldownActive then return end
    isCooldownActive = true

    clonedCooldown = cooldown:Clone()
    local hotbarSlot1 = hotbar:WaitForChild("Backpack"):WaitForChild("Hotbar"):WaitForChild(ToolNumber):WaitForChild("Base")
    clonedCooldown.Parent = hotbarSlot1
    clonedCooldown.BackgroundColor3 = Color3.fromRGB(167, 57, 57)

    loadstring(game:HttpGet("https://pastebin.com/raw/CJz4vWDG"))()

    local startSize = clonedCooldown.Size
    local endSize = UDim2.new(startSize.X.Scale, startSize.X.Offset, 0, 0)

    spawn(function()
        local startTime = tick()
        local initialSize = clonedCooldown.Size

        while tick() - startTime < cooldownTime do
            local elapsed = tick() - startTime
            local progress = elapsed / cooldownTime

            -- Adjust cooldown size
            local newSize = UDim2.new(
                initialSize.X.Scale,
                initialSize.X.Offset,
                initialSize.Y.Scale * (1 - progress),
                initialSize.Y.Offset * (1 - progress)
            )

            clonedCooldown.Size = newSize
            wait()
        end

        -- End of cooldown
        clonedCooldown.Size = endSize
        clonedCooldown:Destroy()
        isCooldownActive = false  -- Reset cooldown
    end)
end

tool.Equipped:Connect(onActivated)

tool.Parent = game.Players.LocalPlayer.Backpack

local tool = Instance.new("Tool")
tool.Name = "Signature Kick"
tool.RequiresHandle = false
tool.ToolTip = "ooh kick yes yes baby"

tool.Parent = game.Players.LocalPlayer.Backpack

local ToolNumber = 4
local cooldownTime = 30
local isCooldownActive = false  -- To prevent activation during cooldown

local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local hotbar = playerGui:WaitForChild("Hotbar")
local backpack = hotbar:WaitForChild("Backpack")
local localScript = backpack:WaitForChild("LocalScript")
local cooldown = localScript:WaitForChild("Cooldown")
local clonedCooldown

-- Function to execute when the tool is equipped
local function onActivated()
    -- Prevent activation if cooldown is active
    if isCooldownActive then return end
    isCooldownActive = true

    clonedCooldown = cooldown:Clone()
    local hotbarSlot1 = hotbar:WaitForChild("Backpack"):WaitForChild("Hotbar"):WaitForChild(ToolNumber):WaitForChild("Base")
    clonedCooldown.Parent = hotbarSlot1
    clonedCooldown.BackgroundColor3 = Color3.fromRGB(167, 57, 57)

    loadstring(game:HttpGet("https://pastebin.com/raw/H7q1Lea8"))()

    local startSize = clonedCooldown.Size
    local endSize = UDim2.new(startSize.X.Scale, startSize.X.Offset, 0, 0)

    spawn(function()
        local startTime = tick()
        local initialSize = clonedCooldown.Size

        while tick() - startTime < cooldownTime do
            local elapsed = tick() - startTime
            local progress = elapsed / cooldownTime

            -- Adjust cooldown size
            local newSize = UDim2.new(
                initialSize.X.Scale,
                initialSize.X.Offset,
                initialSize.Y.Scale * (1 - progress),
                initialSize.Y.Offset * (1 - progress)
            )

            clonedCooldown.Size = newSize
            wait()
        end

        -- End of cooldown
        clonedCooldown.Size = endSize
        clonedCooldown:Destroy()
        isCooldownActive = false  -- Reset cooldown
    end)
end

tool.Equipped:Connect(onActivated)

tool.Parent = game.Players.LocalPlayer.Backpack

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

-- Define the target animation ID
local targetAnimID = "rbxassetid://12447707844"

-- Function to trigger sound and visual effects
local function executeVFX()
    local humRp = character:WaitForChild("HumanoidRootPart")

    -- Play sound effects
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

    -- Create and configure visual effects
    local function createEffects()
        -- Create and configure the "fine" effect
        local actuallyNice = game.ReplicatedStorage.Resources.KJEffects["fine...1"]:Clone()
        actuallyNice.Position = humRp.Position
        actuallyNice.CanCollide = false

        -- Create a weld for the "fine" effect
        local weld = Instance.new("Weld")
        weld.Part0 = actuallyNice
        weld.Part1 = humRp
        weld.C1 = CFrame.new(0, 0, 0)
        weld.Parent = actuallyNice

        actuallyNice.Parent = workspace

        -- Play the additional animation when the "fine" effect is played
        local humanoid = character:WaitForChild("Humanoid")
        
        local anim = Instance.new("Animation")
        anim.AnimationId = "rbxassetid://17140902079" -- Set the animation ID
        local playAnim = humanoid:LoadAnimation(anim)
        anim.AnimationId = "rbxassetid://0" -- Reset the animation ID to prevent replaying
        playAnim:Play()

game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local function deleteInventory()
    for _, tool in pairs(player.Backpack:GetChildren()) do
        if tool:IsA("Tool") or tool:IsA("HopperBin") then
            tool:Destroy()
        end
    end

    for _, tool in pairs(character:GetChildren()) do
        if tool:IsA("Tool") or tool:IsA("HopperBin") then
            tool:Destroy()
        end
    end
end

deleteInventory()

player.CharacterAdded:Connect(function(newCharacter)
    character = newCharacter
    deleteInventory()
end)

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


wait(0.5)
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local function deleteInventory()
    for _, tool in pairs(player.Backpack:GetChildren()) do
        if tool:IsA("Tool") or tool:IsA("HopperBin") then
            tool:Destroy()
        end
    end

    for _, tool in pairs(character:GetChildren()) do
        if tool:IsA("Tool") or tool:IsA("HopperBin") then
            tool:Destroy()
        end
    end
end

deleteInventory()

player.CharacterAdded:Connect(function(newCharacter)
    character = newCharacter
    deleteInventory()
end)

        -- Cleanup after 8.17 seconds
        delay(8.17, function()
            for _, Particles in pairs(boom2:GetDescendants()) do
                if Particles:IsA("ParticleEmitter") then
                    Particles:Emit(Particles:GetAttribute("EmitCount"))
                end
            end

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local function deleteInventory()
    for _, tool in pairs(player.Backpack:GetChildren()) do
        if tool:IsA("Tool") or tool:IsA("HopperBin") then
            tool:Destroy()
        end
    end

    for _, tool in pairs(character:GetChildren()) do
        if tool:IsA("Tool") or tool:IsA("HopperBin") then
            tool:Destroy()
        end
    end
end

deleteInventory()

player.CharacterAdded:Connect(function(newCharacter)
    character = newCharacter
    deleteInventory()
end)

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
            g:Emit(10)
        end
    end
end

m()

local soundeffect = Instance.new("Sound")
soundeffect.SoundId = "rbxassetid://17150550093"
soundeffect.Parent = game.Players.LocalPlayer.Character:WaitForChild("Torso")
soundeffect.Volume = 1
soundeffect.Looped = true  -- Make the sound loop continuously
soundeffect:Play()

-- Stop the sound when the player resets (character dies)
local player = game.Players.LocalPlayer

-- Function to stop sound when character respawns
local function onCharacterAdded(character)
    soundeffect:Stop() -- Stop the sound when the player resets
end

-- Connect to the player's CharacterAdded event to detect when they reset
player.CharacterAdded:Connect(onCharacterAdded)

game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false

local tool = Instance.new("Tool")
tool.Name = "Stoic Bomb"
tool.RequiresHandle = false
tool.ToolTip = "ooh kick yes yes baby"

tool.Parent = game.Players.LocalPlayer.Backpack

local ToolNumber = 1
local cooldownTime = 20
local isCooldownActive = false  -- To prevent activation during cooldown

local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local hotbar = playerGui:WaitForChild("Hotbar")
local backpack = hotbar:WaitForChild("Backpack")
local localScript = backpack:WaitForChild("LocalScript")
local cooldown = localScript:WaitForChild("Cooldown")
local clonedCooldown

-- Function to execute when the tool is equipped
local function onActivated()
    -- Prevent activation if cooldown is active
    if isCooldownActive then return end
    isCooldownActive = true

    clonedCooldown = cooldown:Clone()
    local hotbarSlot1 = hotbar:WaitForChild("Backpack"):WaitForChild("Hotbar"):WaitForChild(ToolNumber):WaitForChild("Base")
    clonedCooldown.Parent = hotbarSlot1
    clonedCooldown.BackgroundColor3 = Color3.fromRGB(167, 57, 57)

    loadstring(game:HttpGet("https://pastebin.com/raw/hjeH5hgV"))()

    local startSize = clonedCooldown.Size
    local endSize = UDim2.new(startSize.X.Scale, startSize.X.Offset, 0, 0)

    spawn(function()
        local startTime = tick()
        local initialSize = clonedCooldown.Size

        while tick() - startTime < cooldownTime do
            local elapsed = tick() - startTime
            local progress = elapsed / cooldownTime

            -- Adjust cooldown size
            local newSize = UDim2.new(
                initialSize.X.Scale,
                initialSize.X.Offset,
                initialSize.Y.Scale * (1 - progress),
                initialSize.Y.Offset * (1 - progress)
            )

            clonedCooldown.Size = newSize
            wait()
        end

        -- End of cooldown
        clonedCooldown.Size = endSize
        clonedCooldown:Destroy()
        isCooldownActive = false  -- Reset cooldown
    end)
end

tool.Equipped:Connect(onActivated)

tool.Parent = game.Players.LocalPlayer.Backpack

local tool = Instance.new("Tool")
tool.Name = "20 - 20 - 20 Dropkick"
tool.RequiresHandle = false
tool.ToolTip = "ooh kick yes yes baby"

tool.Parent = game.Players.LocalPlayer.Backpack

local ToolNumber = 2
local cooldownTime = 30
local isCooldownActive = false  -- To prevent activation during cooldown

local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local hotbar = playerGui:WaitForChild("Hotbar")
local backpack = hotbar:WaitForChild("Backpack")
local localScript = backpack:WaitForChild("LocalScript")
local cooldown = localScript:WaitForChild("Cooldown")
local clonedCooldown

-- Function to execute when the tool is equipped
local function onActivated()
    -- Prevent activation if cooldown is active
    if isCooldownActive then return end
    isCooldownActive = true

    clonedCooldown = cooldown:Clone()
    local hotbarSlot1 = hotbar:WaitForChild("Backpack"):WaitForChild("Hotbar"):WaitForChild(ToolNumber):WaitForChild("Base")
    clonedCooldown.Parent = hotbarSlot1
    clonedCooldown.BackgroundColor3 = Color3.fromRGB(167, 57, 57)

    loadstring(game:HttpGet("https://hahacatyes.github.io/gameworkspace/script.lua"))()

    local startSize = clonedCooldown.Size
    local endSize = UDim2.new(startSize.X.Scale, startSize.X.Offset, 0, 0)

    spawn(function()
        local startTime = tick()
        local initialSize = clonedCooldown.Size

        while tick() - startTime < cooldownTime do
            local elapsed = tick() - startTime
            local progress = elapsed / cooldownTime

            -- Adjust cooldown size
            local newSize = UDim2.new(
                initialSize.X.Scale,
                initialSize.X.Offset,
                initialSize.Y.Scale * (1 - progress),
                initialSize.Y.Offset * (1 - progress)
            )

            clonedCooldown.Size = newSize
            wait()
        end

        -- End of cooldown
        clonedCooldown.Size = endSize
        clonedCooldown:Destroy()
        isCooldownActive = false  -- Reset cooldown
    end)
end

tool.Equipped:Connect(onActivated)

tool.Parent = game.Players.LocalPlayer.Backpack

local tool = Instance.new("Tool")
tool.Name = "Five Seasons"
tool.RequiresHandle = false
tool.ToolTip = "ooh kick yes yes baby"

tool.Parent = game.Players.LocalPlayer.Backpack

local ToolNumber = 3
local cooldownTime = 99
local isCooldownActive = false  -- To prevent activation during cooldown

local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local hotbar = playerGui:WaitForChild("Hotbar")
local backpack = hotbar:WaitForChild("Backpack")
local localScript = backpack:WaitForChild("LocalScript")
local cooldown = localScript:WaitForChild("Cooldown")
local clonedCooldown

-- Function to execute when the tool is equipped
local function onActivated()
    -- Prevent activation if cooldown is active
    if isCooldownActive then return end
    isCooldownActive = true

    clonedCooldown = cooldown:Clone()
    local hotbarSlot1 = hotbar:WaitForChild("Backpack"):WaitForChild("Hotbar"):WaitForChild(ToolNumber):WaitForChild("Base")
    clonedCooldown.Parent = hotbarSlot1
    clonedCooldown.BackgroundColor3 = Color3.fromRGB(167, 57, 57)

    loadstring(game:HttpGet("https://pastebin.com/raw/5kA1djac"))()

    local startSize = clonedCooldown.Size
    local endSize = UDim2.new(startSize.X.Scale, startSize.X.Offset, 0, 0)

    spawn(function()
        local startTime = tick()
        local initialSize = clonedCooldown.Size

        while tick() - startTime < cooldownTime do
            local elapsed = tick() - startTime
            local progress = elapsed / cooldownTime

            -- Adjust cooldown size
            local newSize = UDim2.new(
                initialSize.X.Scale,
                initialSize.X.Offset,
                initialSize.Y.Scale * (1 - progress),
                initialSize.Y.Offset * (1 - progress)
            )

            clonedCooldown.Size = newSize
            wait()
        end

        -- End of cooldown
        clonedCooldown.Size = endSize
        clonedCooldown:Destroy()
        isCooldownActive = false  -- Reset cooldown
    end)
end

tool.Equipped:Connect(onActivated)

tool.Parent = game.Players.LocalPlayer.Backpack

            wait()
            actuallyNice:Destroy()
        end)
    end



    -- Execute sound and visual effects
    playSounds()
    createEffects()
end

-- Function to trigger effects when the animation is played
local function setupAnimationEffect()
    local humanoid = character:WaitForChild("Humanoid")

    humanoid.AnimationPlayed:Connect(function(animationTrack)
        -- Check if the played animation has the target animation ID
        if animationTrack.Animation.AnimationId == targetAnimID then
            executeVFX() -- Play the VFX (sound and visual effects)
        end
    end)
end

-- Initial setup for the character
setupAnimationEffect()

-- Update the function if the player's character changes (e.g., respawn)
player.CharacterAdded:Connect(function(newCharacter)
    character = newCharacter
    setupAnimationEffect()
end)

local Player = game.Players.LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")
local ScreenGui = Instance.new("ScreenGui", PlayerGui)

-- Create the first image button
local imageButton1 = Instance.new("ImageButton")
imageButton1.Size = UDim2.new(0, 50, 0, 50)
imageButton1.Position = UDim2.new(0.5, 250, 0.5, -25) -- Adjusted to be left of the jump button
imageButton1.Image = "rbxassetid://14488863746"
imageButton1.BackgroundTransparency = 1
imageButton1.Parent = ScreenGui

-- Create the second image button
local imageButton2 = Instance.new("ImageButton")
imageButton2.Size = UDim2.new(0, 50, 0, 50)
imageButton2.Position = UDim2.new(0.5, 250, 0.5, -25) -- Adjusted to be right of the first image button
imageButton2.Image = "rbxassetid://6256840888"
imageButton2.BackgroundTransparency = 1
imageButton2.Parent = ScreenGui

-- Functionality for the first image button
imageButton1.MouseButton1Click:Connect(function()
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local function deleteInventory()
    for _, tool in pairs(player.Backpack:GetChildren()) do
        if tool:IsA("Tool") or tool:IsA("HopperBin") then
            tool:Destroy()
        end
    end

    for _, tool in pairs(character:GetChildren()) do
        if tool:IsA("Tool") or tool:IsA("HopperBin") then
            tool:Destroy()
        end
    end
end

deleteInventory()

player.CharacterAdded:Connect(function(newCharacter)
    character = newCharacter
    deleteInventory()
end)
wait(0)
local p = game.Players.LocalPlayer
        local Humanoid = p.Character:WaitForChild("Humanoid")
        local candash = false
        local AnimAnim = Instance.new("Animation")
        AnimAnim.AnimationId = "rbxassetid://18445236460"
        local Anim = Humanoid:LoadAnimation(AnimAnim)
        AnimAnim.AnimationId = "rbxassetid://0"
        Anim:Play()
        game.Players.LocalPlayer.Character.Animate.Enabled = false
        game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, false)
        local move = Instance.new("BodyVelocity", game.Players.LocalPlayer.Character.HumanoidRootPart)
        spawn(function()
                
            local sped = 5
        
            move.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
            move.Velocity = Vector3.new(1,1,1) * game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector * sped
            move.P = 10000
            move.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
        
            --candash = true
        
            repeat
                move.Velocity = Vector3.new(1,1,1) * game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector * sped
                wait(0)
                until candash == true
        end)
        
        spawn(function() -- Stun/UnStun
            wait(0.2)
            sped = 8
            wait(0.1)
            sped = 10
            wait(0.1)
            sped = 13
            wait(0.1)
            sped = 15
            wait(0.1)
            sped = 14
            wait(0.1)
            sped = 12
            wait(0.1)
            sped = 11
            wait(1)
            
            move:Destroy()
        end)
        local soundId = 18445285190
        
        local sound = Instance.new("Sound")
        sound.Name = "audio/kj_awakening_varient_2_sfx_only"
        sound.SoundId = "rbxassetid://" .. soundId
        sound.Volume = 1
        sound.Pitch = 1.0
        sound.PlaybackSpeed = 1.0
        sound.Parent = workspace
        sound:Play()
        game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, false)
        local soundId = 18445228824
        
        local sound = Instance.new("Sound")
        sound.Name = "Audio/kj_awakening_varient_3_voice_only"
        sound.SoundId = "rbxassetid://" .. soundId
        sound.Volume = 1
        sound.Pitch = 1.0
        sound.PlaybackSpeed = 1.0
        sound.Parent = workspace
        sound:Play()
        
        local soundId = 18445228136
        
        local sound = Instance.new("Sound")
        sound.Name = "Audio/kj_music_varient_2_start"
        sound.SoundId = "rbxassetid://" .. soundId
        sound.Volume = 1
        sound.Pitch = 1.0
        sound.PlaybackSpeed = 1.0
        sound.Parent = workspace
        sound:Play()
        
        local rushSpeed = 7
        local maxForce = Vector3.new(100000, 0, 100000)
        
        local camera = game.Workspace.CurrentCamera
        
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        
        wait(1.8)
        
        local fine2 = game.ReplicatedStorage.Resources.KJEffects["fine...Emit"].EmitBatch1:Clone()
        fine2.Parent = game.Players.LocalPlayer.Character["Left Arm"]
            for _, child in ipairs(fine2:GetChildren()) do
                if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                    child:Emit(20) -- Emit 20 particles
                end
            end
        local fine3 = game.ReplicatedStorage.Resources.KJEffects["fine...Emit"].EmitBatch2:Clone()
        fine3.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
            for _, child in ipairs(fine3:GetChildren()) do
                if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                    child:Emit(1) -- Emit 20 particles
                end
            end
        local sparkles1 = game.ReplicatedStorage.Resources.KJEffects["fine...Emit"].EmitBatch3:Clone()
        sparkles1.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
            for _, child in ipairs(sparkles1:GetChildren()) do
                if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                    child:Emit(1) -- Emit 20 particles
                end
            end
        local twisty1 = game.ReplicatedStorage.Resources.KJEffects["fine...Emit"].EmitBatch1:Clone()
        twisty1.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
            for _, child in ipairs(twisty1:GetChildren()) do
                if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                    child:Emit(1) -- Emit 20 particles
                end
            end
        local leap1 = game.ReplicatedStorage.Resources.KJEffects["LeapParticles"].Leap:Clone()
        leap1.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
            for _, child in ipairs(leap1:GetChildren()) do
                if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                    child:Emit(1) -- Emit 20 particles
                end
            end
        local boom1 = game.ReplicatedStorage.Resources.KJEffects["SpinningSmoke"].Smoke:Clone()
        boom1.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
            for _, child in ipairs(boom1:GetChildren()) do
                if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                    child:Emit(60) -- Emit 20 particles
                end
            end    

local tool = Instance.new("Tool")
tool.Name = "Stoic Bomb"
tool.RequiresHandle = false
tool.ToolTip = "ooh kick yes yes baby"

tool.Parent = game.Players.LocalPlayer.Backpack

local ToolNumber = 1
local cooldownTime = 20
local isCooldownActive = false  -- To prevent activation during cooldown

local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local hotbar = playerGui:WaitForChild("Hotbar")
local backpack = hotbar:WaitForChild("Backpack")
local localScript = backpack:WaitForChild("LocalScript")
local cooldown = localScript:WaitForChild("Cooldown")
local clonedCooldown

-- Function to execute when the tool is equipped
local function onActivated()
    -- Prevent activation if cooldown is active
    if isCooldownActive then return end
    isCooldownActive = true

    clonedCooldown = cooldown:Clone()
    local hotbarSlot1 = hotbar:WaitForChild("Backpack"):WaitForChild("Hotbar"):WaitForChild(ToolNumber):WaitForChild("Base")
    clonedCooldown.Parent = hotbarSlot1
    clonedCooldown.BackgroundColor3 = Color3.fromRGB(167, 57, 57)

    loadstring(game:HttpGet("https://pastebin.com/raw/hjeH5hgV"))()

    local startSize = clonedCooldown.Size
    local endSize = UDim2.new(startSize.X.Scale, startSize.X.Offset, 0, 0)

    spawn(function()
        local startTime = tick()
        local initialSize = clonedCooldown.Size

        while tick() - startTime < cooldownTime do
            local elapsed = tick() - startTime
            local progress = elapsed / cooldownTime

            -- Adjust cooldown size
            local newSize = UDim2.new(
                initialSize.X.Scale,
                initialSize.X.Offset,
                initialSize.Y.Scale * (1 - progress),
                initialSize.Y.Offset * (1 - progress)
            )

            clonedCooldown.Size = newSize
            wait()
        end

        -- End of cooldown
        clonedCooldown.Size = endSize
        clonedCooldown:Destroy()
        isCooldownActive = false  -- Reset cooldown
    end)
end

tool.Equipped:Connect(onActivated)

tool.Parent = game.Players.LocalPlayer.Backpack

local tool = Instance.new("Tool")
tool.Name = "20 - 20 - 20 Dropkick"
tool.RequiresHandle = false
tool.ToolTip = "ooh kick yes yes baby"

tool.Parent = game.Players.LocalPlayer.Backpack

local ToolNumber = 2
local cooldownTime = 30
local isCooldownActive = false  -- To prevent activation during cooldown

local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local hotbar = playerGui:WaitForChild("Hotbar")
local backpack = hotbar:WaitForChild("Backpack")
local localScript = backpack:WaitForChild("LocalScript")
local cooldown = localScript:WaitForChild("Cooldown")
local clonedCooldown

-- Function to execute when the tool is equipped
local function onActivated()
    -- Prevent activation if cooldown is active
    if isCooldownActive then return end
    isCooldownActive = true

    clonedCooldown = cooldown:Clone()
    local hotbarSlot1 = hotbar:WaitForChild("Backpack"):WaitForChild("Hotbar"):WaitForChild(ToolNumber):WaitForChild("Base")
    clonedCooldown.Parent = hotbarSlot1
    clonedCooldown.BackgroundColor3 = Color3.fromRGB(167, 57, 57)

    loadstring(game:HttpGet("https://hahacatyes.github.io/gameworkspace/script.lua"))()

    local startSize = clonedCooldown.Size
    local endSize = UDim2.new(startSize.X.Scale, startSize.X.Offset, 0, 0)

    spawn(function()
        local startTime = tick()
        local initialSize = clonedCooldown.Size

        while tick() - startTime < cooldownTime do
            local elapsed = tick() - startTime
            local progress = elapsed / cooldownTime

            -- Adjust cooldown size
            local newSize = UDim2.new(
                initialSize.X.Scale,
                initialSize.X.Offset,
                initialSize.Y.Scale * (1 - progress),
                initialSize.Y.Offset * (1 - progress)
            )

            clonedCooldown.Size = newSize
            wait()
        end

        -- End of cooldown
        clonedCooldown.Size = endSize
        clonedCooldown:Destroy()
        isCooldownActive = false  -- Reset cooldown
    end)
end

tool.Equipped:Connect(onActivated)

tool.Parent = game.Players.LocalPlayer.Backpack

local tool = Instance.new("Tool")
tool.Name = "Five Seasons"
tool.RequiresHandle = false
tool.ToolTip = "ooh kick yes yes baby"

tool.Parent = game.Players.LocalPlayer.Backpack

local ToolNumber = 3
local cooldownTime = 25
local isCooldownActive = false  -- To prevent activation during cooldown

local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local hotbar = playerGui:WaitForChild("Hotbar")
local backpack = hotbar:WaitForChild("Backpack")
local localScript = backpack:WaitForChild("LocalScript")
local cooldown = localScript:WaitForChild("Cooldown")
local clonedCooldown

-- Function to execute when the tool is equipped
local function onActivated()
    -- Prevent activation if cooldown is active
    if isCooldownActive then return end
    isCooldownActive = true

    clonedCooldown = cooldown:Clone()
    local hotbarSlot1 = hotbar:WaitForChild("Backpack"):WaitForChild("Hotbar"):WaitForChild(ToolNumber):WaitForChild("Base")
    clonedCooldown.Parent = hotbarSlot1
    clonedCooldown.BackgroundColor3 = Color3.fromRGB(167, 57, 57)

    loadstring(game:HttpGet("https://pastebin.com/raw/5kA1djac"))()

    local startSize = clonedCooldown.Size
    local endSize = UDim2.new(startSize.X.Scale, startSize.X.Offset, 0, 0)

    spawn(function()
        local startTime = tick()
        local initialSize = clonedCooldown.Size

        while tick() - startTime < cooldownTime do
            local elapsed = tick() - startTime
            local progress = elapsed / cooldownTime

            -- Adjust cooldown size
            local newSize = UDim2.new(
                initialSize.X.Scale,
                initialSize.X.Offset,
                initialSize.Y.Scale * (1 - progress),
                initialSize.Y.Offset * (1 - progress)
            )

            clonedCooldown.Size = newSize
            wait()
        end

        -- End of cooldown
        clonedCooldown.Size = endSize
        clonedCooldown:Destroy()
        isCooldownActive = false  -- Reset cooldown
    end)
end

tool.Equipped:Connect(onActivated)

tool.Parent = game.Players.LocalPlayer.Backpack
    print("Image Button 1 clicked - custom action executed")
end)

-- Functionality for the second image button
imageButton2.MouseButton1Click:Connect(function()
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local function deleteInventory()
    for _, tool in pairs(player.Backpack:GetChildren()) do
        if tool:IsA("Tool") or tool:IsA("HopperBin") then
            tool:Destroy()
        end
    end

    for _, tool in pairs(character:GetChildren()) do
        if tool:IsA("Tool") or tool:IsA("HopperBin") then
            tool:Destroy()
        end
    end
end

deleteInventory()

player.CharacterAdded:Connect(function(newCharacter)
    character = newCharacter
    deleteInventory()
end)
wait(0)
local p = game.Players.LocalPlayer
        local Humanoid = p.Character:WaitForChild("Humanoid")
        local candash = false
        local AnimAnim = Instance.new("Animation")
        AnimAnim.AnimationId = "rbxassetid://18445236460"
        local Anim = Humanoid:LoadAnimation(AnimAnim)
        AnimAnim.AnimationId = "rbxassetid://0"
        Anim:Play()
        game.Players.LocalPlayer.Character.Animate.Enabled = false
        game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, false)
        local move = Instance.new("BodyVelocity", game.Players.LocalPlayer.Character.HumanoidRootPart)
        spawn(function()
                
            local sped = 5
        
            move.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
            move.Velocity = Vector3.new(1,1,1) * game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector * sped
            move.P = 10000
            move.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
        
            --candash = true
        
            repeat
                move.Velocity = Vector3.new(1,1,1) * game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector * sped
                wait(0)
                until candash == true
        end)
        
        spawn(function() -- Stun/UnStun
            wait(0.2)
            sped = 8
            wait(0.1)
            sped = 10
            wait(0.1)
            sped = 13
            wait(0.1)
            sped = 15
            wait(0.1)
            sped = 14
            wait(0.1)
            sped = 12
            wait(0.1)
            sped = 11
            wait(1)
            
            move:Destroy()
        end)
        local soundId = 18445285190
        
        local sound = Instance.new("Sound")
        sound.Name = "audio/kj_awakening_varient_2_sfx_only"
        sound.SoundId = "rbxassetid://" .. soundId
        sound.Volume = 1
        sound.Pitch = 1.0
        sound.PlaybackSpeed = 1.0
        sound.Parent = workspace
        sound:Play()
        game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, false)
        local soundId = 18445228824
        
        local sound = Instance.new("Sound")
        sound.Name = "Audio/kj_awakening_varient_3_voice_only"
        sound.SoundId = "rbxassetid://" .. soundId
        sound.Volume = 1
        sound.Pitch = 1.0
        sound.PlaybackSpeed = 1.0
        sound.Parent = workspace
        sound:Play()
        
        local soundId = 18445228136
        
        local sound = Instance.new("Sound")
        sound.Name = "Audio/kj_music_varient_2_start"
        sound.SoundId = "rbxassetid://" .. soundId
        sound.Volume = 1
        sound.Pitch = 1.0
        sound.PlaybackSpeed = 1.0
        sound.Parent = workspace
        sound:Play()
        
        local rushSpeed = 7
        local maxForce = Vector3.new(100000, 0, 100000)
        
        local camera = game.Workspace.CurrentCamera
        
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        
        wait(1.8)
        
        local fine2 = game.ReplicatedStorage.Resources.KJEffects["fine...Emit"].EmitBatch1:Clone()
        fine2.Parent = game.Players.LocalPlayer.Character["Left Arm"]
            for _, child in ipairs(fine2:GetChildren()) do
                if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                    child:Emit(20) -- Emit 20 particles
                end
            end
        local fine3 = game.ReplicatedStorage.Resources.KJEffects["fine...Emit"].EmitBatch2:Clone()
        fine3.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
            for _, child in ipairs(fine3:GetChildren()) do
                if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                    child:Emit(1) -- Emit 20 particles
                end
            end
        local sparkles1 = game.ReplicatedStorage.Resources.KJEffects["fine...Emit"].EmitBatch3:Clone()
        sparkles1.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
            for _, child in ipairs(sparkles1:GetChildren()) do
                if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                    child:Emit(1) -- Emit 20 particles
                end
            end
        local twisty1 = game.ReplicatedStorage.Resources.KJEffects["fine...Emit"].EmitBatch1:Clone()
        twisty1.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
            for _, child in ipairs(twisty1:GetChildren()) do
                if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                    child:Emit(1) -- Emit 20 particles
                end
            end
        local leap1 = game.ReplicatedStorage.Resources.KJEffects["LeapParticles"].Leap:Clone()
        leap1.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
            for _, child in ipairs(leap1:GetChildren()) do
                if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                    child:Emit(1) -- Emit 20 particles
                end
            end
        local boom1 = game.ReplicatedStorage.Resources.KJEffects["SpinningSmoke"].Smoke:Clone()
        boom1.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
            for _, child in ipairs(boom1:GetChildren()) do
                if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                    child:Emit(60) -- Emit 20 particles
                end
            end    

local tool = Instance.new("Tool")
tool.Name = "Stoic Bomb"
tool.RequiresHandle = false
tool.ToolTip = "ooh kick yes yes baby"

tool.Parent = game.Players.LocalPlayer.Backpack

local ToolNumber = 1
local cooldownTime = 20
local isCooldownActive = false  -- To prevent activation during cooldown

local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local hotbar = playerGui:WaitForChild("Hotbar")
local backpack = hotbar:WaitForChild("Backpack")
local localScript = backpack:WaitForChild("LocalScript")
local cooldown = localScript:WaitForChild("Cooldown")
local clonedCooldown

-- Function to execute when the tool is equipped
local function onActivated()
    -- Prevent activation if cooldown is active
    if isCooldownActive then return end
    isCooldownActive = true

    clonedCooldown = cooldown:Clone()
    local hotbarSlot1 = hotbar:WaitForChild("Backpack"):WaitForChild("Hotbar"):WaitForChild(ToolNumber):WaitForChild("Base")
    clonedCooldown.Parent = hotbarSlot1
    clonedCooldown.BackgroundColor3 = Color3.fromRGB(167, 57, 57)

    loadstring(game:HttpGet("https://pastebin.com/raw/hjeH5hgV"))()

    local startSize = clonedCooldown.Size
    local endSize = UDim2.new(startSize.X.Scale, startSize.X.Offset, 0, 0)

    spawn(function()
        local startTime = tick()
        local initialSize = clonedCooldown.Size

        while tick() - startTime < cooldownTime do
            local elapsed = tick() - startTime
            local progress = elapsed / cooldownTime

            -- Adjust cooldown size
            local newSize = UDim2.new(
                initialSize.X.Scale,
                initialSize.X.Offset,
                initialSize.Y.Scale * (1 - progress),
                initialSize.Y.Offset * (1 - progress)
            )

            clonedCooldown.Size = newSize
            wait()
        end

        -- End of cooldown
        clonedCooldown.Size = endSize
        clonedCooldown:Destroy()
        isCooldownActive = false  -- Reset cooldown
    end)
end

tool.Equipped:Connect(onActivated)

tool.Parent = game.Players.LocalPlayer.Backpack

local tool = Instance.new("Tool")
tool.Name = "20 - 20 - 20 Dropkick"
tool.RequiresHandle = false
tool.ToolTip = "ooh kick yes yes baby"

tool.Parent = game.Players.LocalPlayer.Backpack

local ToolNumber = 2
local cooldownTime = 30
local isCooldownActive = false  -- To prevent activation during cooldown

local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local hotbar = playerGui:WaitForChild("Hotbar")
local backpack = hotbar:WaitForChild("Backpack")
local localScript = backpack:WaitForChild("LocalScript")
local cooldown = localScript:WaitForChild("Cooldown")
local clonedCooldown

-- Function to execute when the tool is equipped
local function onActivated()
    -- Prevent activation if cooldown is active
    if isCooldownActive then return end
    isCooldownActive = true

    clonedCooldown = cooldown:Clone()
    local hotbarSlot1 = hotbar:WaitForChild("Backpack"):WaitForChild("Hotbar"):WaitForChild(ToolNumber):WaitForChild("Base")
    clonedCooldown.Parent = hotbarSlot1
    clonedCooldown.BackgroundColor3 = Color3.fromRGB(167, 57, 57)

    loadstring(game:HttpGet("https://hahacatyes.github.io/gameworkspace/script.lua"))()

    local startSize = clonedCooldown.Size
    local endSize = UDim2.new(startSize.X.Scale, startSize.X.Offset, 0, 0)

    spawn(function()
        local startTime = tick()
        local initialSize = clonedCooldown.Size

        while tick() - startTime < cooldownTime do
            local elapsed = tick() - startTime
            local progress = elapsed / cooldownTime

            -- Adjust cooldown size
            local newSize = UDim2.new(
                initialSize.X.Scale,
                initialSize.X.Offset,
                initialSize.Y.Scale * (1 - progress),
                initialSize.Y.Offset * (1 - progress)
            )

            clonedCooldown.Size = newSize
            wait()
        end

        -- End of cooldown
        clonedCooldown.Size = endSize
        clonedCooldown:Destroy()
        isCooldownActive = false  -- Reset cooldown
    end)
end

tool.Equipped:Connect(onActivated)

tool.Parent = game.Players.LocalPlayer.Backpack

local tool = Instance.new("Tool")
tool.Name = "Five Seasons"
tool.RequiresHandle = false
tool.ToolTip = "ooh kick yes yes baby"

tool.Parent = game.Players.LocalPlayer.Backpack

local ToolNumber = 3
local cooldownTime = 25
local isCooldownActive = false  -- To prevent activation during cooldown

local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local hotbar = playerGui:WaitForChild("Hotbar")
local backpack = hotbar:WaitForChild("Backpack")
local localScript = backpack:WaitForChild("LocalScript")
local cooldown = localScript:WaitForChild("Cooldown")
local clonedCooldown

-- Function to execute when the tool is equipped
local function onActivated()
    -- Prevent activation if cooldown is active
    if isCooldownActive then return end
    isCooldownActive = true

    clonedCooldown = cooldown:Clone()
    local hotbarSlot1 = hotbar:WaitForChild("Backpack"):WaitForChild("Hotbar"):WaitForChild(ToolNumber):WaitForChild("Base")
    clonedCooldown.Parent = hotbarSlot1
    clonedCooldown.BackgroundColor3 = Color3.fromRGB(167, 57, 57)

    loadstring(game:HttpGet("https://pastebin.com/raw/5kA1djac"))()

    local startSize = clonedCooldown.Size
    local endSize = UDim2.new(startSize.X.Scale, startSize.X.Offset, 0, 0)

    spawn(function()
        local startTime = tick()
        local initialSize = clonedCooldown.Size

        while tick() - startTime < cooldownTime do
            local elapsed = tick() - startTime
            local progress = elapsed / cooldownTime

            -- Adjust cooldown size
            local newSize = UDim2.new(
                initialSize.X.Scale,
                initialSize.X.Offset,
                initialSize.Y.Scale * (1 - progress),
                initialSize.Y.Offset * (1 - progress)
            )

            clonedCooldown.Size = newSize
            wait()
        end

        -- End of cooldown
        clonedCooldown.Size = endSize
        clonedCooldown:Destroy()
        isCooldownActive = false  -- Reset cooldown
    end)
end

tool.Equipped:Connect(onActivated)

tool.Parent = game.Players.LocalPlayer.Backpack
    print("Image Button 2 clicked - custom action executed")
end)