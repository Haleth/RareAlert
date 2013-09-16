local f = CreateFrame("Frame")
f:RegisterEvent("VIGNETTE_ADDED")
f:SetScript("OnEvent", function(self, event, vignetteInstanceID)
	if vignetteInstanceID == 989921295 then return end -- Kukuru's Treasure Cache

	PlaySoundFile("Sound\\Interface\\RaidWarning.wav")
	RaidNotice_AddMessage(RaidWarningFrame, "Rare spotted!", ChatTypeInfo["RAID_WARNING"])
end)