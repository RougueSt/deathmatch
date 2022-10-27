function developerOn()
        setDevelopmentMode(true)
end

function developerOff()
        setDevelopmentMode(false)
end

addCommandHandler("dev",developerOn)
addCommandHandler("devoff",developerOff)

function alphaCommand(command, alpha)
	alpha = alpha and tonumber(alpha) or 255
	if alpha >= 0 and alpha <= 255 then
		server.setElementAlpha(localPlayer, alpha)
	else
		errMsg("Invalid alpha value! (range: 0 - 255)")
	end
end
addCommandHandler('alpha', alphaCommand)
addCommandHandler('ap', alphaCommand)