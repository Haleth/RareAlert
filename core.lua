local f = CreateFrame("Frame")
f:RegisterEvent("VIGNETTE_ADDED")
f:SetScript("OnEvent", function(self, event, vignetteInstanceID)
	if vignetteInstanceID then
		local _, _, name = C_Vignettes.GetVignetteInfoFromInstanceID(vignetteInstanceID)

		if name and name == "Kukuru's Treasure Cache" then
			return
		end
	end

	PlaySoundFile("Sound\\Interface\\RaidWarning.wav")
	RaidNotice_AddMessage(RaidWarningFrame, "Rare spotted!", ChatTypeInfo["RAID_WARNING"])
end)