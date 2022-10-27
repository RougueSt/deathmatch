local controle = 0
-------LS--------------LS--------------LS--------------LS--------------LS--------------LS--------------LS--------------LS--------------LS--------------LS-------
function primeiraSafeLS()
    if controle == 0 then 
        safe = createRadarArea(63.3564453125, -2816.5986328125, 2900,2000, 0, 255, 0, 100)
        exports.V_infobox:addBox(root, "Primeira safezone em Los Santos. Você tem 10 minutos. Corra!", "info")
        triggerClientEvent('timer:cria',root)
        outputDebugString('primeira safe spawn')
        controle = 1
        setTimer(primeiraSafeLS,600000,1) --------- TEMPO PARA FECHAR A PRIMEIRA SAFEZONE 
        return
    end

    if controle == 1 then 
        parede = createColRectangle(63.3564453125,-2816.5986328125, 2900,2000)
        local lista  = getElementsByType("player")
        for a,b in pairs(lista)do 
            local dentro = isElementWithinColShape(b,parede)
            if getTeamName(getPlayerTeam(b)) == 'STAFF' then 
                dentro = true 
            end
            if not dentro then
                outputChatBox(getPlayerName(b).. " MORREU FORA DA SAFE!!!",lista,200,0,0)
                setElementHealth(b,0.0)
            end
        end
        setRadarAreaColor(safe,255,50,50,100)
        destroiAeroTank()
        triggerClientEvent('timer:some',root)
        exports.V_infobox:addBox(root, "Primeira safezone fechou, | SEM VEICULOS DE ATAQUE", "warning")
        outputDebugString('primeira safe fecha')
        controle = 2
        setTimer(primeiraSafeLS,300000,1)  ------------------------------TEMPO PARA MOSTRAR A SEGUNDA SAFEZONE
        return
    end

    if controle == 2 then 
        destroyElement(parede)
        destroyElement(safe)
        triggerClientEvent('timer:cria',root)
        x = math.random(63.3564453125,2400)
        y = math.random(852,1702)*-1 - 500
        safe = createRadarArea(x,y,500,500,0,255,0,100)
        exports.V_infobox:addBox(root, "Segunda safezone apareceu! Você tem 10 minutos pra entrar na safezone", "info")
        controle = 3
        outputDebugString('segunda safe aparece')
        setTimer(primeiraSafeLS,600000,1) ------------------------------- TEMPO PARA FECHAR A SEGUNDA SAFEZONE
        return 
    end

    if controle == 3 then 
        parede = createColRectangle(x,y, 500,500)
        local lista  = getElementsByType("player")
        for a,b in pairs(lista)do 
            local dentro = isElementWithinColShape(b,parede)
            if getTeamName(getPlayerTeam(b)) == 'STAFF' then 
                dentro = true 
            end
            if not dentro then
                outputChatBox(getPlayerName(b).. " MORREU FORA DA SAFE!!!",lista,200,0,0)
                setElementHealth(b,0.0)
            end 
        end
        exports.V_infobox:addBox(root, "Segunda safezone fechou | CUIDADO AI PORRA", "warning")
        controle = 4
        triggerClientEvent('timer:some',root)
        setRadarAreaColor(safe,255,50,50,100)
        outputDebugString('segunda safe fecha')
        setTimer(primeiraSafeLS,300000,1) ------------------------------------- TEMPO PARA MOSTRAR A TERCEIRA SAFEZONE
        return
    end

    if controle == 4 then 
        destroyElement(parede)
        destroyElement(safe)
        x = math.random(x,x+250)
        y = math.random(y,y+250)
        safe = createRadarArea(x,y,250,250,0,255,0,100)
        triggerClientEvent('timer:cria',root)
        exports.V_infobox:addBox(root, "Terceira safezone apareceu! Você tem 10 minutos pra entra na safezone", "info")
        controle = 5
        outputDebugString('terceira safe aparece')
        setTimer(primeiraSafeLS,600000,1) ------------------------------------- TEMPO PARA FECHAR A TERCEIRA SAFEZONE
        return 
    end

    if controle == 5 then 
        parede = createColRectangle(x,y, 250,250)
        local lista  = getElementsByType("player")
        for a,b in pairs(lista)do 
            local dentro = isElementWithinColShape(b,parede)
            if getTeamName(getPlayerTeam(b)) == 'STAFF' then 
                dentro = true 
            end
            if not dentro then
                outputChatBox(getPlayerName(b).. " MORREU FORA DA SAFE!!!",lista,200,0,0)
                setElementHealth(b,0.0)
            end
        end
        setRadarAreaColor(safe,255,50,50,100)
        outputDebugString('terceira safe fecha')
        triggerClientEvent('timer:some',root)
        exports.V_infobox:addBox(root, "Terceira safezone fechou| CUIDADO AI PORRA ||| GO PVP! NÃO FECHA MAIS", "warning")
        controle = 0
        return
    end

end


local function LosSantos()
    COMECOU = true
    adicionaTime()
    Descongela()
    outputDebugString('Começamos Los Santos')
    setTimer(primeiraSafeLS,10000,1)
end

addCommandHandler('lossantos',LosSantos,false,false)
addCommandHandler('ls',LosSantos,false,false)


-----------------------------------------------------------NOS USAMOS A LINHA DE CIMA PRA ATIVAR AS SAFEZONES DE LS--------------------------------------------------

-------SF--------------SF--------------SF--------------SF--------------SF--------------SF--------------SF--------------SF--------------SF--------------SF-------

function primeiraSafeSF()
    if controle == 0 then 
        safe = createRadarArea(-2985.326171875, -845.6611328125, 1800,2350, 0, 255, 0, 100)
        exports.V_infobox:addBox(root, "Primeira safezone em San Fierro. Você tem 10 minutos. Corra!", "info")
        outputDebugString("Primeria SAFEZONE APARECEU")
        triggerClientEvent('timer:cria',root)
        controle = 1
        setTimer(primeiraSafeLS,600000,1) --------- TEMPO PARA FECHAR A PRIMEIRA SAFEZONE       
        return
    end

    if controle == 1 then 
        parede = createColRectangle(-2985.326171875,-845.6611328125, 1800,2350)
        local lista  = getElementsByType("player")
        for a,b in pairs(lista)do 
            local dentro = isElementWithinColShape(b,parede)
            if getTeamName(getPlayerTeam(b)) == 'STAFF' then 
                dentro = true 
            end
            if not dentro then
                outputChatBox(getPlayerName(b).. " MORREU FORA DA SAFE!!!",lista,200,0,0)
                setElementHealth(b,0.0)
            end
        end
        destroiAeroTank()
        setRadarAreaColor(safe,255,50,50,100)
        exports.V_infobox:addBox(root, "Primeira safezone fechou, | SEM VEICULOS DE ATAQUE", "warning")
        outputDebugString("Primeira SAFEZONE FECHOU")
        triggerClientEvent('timer:some',root)
        controle = 2
        setTimer(primeiraSafeLS,300000,1)  ------------------------------TEMPO PARA MOSTRAR A SEGUNDA SAFEZONE
        return
    end

    if controle == 2 then 
        destroyElement(parede)
        destroyElement(safe)
        x = math.random(1699,2985.326171875)*-1
        y = math.random(0, 1080.7880859375) - math.random(0,842.6611328125)
        safe = createRadarArea(x,y,500,500,0,255,0,100)
        exports.V_infobox:addBox(root, "Segunda safezone apareceu! Você tem 10 minutos pra entrar na safezone", "info")
        outputDebugString("Segunda SAFEZONE APARECEU")
        triggerClientEvent('timer:cria',root)
        controle = 3
        setTimer(primeiraSafeLS,600000,1) ------------------------------- TEMPO PARA FECHAR A SEGUNDA SAFEZONE
        return
    end

    if controle == 3 then 
        parede = createColRectangle(x,y, 500,500)
        local lista  = getElementsByType("player")
        for a,b in pairs(lista)do 
            local dentro = isElementWithinColShape(b,parede)
            if getTeamName(getPlayerTeam(b)) == 'STAFF' then 
                dentro = true 
            end
            if not dentro then
                outputChatBox(getPlayerName(b).. " MORREU FORA DA SAFE!!!",lista,200,0,0)
                setElementHealth(b,0.0)
            end
        end
        exports.V_infobox:addBox(root, "Segunda safezone fechou | CUIDADO AI PORRA", "warning")
        outputDebugString("Segunda SAFEZONE FECHOU")
        triggerClientEvent('timer:some',root)
        setRadarAreaColor(safe,255,50,50,100)
        controle = 4
        setTimer(primeiraSafeLS,300000,1) ------------------------------------- TEMPO PARA MOSTRAR A TERCEIRA SAFEZONE
        return
    end

    if controle == 4 then 
        destroyElement(parede)
        destroyElement(safe)
        x = math.random(x,x+250)
        y = math.random(y,y+250)
        safe = createRadarArea(x,y,250,250,0,255,0,100)
        triggerClientEvent('timer:cria',root)
        exports.V_infobox:addBox(root, "Terceira safezone apareceu! Você tem 10 minutos pra entra na safezone", "info")
        outputDebugString("Terceira SAFEZONE APARECEU")
        controle = 5
        setTimer(primeiraSafeLS,600000,1) ------------------------------------- TEMPO PARA FECHAR A TERCEIRA SAFEZONE
        return
    end

    if controle == 5 then 
        parede = createColRectangle(x,y, 250,250)
        local lista  = getElementsByType("player")
        for a,b in pairs(lista)do 
            local dentro = isElementWithinColShape(b,parede)
            if getTeamName(getPlayerTeam(b)) == 'STAFF' then 
                dentro = true 
            end
            if not dentro then
                outputChatBox(getPlayerName(b).. " MORREU FORA DA SAFE!!!",lista,200,0,0)
                setElementHealth(b,0.0)
            end
        end
        exports.V_infobox:addBox(root, "Terceira safezone fechou| CUIDADO AI PORRA ||| GO PVP! NÃO FECHA MAIS", "warning")
        outputDebugString("Terceira SAFEZONE FECHOU")
        triggerClientEvent('timer:some',root)
        setRadarAreaColor(safe,255,50,50,100)
        controle = 0
        return
    end 
    
end

function SanFierro()
    COMECOU = true
    adicionaTime()
    Descongela()
    setTimer(primeiraSafeSF, 10000, 1)
    outputDebugString('Começamos San Fierro')
end

addCommandHandler('sanfierro',SanFierro,false,false)
addCommandHandler('sf',SanFierro,false,false)

-----------------------------------------------------------NOS USAMOS A LINHA DE CIMA PRA ATIVAR AS SAFEZONES DE SF--------------------------------------------------

-------LV--------------LV--------------LV--------------LV--------------LV--------------LV--------------LV--------------LV--------------LV--------------LV-------

function primeiraSafeLV()
    if controle == 0 then 
        safe = createRadarArea(796.1474609375, 585.357421875, 2200,2350, 0, 255, 0, 100)
        exports.V_infobox:addBox(root, "Primeira safezone em Las Venturas. Você tem 10 minutos. Corra!", "info")
        triggerClientEvent('timer:cria',root)
        controle = 1
        outputDebugString("Primeira SAFEZONE APARECEU")
        setTimer(primeiraSafeLS,600000,1) --------- TEMPO PARA FECHAR A PRIMEIRA SAFEZONE       
        return
    end

    if controle == 1 then 
        parede = createColRectangle(796.1474609375, 585.357421875, 2200,2350)
        local lista  = getElementsByType("player")
        for a,b in pairs(lista)do 
            local dentro = isElementWithinColShape(b,parede)
            if getTeamName(getPlayerTeam(b)) == 'STAFF' then 
                dentro = true 
            end
            if not dentro then
                outputChatBox(getPlayerName(b).. " MORREU FORA DA SAFE!!!",lista,200,0,0)
                setElementHealth(b,0.0)
            end
        end
        destroiAeroTank()
        exports.V_infobox:addBox(root, "Primeira safezone fechou, | SEM VEICULOS DE ATAQUE", "warning")
        outputDebugString("Primeira SAFEZONE FECHOU")
        triggerClientEvent('timer:some',root)
        controle = 2 
        setRadarAreaColor(safe,255,50,50,100)
        setTimer(primeiraSafeLS,300000,1)  ------------------------------TEMPO PARA MOSTRAR A SEGUNDA SAFEZONE
        return 
    end

    if controle == 2 then 
        destroyElement(parede)
        destroyElement(safe)
        x = math.random(796.1474609375,2676.7841796875)
        y = math.random(585.357421875, 2588.3505859375)
        safe = createRadarArea(x,y,500,500,0,255,0,100)
        exports.V_infobox:addBox(root, "Segunda safezone apareceu! Você tem 10 minutos pra entrar na safezone", "info")
        outputDebugString("Segunda SAFEZONE APARECEU")
        triggerClientEvent('timer:cria',root)
        controle = 3 
        setTimer(primeiraSafeLS,600000,1) ------------------------------- TEMPO PARA FECHAR A SEGUNDA SAFEZONE
        return 
    end

    if controle == 3 then 
        parede = createColRectangle(x,y, 500,500)
        local lista  = getElementsByType("player")
        for a,b in pairs(lista)do 
            local dentro = isElementWithinColShape(b,parede)
            if getTeamName(getPlayerTeam(b)) == 'STAFF' then 
                dentro = true 
            end
            if not dentro then
                outputChatBox(getPlayerName(b).. " MORREU FORA DA SAFE!!!",lista,200,0,0)
                setElementHealth(b,0.0)
            end
        end
        triggerClientEvent('timer:some',root)
        exports.V_infobox:addBox(root, "Segunda safezone fechou | CUIDADO AI PORRA", "warning")
        outputDebugString("Segunda SAFEZONE FECHOU")
        controle = 4
        setRadarAreaColor(safe,255,50,50,100)
        setTimer(primeiraSafeLS,300000,1) ------------------------------------- TEMPO PARA MOSTRAR A TERCEIRA SAFEZONE
        return 
    end

    if controle == 4 then 
        destroyElement(parede)
        destroyElement(safe)
        x = math.random(x,x+250)
        y = math.random(y,y+250)
        safe = createRadarArea(x,y,250,250,0,255,0,100)
        exports.V_infobox:addBox(root, "Terceira safezone apareceu! Você tem 10 minutos pra entra na safezone", "info")
        outputDebugString("Terceira SAFEZONE APARECEU")
        triggerClientEvent('timer:cria',root)
        controle = 5
        setTimer(primeiraSafeLS,600000,1) ------------------------------------- TEMPO PARA FECHAR A TERCEIRA SAFEZONE
        return 
    end

    if controle == 5 then 
        parede = createColRectangle(x,y, 250,250)
        local lista  = getElementsByType("player")
        for a,b in pairs(lista)do 
            local dentro = isElementWithinColShape(b,parede)
            if getTeamName(getPlayerTeam(b)) == 'STAFF' then 
                dentro = true 
            end
            if not dentro then
                outputChatBox(getPlayerName(b).. " MORREU FORA DA SAFE!!!",lista,200,0,0)
                setElementHealth(b,0.0)
            end
        end
        exports.V_infobox:addBox(root, "Terceira safezone fechou| CUIDADO AI PORRA ||| GO PVP! NÃO FECHA MAIS", "warning")
        outputDebugString("Terceira SAFEZONE FECHOU")
        triggerClientEvent('timer:some',root)
        setRadarAreaColor(safe,255,50,50,100)
        controle = 0
        return
    end

end

function LasVenturas()
    COMECOU = true
    Descongela()
    adicionaTime()
    setTimer(primeiraSafeLV,10000,1)
    outputDebugString('Começamos Las Venturas')
end

addCommandHandler('lasventuras',LasVenturas,false,false)
addCommandHandler('lv',LasVenturas,false,false)

-----------------------------------------------------------NOS USAMOS A LINHA DE CIMA PRA ATIVAR AS SAFEZONES DE LV--------------------------------------------------



----------------------------------------------------MAPA TODO

function primeiraSafeMP()
    if controle == 0 then 
        x = math.random(0,3000)*-1
        y = math.random(0,3000)*-1
        safe = createRadarArea(x, y, 2500,2500, 0, 255, 0, 100)
        exports.V_infobox:addBox(root, "Primeira SAFEZONE no mapa todo| 10 minutos PRA ENTRAR NA AREA", "info")
        triggerClientEvent('timer:cria',root)
        controle = 1
        setTimer(primeiraSafeMP,300000,1) --------- TEMPO PARA FECHAR A PRIMEIRA SAFEZONE       
        return
    end

    if controle == 1 then 
        parede = createColRectangle(x, y, 2500,2500)
        local lista  = getElementsByType("player")
        for a,b in pairs(lista)do 
            local dentro = isElementWithinColShape(b,parede)
            if getTeamName(getPlayerTeam(b)) == 'STAFF' then 
                dentro = true 
            end
            if not dentro then
                outputChatBox(getPlayerName(b).. " MORREU FORA DA SAFE!!!",lista,200,0,0)
                setElementHealth(b,0.0)
            end
        end
        destroiAeroTank()
        setRadarAreaColor(safe,255,50,50,100)
        exports.V_infobox:addBox(root, "Primeira safezone fechou, | SEM VEICULOS DE ATAQUE", "warning")
        outputDebugString("Primeira SAFEZONE FECHOU")
        triggerClientEvent('timer:some',root)
        controle = 2
        setTimer(primeiraSafeMP,300000,1) --------- TEMPO PARA FECHAR A PRIMEIRA SAFEZONE       
        return
    end

    if controle == 2 then 
        destroyElement(parede)
        destroyElement(safe)
        x = math.random(0,3000)*-1
        y = math.random(0,3000)*-1
        safe = createRadarArea(x,y,1000,1000,0,255,0,100)
        triggerClientEvent('timer:cria',root)
        exports.V_infobox:addBox(root, "Segunda safezone apareceu! Você tem 10 minutos pra entrar na safezone", "info")
        outputDebugString("Segunda SAFEZONE APARECEU")
        controle = 3
        setTimer(primeiraSafeMP,300000,1) --------- TEMPO PARA FECHAR A PRIMEIRA SAFEZONE       
        return
    end

    if controle == 3 then 
        parede = createColRectangle(x,y, 1000,1000)
        local lista  = getElementsByType("player")
        for a,b in pairs(lista)do 
            local dentro = isElementWithinColShape(b,parede)
            if getTeamName(getPlayerTeam(b)) == 'STAFF' then 
                dentro = true 
            end
            if not dentro then
                outputChatBox(getPlayerName(b).. " MORREU FORA DA SAFE!!!",lista,200,0,0)
                setElementHealth(b,0.0)
            end
        end
        setRadarAreaColor(safe,255,50,50,100)
        exports.V_infobox:addBox(root, "Segunda safezone fechou | CUIDADO AI PORRA", "warning")
        outputDebugString("Segunda SAFEZONE FECHOU")
        triggerClientEvent('timer:some',root)
        controle = 4
        setTimer(primeiraSafeMP,300000,1) --------- TEMPO PARA FECHAR A PRIMEIRA SAFEZONE       
        return
    end

    if controle == 4 then 
        destroyElement(parede)
        destroyElement(safe)
        x = math.random(x,x+250)
        y = math.random(y,y+250)
        safe = createRadarArea(x,y,250,250,0,255,0,100)
        triggerClientEvent('timer:cria',root)
        exports.V_infobox:addBox(root, "Terceira safezone apareceu! Você tem 10 minutos pra entra na safezone", "info")
        outputDebugString("Terceira SAFEZONE APARECEU")
        controle = 5
        setTimer(primeiraSafeMP,300000,1) --------- TEMPO PARA FECHAR A PRIMEIRA SAFEZONE       
        return
    end

    if controle == 5 then 
        parede = createColRectangle(x,y, 250,250)
        local lista  = getElementsByType("player")
        for a,b in pairs(lista)do 
            local dentro = isElementWithinColShape(b,parede)
            if getTeamName(getPlayerTeam(b)) == 'STAFF' then 
                dentro = true 
            end
            if not dentro then
                outputChatBox(getPlayerName(b).. " MORREU FORA DA SAFE!!!",lista,200,0,0)
                setElementHealth(b,0.0)
            end
        end
        setRadarAreaColor(safe,255,50,50,100)
        triggerClientEvent('timer:some',root)
        exports.V_infobox:addBox(root, "Terceira safezone fechou| CUIDADO AI PORRA ||| GO PVP! NÃO FECHA MAIS", "warning")
        outputDebugString("Terceira SAFEZONE FECHOU")
        controle = 0
        return
    end

end

local function mapaTodo()
    COMECOU = true
    adicionaTime()
    Descongela()
    setTimer(primeiraSafeMP,10000,1)
    outputDebugString('Começamos Mapa Inteiro')
end

addCommandHandler('mapatodo',mapaTodo,false,false)
addCommandHandler('mp',mapaTodo,false,false)








function destroiAeroTank() --PARTIDA 3
    -- get a table of all the vehicles that exist and loop through it
	local vehicles = getElementsByType("vehicle")
	for i,v in ipairs(vehicles) do
		-- if the vehicle's ID is the one provided, destroy it
		if (getElementModel(v) == 425 or getElementModel(v) == 520 or getElementModel(v) == 432 or getElementModel(v) == 487) then
			destroyElement(v)
		end
	end
    
end


function Descongela() --FUNÇÃO DE COMEÇAR
    local vehicles = getElementsByType("vehicle")
	for i,v in ipairs(vehicles) do
        fixVehicle(v)
		if (getElementModel(v) == 425 or getElementModel(v) == 520 or getElementModel(v) == 487 or getElementModel(v) == 432 or getElementModel(v) == 468 or getElementModel(v) == 560) then
			setElementFrozen(v,false)
		end
	end
    setTime(6,00)
    COMECOU = true
    exports.V_infobox:addBox(root, "PARTIDA COMEÇOU BORAAAAAA!", "success")
end


function adicionaTime() ---- ADICIONA BLIPS NOS TIMES
    local listaPlayers = getElementsByType('Player')
    for i,v in ipairs(listaPlayers) do
		timeDoJogador = getPlayerTeam(v)
        for a,b in ipairs(listaPlayers)do
            if getTeamName( getPlayerTeam(v)) == getTeamName( getPlayerTeam(b)) then
                cr, cg, cb = getTeamColor(getPlayerTeam(v))
                blip = createBlipAttachedTo(b, 0, 2, cr, cg, cb, 255,0, 65535, resourceRoot)
                setElementVisibleTo(blip, v, true)
            end
            if getTeamName(getPlayerTeam(v)) == 'STAFF' then
                setElementVisibleTo(blip, v, true)
                outputChatBox('BLIP DE TIMES', v)
            end 
        end
	end

end


function reseta()
    local tudo = getResourceRootElement()
    destroyElement(tudo)
    exports.V_infobox:addBox(root, "SAFEZONES RESETADAS, BORA COMEÇAR A PROXIMA", "success")
    controle = 0
end


function ativaSafe( colShapeLeft )
    if colShapeLeft == parede then
        if getTeamName(getPlayerTeam(source)) == 'STAFF' then 
            return 
        end
        outputChatBox( "Você saiu da Safe",source,200,0,0 ) -- print the type of the element to chatbox
        setElementHealth(source, 0.00)
    end
end







addEventHandler( "onElementColShapeLeave", getRootElement(), ativaSafe )

addEventHandler('onVehicleDamage',root, function()
    if not COMECOU then 
        fixVehicle(source)
    end
end)
