local savingEvent = 0

local talk = TalkAction("/save")

function talk.onSay(player, words, param)
	if not player:getGroup():getAccess() then
		return true
	end

	local tmp = tonumber(param)
	if tmp ~= nil then
		-- Schedule auto-save every X minutes
		if savingEvent ~= 0 then
			stopEvent(savingEvent)
		end
		save(tmp * 60 * 1000)
		player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "Auto-save scheduled every " .. tmp .. " minute(s).")
	elseif param == "" then
		-- Save server immediately
		saveServer()
		player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "Server has been saved.")
	else
		-- Save specific player
		local target = Player(param)
		if not target then
			player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "Player " .. param .. " not found.")
		elseif target:isInGhostMode() and target:getGroup():getAccess() > player:getGroup():getAccess() then
			player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "Player " .. param .. " not found.")
		else
			target:save()
			player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "Player " .. target:getName() .. " has been saved.")
		end
	end

	return false
end

function save(delay)
	saveServer()
	if delay > 0 then
		savingEvent = addEvent(save, delay, delay)
	end
end

talk:separator(" ")
talk:register()
