--based on a quick modified example script I found on wowwiki that likely, doesn't work, but lets try it anyway
local function MyAddonCommands(msg, editbox)
	-- pattern matching that skips leading whitespace and whitespace between cmd and args
	-- any whitespace at end of args is retained
	local _, _, cmd, args = string.find(msg, "%s?(%w+)%s?(.*)")
	if cmd == "add" and args ~= "" then
		print("BobBlacklist: added " .. args)
		-- Handle adding of the contents of rest... to something.
	elseif cmd == "removed" and args ~= "" then
		print("BobBlacklist: Removed " .. args)
		-- Handle removing of the contents of rest... to something.   
	elseif cmd == "removed" and args ~= "" then
		print("BobBlacklist: Here's Your List")
		--Show the list
	else
		print("BobBlacklist: /boblist or /bl then add, remove, or list");
	end
end
SLASH_BOBBLACKLIST1, SLASH_BOBBLACKLIST2 = '/bl', '/boblist'
SlashCmdList["BOBBLACKLIST"] = MyAddonCommands