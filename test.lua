local bhop = false
LocalPlayer():SetWalkSpeed(0)
hook.Add("Think", "bhop", function()
if bhop then
     if (input.IsKeyDown( KEY_SPACE ) ) then
        if LocalPlayer():IsOnGround() then
            RunConsoleCommand("+jump")
            HasJumped = 1
        else
            RunConsoleCommand("-jump")
            HasJumped = 0
        end
    elseif bhop and LocalPlayer():IsOnGround() then
        if HasJumped == 1 then
            RunConsoleCommand("-jump")
            HasJumped = 0
        end
    end
end
end)
 
concommand.Add("bhop_toggle", function()
if bhop then
    bhop = !bhop
    LocalPlayer():ChatPrint("Bhop deactivated")
else
    bhop = !bhop
    LocalPlayer():ChatPrint("Bhop activated")
end
end)

-- t.me/wtfbomba13
