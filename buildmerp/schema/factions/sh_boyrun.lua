FACTION.name = "Running"
FACTION.desc = "Joined seps against who the hell cares."
FACTION.isDefault = true
FACTION.color = Color(255, 0, 255)
FACTION.weapons = {"weapon_medkit", "weapon_bugbait"}
FACTION.models = {
	"models/Humans/Group01/Male_05.mdl",
	"models/Humans/Group02/Female_06.mdl"
}

FACTION.isGloballyRecognized = true

FACTION.pay = 66

function FACTION:onGetDefaultName(client)
	if (SCHEMA.digitsLen >= 1) then
		local digits = math.random(tonumber("1"..string.rep("0", SCHEMA.digitsLen-1)), tonumber(string.rep("9", SCHEMA.digitsLen)))
		return SCHEMA.runPrefix..table.GetFirstValue(SCHEMA.runRanks).."-"..digits, true
	else
		return SCHEMA.runPrefix..table.GetFirstValue(SCHEMA.runRanks), true
	end
end

FACTION_BOYRUN = FACTION.index