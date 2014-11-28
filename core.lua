local blacklist = {
	[971] = true, -- Alliance garrison
	[976] = true, -- Horde garrison
}

local f = CreateFrame("Frame")
f:RegisterEvent("VIGNETTE_ADDED")
f:SetScript("OnEvent", function()
	if blacklist[GetCurrentMapAreaID()] then return end

	PlaySoundFile("Sound\\Interface\\RaidWarning.wav")
	RaidNotice_AddMessage(RaidWarningFrame, "Rare spotted!", ChatTypeInfo["RAID_WARNING"])
end)