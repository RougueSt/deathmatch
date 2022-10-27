
----------------------------------------------------LS
function primeiraSafeLS()
    safe = createRadarArea(63.3564453125, -2816.5986328125, 2900,2000, 0, 255, 0, 100)
    exports.V_infobox:addBox(root, "First safezone in Los Santos. 10 Minutes to the area get restrict", "info")
end

function fechouLS()
    parede = createColRectangle(63.3564453125,-2816.5986328125, 2900,2000)
    local lista  = getElementsByType("player")
    for a,b in pairs(lista)do 
        local dentro = isElementWithinColShape(b,parede)
        if not dentro then
            outputChatBox(getPlayerName(b).. " MORREU FORA DA SAFE!!!",lista,200,0,0)
            setElementHealth(b,0.0)
        end
    end
    exports.V_infobox:addBox(root, "First safezone is closed | CUIDADO AI PORRA", "warning")
end

function segundaSafeLS()
    destroyElement(parede)
    destroyElement(safe)
    x = math.random(63.3564453125,2400)
    y = math.random(852,2320)*-1 - 500
    safe = createRadarArea(x,y,500,500,0,255,0,100)
    exports.V_infobox:addBox(root, "Second safezone in Los Santos. 5 Minutes to the area get restrict", "info")
end

function fechouLS2()
    destroyElement(parede)
    parede = createColRectangle(x,y, 500,500)
    local lista  = getElementsByType("player")
    for a,b in pairs(lista)do 
        local dentro = isElementWithinColShape(b,parede)
        if not dentro then
            outputChatBox(getPlayerName(b).. " MORREU FORA DA SAFE!!!",lista,200,0,0)
            setElementHealth(b,0.0)
        end
    end
    exports.V_infobox:addBox(root, "Second safezone is closed | CUIDADO AI PORRA", "warning")
end

function terceiraSafeLS()
    destroyElement(parede)
    destroyElement(safe)
    x = math.random(x,x+250)
    y = math.random(y,y+250)
    safe = createRadarArea(x,y,250,250,0,255,0,100)
    exports.V_infobox:addBox(root, "Second safezone in Los Santos. 5 Minutes to the area get restrict", "info")
end

function fechouLS3()
    destroyElement(parede)
    parede = createColRectangle(x,y, 250,250)
    local lista  = getElementsByType("player")
    for a,b in pairs(lista)do 
        local dentro = isElementWithinColShape(b,parede)
        if not dentro then
            outputChatBox(getPlayerName(b).. " MORREU FORA DA SAFE!!!",lista,200,0,0)
            setElementHealth(b,0.0)
        end
    end
    exports.V_infobox:addBox(root, "Third and the last safezone is closed | CUIDADO AI PORRA", "warning")
end
----------------------------------------------------SF

function primeiraSafeSF()
    safe = createRadarArea(-2985.326171875, -845.6611328125, 1800,2350, 0, 255, 0, 100)
    exports.V_infobox:addBox(root, "First safezone in San Fierro. 5 Minutes to the area get restrict", "info")
end

function fechouSF()
    parede = createColRectangle(-2985.326171875,-845.6611328125, 1800,2350)
    local lista  = getElementsByType("player")
    for a,b in pairs(lista)do 
        local dentro = isElementWithinColShape(b,parede)
        if not dentro then
            outputChatBox(getPlayerName(b).. " MORREU FORA DA SAFE!!!",lista,200,0,0)
            setElementHealth(b,0.0)
        end
    end
    exports.V_infobox:addBox(root, "First safezone is closed | CUIDADO AI PORRA", "warning")
end

function segundaSafeSF()
    destroyElement(parede)
    destroyElement(safe)
    x = math.random(1699,2985.326171875)*-1
    y = math.random(0, 1080.7880859375) - math.random(0,842.6611328125)
    safe = createRadarArea(x,y,500,500,0,255,0,100)
    exports.V_infobox:addBox(root, "Second safezone in San Fierro. 5 Minutes to the area get restrict", "info")
end

function fechouSF2()
    destroyElement(parede)
    parede = createColRectangle(x,y, 500,500)
    local lista  = getElementsByType("player")
    for a,b in pairs(lista)do 
        local dentro = isElementWithinColShape(b,parede)
        if not dentro then
            outputChatBox(getPlayerName(b).. " MORREU FORA DA SAFE!!!",lista,200,0,0)
            setElementHealth(b,0.0)
        end
    end
    exports.V_infobox:addBox(root, "Second safezone is closed | CUIDADO AI PORRA", "warning")
end

function terceiraSafeSF()
    destroyElement(parede)
    destroyElement(safe)
    x = math.random(x,x+250)
    y = math.random(y,y+250)
    safe = createRadarArea(x,y,250,250,0,255,0,100)
    exports.V_infobox:addBox(root, "Third safezone in San Fierro. 5 Minutes to the area get restrict", "info")
end

function fechouSF3()
    destroyElement(parede)
    parede = createColRectangle(x,y, 250,250)
    local lista  = getElementsByType("player")
    for a,b in pairs(lista)do 
        local dentro = isElementWithinColShape(b,parede)
        if not dentro then
            outputChatBox(getPlayerName(b).. " MORREU FORA DA SAFE!!!",lista,200,0,0)
            setElementHealth(b,0.0)
        end
    end
    exports.V_infobox:addBox(root, "Third safezone is closed | CUIDADO AI PORRA", "warning")
end

---------------------------------------------------LV

function primeiraSafeLV()
    safe = createRadarArea(796.1474609375, 585.357421875, 2200,2350, 0, 255, 0, 100)
    exports.V_infobox:addBox(root, "First safezone in Las Venturas. 5 Minutes to the area get restrict", "info")
end

function fechouLV()
    parede = createColRectangle(796.1474609375, 585.357421875, 2200,2350)
    local lista  = getElementsByType("player")
    for a,b in pairs(lista)do 
        local dentro = isElementWithinColShape(b,parede)
        if not dentro then
            outputChatBox(getPlayerName(b).. " MORREU FORA DA SAFE!!!",lista,200,0,0)
            setElementHealth(b,0.0)
        end
    end
    exports.V_infobox:addBox(root, "First safezone is closed | CUIDADO AI PORRA", "warning")
end

function segundaSafeLV()
    destroyElement(parede)
    destroyElement(safe)
    x = math.random(796.1474609375,2676.7841796875)
    y = math.random(585.357421875, 2588.3505859375)
    safe = createRadarArea(x,y,500,500,0,255,0,100)
    exports.V_infobox:addBox(root, "First safezone in Las Venturas. 5 Minutes to the area get restrict", "info")
end

function fechouLV2()
    parede = createColRectangle(x,y, 500,500)
    local lista  = getElementsByType("player")
    for a,b in pairs(lista)do 
        local dentro = isElementWithinColShape(b,parede)
        if not dentro then
            outputChatBox(getPlayerName(b).. " MORREU FORA DA SAFE!!!",lista,200,0,0)
            setElementHealth(b,0.0)
        end
    end
    exports.V_infobox:addBox(root, "Second safezone is closed | CUIDADO AI PORRA", "warning")
end

function terceiraSafeLV()
    destroyElement(parede)
    destroyElement(safe)
    x = math.random(x,x+250)
    y = math.random(y,y+250)
    safe = createRadarArea(x,y,250,250,0,255,0,100)
    exports.V_infobox:addBox(root, "Third safezone in Las Venturas. 5 Minutes to the area get restrict", "info")
end

function fechouLV3()
    destroyElement(parede)
    parede = createColRectangle(x,y, 250,250)
    local lista  = getElementsByType("player")
    for a,b in pairs(lista)do 
        local dentro = isElementWithinColShape(b,parede)
        if not dentro then
            outputChatBox(getPlayerName(b).. " MORREU FORA DA SAFE!!!",lista,200,0,0)
            setElementHealth(b,0.0)
        end
    end
    exports.V_infobox:addBox(root, "Third safezone is closed | CUIDADO AI PORRA", "warning")
end


----------------------------------------------------MAPA TODO

function primeiraSafeMP()
    x = math.random(0,3000)*-1
    y = math.random(0,3000)*-1
    safe = createRadarArea(x, y, 2500,2500, 0, 255, 0, 100)
    exports.V_infobox:addBox(root, "First safezone all map. 5 Minutes to the area get restrict", "info")
end

function fechouMP()
    parede = createColRectangle(x, y, 2500,2500)
    local lista  = getElementsByType("player")
    for a,b in pairs(lista)do 
        local dentro = isElementWithinColShape(b,parede)
        if not dentro then
            outputChatBox(getPlayerName(b).. " MORREU FORA DA SAFE!!!",lista,200,0,0)
            setElementHealth(b,0.0)
        end
    end
    exports.V_infobox:addBox(root, "First safezone is closed | CUIDADO AI PORRA", "warning")
end

function segundaSafeMP()
    destroyElement(parede)
    destroyElement(safe)
    x = math.random(0,3000)*-1
    y = math.random(0,3000)*-1
    safe = createRadarArea(x,y,1000,1000,0,255,0,100)
    exports.V_infobox:addBox(root, "Second safezone all map. 5 Minutes to the area get restrict", "info")
end

function fechouMP2()
    parede = createColRectangle(x,y, 1000,1000)
    local lista  = getElementsByType("player")
    for a,b in pairs(lista)do 
        local dentro = isElementWithinColShape(b,parede)
        if not dentro then
            outputChatBox(getPlayerName(b).. " MORREU FORA DA SAFE!!!",lista,200,0,0)
            setElementHealth(b,0.0)
        end
    end
    exports.V_infobox:addBox(root, "Second safezone is closed | CUIDADO AI PORRA", "warning")
end

function terceiraSafeMP()
    destroyElement(parede)
    destroyElement(safe)
    x = math.random(x,x+250)
    y = math.random(y,y+250)
    safe = createRadarArea(x,y,250,250,0,255,0,100)
    exports.V_infobox:addBox(root, "Third safezone all map. 5 Minutes to the area get restrict", "info")
end

function fechouMP3()
    destroyElement(parede)
    parede = createColRectangle(x,y, 250,250)
    local lista  = getElementsByType("player")
    for a,b in pairs(lista)do 
        local dentro = isElementWithinColShape(b,parede)
        if not dentro then
            outputChatBox(getPlayerName(b).. " MORREU FORA DA SAFE!!!",lista,200,0,0)
            setElementHealth(b,0.0)
        end
    end
    exports.V_infobox:addBox(root, "Third safezone is closed | CUIDADO AI PORRA", "warning")
end

function reseta()
    local tudo = getResourceRootElement()
    destroyElement(tudo)
    exports.V_infobox:addBox(root, "SAFEZONES RESETADAS, BORA COMEÇAR A PROXIMA", "success")
end


function ativaSafe( colShapeLeft )
    if colShapeLeft == parede then -- if element left the created colshape
        outputChatBox( "Você saiu da Safe",source,200,0,0 ) -- print the type of the element to chatbox
        setElementHealth(source, 0.00)
    end
end



addEventHandler( "onElementColShapeLeave", getRootElement(), ativaSafe )




----------------------------------------------------LS
--addCommandHandler("ls", primeiraSafeLS)
--addCommandHandler("lsfechou", fechouLS)

--addCommandHandler("ls2",segundaSafeLS)
--addCommandHandler("ls2fechou",fechouLS2)

--addCommandHandler("ls3",terceiraSafeLS)
--addCommandHandler("ls3fechou",fechouLS3)

----------------------------------------------------SF

--addCommandHandler("sf", primeiraSafeSF)
--addCommandHandler("sffechou", fechouSF)

--addCommandHandler("sf2", segundaSafeSF)
--addCommandHandler("sf2fechou", fechouSF2)

--addCommandHandler("sf3", terceiraSafeSF)
--addCommandHandler("sf3fechou", fechouSF3)

---------------------------------------------------LV
--addCommandHandler("lv",primeiraSafeLV)
--addCommandHandler("lvfechou",fechouLV)

--addCommandHandler("lv2",segundaSafeLV)
--addCommandHandler("lv2fechou",fechouLV2)

--addCommandHandler("lv3",terceiraSafeLV)
--addCommandHandler("lv3fechou",fechouLV3)

----------------------------------------------------MAPA TODO


--addCommandHandler("mp",primeiraSafeMP)
--addCommandHandler("mpfechou",fechouMP)

--addCommandHandler("mp2",segundaSafeMP)
--addCommandHandler("mp2fechou",fechouMP2)

--addCommandHandler("mp3",terceiraSafeMP)
--addCommandHandler("mp3fechou",fechouMP3)

--addCommandHandler("safer",reseta)