function AddTextEntry(key, value)
	Citizen.InvokeNative(GetHashKey("ADD_TEXT_ENTRY"), key, value)
end

Citizen.CreateThread(function()
	AddTextEntry('0x3E11C741', 'Brabus CLA 2021')
	AddTextEntry('0x2BAAFE28', 'Frontbumper')
end)

-- author 'MrMaverickTV#7973'
-- description 'Exklusiv Carpack for FiveM Server'
-- repository 'https://github.com/PlatinumExclusiveCollections/FiveM-Brabus-Collection'