local window

local function getWindowPosition(width, height)
    local screenWidth, screenHeight = guiGetScreenSize()
    local x = (screenWidth / 2) - (width / 2)
    local y = (screenHeight / 2) - (height / 2)

    return x, y, width, height
end

local function isUsernameValid(username)
    return type(username) == 'string' and string.len(username) > 1
end

local function isPasswordValid(password)
    return type(password) == 'string' and string.len(password) > 1
end




addEvent('login-menu:open', true)
addEventHandler('login-menu:open', root, function()
    setCameraMatrix(0, 0, 100, 0 ,100, 50)
    fadeCamera(true)
    


    showCursor(true, true)

    guiSetInputMode('no_binds')



    local x, y, width, height = getWindowPosition(600,600)
    window = guiCreateWindow(x, y, width, height, "LOGIN", false)
    guiWindowSetMovable(window,false)
    guiWindowSetSizable(window,false)

    local usernameLabel = guiCreateLabel(30, 50, width - 30, 20, 'Usuario: ', false, window)
    local erroUsername = guiCreateLabel(18, 250, width - 30, 20, '', false, window)
    local usernameInput = guiCreateEdit(30, 70, 180, 25, '', false, window)

    local passwordLabel = guiCreateLabel(30, 120, width - 30, 20, 'senha: ', false, window)
    local erroSenha = guiCreateLabel(18, 265, width - 30, 20, '', false, window)
    local passwordInput = guiCreateEdit(30, 140, 180, 25, '', false, window)
    guiEditSetMasked(passwordInput, true)

    local registerButton = guiCreateButton(130,175, 80, 50,'Register',false,window)
    addEventHandler('onClientGUIClick', registerButton, function(button, state)
        if button ~= 'left' or state ~= 'up' then
            return 
        end

        local username = guiGetText(usernameInput)
        local password = guiGetText(passwordInput)
        local inputValid = true

        if not isUsernameValid(username) then 
            guiSetText(erroUsername, 'Alguma coisa errada com o Usuario')
            guiLabelSetColor(erroUsername, 255,0,0)
            inputValid = false
        else
            guiSetVisible(erroUsername,false)
        end

        if not isPasswordValid(password) then  
            guiSetText(erroSenha, 'Alguma coisa errada com a Senha')
            guiLabelSetColor(erroSenha, 255,0,0)
            inputValid = false
        else
            guiSetVisible(erroSenha,false)
        end

        if not inputValid then
            return
        end

        triggerServerEvent('auth:register-attempt', localPlayer, username, password)
    end)






    local loginButton = guiCreateButton(30,175, 80, 50,'Login',false,window)
    addEventHandler('onClientGUIClick',loginButton, function(button, state)
        if button ~= 'left' or state ~= 'up' then
            return 
        end

        local username = guiGetText(usernameInput)
        local password = guiGetText(passwordInput)
        local inputValid = true

        if not isUsernameValid(username) then 
            guiSetText(erroUsername, 'Alguma coisa errada com o Usuario')
            guiLabelSetColor(erroUsername, 255,0,0)
            inputValid = false
        else
            guiSetVisible(erroUsername,false)
        end

        if not isPasswordValid(password) then  
            guiSetText(erroSenha, 'Alguma coisa errada com a Senha')
            guiLabelSetColor(erroSenha, 255,0,0)
            inputValid = false
        else
            guiSetVisible(erroSenha,false)
        end

        if not inputValid then
            return
        end

        

        triggerServerEvent('auth:login-attempt', localPlayer, username, password)
    end)




    local imagem = guiCreateStaticImage(230, 40, 600, 600, "pablo.png", false, window)

end, true)

addEvent('login-menu:close', true)
addEventHandler('login-menu:close',root, function()
    destroyElement(window)
    showCursor(false)
    guiSetInputMode('allow_binds')
    triggerEvent('time-menu:open',localPlayer)
end)

addEvent('time-menu:open', true)
addEventHandler('time-menu:open',root, function()
    setCameraMatrix(-1926.7548828125, -1761.599609375, 36.827644348145,-1895.5078125, -1725.703125, 21.75)
    fadeCamera(true)
    local x, y, width, height = getWindowPosition(530,470)
    painelTime = guiCreateWindow(x, y, width, height, "Seleção do time", false)
    guiWindowSetMovable(painelTime,false)
    guiWindowSetSizable(painelTime,false)
    showCursor(true, true)
    guiSetInputMode('allow_binds')



    -----botão dos times

    local time1 = guiCreateButton(30,30, 150, 90, 'TIME 1', false, painelTime )
    local time2 = guiCreateButton(30,140, 150, 90, 'TIME 2', false, painelTime )
    local time3 = guiCreateButton(30,250, 150, 90, 'TIME 3', false, painelTime )
    local time4 = guiCreateButton(30,360, 150, 90, 'TIME 4', false, painelTime )
    local time5 = guiCreateButton(190,30, 150, 90, 'TIME 5', false, painelTime )
    local time6 = guiCreateButton(190,140, 150, 90, 'TIME 6', false, painelTime )
    local time7 = guiCreateButton(190,250, 150, 90, 'TIME 7', false, painelTime )
    local time8 = guiCreateButton(190,360, 150, 90, 'TIME 8', false, painelTime )
    local time9 = guiCreateButton(350,90, 150, 90, 'TIME 9', false, painelTime )
    local time10 = guiCreateButton(350,200, 150, 90, 'TIME 10', false, painelTime )
    local time11 = guiCreateButton(350,310, 150, 90, 'TIME 11', false, painelTime )

    addEventHandler('onClientGUIClick', time1, function(button, state)
        if button ~= 'left' or state ~= 'up' then
            return 
        end
        triggerServerEvent('entrar:time1', localPlayer, TIME1)
        triggerEvent('time-menu:close',localPlayer)
    end)

    addEventHandler('onClientGUIClick', time2, function(button, state)
        if button ~= 'left' or state ~= 'up' then
            return 
        end
        triggerServerEvent('entrar:time2', localPlayer, TIME2)
    end)

    addEventHandler('onClientGUIClick', time3, function(button, state)
        if button ~= 'left' or state ~= 'up' then
            return 
        end
        triggerServerEvent('entrar:time3', localPlayer, TIME3)
    end)

    addEventHandler('onClientGUIClick', time4, function(button, state)
        if button ~= 'left' or state ~= 'up' then
            return 
        end
        triggerServerEvent('entrar:time4', localPlayer, TIME4)
    end)

    addEventHandler('onClientGUIClick', time5, function(button, state)
        if button ~= 'left' or state ~= 'up' then
            return 
        end
        triggerServerEvent('entrar:time5', localPlayer, TIME5)
    end)

    addEventHandler('onClientGUIClick', time6, function(button, state)
        if button ~= 'left' or state ~= 'up' then
            return 
        end
        triggerServerEvent('entrar:time6', localPlayer, TIME6)
    end)

    addEventHandler('onClientGUIClick', time7, function(button, state)
        if button ~= 'left' or state ~= 'up' then
            return 
        end
        triggerServerEvent('entrar:time7', localPlayer, TIME7)
    end)

    addEventHandler('onClientGUIClick', time8, function(button, state)
        if button ~= 'left' or state ~= 'up' then
            return 
        end
        triggerServerEvent('entrar:time8', localPlayer, TIME8)
    end)

    addEventHandler('onClientGUIClick', time9, function(button, state)
        if button ~= 'left' or state ~= 'up' then
            return 
        end
        triggerServerEvent('entrar:time9', localPlayer, TIME9)
    end)

    addEventHandler('onClientGUIClick', time10, function(button, state)
        if button ~= 'left' or state ~= 'up' then
            return 
        end
        triggerServerEvent('entrar:time10', localPlayer, TIME10)
    end)

    addEventHandler('onClientGUIClick', time11, function(button, state)
        if button ~= 'left' or state ~= 'up' then
            return 
        end
        triggerServerEvent('entrar:time11', localPlayer, TIME11)
    end)



end)

addEvent('time-menu:close', true)
addEventHandler('time-menu:close',root, function()
    destroyElement(painelTime)
    showCursor(false)
    guiSetInputMode('allow_binds')
end)

addEvent('timer:cria',true)
addEventHandler('timer:cria',root,function()
    local x, y, width, height = getWindowPosition(530,470)
    barra = guiCreateProgressBar(width+480, height-230, 200,25)
    tempo = guiCreateLabel(width+480, height-230, 200,25, 'TEXTP TESTE', false, barra)
    guiProgressBarSetProgress(barra, 2)
    guiSetVisible(tempo,true)
    triggerEvent('timer:conta',localPlayer)
end)

addEvent('timer:conta',true)
addEventHandler('timer:conta',root,function()
    conta = setTimer(function()
        local x, y, width, height = getWindowPosition(530,470)
        progresso = guiProgressBarGetProgress(barra) + 2
        guiProgressBarSetProgress(barra, progresso)
        
    end,12000,70)
    addEventHandler('onClientRender',root, function()
        local x, y, width, height = getWindowPosition(530,470)
        local cor = tocolor(255,40,40,255)
        if progresso == 100 then 
            return
        end
        texto = dxDrawText(progresso .. '%', width+600, height+230, x,y, cor, 1, 1, 'bankgothic')
    end)
end)

addEvent('timer:some',true)
addEventHandler('timer:some',root,function()
    killTimer(conta)
    destroyElement(barra)
    destroyElement(texto)
end)

addEventHandler( 'onClientRender', root,
    function()
        setTime( 12, 0 )
    end
)

