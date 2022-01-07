Citizen.CreateThread( function()
updatePath = "/PlatinumExclusiveCollections/FiveM-Car-Collections/"
resourceName = "pec_brabus_collection ("..GetCurrentResourceName()..")"

function checkVersion(err,responseText, headers)
	curVersion = LoadResourceFile(GetCurrentResourceName(), "version")
	if GetCurrentResourceName() ~= "pec_brabus_collection" then
        print("-----------------------------------------------------")
        print("Please Dont Change the resource name to avoid errors.")
        print("-----------------------------------------------------")
    end
	if curVersion ~= responseText and tonumber(curVersion) < tonumber(responseText) then
		print("    _/_/_/_/  _/_/_/_/  _/_/_/_/	  ║ Hey there! Yeah you, thanks for using our PlatinumExclusiveCollections PEC_BRABUS_COLLECTION pack!")
		print("   _/    _/  _/        _/          ║")
        print("  _/_/_/_/  _/_/_/    _/           ║")
        print(" _/        _/        _/            ║")
		print("_/     	 _/_/_/_/  _/_/_/_/       ║ Uh Oh! Looks like PEC_BRABUS_COLLECTION is outdated.")
		print("                                   ║ Your PEC_BRABUS_COLLECTION is: "..curVersion.." ")
		print(" Platinum Exclusive Collection     ║ Please update it from https://github.com"..updatePath.."")
	elseif tonumber(curVersion) > tonumber(responseText) then
	    print("    _/_/_/_/  _/_/_/_/  _/_/_/_/	  ║ Hey there! Yeah you, thanks for using our PlatinumExclusiveCollections PEC_BRABUS_COLLECTION pack!")
        print("   _/    _/  _/        _/          ║")
        print("  _/_/_/_/  _/_/_/    _/           ║")
        print(" _/        _/        _/            ║")
		print("_/     	 _/_/_/_/  _/_/_/_/       ║ Uh Oh! You somehow skipped a few versions of PEC_BRABUS_COLLECTION")
		print(" Platinum Exclusive Collection     ║ You somehow skipped a few versions of PEC_BRABUS_COLLECTION or the git went offline, if it's still online i advise you to update ( or downgrade? )")
	else
	    print("    _/_/_/_/  _/_/_/_/  _/_/_/_/	  ║ Hey there! Yeah you, thanks for using my car pack!")
		print("   _/    _/  _/        _/          ║")
        print("  _/_/_/_/  _/_/_/    _/           ║")
		print(" _/        _/        _/            ║")
        print("_/     	 _/_/_/_/  _/_/_/_/       ║")  
		print(" Platinum Exclusive Collection     ║ PEC_BRABUS_COLLECTION is up to date, have fun!")
	end
end

PerformHttpRequest("https://raw.githubusercontent.com/PlatinumExclusiveCollections/FiveM-Car-Collections/master/pec_brabus_collection/version", checkVersion, "GET")
end)
