SCHEMA.name = "BuildMeAGamemode"
SCHEMA.introName = "No you.."
SCHEMA.author = "Stealthy Zoroark"
SCHEMA.desc = "ServerName"

nut.util.includeDir("hooks")
nut.util.include("sh_config.lua")

nut.currency.set("$", "runker", "runkers") 

nut.flag.add("y", "Access to the light runner items.")
nut.flag.add("Y", "Access to the heavy runner items.")
