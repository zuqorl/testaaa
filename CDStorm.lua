-- Load the DrRay library from the GitHub repository Library
local DrRayLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/DrRay-UI-Library/main/DrRay.lua"))()

-- Create a new window and set its title and theme
local window = DrRayLibrary:Load("CDTStorm", "Default")

-- Create the first tab with an image ID
local tab1 = DrRayLibrary.newTab("Home", "ImageIdHere")

-- Add elements to the first tab
tab1.newLabel("Welcome to CDStorm")

-- Create the Second tab with an image ID
local tab2 = DrRayLibrary.newTab("Event", "ImageIdH")

-- Add elements to the second tab
tab2.newLabel("VolksWagen event.")

tab2.newToggle("Farm VW points", "Will race until you stop it.You must take a car!", false, function(state)
    _G.racetest = (state and true or false)
              while _G.racetest do
                  wait()
              if game:GetService("Players").LocalPlayer.PlayerGui.Menu.Race.Visible == false then
                  local chr = game.Players.LocalPlayer.Character
              local car = chr.Humanoid.SeatPart.Parent.Parent
               car:PivotTo(CFrame.new(1049.2476806640625, 609.7359008789062, 2511.8427734375))
              chr.Head.Anchored = true
              wait(1)
              chr.Head.Anchored = false
              wait(1)
  workspace.Races.RaceHandler.StartLobby:FireServer("Race")
              task.wait(10)
  workspace.Races.Race.Script.Vote:FireServer("5", "VoteRace")
                   task.wait(15)
  workspace.Races.Race.Script.Vote:FireServer("5", "VoteLapsOval")
              repeat wait()
              until game:GetService("Players").LocalPlayer.PlayerGui.Menu.Race.Visible == true or _G.racetest == false
              elseif game:GetService("Players").LocalPlayer.PlayerGui.Menu.Race.Visible == true then
              for i =1,50 do
  workspace.Races.Race.Script.Checkpoint:FireServer(i)
  end
  end
  end
  end)

  tab2.newToggle("Auto open VW", "Auto open VW until you stop it", false, function(state)
    getfenv().open = (state and true or false)
    while getfenv().open do
    task.wait()
    game:GetService("ReplicatedStorage").Remotes.Services.VolkswagenEventServiceRemotes.ClaimFreePack:InvokeServer()
    end
     end)
     
  tab2.newLabel("Scavenger HUNT event")

  tab2.newToggle("Farm Miles", "Will farm miles. You must take a car!", false, function(state)
    getfenv().auto = (state and true or false)
    wait(1)
    workspace.Gravity = getfenv().grav
    while getfenv().auto do
      task.wait()
    local chr = game.Players.LocalPlayer.Character
    local car = chr.Humanoid.SeatPart.Parent.Parent
      if not workspace:FindFirstChild("justapart") then
        local new = Instance.new("Part",workspace)
        new.Name = "justapart"
        new.Size = Vector3.new(10000,20,10000)
        new.Anchored = true
        new.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position+Vector3.new(0,1000,0)
    end
    car:PivotTo(workspace:FindFirstChild("justapart").CFrame*CFrame.new(0,7,1000))
    local pos = workspace:FindFirstChild("justapart").CFrame*CFrame.new(0,7,-1000)
    repeat task.wait()
      local speed =  getfenv().speed or 300
      local accel = 300
      workspace.Gravity = 500
              car.PrimaryPart.Velocity = Vector3.new(car.PrimaryPart.Velocity.X,-100,car.PrimaryPart.Velocity.Z) 
      car:PivotTo(CFrame.new(car.PrimaryPart.Position,Vector3.new(pos.X,car.PrimaryPart.Position.Y,pos.Z)))
              car.PrimaryPart.Velocity = Vector3.new(car.PrimaryPart.Velocity.X,-100,car.PrimaryPart.Velocity.Z) 
      car.PrimaryPart.AssemblyLinearVelocity = car.PrimaryPart.CFrame.LookVector*speed
      car.PrimaryPart.Velocity = Vector3.new(car.PrimaryPart.Velocity.X,-100,car.PrimaryPart.Velocity.Z) 
    until game.Players.LocalPlayer:DistanceFromCharacter(Vector3.new(pos.X,pos.Y,pos.Z)) < 200 or getfenv().test == false
    end
    end)

  tab2.newToggle("Farm RACE", "Will race until you stop it.You must take a car!", false, function(state)
    _G.racetest = (state and true or false)
              while _G.racetest do
                  wait()
              if game:GetService("Players").LocalPlayer.PlayerGui.Menu.Race.Visible == false then
                  local chr = game.Players.LocalPlayer.Character
              local car = chr.Humanoid.SeatPart.Parent.Parent
               car:PivotTo(CFrame.new(1049.2476806640625, 609.7359008789062, 2511.8427734375))
              chr.Head.Anchored = true
              wait(1)
              chr.Head.Anchored = false
              wait(1)
  workspace.Races.RaceHandler.StartLobby:FireServer("Race")
              task.wait(10)
  workspace.Races.Race.Script.Vote:FireServer("5", "VoteRace")
                   task.wait(15)
  workspace.Races.Race.Script.Vote:FireServer("5", "VoteLapsOval")
              repeat wait()
              until game:GetService("Players").LocalPlayer.PlayerGui.Menu.Race.Visible == true or _G.racetest == false
              elseif game:GetService("Players").LocalPlayer.PlayerGui.Menu.Race.Visible == true then
              for i =1,50 do
  workspace.Races.Race.Script.Checkpoint:FireServer(i)
  end
  end
  end
  end)
  
  tab2.newToggle("Farm Delivery", "Don't run it! It's still laggy", false, function(state)
    getfenv().deliver2 = (state and true or false)
    local table = tostring(getfenv().stars.." "..getfenv().smaller.." "..getfenv().bigger)
    print(table)
    writefile("cdtdelivery.txt",table)
    resetcharactervalue = 0
    devpart = 1
    game.Players.LocalPlayer.Character.Head.Anchored = false
    spawn(function()
        while getfenv().deliver2 do
            task.wait()
            pcall(function()
        if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == false then
            wait(5)
            getfenv().spawned = false
        end
        end)
        end
        end)

        spawn(function()
    while getfenv().deliver2 do
        task.wait()
   if devpart ~= nil then
        resetcharactervalue=0
    elseif devpart == nil and resetcharactervalue >= 20 then
        resetcharactervalue=0
        game.Players.LocalPlayer.Character:BreakJoints()
wait(1)
    end
end
        end)
        local function gettruck()
            local truck = nil
            for i,v in pairs(workspace.Cars:GetChildren()) do
                if v.Name == "DeliveryTruck" and v:GetAttribute("JobId") == _G.remotetable.Jobs[1].Id then
                  truck = v
            end
            end
            return truck or "no truck found"
            end
            print(gettruck())
            spawn(function()
                timeout = 0
                    while getfenv().deliver2 do
                task.wait()
            if gettruck() ~= "no truck found" and game.Players.LocalPlayer.Character.Humanoid.SeatPart== nil and timeout < 10 then
            timeout = timeout + 1
            wait(1)
            elseif gettruck() ~= "no truck found" and game.Players.LocalPlayer.Character.Humanoid.SeatPart== nil and timeout >= 10 then
                timeout = 0
                warn("truck bugged and got destroyed")
                gettruck():Destroy()
                wait(1)
              elseif gettruck() ~= "no truck found" and game.Players.LocalPlayer.Character.Humanoid.SeatPart~= nil  then
                timeout = 0
                print("timeout reset")
                wait(1)
            end
            end
            end)
            spawn(function()
                print("bro spawned in")
                while getfenv().deliver2 do
                task.wait()
                if getfenv().checkif ~= nil then
                wait(40)
                    getfenv().checkif = nil
                end
                end
                  end)
                  getfenv().checkif = nil
    while getfenv().deliver2 do
        wait()
  local p,call = pcall(function()
    if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
        task.wait(0.1)
devpart = nil
    for i,v in pairs(workspace.ActionTasksGames.Jobs:GetDescendants()) do
    if v.Name == "DeliveryPart" and v.Transparency ~= 1 and game.Players.LocalPlayer.Character.Humanoid.SeatPart ~= nil then
        devpart = v
        workspace.Gravity = 0
        game.Players.LocalPlayer.Character.Head.Anchored = false
        tppart = v
        getfenv().spawned = false
        game.Players.LocalPlayer.Character.Humanoid.SeatPart.Parent.Parent:PivotTo(v.CFrame)
        game.Players.LocalPlayer.Character.Humanoid.SeatPart.Parent.Parent:PivotTo(v.CFrame*CFrame.new(-30,30,-10))
        game.Players.LocalPlayer.Character.Humanoid.SeatPart.Parent.Parent:PivotTo(v.CFrame*CFrame.Angles(0,math.rad(90),0))
       for i,v in pairs(game.Players.LocalPlayer.Character.Humanoid.SeatPart.Parent.Parent:GetChildren()) do
        if v.ClassName == "Model" and v:GetAttribute("StockTurbo") then
                    repeat wait(0.1)
                        pcall(function()
                        game.Players.LocalPlayer.Character.Humanoid.SeatPart.Parent.Parent:PivotTo(tppart.CFrame)
                        game.Players.LocalPlayer.Character.Humanoid.SeatPart.Parent.Parent:PivotTo(tppart.CFrame*CFrame.new(-30,30,-10))
                        game.Players.LocalPlayer.Character.Humanoid.SeatPart.Parent.Parent:PivotTo(tppart.CFrame*CFrame.Angles(0,math.rad(90),0))
                        end)
            game:GetService("ReplicatedStorage").Remotes.DealershipCustomerController.JobRemoteHandler:FireServer({["Action"] = "TryToCompleteJob",["JobId"] = v.Name})
                    until game.Players.LocalPlayer.Character.Humanoid.SeatPart == nil or devpart.Transparency == 1 or getfenv().deliver2 == false
                    game.Players.LocalPlayer.Character.Head.Anchored = false
                    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                    local function getstars()
                    local stars = 0
                    for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("MissionRewardStars").Frame.Stars:GetChildren()) do
                    if string.find(v.Name,"Star") and v.ImageColor3 == Color3.fromRGB(255, 189, 34) then
                    stars = stars+1
                    end
                end
                return stars
                end
                local function isused(hi)
                    yeno = nil
                    for i,v in pairs(_G.usedids) do
                    if v == hi then
                    yeno = "Vehicle was already used"
                    end
                    end
                    return yeno
                    end
                print(tonumber(getstars()).." Stars bonus")
                if tonumber(getstars()) < getfenv().stars and game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("MissionRewardStars").Enabled == true and getfenv().checkif == nil then
                    whate = nil
                    if type(_G.usedids) ~= "table" then
                        _G.usedids = {}
                    end
                    for i,v in pairs(getgc(true)) do
                if type(v) == "table" and rawget(v,"MoneyReward") ~= nil and whate == nil and getfenv().checkif == nil and isused(v.Id) ~= "Vehicle was already used" then
                    task.wait()
                if tonumber(v.MoneyReward) > getfenv().smaller and tonumber(v.MoneyReward) < getfenv().bigger and whate == nil and getfenv().checkif == nil and isused(v.Id) ~= "Vehicle was already used" then
                task.wait()
                local tabnum = 1
                for il,ill in pairs(_G.usedids) do
                tabnum=tabnum+1
                end
                    rawset(_G.usedids,tabnum,v.Id)
                                            whate = v
                print("Vehicle has been changed",v)
                _G.remotetable = {["Truck"] = "DeliveryTruck",["Action"] = "StartDeliveryJob",["Jobs"] = {[1] = {["Id"] = whate.Id,["Image"] = "http://www.roblox.com/asset/?id=7962599980",["CFrame"] = CFrame.new(-1476.16199, 601.700134, 3489.31299, -1, 0, 0, 0, 1, 0, 0, 0, -1),["JobData"] = whate}}}
                if game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("MissionRewardStars") then
                wait(0.5)
                game:GetService("ReplicatedStorage").Remotes.DealershipCustomerController.JobRemoteHandler:FireServer({["JobId"] = game:GetService("Players").LocalPlayer.PlayerGui.MissionRewardStars:GetAttribute("JobId"),["Action"] = "CollectReward"})
                wait(0.5)
                game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("MissionRewardStars").Enabled = false
                end
                getfenv().checkif = true
                    end
                end
                end
                end
         
                wait()
            if game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("MissionRewardStars") then
                game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("MissionRewardStars").Enabled = false
            game:GetService("ReplicatedStorage").Remotes.DealershipCustomerController.JobRemoteHandler:FireServer({["JobId"] = game:GetService("Players").LocalPlayer.PlayerGui.MissionRewardStars:GetAttribute("JobId"),["Action"] = "CollectReward"})
        
        end                  
    end
        end 
    end
end
pcall(function()
if devpart == nil  then
    resetcharactervalue=resetcharactervalue+1
end
end)
    elseif game.Players.LocalPlayer.Character.Humanoid.Sit == false and gettruck() == "no truck found" then
        print(gettruck())
        if game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("MissionRewardStars") then
            pcall(function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  tppart.CFrame
            game.Players.LocalPlayer.Character.Head.Anchored = true
            end)
            wait(1)
        end
        whate = nil
        game:GetService("ReplicatedStorage").Remotes.DealershipCustomerController.JobRemoteHandler:FireServer(_G.remotetable)
    local unstck = 0
    repeat wait()
        unstck=unstck+1
    until gettruck() ~= "no truck found" or getfenv().deliver2 == false or unstck > 100
    workspace.Gravity = 196
    game.Players.LocalPlayer.Character.Head.Anchored = false
    end
end)
if p == false then
warn(p,call)
end
    end
end)

 -- Create the Third tab with an image ID
local tab3 = DrRayLibrary.newTab("Farming", "ImageIdHe")

-- Add elements to the second tab
tab3.newLabel("Car Dealership Tycoon")

tab3.newToggle("Farm Money", "Will drive until you stop it.You must take a car!(Bêta version)", false, function(state)
  getfenv().auto = (state and true or false)
  wait(1)
  workspace.Gravity = getfenv().grav
  while getfenv().auto do
    task.wait()
  local chr = game.Players.LocalPlayer.Character
  local car = chr.Humanoid.SeatPart.Parent.Parent
    if not workspace:FindFirstChild("justapart") then
      local new = Instance.new("Part",workspace)
      new.Name = "justapart"
      new.Size = Vector3.new(10000,20,10000)
      new.Anchored = true
      new.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position+Vector3.new(0,1000,0)
  end
  car:PivotTo(workspace:FindFirstChild("justapart").CFrame*CFrame.new(0,7,1000))
  local pos = workspace:FindFirstChild("justapart").CFrame*CFrame.new(0,7,-1000)
  repeat task.wait()
    local speed =  getfenv().speed or 300
      local accel = 300
      workspace.Gravity = 0
              car.PrimaryPart.Velocity = Vector3.new(car.PrimaryPart.Velocity.X,-100,car.PrimaryPart.Velocity.Z) 
      car:PivotTo(CFrame.new(car.PrimaryPart.Position,Vector3.new(pos.X,car.PrimaryPart.Position.Y,pos.Z)))
              car.PrimaryPart.Velocity = Vector3.new(car.PrimaryPart.Velocity.X,-100,car.PrimaryPart.Velocity.Z) 
      car.PrimaryPart.AssemblyLinearVelocity = car.PrimaryPart.CFrame.LookVector*speed
      car.PrimaryPart.Velocity = Vector3.new(car.PrimaryPart.Velocity.X,-100,car.PrimaryPart.Velocity.Z) 
    until game.Players.LocalPlayer:DistanceFromCharacter(Vector3.new(pos.X,pos.Y,pos.Z)) < 200 or getfenv().test == false
  end
  end)

  tab3.newToggle("Auto Upgrade", "Will drive until you stop it.You must take a car!(Bêta version)", false, function(state)
    getfenv().buyer = (state and true or false )
while getfenv().buyer do
task.wait()
-- purchase buttons
local function plot()
    for i,v in pairs(workspace.Tycoons:GetDescendants()) do
    if v.Name == "Owner" and v.ClassName == "StringValue" and v.Value == game.Players.LocalPlayer.Name then
    tycoon = v.Parent
    end
    end
    return tycoon
    end
    -- purchase buttons
    pcall(function()
    for i,v in pairs(plot().Dealership.Purchases:GetChildren()) do 
        if getfenv().buyer == true and v.TycoonButton.Button.Transparency == 0 then
    game:GetService("ReplicatedStorage").Remotes.Build:FireServer("BuyItem", v.Name)
    wait(0.3)
    end 
end   
end)
end
end)

 -- Create the Third tab with an image ID
 local tab4 = DrRayLibrary.newTab("Races", "ImagaeIdHe")