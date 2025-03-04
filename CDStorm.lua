-- Load the DrRay library from the GitHub repository Library
local DrRayLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/DrRay-UI-Library/main/DrRay.lua"))()

-- Create a new window and set its title and theme
local window = DrRayLibrary:Load("CDTStorm", "Default")

-- Create the first tab with an image ID
local tab1 = DrRayLibrary.newTab("Tab 1", "ImageIdHere")

-- Add elements to the first tab
tab1.newLabel("Welcome to CDStorm.")


-- Create the Second tab with an image ID
local tab2 = DrRayLibrary.newTab("Event", "ImageIdH")

-- Add elements to the second tab

tab2.newToggle("Farm VW points", "Will race until you stop it", false, function(state)
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