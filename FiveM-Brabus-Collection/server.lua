-- Sets server list convar
SetConvarServerInfo('tags', 'PEC_BRABUS_COLLECTION')
-- Setup for the version check
updatePath = "/PlatinumExclusiveCollections/FiveM-Brabus-Collection" -- your git user/repo path
-- Console stuff
Citizen.CreateThread(function()
    if GetCurrentResourceName() ~= "PEC_BRABUS_COLLECTION" then
        print("-----------------------------------------------------")
        print("Please Dont Change the resource name to avoid errors.")
        print("-----------------------------------------------------")
    end
    if GetCurrentResourceName() == 'PEC_BRABUS_COLLECTION' then
        function checkVersion(_, responseText)
            curVersion = LoadResourceFile(GetCurrentResourceName(), "version")

            if curVersion ~= responseText and tonumber(curVersion) < tonumber(responseText) then
                print("    _/_/_/_/  _/_/_/_/  _/_/_/_/	  ║ Hey there! Yeah you, thanks for using our PlatinumExclusiveCollections PEC_BRABUS_COLLECTION pack!")
                print("   _/  	_/  _/    	  _/	 	  ║")
                print("  _/_/_/_/  _/_/_/  	 _/			  ║")
                print(" _/  	  _/	 	_/			  ║")
                print("_/     	 _/_/_/_/	/_/_/_/	 	  ║ Uh Oh! Looks like PEC_BRABUS_COLLECTION is outdated.")
                print("                     			  ║ Should be: "..responseText..",currently is: "..curVersion..". Please update it from https://github.com"..updatePath.."")
            elseif tonumber(curVersion) > tonumber(responseText) then
                print("    _/_/_/_/  _/_/_/_/  _/_/_/_/	  ║ Hey there! Yeah you, thanks for using our PlatinumExclusiveCollections PEC_BRABUS_COLLECTION pack!")
                print("   _/  	_/  _/    	  _/	 	  ║")
                print("  _/_/_/_/  _/_/_/  	 _/			  ║")
                print(" _/  	  _/	 	_/			  ║")
                print("_/     	 _/_/_/_/	/_/_/_/	 	  ║ Uh Oh! You somehow skipped a few versions of PEC_BRABUS_COLLECTION")
				print("                     			  ║ or the git went offline, if it's still online i advise you to update (or downgrade?)")
            else
                print("    _/_/_/_/  _/_/_/_/  _/_/_/_/	  ║     Hey there! Yeah you, thanks for using my car pack!")
                print("   _/  	_/  _/    	  _/	 	  ║")
                print("  _/_/_/_/  _/_/_/  	 _/			  ║")
                print(" _/  	  _/	 	_/			  ║")
                print("_/     	 _/_/_/_/	/_/_/_/	 	  ║")     
				print("                     			  ║	It looks like PEC_BRABUS_COLLECTION is up to date, have fun!")
			end
        end
    end

    PerformHttpRequest("https://raw.githubusercontent.com"..updatePath.."/master/PEC_BRABUS_COLLECTION/version", checkVersion, "GET")
end)
