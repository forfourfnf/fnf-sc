local allowCountdown = false
function onStartCountdown()
	if not allowCountdown and isStoryMode and not seenCutscene then --Block the first countdown
		startVideo('jeffy-turns-bf-into-a-puppet');
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end