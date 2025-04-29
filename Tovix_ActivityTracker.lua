local players = game:GetService("Players")
local httpservice = game:GetService("HttpService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")

if RunService:IsStudio() or game.PrivateServerId ~= "" and game.PrivateServerOwnerId ~= 0 then
  return warn("Tovix Activity : Your activity does not track in private servers nor studio instances.")
end

local configuration = {
  -- These are already set up, do not touch them
  ["API_KEY"] = "API_KEY_HERE",
  -- Configure the stuff below to your liking
  ["RankChecking"] = true,
  ["GroupId"] = 0,
}
