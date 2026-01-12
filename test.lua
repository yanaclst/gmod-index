for k, v in pairs(player.GetAll()) do
  RunConsoleCommand("ba", "tp", v:SteamID())
end
