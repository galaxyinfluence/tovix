local players = game:GetService("Players")
local httpservice = game:GetService("HttpService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")

if RunService:IsStudio() or game.PrivateServerId ~= "" and game.PrivateServerOwnerId ~= 0 then
  return warn("Tovix Activity : Your activity does not track in private servers nor studio instances.")
end

local configuration = {
  -- These are already set up, do not touch them
  ["URL] = "api.tovix.app/activity/track/", -- The URL to connect to the server for activity tracking.
  ["API_KEY"] = "API_KEY_HERE", -- Your API key for your worksapce, worksapce ID
  -- Configure the stuff below to your liking
  ["RankChecking"] = true, -- Do you want to us to check the ranks of people so only relative data is recorded?
  ["GroupId"] = 0, -- The ID of the group that the workspace is conencted to
  ["MinTrackedRank"] = 0, -- The minimum rank ID to preform activity tracking for, automatically reterieved from your worksapce on game startup.
}
