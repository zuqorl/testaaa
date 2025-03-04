-- Load the DrRay library from the GitHub repository Library
local DrRayLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/DrRay-UI-Library/main/DrRay.lua"))()

-- Create a new window and set its title and theme
local window = DrRayLibrary:Load("CDTStorm", "Default")

-- Create the first tab with an image ID
local tab1 = DrRayLibrary.newTab("Home", "ImageIdHere")

-- Add elements to the first tab
tab1.newLabel("Welcome to CDStorm.")


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
     
  tab2.newLabel("Scavenger HUNT event.")

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
  tab2.newToggle("Farm Deliver", "Will delivery until you stop it!", false, function(state)
    function(state)
      getfenv().deliver = (state and true or false)
      resetcharactervalue1=0
      devpart2 = 1
      spawn(function()
          while getfenv().deliver do
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
              while getfenv().deliver do
                  task.wait()
             if devpart2 ~= nil then
              print(resetcharactervalue1)
              resetcharactervalue1=0
              elseif devpart2 == nil and resetcharactervalue1 >= 20 then
                  resetcharactervalue1=0
                  game.Players.LocalPlayer.Character:BreakJoints()
  wait(1)
              end
          end
                  end)
      while getfenv().deliver do
          wait()
          pcall(function()
      if game.Players.LocalPlayer.Character.Humanoid.SeatPart ~= nil then
          task.wait(1)
          devpart2 = nil
      for i,v in pairs(workspace.ActionTasksGames.Jobs:GetDescendants()) do
      if v.Name == "DeliveryPart" and v.Transparency ~= 1 then
          devpart2 =v
          workspace.Gravity = 0
          getfenv().spawned = false
          game.Players.LocalPlayer.Character.Humanoid.SeatPart.Parent.Parent:PivotTo(v.CFrame)
          game.Players.LocalPlayer.Character.Humanoid.SeatPart.Parent.Parent:PivotTo(v.CFrame*CFrame.new(-30,20,-10))
          game.Players.LocalPlayer.Character.Humanoid.SeatPart.Parent.Parent:PivotTo(v.CFrame*CFrame.Angles(0,math.rad(90),0))
         for i,v in pairs(game.Players.LocalPlayer.Character.Humanoid.SeatPart.Parent.Parent:GetChildren()) do
          if v.ClassName == "Model" and v:GetAttribute("StockTurbo") then
              for a,b in pairs(workspace.ActionTasksGames.Jobs:GetChildren()) do
                  if b.ClassName == "Model" and b:GetAttribute("JobId") then
              game:GetService("ReplicatedStorage").Remotes.DealershipCustomerController.JobRemoteHandler:FireServer({["Action"] = "TryToCompleteJob",["JobId"] = b:GetAttribute("JobId")})
              game:GetService("ReplicatedStorage").Remotes.DealershipCustomerController.JobRemoteHandler:FireServer({["JobId"] = game:GetService("Players").LocalPlayer.PlayerGui.MissionRewardStars:GetAttribute("JobId"),["Action"] = "CollectReward"})
          end
      end
          end 
      end
  end
      end
      if devpart2 == nil then
          resetcharactervalue1=resetcharactervalue1+1
      end
      elseif game.Players.LocalPlayer.Character.Humanoid.Sit == false and getfenv().spawned ~= true then
          game:GetService("ReplicatedStorage").Remotes.DealershipCustomerController.JobRemoteHandler:FireServer(_G.remotetable)
          workspace.Gravity = 196
          getfenv().spawned = true
      wait(0.1)
      end
      end)
      end
  end)
    
 -- Create the Second tab with an image ID
local tab3 = DrRayLibrary.newTab("Farming", "ImageIdHe")

-- Add elements to the second tab
tab3.newToggle("Farm Money", "Will drive until you stop it.You must take a car!", false, function(toggleState)
    if toggleState then
        print("On")
    else
        print("Off")
    end
end)