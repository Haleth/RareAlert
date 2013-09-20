local kukuru = "Kukuru's Treasure Cache"

if GetLocale() == "ruRU" then
	kukuru = "Клад Кукуру"
end

local f = CreateFrame("Frame")
f:RegisterEvent("VIGNETTE_ADDED")
f:SetScript("OnEvent", function(self, event, vignetteInstanceID)
	if vignetteInstanceID then
		local _, _, name = C_Vignettes.GetVignetteInfoFromInstanceID(vignetteInstanceID)

		if name and name == kukuru then
			return
		end
	end

	PlaySoundFile("Sound\\Interface\\RaidWarning.wav")
	RaidNotice_AddMessage(RaidWarningFrame, "Rare spotted!", ChatTypeInfo["RAID_WARNING"])
end)