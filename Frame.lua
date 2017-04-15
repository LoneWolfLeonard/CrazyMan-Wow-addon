local Crazy = CreateFrame("Frame")
local Randomister = 0;

Crazy:RegisterEvent("PLAYER_REGEN_DISABLED")
Crazy:RegisterEvent("PLAYER_REGEN_ENABLED")
Crazy:RegisterEvent("AUCTION_HOUSE_SHOW")
Crazy:RegisterEvent("QUEST_COMPLETE")
Crazy:RegisterEvent("PLAYER_DEAD")
Crazy:RegisterEvent("QUEST_COMPLETE")
Crazy:RegisterEvent("UPDATE_BATTLEFIELD_STATUS")
Crazy:RegisterEvent("PLAYER_CAMPING")
Crazy:RegisterEvent("MAIL_SHOW")
Crazy:RegisterEvent("ACHIEVEMENT_EARNED")
Crazy:RegisterEvent("COMPANION_UNLEARNED")

Crazy:SetScript("OnEvent", function(Self, event, ...)


if event == "PLAYER_REGEN_DISABLED" then
Randomister = Randomister + 1;
PlaySoundFile("Interface\\AddOns\\CrazyMan\\ZeldaBattle.ogg")
end

if Randomister == 4 then
PlaySoundFile("Interface\\AddOns\\CrazyMan\\Frostmourne.ogg")
end

if Randomister == 7 then
PlaySoundFile("Interface\\AddOns\\CrazyMan\\Siren.ogg")
end

if Randomister == 13 then
PlaySoundFile("Interface\\AddOns\\CrazyMan\\DeathLaugh.ogg")
Randomister = 0;
end

if Randomister == 20 then
PlaySoundFile("Interface\\AddOns\\CrazyMan\\Kira.ogg")
Randomister = 0;
end


if event == "AUCTION_HOUSE_SHOW" then
PlaySoundFile("Interface\\AddOns\\CrazyMan\\Shop.ogg")
end




if event == "QUEST_COMPLETE" then
PlaySoundFile("Interface\\AddOns\\CrazyMan\\America.ogg")
end

if event == "PLAYER_DEAD" then
PlaySoundFile("Interface\\AddOns\\CrazyMan\\Taps.ogg")
end


if event == "MAIL_SHOW" then
PlaySoundFile("Interface\\AddOns\\CrazyMan\\Mail.ogg")
end

if event == "UPDATE_PENDING_MAIL" then
PlaySoundFile("Interface\\AddOns\\CrazyMan\\Mail.ogg")
end

if event == "UPDATE_BATTLEFIELD_STATUS" then
PlaySoundFile("Interface\\AddOns\\CrazyMan\\Brave.ogg")
end

if event == "PLAYER_CAMPING" then
PlaySoundFile("Interface\\AddOns\\CrazyMan\\Back.ogg")
end

if event == "ACHIEVEMENT_EARNED" then
PlaySoundFile("Interface\\AddOns\\CrazyMan\\Victory.ogg")
end


end)